import csv
import os
import sys
import re

sys.path.append(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from model.model import SVD_Model
from model.model import SysConfig

def parse_model_csv(file_path):
    """
    Parses the Model.CSV file and returns a list of dictionaries containing valid data rows.
    """
    data = []
    
    if not os.path.exists(file_path):
        print(f"Error: File '{file_path}' not found.")
        return data

    try:
        with open(file_path, mode='r', encoding='utf-8-sig') as csvfile:
            # Read the file
            reader = csv.DictReader(csvfile)
            
            # Strip whitespace from header keys
            reader.fieldnames = [name.strip() for name in reader.fieldnames]
            
            for row in reader:
                # Check if the row is valid (must have a Matrix value)
                if not row['Matrix'] or not row['Matrix'].strip():
                    continue
                
                # Parse numeric values where possible
                parsed_row = {}
                try:
                    matrix_str = row['Matrix'].strip()
                    parsed_row['Matrix'] = matrix_str
                    
                    # Parse Matrix string (e.g., "256x256", "256x256-cas2")
                    match = re.match(r'(\d+)x(\d+)(?:-cas(\d+))?', matrix_str)
                    if match:
                        parsed_row['COL'] = int(match.group(1))
                        parsed_row['ROW'] = int(match.group(2))
                        parsed_row['CascadeLevel'] = int(match.group(3)) if match.group(3) else 1
                    else:
                        parsed_row['COL'] = 0
                        parsed_row['ROW'] = 0
                        parsed_row['CascadeLevel'] = 1

                    parsed_row['Batch'] = int(row['Batch']) if row.get('Batch') else None
                    parsed_row['BATCH'] = parsed_row['Batch']
                    parsed_row['ITER'] = 1

                    parsed_row['Task_num'] = int(row['Task_num']) if row.get('Task_num') else None
                    parsed_row['BLK1'] = int(row['BLK1']) if row.get('BLK1') else None
                    parsed_row['BLK2'] = int(row['BLK2']) if row.get('BLK2') else None
                    
                    # Note: 'parralel' is misspelled in the CSV header, keeping it as is for access
                    # We can map it to 'parallel' in our output structure if desired
                    parsed_row['parallel'] = int(row['parralel']) if row.get('parralel') else None
                    
                    parsed_row['numio'] = int(row['numio']) if row.get('numio') else None
                    parsed_row['freq'] = float(row['freq']) if row.get('freq') else None
                    parsed_row['latency1'] = float(row['latency1']) if row.get('latency1') else None
                    parsed_row['latency2'] = float(row['latency2']) if row.get('latency2') else None
                    parsed_row['latency6'] = float(row['latency6']) if row.get('latency6') else None
                    
                    data.append(parsed_row)
                except ValueError as e:
                    print(f"Warning: Error parsing row {row}: {e}")
                    continue
                    
    except Exception as e:
        print(f"Error reading CSV file: {e}")
        
    return data

def get_model_result(csv_data):
    for item in csv_data:
        if item['COL'] == '':
            continue
        model = SVD_Model(item['COL'], item['ROW'], item['BATCH'], item['ITER'])
        config = SysConfig(item['COL'], item['ROW'], item['BATCH'], item['ITER'])
        config.BATCH = item['BATCH']
        config.LEVEL1_BLOCK_SIZE = item['BLK1']
        config.BLOCK_SIZE = item['BLK2']
        config.parallel_num = item['parallel']
        config.IO_NUM = item['numio']
        config.Frequency = item['freq']
        config.task_num = item['Task_num']
        config.CascadeLevel = item['CascadeLevel']

        
        config.ITER = 1
        item['model lat 1'] = model.predict(config, ifprint=False)
        item['error lat 1'] = (-item['latency1'] + item['model lat 1'])/item['latency1']*100
        config.ITER = 2
        item['model lat 2'] = model.predict(config, ifprint=False)
        item['error lat 2'] = (-item['latency2'] + item['model lat 2'])/item['latency2']*100
        config.ITER = 6
        item['model lat 6'] = model.predict(config, ifprint=False)
        item['error lat 6'] = (-item['latency6'] + item['model lat 6'])/item['latency6']*100
    return csv_data

def main():
    # Determine the path to Model.CSV relative to this script
    script_dir = os.path.dirname(os.path.abspath(__file__))
    csv_path = os.path.join(script_dir, 'Model.CSV')
    
    print(f"Parsing file: {csv_path}")
    results = parse_model_csv(csv_path)
    results = get_model_result(results)
    

    # Display the parsed data
    print(f"\nFound {len(results)} valid entries:\n")
    
    # Define column headers for display
    headers = [
        "Matrix", "Batch", "Task", "BLK1", "BLK2", 
        "Para", "IO", "Freq", 
         "Lat 6",
         "Model Lat 6",
         "Error Lat 6"
    ]
    
    # Print header
    header_fmt = "{:<15} {:<6} {:<6} {:<6} {:<6} {:<6} {:<10} {:<10} {:<10}  {:<10} {:<10}"
    print(header_fmt.format(*headers))
    print("-" * 95)
    
    # Print rows
    for item in results:
        print(header_fmt.format(
            item['Matrix'],
            str(item['Batch'] or ''),
            str(item['Task_num'] or ''),
            str(item['BLK1'] or ''),
            str(item['BLK2'] or ''),
            str(item['parallel'] or ''),
            str(item['numio'] or ''),
            str(item['freq'] or ''),
            # f"{item['latency1']:.6f}" if item['latency1'] else '',
            # f"{item['latency2']:.6f}" if item['latency2'] else '',
            f"{item['latency6']:.6f}" if item['latency6'] else '',
            # f"{item['model lat 1']:.6f}" if item['model lat 1'] else '',
            # f"{item['model lat 2']:.6f}" if item['model lat 2'] else '',
            f"{item['model lat 6']:.6f}" if item['model lat 6'] else '',
            # f"{item['error lat 1']:.6f}" if item['error lat 1'] else '',
            # f"{item['error lat 2']:.6f}" if item['error lat 2'] else '',
            f"{item['error lat 6']:.6f}" if item['error lat 6'] else ''
        ))

if __name__ == "__main__":
    main()

