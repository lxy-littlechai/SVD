#include "adf.h"
#include <cstring>
#include "ProcessUnit/Orthogonalize.h"
using namespace adf;

template<int MatrixROW, int GraphSize>
class TestGraph: public adf::graph {
private:
    const int ROW = 2*GraphSize-1;
    const int COL = GraphSize;

    kernel orth[GraphSize][2*GraphSize];// (col, row)

    

public:
    input_port in[GraphSize][2];
    output_port out[GraphSize][2];

    TestGraph() {
        for(int i = 0;i < ROW;i ++) {
            for(int j = 0;j < COL;j ++) {
                orth[j][i] = adf::kernel::create(orthogonalize<MatrixROW>);
                adf::source(orth[j][i]) = "aie/src/ProcessUnit/Orthogonalize.cpp";
                runtime<ratio>(orth[j][i]) = 0.9;
            }
        }
      
        
         // connection
        for(int i = 0;i < COL;i ++) {
            connect<> (in[i][0], orth[i][0].in[0]);
            connect<> (in[i][1], orth[i][0].in[1]);

            connect<> (orth[i][ROW-1].out[0], out[i][0]);
            connect<> (orth[i][ROW-1].out[1], out[i][1]);
        }

        for(int i = 0;i < ROW-1;i ++) {
            for(int j = 0;j < COL;j ++) {
                connect<> (orth[j][i].out[0], orth[j][i+1].in[0]);
                connect<> (orth[j][i].out[1], orth[j][i+1].in[1]);
            }
        }

        

    }



};