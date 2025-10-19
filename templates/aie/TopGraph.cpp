#include "TopGraph.h"
#include "../SystemConfig.h"

{% for graph in graph_list %}

{% for i in range(1, PARALLEL_NUM+1) %}
TopSweepGraph<ROW, BLOCK_SIZE, {{graph['start_col']}}, {{graph['start_row']}}, {{graph['start_direction']}}> topSweepGraph{{graph['id']}}_{{i}}("{{graph['id']}}_{{i}}");
{% endfor %}

TopNormGraph<ROW, BLOCK_SIZE, {{graph['start_col']-1}}, {{graph['start_row']}}, {{graph['start_direction']}}> topNormGraph{{graph['id']}}("{{graph['id']}}");
{% endfor %}

#if defined(__AIESIM__) || defined(__X86SIM__)

int main() {
    
    
    return 0;
}
#endif