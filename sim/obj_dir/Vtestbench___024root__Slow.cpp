// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtestbench.h for the primary calling header

#include "verilated.h"

#include "Vtestbench__Syms.h"
#include "Vtestbench___024root.h"

void Vtestbench___024root___ctor_var_reset(Vtestbench___024root* vlSelf);

Vtestbench___024root::Vtestbench___024root(Vtestbench__Syms* symsp, const char* name)
    : VerilatedModule{name}
    , __VdlySched{*symsp->_vm_contextp__}
    , vlSymsp{symsp}
 {
    // Reset structure values
    Vtestbench___024root___ctor_var_reset(this);
}

void Vtestbench___024root::__Vconfigure(bool first) {
    if (false && first) {}  // Prevent unused
}

Vtestbench___024root::~Vtestbench___024root() {
}
