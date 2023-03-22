// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtestbench.h for the primary calling header

#include "verilated.h"

#include "Vtestbench___024root.h"

VL_ATTR_COLD void Vtestbench___024root___eval_static(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___eval_static\n"); );
}

VL_ATTR_COLD void Vtestbench___024root___eval_final__TOP(Vtestbench___024root* vlSelf);

VL_ATTR_COLD void Vtestbench___024root___eval_final(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___eval_final\n"); );
    // Body
    Vtestbench___024root___eval_final__TOP(vlSelf);
}

VL_ATTR_COLD void Vtestbench___024root___eval_final__TOP(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___eval_final__TOP\n"); );
    // Body
    VL_WRITEF("Simulation time is %t\n",64,VL_TIME_UNITED_Q(1000),
              -9);
    if (((0U != ((((vlSelf->testbench__DOT__flat_z_o[0U] 
                    ^ vlSelf->testbench__DOT__flat_correct_o[0U]) 
                   | (vlSelf->testbench__DOT__flat_z_o[1U] 
                      ^ vlSelf->testbench__DOT__flat_correct_o[1U])) 
                  | (vlSelf->testbench__DOT__flat_z_o[2U] 
                     ^ vlSelf->testbench__DOT__flat_correct_o[2U])) 
                 | (vlSelf->testbench__DOT__flat_z_o[3U] 
                    ^ vlSelf->testbench__DOT__flat_correct_o[3U]))) 
         | (IData)(vlSelf->testbench__DOT__timeout_o))) {
        VL_WRITEF("    ______                    \n   / ____/_____________  _____\n  / __/ / ___/ ___/ __ \\/ ___/\n / /___/ /  / /  / /_/ / /    \n/_____/_/  /_/   \\____/_/     \n\nSimulation Failed\n");
    } else {
        VL_WRITEF("    ____  ___   __________\n   / __ \\/   | / ___/ ___/\n  / /_/ / /| | \\__ \\__  \n / ____/ ___ |___/ /__/ / \n/_/   /_/  |_/____/____/  \n\nSimulation Succeeded!\n");
    }
}

VL_ATTR_COLD void Vtestbench___024root___eval_triggers__stl(Vtestbench___024root* vlSelf);
#ifdef VL_DEBUG
VL_ATTR_COLD void Vtestbench___024root___dump_triggers__stl(Vtestbench___024root* vlSelf);
#endif  // VL_DEBUG
VL_ATTR_COLD void Vtestbench___024root___eval_stl(Vtestbench___024root* vlSelf);

VL_ATTR_COLD void Vtestbench___024root___eval_settle(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___eval_settle\n"); );
    // Init
    CData/*0:0*/ __VstlContinue;
    // Body
    vlSelf->__VstlIterCount = 0U;
    __VstlContinue = 1U;
    while (__VstlContinue) {
        __VstlContinue = 0U;
        Vtestbench___024root___eval_triggers__stl(vlSelf);
        if (vlSelf->__VstlTriggered.any()) {
            __VstlContinue = 1U;
            if (VL_UNLIKELY((0x64U < vlSelf->__VstlIterCount))) {
#ifdef VL_DEBUG
                Vtestbench___024root___dump_triggers__stl(vlSelf);
#endif
                VL_FATAL_MT("testbench.sv", 3, "", "Settle region did not converge.");
            }
            vlSelf->__VstlIterCount = ((IData)(1U) 
                                       + vlSelf->__VstlIterCount);
            Vtestbench___024root___eval_stl(vlSelf);
        }
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtestbench___024root___dump_triggers__stl(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___dump_triggers__stl\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VstlTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if (vlSelf->__VstlTriggered.at(0U)) {
        VL_DBG_MSGF("         'stl' region trigger index 0 is active: Internal 'stl' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

extern const VlUnpacked<CData/*7:0*/, 4096> Vtestbench__ConstPool__TABLE_he8c4175f_0;

VL_ATTR_COLD void Vtestbench___024root___stl_sequent__TOP__0(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___stl_sequent__TOP__0\n"); );
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
    vlSelf->testbench__DOT__rg__DOT__phase_lo_r = vlSelf->testbench__DOT__rg__DOT__ctr_lo_r;
    vlSelf->testbench__DOT__rg__DOT__phase_hi_r = (0xaU 
                                                   == (IData)(vlSelf->testbench__DOT__rg__DOT__ctr_hi_r));
    vlSelf->testbench__DOT__reset_i = ((IData)(vlSelf->testbench__DOT__rg__DOT__ctr_lo_r) 
                                       ^ (0xaU == (IData)(vlSelf->testbench__DOT__rg__DOT__ctr_hi_r)));
    vlSelf->testbench__DOT__flat_correct_o[0U] = vlSelf->testbench__DOT__correct_o
        [0U][0U];
    vlSelf->testbench__DOT__flat_correct_o[1U] = (IData)(
                                                         (((QData)((IData)(
                                                                           vlSelf->testbench__DOT__correct_o
                                                                           [0U]
                                                                           [1U])) 
                                                           << 0x20U) 
                                                          | (QData)((IData)(
                                                                            vlSelf->testbench__DOT__correct_o
                                                                            [1U]
                                                                            [0U]))));
    vlSelf->testbench__DOT__flat_correct_o[2U] = (IData)(
                                                         ((((QData)((IData)(
                                                                            vlSelf->testbench__DOT__correct_o
                                                                            [0U]
                                                                            [1U])) 
                                                            << 0x20U) 
                                                           | (QData)((IData)(
                                                                             vlSelf->testbench__DOT__correct_o
                                                                             [1U]
                                                                             [0U]))) 
                                                          >> 0x20U));
    vlSelf->testbench__DOT__flat_correct_o[3U] = vlSelf->testbench__DOT__correct_o
        [1U][1U];
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
    vlSelf->testbench__DOT__dut__DOT__cols_w[1U][0U] 
        = vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__b_r;
    vlSelf->testbench__DOT__dut__DOT__rows_w[0U][1U] 
        = vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__a_r;
    vlSelf->testbench__DOT__dut__DOT__cols_w[1U][1U] 
        = vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__b_r;
    vlSelf->testbench__DOT__dut__DOT__rows_w[0U][2U] 
        = vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__a_r;
    vlSelf->testbench__DOT__dut__DOT__cols_w[2U][0U] 
        = vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__b_r;
    vlSelf->testbench__DOT__dut__DOT__rows_w[1U][1U] 
        = vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__a_r;
    vlSelf->testbench__DOT__dut__DOT__cols_w[2U][1U] 
        = vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__b_r;
    vlSelf->testbench__DOT__dut__DOT__rows_w[1U][2U] 
        = vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__a_r;
    vlSelf->testbench__DOT__flat_row_i = (((QData)((IData)(
                                                           vlSelf->testbench__DOT__row_i
                                                           [1U])) 
                                           << 0x20U) 
                                          | (QData)((IData)(
                                                            vlSelf->testbench__DOT__row_i
                                                            [0U])));
    vlSelf->testbench__DOT__flat_col_i = (((QData)((IData)(
                                                           vlSelf->testbench__DOT__col_i
                                                           [1U])) 
                                           << 0x20U) 
                                          | (QData)((IData)(
                                                            vlSelf->testbench__DOT__col_i
                                                            [0U])));
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
    vlSelf->testbench__DOT__dut__DOT__col_valids_w[1U][0U] 
        = ((0x80U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_r)) 
           | (0x20U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_r)));
    vlSelf->testbench__DOT__dut__DOT__row_valids_w[0U][1U] 
        = ((0x80U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_r)) 
           | (0x40U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_r)));
    vlSelf->testbench__DOT__dut__DOT__col_valids_w[1U][1U] 
        = ((0x80U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_r)) 
           | (0x20U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_r)));
    vlSelf->testbench__DOT__dut__DOT__row_valids_w[0U][2U] 
        = ((0x80U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_r)) 
           | (0x40U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_r)));
    vlSelf->testbench__DOT__dut__DOT__col_valids_w[2U][0U] 
        = ((0x80U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_r)) 
           | (0x20U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_r)));
    vlSelf->testbench__DOT__dut__DOT__row_valids_w[1U][1U] 
        = ((0x80U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_r)) 
           | (0x40U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_r)));
    vlSelf->testbench__DOT__dut__DOT__col_valids_w[2U][1U] 
        = ((0x80U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_r)) 
           | (0x20U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_r)));
    vlSelf->testbench__DOT__dut__DOT__row_valids_w[1U][2U] 
        = ((0x80U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_r)) 
           | (0x40U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_r)));
    vlSelf->testbench__DOT__dut__DOT__col_readys_w[0U][0U] 
        = ((1U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_r)) 
           | (2U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_r)));
    vlSelf->testbench__DOT__dut__DOT__row_readys_w[0U][0U] 
        = ((1U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_r)) 
           | (4U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_r)));
    vlSelf->testbench__DOT__dut__DOT__col_readys_w[0U][1U] 
        = ((1U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_r)) 
           | (2U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_r)));
    vlSelf->testbench__DOT__dut__DOT__row_readys_w[0U][1U] 
        = ((1U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_r)) 
           | (4U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_r)));
    vlSelf->testbench__DOT__dut__DOT__col_readys_w[1U][0U] 
        = ((1U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_r)) 
           | (2U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_r)));
    vlSelf->testbench__DOT__dut__DOT__row_readys_w[1U][0U] 
        = ((1U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_r)) 
           | (4U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_r)));
    vlSelf->testbench__DOT__dut__DOT__col_readys_w[1U][1U] 
        = ((1U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_r)) 
           | (2U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_r)));
    vlSelf->testbench__DOT__dut__DOT__row_readys_w[1U][1U] 
        = ((1U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_r)) 
           | (4U == (IData)(vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_r)));
    vlSelf->testbench__DOT__dut__DOT__flushes_w[0U][0U] 
        = (1U & (IData)(vlSelf->testbench__DOT__flush_i));
    vlSelf->testbench__DOT__dut__DOT__flushes_w[1U][0U] 
        = (1U & ((IData)(vlSelf->testbench__DOT__flush_i) 
                 >> 1U));
    vlSelf->testbench__DOT__dut__DOT__flushes_w[0U][1U] 
        = vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__flush_r;
    vlSelf->testbench__DOT__dut__DOT__flushes_w[0U][2U] 
        = vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__flush_r;
    vlSelf->testbench__DOT__dut__DOT__flushes_w[1U][1U] 
        = vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__flush_r;
    vlSelf->testbench__DOT__dut__DOT__flushes_w[1U][2U] 
        = vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__flush_r;
    vlSelf->testbench__DOT__dut__DOT__z_w[0U][0U] = vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__accum_r;
    vlSelf->testbench__DOT__dut__DOT__z_w[0U][1U] = vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__accum_r;
    vlSelf->testbench__DOT__dut__DOT__z_w[1U][0U] = vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__accum_r;
    vlSelf->testbench__DOT__dut__DOT__z_w[1U][1U] = vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__accum_r;
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
    vlSelf->testbench__DOT__z_o[0U][0U] = vlSelf->testbench__DOT__flat_z_o[0U];
    vlSelf->testbench__DOT__z_o[0U][1U] = vlSelf->testbench__DOT__flat_z_o[2U];
    vlSelf->testbench__DOT__z_o[1U][0U] = vlSelf->testbench__DOT__flat_z_o[1U];
    vlSelf->testbench__DOT__z_o[1U][1U] = vlSelf->testbench__DOT__flat_z_o[3U];
}

VL_ATTR_COLD void Vtestbench___024root___eval_stl(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___eval_stl\n"); );
    // Body
    if (vlSelf->__VstlTriggered.at(0U)) {
        Vtestbench___024root___stl_sequent__TOP__0(vlSelf);
        vlSelf->__Vm_traceActivity[6U] = 1U;
        vlSelf->__Vm_traceActivity[5U] = 1U;
        vlSelf->__Vm_traceActivity[4U] = 1U;
        vlSelf->__Vm_traceActivity[3U] = 1U;
        vlSelf->__Vm_traceActivity[2U] = 1U;
        vlSelf->__Vm_traceActivity[1U] = 1U;
        vlSelf->__Vm_traceActivity[0U] = 1U;
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtestbench___024root___dump_triggers__act(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___dump_triggers__act\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VactTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if (vlSelf->__VactTriggered.at(0U)) {
        VL_DBG_MSGF("         'act' region trigger index 0 is active: @(negedge testbench.clk_i)\n");
    }
    if (vlSelf->__VactTriggered.at(1U)) {
        VL_DBG_MSGF("         'act' region trigger index 1 is active: @(negedge testbench.reset_i)\n");
    }
    if (vlSelf->__VactTriggered.at(2U)) {
        VL_DBG_MSGF("         'act' region trigger index 2 is active: @(posedge testbench.reset_i)\n");
    }
    if (vlSelf->__VactTriggered.at(3U)) {
        VL_DBG_MSGF("         'act' region trigger index 3 is active: @(posedge testbench.clk_i)\n");
    }
    if (vlSelf->__VactTriggered.at(4U)) {
        VL_DBG_MSGF("         'act' region trigger index 4 is active: @([true] __VdlySched.awaitingCurrentTime())\n");
    }
}
#endif  // VL_DEBUG

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtestbench___024root___dump_triggers__nba(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___dump_triggers__nba\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VnbaTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if (vlSelf->__VnbaTriggered.at(0U)) {
        VL_DBG_MSGF("         'nba' region trigger index 0 is active: @(negedge testbench.clk_i)\n");
    }
    if (vlSelf->__VnbaTriggered.at(1U)) {
        VL_DBG_MSGF("         'nba' region trigger index 1 is active: @(negedge testbench.reset_i)\n");
    }
    if (vlSelf->__VnbaTriggered.at(2U)) {
        VL_DBG_MSGF("         'nba' region trigger index 2 is active: @(posedge testbench.reset_i)\n");
    }
    if (vlSelf->__VnbaTriggered.at(3U)) {
        VL_DBG_MSGF("         'nba' region trigger index 3 is active: @(posedge testbench.clk_i)\n");
    }
    if (vlSelf->__VnbaTriggered.at(4U)) {
        VL_DBG_MSGF("         'nba' region trigger index 4 is active: @([true] __VdlySched.awaitingCurrentTime())\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void Vtestbench___024root___ctor_var_reset(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___ctor_var_reset\n"); );
    // Body
    vlSelf->testbench__DOT__clk_i = VL_RAND_RESET_I(1);
    vlSelf->testbench__DOT__reset_i = VL_RAND_RESET_I(1);
    vlSelf->testbench__DOT__timeout_o = VL_RAND_RESET_I(1);
    vlSelf->testbench__DOT__i = 0;
    for (int __Vi0 = 0; __Vi0 < 2; ++__Vi0) {
        vlSelf->testbench__DOT__row_i[__Vi0] = VL_RAND_RESET_I(32);
    }
    for (int __Vi0 = 0; __Vi0 < 2; ++__Vi0) {
        vlSelf->testbench__DOT__col_i[__Vi0] = VL_RAND_RESET_I(32);
    }
    vlSelf->testbench__DOT__flat_row_i = VL_RAND_RESET_Q(64);
    vlSelf->testbench__DOT__flush_i = VL_RAND_RESET_I(2);
    vlSelf->testbench__DOT__row_valid_i = VL_RAND_RESET_I(2);
    vlSelf->testbench__DOT__row_ready_o = VL_RAND_RESET_I(2);
    vlSelf->testbench__DOT__flat_col_i = VL_RAND_RESET_Q(64);
    vlSelf->testbench__DOT__col_valid_i = VL_RAND_RESET_I(2);
    vlSelf->testbench__DOT__col_ready_o = VL_RAND_RESET_I(2);
    for (int __Vi0 = 0; __Vi0 < 2; ++__Vi0) {
        for (int __Vi1 = 0; __Vi1 < 2; ++__Vi1) {
            vlSelf->testbench__DOT__correct_o[__Vi0][__Vi1] = VL_RAND_RESET_I(32);
        }
    }
    for (int __Vi0 = 0; __Vi0 < 2; ++__Vi0) {
        for (int __Vi1 = 0; __Vi1 < 2; ++__Vi1) {
            vlSelf->testbench__DOT__z_o[__Vi0][__Vi1] = VL_RAND_RESET_I(32);
        }
    }
    VL_RAND_RESET_W(128, vlSelf->testbench__DOT__flat_z_o);
    VL_RAND_RESET_W(128, vlSelf->testbench__DOT__flat_correct_o);
    vlSelf->testbench__DOT__z_valid_o = VL_RAND_RESET_I(4);
    vlSelf->testbench__DOT__z_yumi_i = VL_RAND_RESET_I(4);
    vlSelf->testbench__DOT__en_i = VL_RAND_RESET_I(1);
    vlSelf->testbench__DOT__rg__DOT__ctr_lo_r = 0;
    vlSelf->testbench__DOT__rg__DOT__ctr_hi_r = 0;
    vlSelf->testbench__DOT__rg__DOT__phase_lo_r = 0;
    vlSelf->testbench__DOT__rg__DOT__phase_hi_r = 0;
    for (int __Vi0 = 0; __Vi0 < 2; ++__Vi0) {
        for (int __Vi1 = 0; __Vi1 < 3; ++__Vi1) {
            vlSelf->testbench__DOT__dut__DOT__rows_w[__Vi0][__Vi1] = VL_RAND_RESET_I(32);
        }
    }
    for (int __Vi0 = 0; __Vi0 < 3; ++__Vi0) {
        for (int __Vi1 = 0; __Vi1 < 2; ++__Vi1) {
            vlSelf->testbench__DOT__dut__DOT__cols_w[__Vi0][__Vi1] = VL_RAND_RESET_I(32);
        }
    }
    for (int __Vi0 = 0; __Vi0 < 2; ++__Vi0) {
        for (int __Vi1 = 0; __Vi1 < 2; ++__Vi1) {
            vlSelf->testbench__DOT__dut__DOT__z_w[__Vi0][__Vi1] = VL_RAND_RESET_I(32);
        }
    }
    for (int __Vi0 = 0; __Vi0 < 2; ++__Vi0) {
        for (int __Vi1 = 0; __Vi1 < 3; ++__Vi1) {
            vlSelf->testbench__DOT__dut__DOT__row_valids_w[__Vi0][__Vi1] = VL_RAND_RESET_I(1);
        }
    }
    for (int __Vi0 = 0; __Vi0 < 3; ++__Vi0) {
        for (int __Vi1 = 0; __Vi1 < 2; ++__Vi1) {
            vlSelf->testbench__DOT__dut__DOT__col_valids_w[__Vi0][__Vi1] = VL_RAND_RESET_I(1);
        }
    }
    for (int __Vi0 = 0; __Vi0 < 2; ++__Vi0) {
        for (int __Vi1 = 0; __Vi1 < 2; ++__Vi1) {
            vlSelf->testbench__DOT__dut__DOT__z_valids_w[__Vi0][__Vi1] = VL_RAND_RESET_I(1);
        }
    }
    for (int __Vi0 = 0; __Vi0 < 2; ++__Vi0) {
        for (int __Vi1 = 0; __Vi1 < 3; ++__Vi1) {
            vlSelf->testbench__DOT__dut__DOT__row_readys_w[__Vi0][__Vi1] = VL_RAND_RESET_I(1);
        }
    }
    for (int __Vi0 = 0; __Vi0 < 3; ++__Vi0) {
        for (int __Vi1 = 0; __Vi1 < 2; ++__Vi1) {
            vlSelf->testbench__DOT__dut__DOT__col_readys_w[__Vi0][__Vi1] = VL_RAND_RESET_I(1);
        }
    }
    for (int __Vi0 = 0; __Vi0 < 2; ++__Vi0) {
        for (int __Vi1 = 0; __Vi1 < 2; ++__Vi1) {
            vlSelf->testbench__DOT__dut__DOT__z_readys_w[__Vi0][__Vi1] = VL_RAND_RESET_I(1);
        }
    }
    for (int __Vi0 = 0; __Vi0 < 2; ++__Vi0) {
        for (int __Vi1 = 0; __Vi1 < 3; ++__Vi1) {
            vlSelf->testbench__DOT__dut__DOT__flushes_w[__Vi0][__Vi1] = VL_RAND_RESET_I(1);
        }
    }
    vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_r = VL_RAND_RESET_I(8);
    vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_n = VL_RAND_RESET_I(8);
    vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__a_r = VL_RAND_RESET_I(32);
    vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__b_r = VL_RAND_RESET_I(32);
    vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__accum_r = VL_RAND_RESET_I(32);
    vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__product_r = VL_RAND_RESET_I(32);
    vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__flush_r = VL_RAND_RESET_I(1);
    vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__reset_flush_r = VL_RAND_RESET_I(1);
    vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_r = VL_RAND_RESET_I(8);
    vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_n = VL_RAND_RESET_I(8);
    vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__a_r = VL_RAND_RESET_I(32);
    vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__b_r = VL_RAND_RESET_I(32);
    vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__accum_r = VL_RAND_RESET_I(32);
    vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__product_r = VL_RAND_RESET_I(32);
    vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__flush_r = VL_RAND_RESET_I(1);
    vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__0__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__reset_flush_r = VL_RAND_RESET_I(1);
    vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_r = VL_RAND_RESET_I(8);
    vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__state_n = VL_RAND_RESET_I(8);
    vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__a_r = VL_RAND_RESET_I(32);
    vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__b_r = VL_RAND_RESET_I(32);
    vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__accum_r = VL_RAND_RESET_I(32);
    vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__product_r = VL_RAND_RESET_I(32);
    vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__flush_r = VL_RAND_RESET_I(1);
    vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__0__KET____DOT__mac_inst__DOT__reset_flush_r = VL_RAND_RESET_I(1);
    vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_r = VL_RAND_RESET_I(8);
    vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__state_n = VL_RAND_RESET_I(8);
    vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__a_r = VL_RAND_RESET_I(32);
    vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__b_r = VL_RAND_RESET_I(32);
    vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__accum_r = VL_RAND_RESET_I(32);
    vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__product_r = VL_RAND_RESET_I(32);
    vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__flush_r = VL_RAND_RESET_I(1);
    vlSelf->testbench__DOT__dut__DOT__genblk6__BRA__1__KET____DOT__genblk1__BRA__1__KET____DOT__mac_inst__DOT__reset_flush_r = VL_RAND_RESET_I(1);
    vlSelf->__Vtrigrprev__TOP__testbench__DOT__clk_i = VL_RAND_RESET_I(1);
    vlSelf->__Vtrigrprev__TOP__testbench__DOT__reset_i = VL_RAND_RESET_I(1);
    for (int __Vi0 = 0; __Vi0 < 7; ++__Vi0) {
        vlSelf->__Vm_traceActivity[__Vi0] = 0;
    }
}
