#include "adf.h"
#include "ProcessUnit/OrthogonalizeUnit.h"


class TopGraph: public adf::graph {
private:
    OrthogonalizeUnit<8> pu;

public:
    adf::input_plio in0;
    adf::input_plio in1;
    adf::output_plio out0;
    adf::output_plio out1;

    TopGraph() {
        in0 = adf::input_plio::create(adf::plio_32_bits, "aie/data/in0.txt");
        in1 = adf::input_plio::create(adf::plio_32_bits, "aie/data/in1.txt");
        out0 = adf::output_plio::create(adf::plio_32_bits, "aie/data/outBp.txt");
        out1 = adf::output_plio::create(adf::plio_32_bits, "aie/data/outBq.txt");

        adf::connect<> net0(in0.out[0], pu.in[0]);
        adf::connect<> net1(in1.out[0], pu.in[1]);        
        adf::connect<> net2(pu.out[0], out0.in[0]); 
        adf::connect<> net3(pu.out[1], out1.in[0]); 

    }

};