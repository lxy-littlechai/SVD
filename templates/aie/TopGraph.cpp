#include "TopGraph.h"
#include "../SystemConfig.h"

{% for graphs in orth_graph_list %}
{% for graph in graphs %}
TopSweepGraph<ROW, BLOCK_SIZE, {{graph['start_col']}}, {{graph['start_row']}}, {{graph['start_direction']}}> topSweepGraph{{graph['task_id']}}_{{graph['graph_id']}}("{{graph['task_id']}}_{{graph['graph_id']}}");
{% endfor %}
{% endfor %}

{% for graphs in norm_graph_list %}
{% for graph in graphs %}
TopNormGraph<ROW, BLOCK_SIZE, {{graph['start_col']}}, {{graph['start_row']}}, {{graph['start_direction']}}> topNormGraph{{graph['task_id']}}_{{graph['graph_id']}}("{{graph['task_id']}}_{{graph['graph_id']}}");
{% endfor %}
{% endfor %}

#if defined(__AIESIM__) || defined(__X86SIM__)

int main() {
    
    
    return 0;
}
#endif