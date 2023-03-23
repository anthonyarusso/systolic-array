// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vtestbench.h for the primary calling header

#ifndef VERILATED_VTESTBENCH___024ROOT_H_
#define VERILATED_VTESTBENCH___024ROOT_H_  // guard

#include "verilated.h"
#include "verilated_timing.h"

class Vtestbench__Syms;

class Vtestbench___024root final : public VerilatedModule {
  public:

    // DESIGN SPECIFIC STATE
    // Anonymous structures to workaround compiler member-count bugs
    struct {
        CData/*0:0*/ testbench__DOT__clk_i;
        CData/*0:0*/ testbench__DOT__reset_i;
        CData/*1:0*/ testbench__DOT__flush_i;
        CData/*1:0*/ testbench__DOT__row_valid_i;
        CData/*1:0*/ testbench__DOT__row_ready_o;
        CData/*1:0*/ testbench__DOT__col_valid_i;
        CData/*1:0*/ testbench__DOT__col_ready_o;
        CData/*3:0*/ testbench__DOT__z_valid_o;
        CData/*3:0*/ testbench__DOT__z_yumi_i;
        CData/*0:0*/ testbench__DOT__en_i;
        CData/*0:0*/ testbench__DOT__rg__DOT__ctr_lo_r;
        CData/*3:0*/ testbench__DOT__rg__DOT__ctr_hi_r;
        CData/*0:0*/ testbench__DOT__rg__DOT__phase_lo_r;
        CData/*0:0*/ testbench__DOT__rg__DOT__phase_hi_r;
        CData/*7:0*/ testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_r;
        CData/*7:0*/ testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_n;
        CData/*0:0*/ testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__flush_r;
        CData/*0:0*/ testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__reset_flush_r;
        CData/*7:0*/ testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_r;
        CData/*7:0*/ testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_n;
        CData/*0:0*/ testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__flush_r;
        CData/*0:0*/ testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__reset_flush_r;
        CData/*7:0*/ testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_r;
        CData/*7:0*/ testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_n;
        CData/*0:0*/ testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__flush_r;
        CData/*0:0*/ testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__reset_flush_r;
        CData/*7:0*/ testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_r;
        CData/*7:0*/ testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_n;
        CData/*0:0*/ testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__flush_r;
        CData/*0:0*/ testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__reset_flush_r;
        CData/*0:0*/ __Vtrigrprev__TOP__testbench__DOT__clk_i;
        CData/*0:0*/ __Vtrigrprev__TOP__testbench__DOT__reset_i;
        CData/*0:0*/ __VactContinue;
        IData/*31:0*/ testbench__DOT__i;
        VlWide<4>/*127:0*/ testbench__DOT__flat_z_o;
        VlWide<4>/*127:0*/ testbench__DOT__flat_correct_o;
        IData/*31:0*/ testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__a_r;
        IData/*31:0*/ testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__b_r;
        IData/*31:0*/ testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__accum_r;
        IData/*31:0*/ testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__product_r;
        IData/*31:0*/ testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__a_r;
        IData/*31:0*/ testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__b_r;
        IData/*31:0*/ testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__accum_r;
        IData/*31:0*/ testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__product_r;
        IData/*31:0*/ testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__a_r;
        IData/*31:0*/ testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__b_r;
        IData/*31:0*/ testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__accum_r;
        IData/*31:0*/ testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__product_r;
        IData/*31:0*/ testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__a_r;
        IData/*31:0*/ testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__b_r;
        IData/*31:0*/ testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__accum_r;
        IData/*31:0*/ testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__product_r;
        IData/*31:0*/ __VstlIterCount;
        IData/*31:0*/ __VactIterCount;
        QData/*63:0*/ testbench__DOT__flat_row_i;
        QData/*63:0*/ testbench__DOT__flat_col_i;
        VlUnpacked<IData/*31:0*/, 2> testbench__DOT__row_i;
        VlUnpacked<IData/*31:0*/, 2> testbench__DOT__col_i;
        VlUnpacked<VlUnpacked<IData/*31:0*/, 2>, 2> testbench__DOT__correct_o;
        VlUnpacked<VlUnpacked<IData/*31:0*/, 2>, 2> testbench__DOT__z_o;
        VlUnpacked<VlUnpacked<IData/*31:0*/, 3>, 2> testbench__DOT__dut__DOT__rows_w;
        VlUnpacked<VlUnpacked<IData/*31:0*/, 2>, 3> testbench__DOT__dut__DOT__cols_w;
        VlUnpacked<VlUnpacked<IData/*31:0*/, 2>, 2> testbench__DOT__dut__DOT__z_w;
        VlUnpacked<VlUnpacked<CData/*0:0*/, 3>, 2> testbench__DOT__dut__DOT__row_valids_w;
    };
    struct {
        VlUnpacked<VlUnpacked<CData/*0:0*/, 2>, 3> testbench__DOT__dut__DOT__col_valids_w;
        VlUnpacked<VlUnpacked<CData/*0:0*/, 2>, 2> testbench__DOT__dut__DOT__z_valids_w;
        VlUnpacked<VlUnpacked<CData/*0:0*/, 3>, 2> testbench__DOT__dut__DOT__row_readys_w;
        VlUnpacked<VlUnpacked<CData/*0:0*/, 2>, 3> testbench__DOT__dut__DOT__col_readys_w;
        VlUnpacked<VlUnpacked<CData/*0:0*/, 2>, 2> testbench__DOT__dut__DOT__z_readys_w;
        VlUnpacked<VlUnpacked<CData/*0:0*/, 3>, 2> testbench__DOT__dut__DOT__flushes_w;
        VlUnpacked<CData/*0:0*/, 7> __Vm_traceActivity;
    };
    VlTriggerScheduler __VtrigSched_hec42002a__0;
    VlTriggerScheduler __VtrigSched_hebc0aa59__0;
    VlTriggerScheduler __VtrigSched_hebc0aaa0__0;
    VlDelayScheduler __VdlySched;
    VlTriggerVec<1> __VstlTriggered;
    VlTriggerVec<5> __VactTriggered;
    VlTriggerVec<5> __VnbaTriggered;

    // INTERNAL VARIABLES
    Vtestbench__Syms* const vlSymsp;

    // CONSTRUCTORS
    Vtestbench___024root(Vtestbench__Syms* symsp, const char* name);
    ~Vtestbench___024root();
    VL_UNCOPYABLE(Vtestbench___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);


#endif  // guard
