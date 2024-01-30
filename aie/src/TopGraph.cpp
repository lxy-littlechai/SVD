#include "TopGraph.h"
TopGraph<8, 4> g1(0);
#if defined(__AIESIM__) || defined(__X86SIM__)

int main() {
    g1.init();
    g1.run(1);
    g1.end();
    return 0;
}
#endif