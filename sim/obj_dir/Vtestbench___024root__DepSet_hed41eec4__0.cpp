// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtestbench.h for the primary calling header

#include "verilated.h"

#include "Vtestbench___024root.h"

VL_ATTR_COLD void Vtestbench___024root___eval_initial__TOP(Vtestbench___024root* vlSelf);
VlCoroutine Vtestbench___024root___eval_initial__TOP__0(Vtestbench___024root* vlSelf);
VlCoroutine Vtestbench___024root___eval_initial__TOP__1(Vtestbench___024root* vlSelf);

void Vtestbench___024root___eval_initial(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___eval_initial\n"); );
    // Body
    Vtestbench___024root___eval_initial__TOP(vlSelf);
    vlSelf->__Vm_traceActivity[1U] = 1U;
    Vtestbench___024root___eval_initial__TOP__0(vlSelf);
    Vtestbench___024root___eval_initial__TOP__1(vlSelf);
    vlSelf->__Vtrigrprev__TOP__testbench__DOT__clk_i 
        = vlSelf->testbench__DOT__clk_i;
    vlSelf->__Vtrigrprev__TOP__testbench__DOT__reset_i 
        = vlSelf->testbench__DOT__reset_i;
}

VL_INLINE_OPT VlCoroutine Vtestbench___024root___eval_initial__TOP__1(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___eval_initial__TOP__1\n"); );
    // Body
    while (1U) {
        co_await vlSelf->__VdlySched.delay(0x1388U, 
                                           "../src/nonsynth_clock_gen.sv", 
                                           12);
        vlSelf->testbench__DOT__clk_i = (1U & (~ (IData)(vlSelf->testbench__DOT__clk_i)));
    }
}

extern const VlUnpacked<CData/*7:0*/, 4096> Vtestbench__ConstPool__TABLE_he8c4175f_0;

VL_INLINE_OPT void Vtestbench___024root___act_comb__TOP__0(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___act_comb__TOP__0\n"); );
    // Init
    SData/*11:0*/ __Vtableidx1;
    __Vtableidx1 = 0;
    SData/*11:0*/ __Vtableidx2;
    __Vtableidx2 = 0;
    SData/*11:0*/ __Vtableidx3;
    __Vtableidx3 = 0;
    SData/*11:0*/ __Vtableidx4;
    __Vtableidx4 = 0;
    // Body
    vlSelf->testbench__DOT__dut__DOT__cols_w[0U][0U] 
        = (IData)(vlSelf->testbench__DOT__flat_col_i);
    vlSelf->testbench__DOT__dut__DOT__cols_w[0U][1U] 
        = (IData)((vlSelf->testbench__DOT__flat_col_i 
                   >> 0x20U));
    vlSelf->testbench__DOT__dut__DOT__rows_w[0U][0U] 
        = (IData)(vlSelf->testbench__DOT__flat_row_i);
    vlSelf->testbench__DOT__dut__DOT__rows_w[1U][0U] 
        = (IData)((vlSelf->testbench__DOT__flat_row_i 
                   >> 0x20U));
    vlSelf->testbench__DOT__dut__DOT__z_readys_w[0U][0U] 
        = (1U & (IData)(vlSelf->testbench__DOT__z_yumi_i));
    vlSelf->testbench__DOT__dut__DOT__z_readys_w[0U][1U] 
        = (1U & ((IData)(vlSelf->testbench__DOT__z_yumi_i) 
                 >> 2U));
    vlSelf->testbench__DOT__dut__DOT__z_readys_w[1U][0U] 
        = (1U & ((IData)(vlSelf->testbench__DOT__z_yumi_i) 
                 >> 1U));
    vlSelf->testbench__DOT__dut__DOT__z_readys_w[1U][1U] 
        = (1U & ((IData)(vlSelf->testbench__DOT__z_yumi_i) 
                 >> 3U));
    vlSelf->testbench__DOT__dut__DOT__col_valids_w[0U][0U] 
        = (1U & (IData)(vlSelf->testbench__DOT__col_valid_i));
    vlSelf->testbench__DOT__dut__DOT__col_valids_w[0U][1U] 
        = (1U & ((IData)(vlSelf->testbench__DOT__col_valid_i) 
                 >> 1U));
    vlSelf->testbench__DOT__dut__DOT__row_valids_w[0U][0U] 
        = (1U & (IData)(vlSelf->testbench__DOT__row_valid_i));
    vlSelf->testbench__DOT__dut__DOT__row_valids_w[1U][0U] 
        = (1U & ((IData)(vlSelf->testbench__DOT__row_valid_i) 
                 >> 1U));
    vlSelf->testbench__DOT__dut__DOT__flushes_w[0U][0U] 
        = (1U & (IData)(vlSelf->testbench__DOT__flush_i));
    vlSelf->testbench__DOT__dut__DOT__flushes_w[1U][0U] 
        = (1U & ((IData)(vlSelf->testbench__DOT__flush_i) 
                 >> 1U));
    __Vtableidx1 = ((vlSelf->testbench__DOT__dut__DOT__col_readys_w
                     [1U][0U] << 0xbU) | ((vlSelf->testbench__DOT__dut__DOT__row_readys_w
                                           [0U][1U] 
                                           << 0xaU) 
                                          | ((vlSelf->testbench__DOT__dut__DOT__col_valids_w
                                              [0U][0U] 
                                              << 9U) 
                                             | ((vlSelf->testbench__DOT__dut__DOT__row_valids_w
                                                 [0U]
                                                 [0U] 
                                                 << 8U) 
                                                | (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_r)))));
    vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_n 
        = Vtestbench__ConstPool__TABLE_he8c4175f_0[__Vtableidx1];
    __Vtableidx2 = ((vlSelf->testbench__DOT__dut__DOT__col_readys_w
                     [1U][1U] << 0xbU) | ((vlSelf->testbench__DOT__dut__DOT__row_readys_w
                                           [0U][2U] 
                                           << 0xaU) 
                                          | ((vlSelf->testbench__DOT__dut__DOT__col_valids_w
                                              [0U][1U] 
                                              << 9U) 
                                             | ((vlSelf->testbench__DOT__dut__DOT__row_valids_w
                                                 [0U]
                                                 [1U] 
                                                 << 8U) 
                                                | (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_r)))));
    vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_n 
        = Vtestbench__ConstPool__TABLE_he8c4175f_0[__Vtableidx2];
    __Vtableidx3 = ((vlSelf->testbench__DOT__dut__DOT__col_readys_w
                     [2U][0U] << 0xbU) | ((vlSelf->testbench__DOT__dut__DOT__row_readys_w
                                           [1U][1U] 
                                           << 0xaU) 
                                          | ((vlSelf->testbench__DOT__dut__DOT__col_valids_w
                                              [1U][0U] 
                                              << 9U) 
                                             | ((vlSelf->testbench__DOT__dut__DOT__row_valids_w
                                                 [1U]
                                                 [0U] 
                                                 << 8U) 
                                                | (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_r)))));
    vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_n 
        = Vtestbench__ConstPool__TABLE_he8c4175f_0[__Vtableidx3];
    __Vtableidx4 = ((vlSelf->testbench__DOT__dut__DOT__col_readys_w
                     [2U][1U] << 0xbU) | ((vlSelf->testbench__DOT__dut__DOT__row_readys_w
                                           [1U][2U] 
                                           << 0xaU) 
                                          | ((vlSelf->testbench__DOT__dut__DOT__col_valids_w
                                              [1U][1U] 
                                              << 9U) 
                                             | ((vlSelf->testbench__DOT__dut__DOT__row_valids_w
                                                 [1U]
                                                 [1U] 
                                                 << 8U) 
                                                | (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_r)))));
    vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_n 
        = Vtestbench__ConstPool__TABLE_he8c4175f_0[__Vtableidx4];
    vlSelf->testbench__DOT__dut__DOT__z_valids_w[0U][0U] 
        = vlSelf->testbench__DOT__dut__DOT__flushes_w
        [0U][0U];
    vlSelf->testbench__DOT__dut__DOT__z_valids_w[0U][1U] 
        = vlSelf->testbench__DOT__dut__DOT__flushes_w
        [0U][1U];
    vlSelf->testbench__DOT__dut__DOT__z_valids_w[1U][0U] 
        = vlSelf->testbench__DOT__dut__DOT__flushes_w
        [1U][0U];
    vlSelf->testbench__DOT__dut__DOT__z_valids_w[1U][1U] 
        = vlSelf->testbench__DOT__dut__DOT__flushes_w
        [1U][1U];
    vlSelf->testbench__DOT__z_valid_o = ((0xeU & (IData)(vlSelf->testbench__DOT__z_valid_o)) 
                                         | vlSelf->testbench__DOT__dut__DOT__z_valids_w
                                         [0U][0U]);
    vlSelf->testbench__DOT__z_valid_o = ((9U & (IData)(vlSelf->testbench__DOT__z_valid_o)) 
                                         | ((vlSelf->testbench__DOT__dut__DOT__z_valids_w
                                             [0U][1U] 
                                             << 2U) 
                                            | (vlSelf->testbench__DOT__dut__DOT__z_valids_w
                                               [1U]
                                               [0U] 
                                               << 1U)));
    vlSelf->testbench__DOT__z_valid_o = ((7U & (IData)(vlSelf->testbench__DOT__z_valid_o)) 
                                         | (vlSelf->testbench__DOT__dut__DOT__z_valids_w
                                            [1U][1U] 
                                            << 3U));
}

void Vtestbench___024root___eval_act(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___eval_act\n"); );
    // Body
    if (((vlSelf->__VactTriggered.at(0U) | vlSelf->__VactTriggered.at(1U)) 
         | vlSelf->__VactTriggered.at(3U))) {
        Vtestbench___024root___act_comb__TOP__0(vlSelf);
        vlSelf->__Vm_traceActivity[3U] = 1U;
    }
}

VL_INLINE_OPT void Vtestbench___024root___nba_sequent__TOP__0(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___nba_sequent__TOP__0\n"); );
    // Body
    VL_WRITEF("__________ ___________  _______________________________\n\\______   \\\\_   _____/ /   _____/\\_   _____/\\__    ___/\n |       _/ |    __)_  \\_____  \\  |    __)_   |    |   \n |    |   \\ |        \\ /        \\ |        \\  |    |  1->0 time = %10#\n |____|_  //_______  //_______  //_______  /  |____|   \n ASYNC  \\/         \\/         \\/         \\/            \n",
              32,(IData)(VL_TIME_UNITED_Q(1000)));
}

VL_INLINE_OPT void Vtestbench___024root___nba_sequent__TOP__1(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___nba_sequent__TOP__1\n"); );
    // Body
    VL_WRITEF("__________ ___________  _______________________________\n\\______   \\\\_   _____/ /   _____/\\_   _____/\\__    ___/\n |       _/ |    __)_  \\_____  \\  |    __)_   |    |   \n |    |   \\ |        \\ /        \\ |        \\  |    |  0->1 time = %10#\n |____|_  //_______  //_______  //_______  /  |____|   \n ASYNC  \\/         \\/         \\/         \\/            \n",
              32,(IData)(VL_TIME_UNITED_Q(1000)));
}

VL_INLINE_OPT void Vtestbench___024root___nba_sequent__TOP__2(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___nba_sequent__TOP__2\n"); );
    // Init
    CData/*0:0*/ __Vdly__testbench__DOT__rg__DOT__ctr_lo_r;
    __Vdly__testbench__DOT__rg__DOT__ctr_lo_r = 0;
    // Body
    __Vdly__testbench__DOT__rg__DOT__ctr_lo_r = vlSelf->testbench__DOT__rg__DOT__ctr_lo_r;
    if ((1U & (~ (IData)(vlSelf->testbench__DOT__rg__DOT__phase_lo_r)))) {
        __Vdly__testbench__DOT__rg__DOT__ctr_lo_r = 
            (1U & ((IData)(1U) + (IData)(vlSelf->testbench__DOT__rg__DOT__ctr_lo_r)));
    }
    if (vlSelf->testbench__DOT__rg__DOT__ctr_lo_r) {
        if ((1U & (~ (IData)(vlSelf->testbench__DOT__rg__DOT__phase_hi_r)))) {
            vlSelf->testbench__DOT__rg__DOT__ctr_hi_r 
                = (0xfU & ((IData)(vlSelf->testbench__DOT__rg__DOT__ctr_hi_r) 
                           + (IData)(vlSelf->testbench__DOT__rg__DOT__ctr_lo_r)));
        }
    }
    vlSelf->testbench__DOT__rg__DOT__ctr_lo_r = __Vdly__testbench__DOT__rg__DOT__ctr_lo_r;
    vlSelf->testbench__DOT__rg__DOT__phase_lo_r = vlSelf->testbench__DOT__rg__DOT__ctr_lo_r;
    vlSelf->testbench__DOT__rg__DOT__phase_hi_r = (0xaU 
                                                   == (IData)(vlSelf->testbench__DOT__rg__DOT__ctr_hi_r));
    vlSelf->testbench__DOT__reset_i = ((IData)(vlSelf->testbench__DOT__rg__DOT__ctr_lo_r) 
                                       ^ (0xaU == (IData)(vlSelf->testbench__DOT__rg__DOT__ctr_hi_r)));
}

VL_INLINE_OPT void Vtestbench___024root___nba_sequent__TOP__3(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___nba_sequent__TOP__3\n"); );
    // Init
    CData/*0:0*/ __Vdly__testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__reset_flush_r;
    __Vdly__testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__reset_flush_r = 0;
    IData/*31:0*/ __Vdly__testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__accum_r;
    __Vdly__testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__accum_r = 0;
    CData/*0:0*/ __Vdly__testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__reset_flush_r;
    __Vdly__testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__reset_flush_r = 0;
    IData/*31:0*/ __Vdly__testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__accum_r;
    __Vdly__testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__accum_r = 0;
    CData/*0:0*/ __Vdly__testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__reset_flush_r;
    __Vdly__testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__reset_flush_r = 0;
    IData/*31:0*/ __Vdly__testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__accum_r;
    __Vdly__testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__accum_r = 0;
    CData/*0:0*/ __Vdly__testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__reset_flush_r;
    __Vdly__testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__reset_flush_r = 0;
    IData/*31:0*/ __Vdly__testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__accum_r;
    __Vdly__testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__accum_r = 0;
    // Body
    __Vdly__testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__reset_flush_r 
        = vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__reset_flush_r;
    __Vdly__testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__reset_flush_r 
        = vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__reset_flush_r;
    __Vdly__testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__reset_flush_r 
        = vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__reset_flush_r;
    __Vdly__testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__reset_flush_r 
        = vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__reset_flush_r;
    __Vdly__testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__accum_r 
        = vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__accum_r;
    __Vdly__testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__accum_r 
        = vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__accum_r;
    __Vdly__testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__accum_r 
        = vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__accum_r;
    __Vdly__testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__accum_r 
        = vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__accum_r;
    __Vdly__testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__reset_flush_r 
        = vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__flush_r;
    __Vdly__testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__reset_flush_r 
        = vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__flush_r;
    __Vdly__testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__reset_flush_r 
        = vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__flush_r;
    __Vdly__testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__reset_flush_r 
        = vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__flush_r;
    if (((IData)(vlSelf->testbench__DOT__reset_i) | (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__flush_r))) {
        __Vdly__testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__accum_r = 0U;
    } else if (((IData)(vlSelf->testbench__DOT__en_i) 
                & (0x10U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_r)))) {
        __Vdly__testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__accum_r 
            = (vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__accum_r 
               + vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__product_r);
    }
    if (((IData)(vlSelf->testbench__DOT__reset_i) | (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__flush_r))) {
        __Vdly__testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__accum_r = 0U;
    } else if (((IData)(vlSelf->testbench__DOT__en_i) 
                & (0x10U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_r)))) {
        __Vdly__testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__accum_r 
            = (vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__accum_r 
               + vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__product_r);
    }
    if (((IData)(vlSelf->testbench__DOT__reset_i) | (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__flush_r))) {
        __Vdly__testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__accum_r = 0U;
    } else if (((IData)(vlSelf->testbench__DOT__en_i) 
                & (0x10U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_r)))) {
        __Vdly__testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__accum_r 
            = (vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__accum_r 
               + vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__product_r);
    }
    if (((IData)(vlSelf->testbench__DOT__reset_i) | (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__flush_r))) {
        __Vdly__testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__accum_r = 0U;
    } else if (((IData)(vlSelf->testbench__DOT__en_i) 
                & (0x10U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_r)))) {
        __Vdly__testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__accum_r 
            = (vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__accum_r 
               + vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__product_r);
    }
    vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__accum_r 
        = __Vdly__testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__accum_r;
    vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__accum_r 
        = __Vdly__testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__accum_r;
    vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__accum_r 
        = __Vdly__testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__accum_r;
    vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__accum_r 
        = __Vdly__testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__accum_r;
    vlSelf->testbench__DOT__dut__DOT__z_w[1U][1U] = vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__accum_r;
    if (((IData)(vlSelf->testbench__DOT__reset_i) | (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__reset_flush_r))) {
        vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__flush_r = 0U;
    } else if (vlSelf->testbench__DOT__dut__DOT__flushes_w
               [1U][1U]) {
        vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__flush_r = 1U;
    }
    if (vlSelf->testbench__DOT__reset_i) {
        vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__product_r = 0U;
        vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__product_r = 0U;
        vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__product_r = 0U;
        vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__product_r = 0U;
        vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__a_r = 0U;
        vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__b_r = 0U;
        vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__a_r = 0U;
        vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__b_r = 0U;
        vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__a_r = 0U;
        vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__b_r = 0U;
        vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__a_r = 0U;
        vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__b_r = 0U;
        vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_r = 1U;
        vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_r = 1U;
        vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_r = 1U;
        vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_r = 1U;
    } else {
        if (((IData)(vlSelf->testbench__DOT__en_i) 
             & (8U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_r)))) {
            vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__product_r 
                = (vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__a_r 
                   * vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__b_r);
        }
        if (((IData)(vlSelf->testbench__DOT__en_i) 
             & (8U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_r)))) {
            vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__product_r 
                = (vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__a_r 
                   * vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__b_r);
        }
        if (((IData)(vlSelf->testbench__DOT__en_i) 
             & (8U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_r)))) {
            vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__product_r 
                = (vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__a_r 
                   * vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__b_r);
        }
        if (((IData)(vlSelf->testbench__DOT__en_i) 
             & (8U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_r)))) {
            vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__product_r 
                = (vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__a_r 
                   * vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__b_r);
        }
        if (((IData)(vlSelf->testbench__DOT__en_i) 
             & ((1U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_r)) 
                | (4U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_r))))) {
            vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__a_r 
                = vlSelf->testbench__DOT__dut__DOT__rows_w
                [1U][1U];
        }
        if (((IData)(vlSelf->testbench__DOT__en_i) 
             & ((1U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_r)) 
                | (2U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_r))))) {
            vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__b_r 
                = vlSelf->testbench__DOT__dut__DOT__cols_w
                [1U][1U];
        }
        if (((IData)(vlSelf->testbench__DOT__en_i) 
             & ((1U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_r)) 
                | (4U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_r))))) {
            vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__a_r 
                = vlSelf->testbench__DOT__dut__DOT__rows_w
                [1U][0U];
        }
        if (((IData)(vlSelf->testbench__DOT__en_i) 
             & ((1U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_r)) 
                | (2U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_r))))) {
            vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__b_r 
                = vlSelf->testbench__DOT__dut__DOT__cols_w
                [1U][0U];
        }
        if (((IData)(vlSelf->testbench__DOT__en_i) 
             & ((1U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_r)) 
                | (4U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_r))))) {
            vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__a_r 
                = vlSelf->testbench__DOT__dut__DOT__rows_w
                [0U][1U];
        }
        if (((IData)(vlSelf->testbench__DOT__en_i) 
             & ((1U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_r)) 
                | (2U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_r))))) {
            vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__b_r 
                = vlSelf->testbench__DOT__dut__DOT__cols_w
                [0U][1U];
        }
        if (((IData)(vlSelf->testbench__DOT__en_i) 
             & ((1U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_r)) 
                | (4U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_r))))) {
            vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__a_r 
                = vlSelf->testbench__DOT__dut__DOT__rows_w
                [0U][0U];
        }
        if (((IData)(vlSelf->testbench__DOT__en_i) 
             & ((1U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_r)) 
                | (2U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_r))))) {
            vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__b_r 
                = vlSelf->testbench__DOT__dut__DOT__cols_w
                [0U][0U];
        }
        if (vlSelf->testbench__DOT__en_i) {
            vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_r 
                = vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_n;
            vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_r 
                = vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_n;
            vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_r 
                = vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_n;
            vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_r 
                = vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_n;
        }
    }
    vlSelf->testbench__DOT__dut__DOT__z_w[1U][0U] = vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__accum_r;
    if (((IData)(vlSelf->testbench__DOT__reset_i) | (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__reset_flush_r))) {
        vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__flush_r = 0U;
    } else if (vlSelf->testbench__DOT__dut__DOT__flushes_w
               [1U][0U]) {
        vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__flush_r = 1U;
    }
    vlSelf->testbench__DOT__dut__DOT__z_w[0U][1U] = vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__accum_r;
    if (((IData)(vlSelf->testbench__DOT__reset_i) | (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__reset_flush_r))) {
        vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__flush_r = 0U;
    } else if (vlSelf->testbench__DOT__dut__DOT__flushes_w
               [0U][1U]) {
        vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__flush_r = 1U;
    }
    vlSelf->testbench__DOT__dut__DOT__z_w[0U][0U] = vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__accum_r;
    if (((IData)(vlSelf->testbench__DOT__reset_i) | (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__reset_flush_r))) {
        vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__flush_r = 0U;
    } else if (vlSelf->testbench__DOT__dut__DOT__flushes_w
               [0U][0U]) {
        vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__flush_r = 1U;
    }
    vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__reset_flush_r 
        = __Vdly__testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__reset_flush_r;
    vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__reset_flush_r 
        = __Vdly__testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__reset_flush_r;
    vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__reset_flush_r 
        = __Vdly__testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__reset_flush_r;
    vlSelf->testbench__DOT__flat_z_o[0U] = vlSelf->testbench__DOT__dut__DOT__z_w
        [0U][0U];
    vlSelf->testbench__DOT__flat_z_o[1U] = (IData)(
                                                   (((QData)((IData)(
                                                                     vlSelf->testbench__DOT__dut__DOT__z_w
                                                                     [0U]
                                                                     [1U])) 
                                                     << 0x20U) 
                                                    | (QData)((IData)(
                                                                      vlSelf->testbench__DOT__dut__DOT__z_w
                                                                      [1U]
                                                                      [0U]))));
    vlSelf->testbench__DOT__flat_z_o[2U] = (IData)(
                                                   ((((QData)((IData)(
                                                                      vlSelf->testbench__DOT__dut__DOT__z_w
                                                                      [0U]
                                                                      [1U])) 
                                                      << 0x20U) 
                                                     | (QData)((IData)(
                                                                       vlSelf->testbench__DOT__dut__DOT__z_w
                                                                       [1U]
                                                                       [0U]))) 
                                                    >> 0x20U));
    vlSelf->testbench__DOT__flat_z_o[3U] = vlSelf->testbench__DOT__dut__DOT__z_w
        [1U][1U];
    vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__reset_flush_r 
        = __Vdly__testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__reset_flush_r;
    vlSelf->testbench__DOT__dut__DOT__flushes_w[1U][2U] 
        = vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__flush_r;
    vlSelf->testbench__DOT__dut__DOT__flushes_w[1U][1U] 
        = vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__flush_r;
    vlSelf->testbench__DOT__dut__DOT__flushes_w[0U][2U] 
        = vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__flush_r;
    vlSelf->testbench__DOT__z_o[0U][0U] = vlSelf->testbench__DOT__flat_z_o[0U];
    vlSelf->testbench__DOT__z_o[0U][1U] = vlSelf->testbench__DOT__flat_z_o[2U];
    vlSelf->testbench__DOT__z_o[1U][0U] = vlSelf->testbench__DOT__flat_z_o[1U];
    vlSelf->testbench__DOT__z_o[1U][1U] = vlSelf->testbench__DOT__flat_z_o[3U];
    vlSelf->testbench__DOT__dut__DOT__flushes_w[0U][1U] 
        = vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__flush_r;
    vlSelf->testbench__DOT__dut__DOT__rows_w[1U][2U] 
        = vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__a_r;
    vlSelf->testbench__DOT__dut__DOT__cols_w[2U][1U] 
        = vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__b_r;
    vlSelf->testbench__DOT__dut__DOT__rows_w[1U][1U] 
        = vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__a_r;
    vlSelf->testbench__DOT__dut__DOT__cols_w[2U][0U] 
        = vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__b_r;
    vlSelf->testbench__DOT__dut__DOT__rows_w[0U][2U] 
        = vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__a_r;
    vlSelf->testbench__DOT__dut__DOT__cols_w[1U][1U] 
        = vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__b_r;
    vlSelf->testbench__DOT__dut__DOT__rows_w[0U][1U] 
        = vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__a_r;
    vlSelf->testbench__DOT__dut__DOT__cols_w[1U][0U] 
        = vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__b_r;
    vlSelf->testbench__DOT__dut__DOT__col_valids_w[2U][1U] 
        = ((0x80U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_r)) 
           | (0x20U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_r)));
    vlSelf->testbench__DOT__dut__DOT__row_valids_w[1U][2U] 
        = ((0x80U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_r)) 
           | (0x40U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_r)));
    vlSelf->testbench__DOT__dut__DOT__col_readys_w[1U][1U] 
        = ((1U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_r)) 
           | (2U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_r)));
    vlSelf->testbench__DOT__dut__DOT__row_readys_w[1U][1U] 
        = ((1U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_r)) 
           | (4U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_r)));
    vlSelf->testbench__DOT__dut__DOT__col_valids_w[2U][0U] 
        = ((0x80U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_r)) 
           | (0x20U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_r)));
    vlSelf->testbench__DOT__dut__DOT__row_valids_w[1U][1U] 
        = ((0x80U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_r)) 
           | (0x40U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_r)));
    vlSelf->testbench__DOT__dut__DOT__col_readys_w[1U][0U] 
        = ((1U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_r)) 
           | (2U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_r)));
    vlSelf->testbench__DOT__dut__DOT__row_readys_w[1U][0U] 
        = ((1U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_r)) 
           | (4U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_r)));
    vlSelf->testbench__DOT__dut__DOT__col_valids_w[1U][1U] 
        = ((0x80U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_r)) 
           | (0x20U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_r)));
    vlSelf->testbench__DOT__dut__DOT__row_valids_w[0U][2U] 
        = ((0x80U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_r)) 
           | (0x40U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_r)));
    vlSelf->testbench__DOT__dut__DOT__col_readys_w[0U][1U] 
        = ((1U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_r)) 
           | (2U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_r)));
    vlSelf->testbench__DOT__dut__DOT__row_readys_w[0U][1U] 
        = ((1U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_r)) 
           | (4U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_r)));
    vlSelf->testbench__DOT__dut__DOT__col_valids_w[1U][0U] 
        = ((0x80U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_r)) 
           | (0x20U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_r)));
    vlSelf->testbench__DOT__dut__DOT__row_valids_w[0U][1U] 
        = ((0x80U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_r)) 
           | (0x40U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_r)));
    vlSelf->testbench__DOT__dut__DOT__col_readys_w[0U][0U] 
        = ((1U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_r)) 
           | (2U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_r)));
    vlSelf->testbench__DOT__dut__DOT__row_readys_w[0U][0U] 
        = ((1U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_r)) 
           | (4U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_r)));
    vlSelf->testbench__DOT__col_ready_o = ((vlSelf->testbench__DOT__dut__DOT__col_readys_w
                                            [0U][1U] 
                                            << 1U) 
                                           | vlSelf->testbench__DOT__dut__DOT__col_readys_w
                                           [0U][0U]);
    vlSelf->testbench__DOT__row_ready_o = ((vlSelf->testbench__DOT__dut__DOT__row_readys_w
                                            [1U][0U] 
                                            << 1U) 
                                           | vlSelf->testbench__DOT__dut__DOT__row_readys_w
                                           [0U][0U]);
}

VL_INLINE_OPT void Vtestbench___024root___nba_comb__TOP__0(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___nba_comb__TOP__0\n"); );
    // Init
    SData/*11:0*/ __Vtableidx1;
    __Vtableidx1 = 0;
    SData/*11:0*/ __Vtableidx2;
    __Vtableidx2 = 0;
    SData/*11:0*/ __Vtableidx3;
    __Vtableidx3 = 0;
    SData/*11:0*/ __Vtableidx4;
    __Vtableidx4 = 0;
    // Body
    vlSelf->testbench__DOT__dut__DOT__z_readys_w[0U][0U] 
        = (1U & (IData)(vlSelf->testbench__DOT__z_yumi_i));
    vlSelf->testbench__DOT__dut__DOT__z_readys_w[0U][1U] 
        = (1U & ((IData)(vlSelf->testbench__DOT__z_yumi_i) 
                 >> 2U));
    vlSelf->testbench__DOT__dut__DOT__z_readys_w[1U][0U] 
        = (1U & ((IData)(vlSelf->testbench__DOT__z_yumi_i) 
                 >> 1U));
    vlSelf->testbench__DOT__dut__DOT__z_readys_w[1U][1U] 
        = (1U & ((IData)(vlSelf->testbench__DOT__z_yumi_i) 
                 >> 3U));
    vlSelf->testbench__DOT__dut__DOT__col_valids_w[0U][0U] 
        = (1U & (IData)(vlSelf->testbench__DOT__col_valid_i));
    vlSelf->testbench__DOT__dut__DOT__col_valids_w[0U][1U] 
        = (1U & ((IData)(vlSelf->testbench__DOT__col_valid_i) 
                 >> 1U));
    vlSelf->testbench__DOT__dut__DOT__row_valids_w[0U][0U] 
        = (1U & (IData)(vlSelf->testbench__DOT__row_valid_i));
    vlSelf->testbench__DOT__dut__DOT__row_valids_w[1U][0U] 
        = (1U & ((IData)(vlSelf->testbench__DOT__row_valid_i) 
                 >> 1U));
    vlSelf->testbench__DOT__dut__DOT__flushes_w[0U][0U] 
        = (1U & (IData)(vlSelf->testbench__DOT__flush_i));
    vlSelf->testbench__DOT__dut__DOT__flushes_w[1U][0U] 
        = (1U & ((IData)(vlSelf->testbench__DOT__flush_i) 
                 >> 1U));
    vlSelf->testbench__DOT__dut__DOT__rows_w[0U][0U] 
        = (IData)(vlSelf->testbench__DOT__flat_row_i);
    vlSelf->testbench__DOT__dut__DOT__rows_w[1U][0U] 
        = (IData)((vlSelf->testbench__DOT__flat_row_i 
                   >> 0x20U));
    vlSelf->testbench__DOT__dut__DOT__cols_w[0U][0U] 
        = (IData)(vlSelf->testbench__DOT__flat_col_i);
    vlSelf->testbench__DOT__dut__DOT__cols_w[0U][1U] 
        = (IData)((vlSelf->testbench__DOT__flat_col_i 
                   >> 0x20U));
    __Vtableidx1 = ((vlSelf->testbench__DOT__dut__DOT__col_readys_w
                     [1U][0U] << 0xbU) | ((vlSelf->testbench__DOT__dut__DOT__row_readys_w
                                           [0U][1U] 
                                           << 0xaU) 
                                          | ((vlSelf->testbench__DOT__dut__DOT__col_valids_w
                                              [0U][0U] 
                                              << 9U) 
                                             | ((vlSelf->testbench__DOT__dut__DOT__row_valids_w
                                                 [0U]
                                                 [0U] 
                                                 << 8U) 
                                                | (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_r)))));
    vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_n 
        = Vtestbench__ConstPool__TABLE_he8c4175f_0[__Vtableidx1];
    __Vtableidx2 = ((vlSelf->testbench__DOT__dut__DOT__col_readys_w
                     [1U][1U] << 0xbU) | ((vlSelf->testbench__DOT__dut__DOT__row_readys_w
                                           [0U][2U] 
                                           << 0xaU) 
                                          | ((vlSelf->testbench__DOT__dut__DOT__col_valids_w
                                              [0U][1U] 
                                              << 9U) 
                                             | ((vlSelf->testbench__DOT__dut__DOT__row_valids_w
                                                 [0U]
                                                 [1U] 
                                                 << 8U) 
                                                | (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_r)))));
    vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_n 
        = Vtestbench__ConstPool__TABLE_he8c4175f_0[__Vtableidx2];
    __Vtableidx3 = ((vlSelf->testbench__DOT__dut__DOT__col_readys_w
                     [2U][0U] << 0xbU) | ((vlSelf->testbench__DOT__dut__DOT__row_readys_w
                                           [1U][1U] 
                                           << 0xaU) 
                                          | ((vlSelf->testbench__DOT__dut__DOT__col_valids_w
                                              [1U][0U] 
                                              << 9U) 
                                             | ((vlSelf->testbench__DOT__dut__DOT__row_valids_w
                                                 [1U]
                                                 [0U] 
                                                 << 8U) 
                                                | (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_r)))));
    vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_n 
        = Vtestbench__ConstPool__TABLE_he8c4175f_0[__Vtableidx3];
    __Vtableidx4 = ((vlSelf->testbench__DOT__dut__DOT__col_readys_w
                     [2U][1U] << 0xbU) | ((vlSelf->testbench__DOT__dut__DOT__row_readys_w
                                           [1U][2U] 
                                           << 0xaU) 
                                          | ((vlSelf->testbench__DOT__dut__DOT__col_valids_w
                                              [1U][1U] 
                                              << 9U) 
                                             | ((vlSelf->testbench__DOT__dut__DOT__row_valids_w
                                                 [1U]
                                                 [1U] 
                                                 << 8U) 
                                                | (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_r)))));
    vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_n 
        = Vtestbench__ConstPool__TABLE_he8c4175f_0[__Vtableidx4];
    vlSelf->testbench__DOT__dut__DOT__z_valids_w[0U][0U] 
        = vlSelf->testbench__DOT__dut__DOT__flushes_w
        [0U][0U];
    vlSelf->testbench__DOT__dut__DOT__z_valids_w[0U][1U] 
        = vlSelf->testbench__DOT__dut__DOT__flushes_w
        [0U][1U];
    vlSelf->testbench__DOT__dut__DOT__z_valids_w[1U][0U] 
        = vlSelf->testbench__DOT__dut__DOT__flushes_w
        [1U][0U];
    vlSelf->testbench__DOT__dut__DOT__z_valids_w[1U][1U] 
        = vlSelf->testbench__DOT__dut__DOT__flushes_w
        [1U][1U];
    vlSelf->testbench__DOT__z_valid_o = ((0xeU & (IData)(vlSelf->testbench__DOT__z_valid_o)) 
                                         | vlSelf->testbench__DOT__dut__DOT__z_valids_w
                                         [0U][0U]);
    vlSelf->testbench__DOT__z_valid_o = ((9U & (IData)(vlSelf->testbench__DOT__z_valid_o)) 
                                         | ((vlSelf->testbench__DOT__dut__DOT__z_valids_w
                                             [0U][1U] 
                                             << 2U) 
                                            | (vlSelf->testbench__DOT__dut__DOT__z_valids_w
                                               [1U]
                                               [0U] 
                                               << 1U)));
    vlSelf->testbench__DOT__z_valid_o = ((7U & (IData)(vlSelf->testbench__DOT__z_valid_o)) 
                                         | (vlSelf->testbench__DOT__dut__DOT__z_valids_w
                                            [1U][1U] 
                                            << 3U));
}

void Vtestbench___024root___eval_nba(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___eval_nba\n"); );
    // Body
    if (vlSelf->__VnbaTriggered.at(1U)) {
        Vtestbench___024root___nba_sequent__TOP__0(vlSelf);
    }
    if (vlSelf->__VnbaTriggered.at(2U)) {
        Vtestbench___024root___nba_sequent__TOP__1(vlSelf);
    }
    if (vlSelf->__VnbaTriggered.at(0U)) {
        Vtestbench___024root___nba_sequent__TOP__2(vlSelf);
        vlSelf->__Vm_traceActivity[4U] = 1U;
    }
    if (vlSelf->__VnbaTriggered.at(3U)) {
        Vtestbench___024root___nba_sequent__TOP__3(vlSelf);
        vlSelf->__Vm_traceActivity[5U] = 1U;
    }
    if (((vlSelf->__VnbaTriggered.at(0U) | vlSelf->__VnbaTriggered.at(1U)) 
         | vlSelf->__VnbaTriggered.at(3U))) {
        Vtestbench___024root___nba_comb__TOP__0(vlSelf);
        vlSelf->__Vm_traceActivity[6U] = 1U;
    }
}

void Vtestbench___024root___eval_triggers__act(Vtestbench___024root* vlSelf);
void Vtestbench___024root___timing_commit(Vtestbench___024root* vlSelf);
#ifdef VL_DEBUG
VL_ATTR_COLD void Vtestbench___024root___dump_triggers__act(Vtestbench___024root* vlSelf);
#endif  // VL_DEBUG
void Vtestbench___024root___timing_resume(Vtestbench___024root* vlSelf);
#ifdef VL_DEBUG
VL_ATTR_COLD void Vtestbench___024root___dump_triggers__nba(Vtestbench___024root* vlSelf);
#endif  // VL_DEBUG

void Vtestbench___024root___eval(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___eval\n"); );
    // Init
    VlTriggerVec<5> __VpreTriggered;
    IData/*31:0*/ __VnbaIterCount;
    CData/*0:0*/ __VnbaContinue;
    // Body
    __VnbaIterCount = 0U;
    __VnbaContinue = 1U;
    while (__VnbaContinue) {
        __VnbaContinue = 0U;
        vlSelf->__VnbaTriggered.clear();
        vlSelf->__VactIterCount = 0U;
        vlSelf->__VactContinue = 1U;
        while (vlSelf->__VactContinue) {
            vlSelf->__VactContinue = 0U;
            Vtestbench___024root___eval_triggers__act(vlSelf);
            Vtestbench___024root___timing_commit(vlSelf);
            if (vlSelf->__VactTriggered.any()) {
                vlSelf->__VactContinue = 1U;
                if (VL_UNLIKELY((0x64U < vlSelf->__VactIterCount))) {
#ifdef VL_DEBUG
                    Vtestbench___024root___dump_triggers__act(vlSelf);
#endif
                    VL_FATAL_MT("testbench.sv", 3, "", "Active region did not converge.");
                }
                vlSelf->__VactIterCount = ((IData)(1U) 
                                           + vlSelf->__VactIterCount);
                __VpreTriggered.andNot(vlSelf->__VactTriggered, vlSelf->__VnbaTriggered);
                vlSelf->__VnbaTriggered.set(vlSelf->__VactTriggered);
                Vtestbench___024root___timing_resume(vlSelf);
                Vtestbench___024root___eval_act(vlSelf);
            }
        }
        if (vlSelf->__VnbaTriggered.any()) {
            __VnbaContinue = 1U;
            if (VL_UNLIKELY((0x64U < __VnbaIterCount))) {
#ifdef VL_DEBUG
                Vtestbench___024root___dump_triggers__nba(vlSelf);
#endif
                VL_FATAL_MT("testbench.sv", 3, "", "NBA region did not converge.");
            }
            __VnbaIterCount = ((IData)(1U) + __VnbaIterCount);
            Vtestbench___024root___eval_nba(vlSelf);
        }
    }
}

void Vtestbench___024root___timing_commit(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___timing_commit\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VactTriggered.at(1U))))) {
        vlSelf->__VtrigSched_hec42002a__0.commit("@(negedge testbench.reset_i)");
    }
    if ((1U & (~ (IData)(vlSelf->__VactTriggered.at(0U))))) {
        vlSelf->__VtrigSched_hebc0aa59__0.commit("@(negedge testbench.clk_i)");
    }
    if ((1U & (~ (IData)(vlSelf->__VactTriggered.at(3U))))) {
        vlSelf->__VtrigSched_hebc0aaa0__0.commit("@(posedge testbench.clk_i)");
    }
}

void Vtestbench___024root___timing_resume(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___timing_resume\n"); );
    // Body
    if (vlSelf->__VactTriggered.at(1U)) {
        vlSelf->__VtrigSched_hec42002a__0.resume("@(negedge testbench.reset_i)");
    }
    if (vlSelf->__VactTriggered.at(0U)) {
        vlSelf->__VtrigSched_hebc0aa59__0.resume("@(negedge testbench.clk_i)");
    }
    if (vlSelf->__VactTriggered.at(3U)) {
        vlSelf->__VtrigSched_hebc0aaa0__0.resume("@(posedge testbench.clk_i)");
    }
    if (vlSelf->__VactTriggered.at(4U)) {
        vlSelf->__VdlySched.resume();
    }
}

#ifdef VL_DEBUG
void Vtestbench___024root___eval_debug_assertions(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___eval_debug_assertions\n"); );
}
#endif  // VL_DEBUG
