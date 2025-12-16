#include "TopGraph.h"
#include "../SystemConfig.h"

{% for graphs in orth_graph_list %}
{% for graph in graphs %}
TopSweepGraph<ROW/CascadeLevel, BLOCK_SIZE, IO_NUM, SUB_BLOCK_SIZE, {{graph['start_col']}}, {{graph['start_row']}}, {{graph['start_direction']}}, CascadeLevel> topSweepGraph{{graph['task_id']}}_{{graph['graph_id']}}("{{graph['task_id']}}_{{graph['graph_id']}}");
{% endfor %}
{% endfor %}

{% for graphs in norm_graph_list %}
{% for graph in graphs %}
TopNormGraph<ROW/CascadeLevel, SUB_BLOCK_SIZE, BLOCK_SIZE, {{graph['start_col']}}, {{graph['start_row']}}, {{graph['start_direction']}}, CascadeLevel> topNormGraph{{graph['task_id']}}_{{graph['graph_id']}}("{{graph['task_id']}}_{{graph['graph_id']}}");
{% endfor %}
{% endfor %}

#if defined(__AIESIM__) || defined(__X86SIM__)

int main() {
{% for graphs in orth_graph_list %}
{% for graph in graphs %}
 topSweepGraph{{graph['task_id']}}_{{graph['graph_id']}}.init();
 topSweepGraph{{graph['task_id']}}_{{graph['graph_id']}}.run(1);
 topSweepGraph{{graph['task_id']}}_{{graph['graph_id']}}.end();
{% endfor %}
{% endfor %}
    
    return 0;
}
#endif