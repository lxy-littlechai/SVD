#include "adf.h"
#include "Orthogonalize.h"

template <int ROW>
class OrthogonalizeUnit: public adf::graph {
private:
    adf::kernel k;

public:
    adf::port<input> in[2];
    adf::port<output> out[2]; 

    OrthogonalizeUnit() {
        k = adf::kernel::create(orthogonalize<ROW>);
        adf::source(k) = "aie/src/ProcessUnit/Orthogonalize.cpp";
        adf::runtime<ratio>(k) = 1;
        adf::connect<> (in[0], k.in[0]);
        adf::connect<> (in[1], k.in[1]);        
        adf::connect<> (k.out[0], out[0]);
        adf::connect<> (k.out[1], out[1]);
    }
};