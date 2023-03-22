// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header,
// unless using verilator public meta comments.

#ifndef VERILATED_VTESTBENCH__SYMS_H_
#define VERILATED_VTESTBENCH__SYMS_H_  // guard

#include "verilated.h"
#include "verilated_fst_c.h"

// INCLUDE MODEL CLASS

#include "Vtestbench.h"

// INCLUDE MODULE CLASSES
#include "Vtestbench___024root.h"

// SYMS CLASS (contains all model state)
class Vtestbench__Syms final : public VerilatedSyms {
  public:
    // INTERNAL STATE
    Vtestbench* const __Vm_modelp;
    bool __Vm_dumping = false;  // Dumping is active
    VerilatedMutex __Vm_dumperMutex;  // Protect __Vm_dumperp
    VerilatedFstC* __Vm_dumperp VL_GUARDED_BY(__Vm_dumperMutex) = nullptr;  /// Trace class for $dump*
    bool __Vm_activity = false;  ///< Used by trace routines to determine change occurred
    uint32_t __Vm_baseCode = 0;  ///< Used by trace routines when tracing multiple models
    bool __Vm_didInit = false;

    // MODULE INSTANCE STATE
    Vtestbench___024root           TOP;

    // SCOPE NAMES
    VerilatedScope __Vscope_testbench__cg;

    // CONSTRUCTORS
    Vtestbench__Syms(VerilatedContext* contextp, const char* namep, Vtestbench* modelp);
    ~Vtestbench__Syms();

    // METHODS
    const char* name() { return TOP.name(); }
    void _traceDump();
    void _traceDumpOpen();
    void _traceDumpClose();
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

#endif  // guard
