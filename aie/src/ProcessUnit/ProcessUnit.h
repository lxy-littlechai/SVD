#pragma once

#include "adf.h"
#include "Orthogonalize.h"
#include "Transfer.h"
#include "Normalize.h"

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

template <int ROW>
class TransferUnit: public adf::graph {
private:
    adf::kernel k;

public:
    adf::port<input> in[1];
    adf::port<output> out[1]; 

    TransferUnit() {
        k = adf::kernel::create(transfer<ROW>);
        adf::source(k) = "aie/src/ProcessUnit/Transfer.cpp";
        adf::runtime<ratio>(k) = 1;
        adf::connect<> (in[0], k.in[0]);       
        adf::connect<> (k.out[0], out[0]);
    }
};

template <int ROW>
class NormalizeUnit: public adf::graph {
private:
    adf::kernel k;

public:
    adf::port<input> in[1];
    adf::port<output> out[1]; 

    NormalizeUnit() {
        k = adf::kernel::create(normalize<ROW>);
        adf::source(k) = "aie/src/ProcessUnit/Normalize.cpp";
        adf::runtime<ratio>(k) = 1;
        adf::connect<> (in[0], k.in[0]);       
        adf::connect<> (k.out[0], out[0]);
    }
};
