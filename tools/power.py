from poweradvantage import poweradvantage
import time
from IPython import display
from datetime import datetime
import pandas as pd
%matplotlib inline
import matplotlib.pyplot as plt
pa = poweradvantage("VCK190", "SC")
name = pa.getname()
import numpy as np
data = {'Total_Power': []}
#create dataframe
df = pd.DataFrame(data)
count = 0
while count < 10000:
    dt_object = datetime.fromtimestamp(datetime.timestamp(datetime.now()))
    power = pa.getpower()
    total = 0
    for (n, d, p) in zip(pa.name, pa.domain, power):
        total += p[2]

    new_data = {'Total_Power': total}
    df = df.append(new_data, ignore_index=True)
    max_power = df.max()
    print(max_power)
    plt.plot(df.tail(1000)) # plotting by columns
    display.clear_output(wait=True)
    plt.show()
    count += 1