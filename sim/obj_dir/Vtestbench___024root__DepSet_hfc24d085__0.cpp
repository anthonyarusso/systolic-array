// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtestbench.h for the primary calling header

#include "verilated.h"

#include "Vtestbench__Syms.h"
#include "Vtestbench___024root.h"

VL_INLINE_OPT VlCoroutine Vtestbench___024root___eval_initial__TOP__0(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___eval_initial__TOP__0\n"); );
    // Init
    VlWide<4>/*127:0*/ __Vtemp_h9849538a__0;
    // Body
    __Vtemp_h9849538a__0[0U] = 0x2e667374U;
    __Vtemp_h9849538a__0[1U] = 0x61746f72U;
    __Vtemp_h9849538a__0[2U] = 0x6572696cU;
    __Vtemp_h9849538a__0[3U] = 0x76U;
    vlSymsp->_vm_contextp__->dumpfile(VL_CVT_PACK_STR_NW(4, __Vtemp_h9849538a__0));
    vlSymsp->_traceDumpOpen();
    VL_WRITEF("Begin Test:\n\n");
    vlSelf->testbench__DOT__i = 0U;
    vlSelf->testbench__DOT__timeout_o = 1U;
    vlSelf->testbench__DOT__flush_i = 0U;
    vlSelf->testbench__DOT__en_i = 1U;
    VL_WRITEF("verilator 1\n");
    vlSelf->testbench__DOT__row_i[1U] = 0U;
    vlSelf->testbench__DOT__row_i[0U] = 0U;
    vlSelf->testbench__DOT__col_i[1U] = 0U;
    vlSelf->testbench__DOT__col_i[0U] = 0U;
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
    vlSelf->testbench__DOT__correct_o[1U][1U] = 0x1eU;
    vlSelf->testbench__DOT__correct_o[1U][0U] = 0x55beU;
    vlSelf->testbench__DOT__correct_o[0U][1U] = 0xfffff185U;
    vlSelf->testbench__DOT__correct_o[0U][0U] = 0xfffff7c9U;
    VL_WRITEF("correct_o is: {%10#, %10#,%10#, %10#}\ncorrect_o should be: {30, 21950, -3703, -2103}\n",
              32,vlSelf->testbench__DOT__correct_o[1U]
              [1U],32,vlSelf->testbench__DOT__correct_o
              [1U][0U],32,vlSelf->testbench__DOT__correct_o
              [0U][1U],32,vlSelf->testbench__DOT__correct_o
              [0U][0U]);
    vlSelf->testbench__DOT__row_valid_i = 0U;
    vlSelf->testbench__DOT__col_valid_i = 0U;
    vlSelf->testbench__DOT__z_yumi_i = 0U;
    co_await vlSelf->__VtrigSched_hec42002a__0.trigger(
                                                       "@(negedge testbench.reset_i)", 
                                                       "testbench.sv", 
                                                       181);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    co_await vlSelf->__VtrigSched_hebc0aa59__0.trigger(
                                                       "@(negedge testbench.clk_i)", 
                                                       "testbench.sv", 
                                                       183);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    VL_WRITEF("verilator 2\n");
    vlSelf->testbench__DOT__row_i[1U] = 0U;
    vlSelf->testbench__DOT__row_i[0U] = 0x2cU;
    vlSelf->testbench__DOT__col_i[1U] = 0U;
    vlSelf->testbench__DOT__col_i[0U] = 0x16U;
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
    VL_WRITEF("row_i: {%x, %x}\nflat_row_i: %x\n",32,
              vlSelf->testbench__DOT__row_i[1U],32,
              vlSelf->testbench__DOT__row_i[0U],64,
              vlSelf->testbench__DOT__flat_row_i);
    vlSelf->testbench__DOT__row_valid_i = 1U;
    vlSelf->testbench__DOT__col_valid_i = 1U;
    co_await vlSelf->__VtrigSched_hebc0aa59__0.trigger(
                                                       "@(negedge testbench.clk_i)", 
                                                       "testbench.sv", 
                                                       200);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->testbench__DOT__row_valid_i = 0U;
    vlSelf->testbench__DOT__col_valid_i = 0U;
    vlSelf->testbench__DOT__timeout_o = 1U;
    co_await vlSelf->__VtrigSched_hebc0aaa0__0.trigger(
                                                       "@(posedge testbench.clk_i)", 
                                                       "testbench.sv", 
                                                       205);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->testbench__DOT__i = 1U;
    if (((3U == (IData)(vlSelf->testbench__DOT__row_ready_o)) 
         & (3U == (IData)(vlSelf->testbench__DOT__col_ready_o)))) {
        vlSelf->testbench__DOT__timeout_o = 0U;
    }
    co_await vlSelf->__VtrigSched_hebc0aaa0__0.trigger(
                                                       "@(posedge testbench.clk_i)", 
                                                       "testbench.sv", 
                                                       205);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->testbench__DOT__i = 2U;
    if (((3U == (IData)(vlSelf->testbench__DOT__row_ready_o)) 
         & (3U == (IData)(vlSelf->testbench__DOT__col_ready_o)))) {
        vlSelf->testbench__DOT__timeout_o = 0U;
    }
    co_await vlSelf->__VtrigSched_hebc0aaa0__0.trigger(
                                                       "@(posedge testbench.clk_i)", 
                                                       "testbench.sv", 
                                                       205);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->testbench__DOT__i = 3U;
    if (((3U == (IData)(vlSelf->testbench__DOT__row_ready_o)) 
         & (3U == (IData)(vlSelf->testbench__DOT__col_ready_o)))) {
        vlSelf->testbench__DOT__timeout_o = 0U;
    }
    co_await vlSelf->__VtrigSched_hebc0aaa0__0.trigger(
                                                       "@(posedge testbench.clk_i)", 
                                                       "testbench.sv", 
                                                       205);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->testbench__DOT__i = 4U;
    if (((3U == (IData)(vlSelf->testbench__DOT__row_ready_o)) 
         & (3U == (IData)(vlSelf->testbench__DOT__col_ready_o)))) {
        vlSelf->testbench__DOT__timeout_o = 0U;
    }
    co_await vlSelf->__VtrigSched_hebc0aaa0__0.trigger(
                                                       "@(posedge testbench.clk_i)", 
                                                       "testbench.sv", 
                                                       205);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->testbench__DOT__i = 5U;
    if (((3U == (IData)(vlSelf->testbench__DOT__row_ready_o)) 
         & (3U == (IData)(vlSelf->testbench__DOT__col_ready_o)))) {
        vlSelf->testbench__DOT__timeout_o = 0U;
    }
    co_await vlSelf->__VtrigSched_hebc0aaa0__0.trigger(
                                                       "@(posedge testbench.clk_i)", 
                                                       "testbench.sv", 
                                                       205);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->testbench__DOT__i = 6U;
    if (((3U == (IData)(vlSelf->testbench__DOT__row_ready_o)) 
         & (3U == (IData)(vlSelf->testbench__DOT__col_ready_o)))) {
        vlSelf->testbench__DOT__timeout_o = 0U;
    }
    co_await vlSelf->__VtrigSched_hebc0aaa0__0.trigger(
                                                       "@(posedge testbench.clk_i)", 
                                                       "testbench.sv", 
                                                       205);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->testbench__DOT__i = 7U;
    if (((3U == (IData)(vlSelf->testbench__DOT__row_ready_o)) 
         & (3U == (IData)(vlSelf->testbench__DOT__col_ready_o)))) {
        vlSelf->testbench__DOT__timeout_o = 0U;
    }
    co_await vlSelf->__VtrigSched_hebc0aaa0__0.trigger(
                                                       "@(posedge testbench.clk_i)", 
                                                       "testbench.sv", 
                                                       205);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->testbench__DOT__i = 8U;
    if (((3U == (IData)(vlSelf->testbench__DOT__row_ready_o)) 
         & (3U == (IData)(vlSelf->testbench__DOT__col_ready_o)))) {
        vlSelf->testbench__DOT__timeout_o = 0U;
    }
    if (VL_UNLIKELY(vlSelf->testbench__DOT__timeout_o)) {
        VL_WRITEF("Error! DUT timed out.\n");
        VL_FINISH_MT("testbench.sv", 212, "");
    }
    co_await vlSelf->__VtrigSched_hebc0aa59__0.trigger(
                                                       "@(negedge testbench.clk_i)", 
                                                       "testbench.sv", 
                                                       215);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    VL_WRITEF("verilator 3\n");
    vlSelf->testbench__DOT__row_i[1U] = 0x3c0U;
    vlSelf->testbench__DOT__row_i[0U] = 0xffffffdbU;
    vlSelf->testbench__DOT__col_i[1U] = 0xffffffffU;
    vlSelf->testbench__DOT__col_i[0U] = 0x53U;
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
    vlSelf->testbench__DOT__row_valid_i = 3U;
    vlSelf->testbench__DOT__col_valid_i = 3U;
    co_await vlSelf->__VtrigSched_hebc0aa59__0.trigger(
                                                       "@(negedge testbench.clk_i)", 
                                                       "testbench.sv", 
                                                       229);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->testbench__DOT__row_valid_i = 0U;
    vlSelf->testbench__DOT__col_valid_i = 0U;
    vlSelf->testbench__DOT__timeout_o = 1U;
    co_await vlSelf->__VtrigSched_hebc0aaa0__0.trigger(
                                                       "@(posedge testbench.clk_i)", 
                                                       "testbench.sv", 
                                                       234);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->testbench__DOT__i = 1U;
    if (((3U == (IData)(vlSelf->testbench__DOT__row_ready_o)) 
         & (3U == (IData)(vlSelf->testbench__DOT__col_ready_o)))) {
        vlSelf->testbench__DOT__timeout_o = 0U;
    }
    co_await vlSelf->__VtrigSched_hebc0aaa0__0.trigger(
                                                       "@(posedge testbench.clk_i)", 
                                                       "testbench.sv", 
                                                       234);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->testbench__DOT__i = 2U;
    if (((3U == (IData)(vlSelf->testbench__DOT__row_ready_o)) 
         & (3U == (IData)(vlSelf->testbench__DOT__col_ready_o)))) {
        vlSelf->testbench__DOT__timeout_o = 0U;
    }
    co_await vlSelf->__VtrigSched_hebc0aaa0__0.trigger(
                                                       "@(posedge testbench.clk_i)", 
                                                       "testbench.sv", 
                                                       234);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->testbench__DOT__i = 3U;
    if (((3U == (IData)(vlSelf->testbench__DOT__row_ready_o)) 
         & (3U == (IData)(vlSelf->testbench__DOT__col_ready_o)))) {
        vlSelf->testbench__DOT__timeout_o = 0U;
    }
    co_await vlSelf->__VtrigSched_hebc0aaa0__0.trigger(
                                                       "@(posedge testbench.clk_i)", 
                                                       "testbench.sv", 
                                                       234);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->testbench__DOT__i = 4U;
    if (((3U == (IData)(vlSelf->testbench__DOT__row_ready_o)) 
         & (3U == (IData)(vlSelf->testbench__DOT__col_ready_o)))) {
        vlSelf->testbench__DOT__timeout_o = 0U;
    }
    co_await vlSelf->__VtrigSched_hebc0aaa0__0.trigger(
                                                       "@(posedge testbench.clk_i)", 
                                                       "testbench.sv", 
                                                       234);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->testbench__DOT__i = 5U;
    if (((3U == (IData)(vlSelf->testbench__DOT__row_ready_o)) 
         & (3U == (IData)(vlSelf->testbench__DOT__col_ready_o)))) {
        vlSelf->testbench__DOT__timeout_o = 0U;
    }
    co_await vlSelf->__VtrigSched_hebc0aaa0__0.trigger(
                                                       "@(posedge testbench.clk_i)", 
                                                       "testbench.sv", 
                                                       234);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->testbench__DOT__i = 6U;
    if (((3U == (IData)(vlSelf->testbench__DOT__row_ready_o)) 
         & (3U == (IData)(vlSelf->testbench__DOT__col_ready_o)))) {
        vlSelf->testbench__DOT__timeout_o = 0U;
    }
    co_await vlSelf->__VtrigSched_hebc0aaa0__0.trigger(
                                                       "@(posedge testbench.clk_i)", 
                                                       "testbench.sv", 
                                                       234);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->testbench__DOT__i = 7U;
    if (((3U == (IData)(vlSelf->testbench__DOT__row_ready_o)) 
         & (3U == (IData)(vlSelf->testbench__DOT__col_ready_o)))) {
        vlSelf->testbench__DOT__timeout_o = 0U;
    }
    co_await vlSelf->__VtrigSched_hebc0aaa0__0.trigger(
                                                       "@(posedge testbench.clk_i)", 
                                                       "testbench.sv", 
                                                       234);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->testbench__DOT__i = 8U;
    if (((3U == (IData)(vlSelf->testbench__DOT__row_ready_o)) 
         & (3U == (IData)(vlSelf->testbench__DOT__col_ready_o)))) {
        vlSelf->testbench__DOT__timeout_o = 0U;
    }
    if (VL_UNLIKELY(vlSelf->testbench__DOT__timeout_o)) {
        VL_WRITEF("Error! DUT timed out.\n");
        VL_FINISH_MT("testbench.sv", 241, "");
    }
    co_await vlSelf->__VtrigSched_hebc0aa59__0.trigger(
                                                       "@(negedge testbench.clk_i)", 
                                                       "testbench.sv", 
                                                       244);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    VL_WRITEF("verilator 4\n");
    vlSelf->testbench__DOT__row_i[1U] = 0xaU;
    vlSelf->testbench__DOT__row_i[0U] = 0U;
    vlSelf->testbench__DOT__col_i[1U] = 0x63U;
    vlSelf->testbench__DOT__col_i[0U] = 0U;
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
    vlSelf->testbench__DOT__row_valid_i = 2U;
    vlSelf->testbench__DOT__col_valid_i = 2U;
    co_await vlSelf->__VtrigSched_hebc0aa59__0.trigger(
                                                       "@(negedge testbench.clk_i)", 
                                                       "testbench.sv", 
                                                       258);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->testbench__DOT__row_valid_i = 0U;
    vlSelf->testbench__DOT__col_valid_i = 0U;
    vlSelf->testbench__DOT__timeout_o = 1U;
    co_await vlSelf->__VtrigSched_hebc0aaa0__0.trigger(
                                                       "@(posedge testbench.clk_i)", 
                                                       "testbench.sv", 
                                                       263);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->testbench__DOT__i = 1U;
    if (((3U == (IData)(vlSelf->testbench__DOT__row_ready_o)) 
         & (3U == (IData)(vlSelf->testbench__DOT__col_ready_o)))) {
        vlSelf->testbench__DOT__timeout_o = 0U;
    }
    co_await vlSelf->__VtrigSched_hebc0aaa0__0.trigger(
                                                       "@(posedge testbench.clk_i)", 
                                                       "testbench.sv", 
                                                       263);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->testbench__DOT__i = 2U;
    if (((3U == (IData)(vlSelf->testbench__DOT__row_ready_o)) 
         & (3U == (IData)(vlSelf->testbench__DOT__col_ready_o)))) {
        vlSelf->testbench__DOT__timeout_o = 0U;
    }
    co_await vlSelf->__VtrigSched_hebc0aaa0__0.trigger(
                                                       "@(posedge testbench.clk_i)", 
                                                       "testbench.sv", 
                                                       263);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->testbench__DOT__i = 3U;
    if (((3U == (IData)(vlSelf->testbench__DOT__row_ready_o)) 
         & (3U == (IData)(vlSelf->testbench__DOT__col_ready_o)))) {
        vlSelf->testbench__DOT__timeout_o = 0U;
    }
    co_await vlSelf->__VtrigSched_hebc0aaa0__0.trigger(
                                                       "@(posedge testbench.clk_i)", 
                                                       "testbench.sv", 
                                                       263);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->testbench__DOT__i = 4U;
    if (((3U == (IData)(vlSelf->testbench__DOT__row_ready_o)) 
         & (3U == (IData)(vlSelf->testbench__DOT__col_ready_o)))) {
        vlSelf->testbench__DOT__timeout_o = 0U;
    }
    co_await vlSelf->__VtrigSched_hebc0aaa0__0.trigger(
                                                       "@(posedge testbench.clk_i)", 
                                                       "testbench.sv", 
                                                       263);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->testbench__DOT__i = 5U;
    if (((3U == (IData)(vlSelf->testbench__DOT__row_ready_o)) 
         & (3U == (IData)(vlSelf->testbench__DOT__col_ready_o)))) {
        vlSelf->testbench__DOT__timeout_o = 0U;
    }
    co_await vlSelf->__VtrigSched_hebc0aaa0__0.trigger(
                                                       "@(posedge testbench.clk_i)", 
                                                       "testbench.sv", 
                                                       263);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->testbench__DOT__i = 6U;
    if (((3U == (IData)(vlSelf->testbench__DOT__row_ready_o)) 
         & (3U == (IData)(vlSelf->testbench__DOT__col_ready_o)))) {
        vlSelf->testbench__DOT__timeout_o = 0U;
    }
    co_await vlSelf->__VtrigSched_hebc0aaa0__0.trigger(
                                                       "@(posedge testbench.clk_i)", 
                                                       "testbench.sv", 
                                                       263);
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->testbench__DOT__i = 7U;
    if (((3U == (IData)(vlSelf->testbench__DOT__row_ready_o)) 
         & (3U == (IData)(vlSelf->testbench__DOT__col_ready_o)))) {
        vlSelf->testbench__DOT__timeout_o = 0U;
    }
    co_await vlSelf->__VtrigSched_hebc0aaa0__0.trigger(
                                                       "@(posedge testbench.clk_i)", 
                                                       "testbench.sv", 
                                                       263);
    if (((3U == (IData)(vlSelf->testbench__DOT__row_ready_o)) 
         & (3U == (IData)(vlSelf->testbench__DOT__col_ready_o)))) {
        vlSelf->testbench__DOT__timeout_o = 0U;
    }
    vlSelf->__Vm_traceActivity[2U] = 1U;
    vlSelf->testbench__DOT__i = 8U;
    if (VL_UNLIKELY(vlSelf->testbench__DOT__timeout_o)) {
        VL_WRITEF("Error! DUT timed out.\n");
        VL_FINISH_MT("testbench.sv", 270, "");
    } else if (VL_UNLIKELY((0U != ((((vlSelf->testbench__DOT__flat_z_o[0U] 
                                      ^ vlSelf->testbench__DOT__flat_correct_o[0U]) 
                                     | (vlSelf->testbench__DOT__flat_z_o[1U] 
                                        ^ vlSelf->testbench__DOT__flat_correct_o[1U])) 
                                    | (vlSelf->testbench__DOT__flat_z_o[2U] 
                                       ^ vlSelf->testbench__DOT__flat_correct_o[2U])) 
                                   | (vlSelf->testbench__DOT__flat_z_o[3U] 
                                      ^ vlSelf->testbench__DOT__flat_correct_o[3U]))))) {
        VL_WRITEF("Error! At i = %11d, should be %x but got %x.\n",
                  32,vlSelf->testbench__DOT__i,128,
                  vlSelf->testbench__DOT__flat_correct_o.data(),
                  128,vlSelf->testbench__DOT__flat_z_o.data());
        VL_FINISH_MT("testbench.sv", 277, "");
    }
    if (VL_UNLIKELY((0U == ((((vlSelf->testbench__DOT__flat_z_o[0U] 
                               ^ vlSelf->testbench__DOT__flat_correct_o[0U]) 
                              | (vlSelf->testbench__DOT__flat_z_o[1U] 
                                 ^ vlSelf->testbench__DOT__flat_correct_o[1U])) 
                             | (vlSelf->testbench__DOT__flat_z_o[2U] 
                                ^ vlSelf->testbench__DOT__flat_correct_o[2U])) 
                            | (vlSelf->testbench__DOT__flat_z_o[3U] 
                               ^ vlSelf->testbench__DOT__flat_correct_o[3U]))))) {
        VL_FINISH_MT("testbench.sv", 280, "");
    }
    vlSelf->__Vm_traceActivity[2U] = 1U;
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtestbench___024root___dump_triggers__act(Vtestbench___024root* vlSelf);
#endif  // VL_DEBUG

void Vtestbench___024root___eval_triggers__act(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___eval_triggers__act\n"); );
    // Body
    vlSelf->__VactTriggered.at(0U) = ((~ (IData)(vlSelf->testbench__DOT__clk_i)) 
                                      & (IData)(vlSelf->__Vtrigrprev__TOP__testbench__DOT__clk_i));
    vlSelf->__VactTriggered.at(1U) = ((~ (IData)(vlSelf->testbench__DOT__reset_i)) 
                                      & (IData)(vlSelf->__Vtrigrprev__TOP__testbench__DOT__reset_i));
    vlSelf->__VactTriggered.at(2U) = ((IData)(vlSelf->testbench__DOT__reset_i) 
                                      & (~ (IData)(vlSelf->__Vtrigrprev__TOP__testbench__DOT__reset_i)));
    vlSelf->__VactTriggered.at(3U) = ((IData)(vlSelf->testbench__DOT__clk_i) 
                                      & (~ (IData)(vlSelf->__Vtrigrprev__TOP__testbench__DOT__clk_i)));
    vlSelf->__VactTriggered.at(4U) = vlSelf->__VdlySched.awaitingCurrentTime();
    vlSelf->__Vtrigrprev__TOP__testbench__DOT__clk_i 
        = vlSelf->testbench__DOT__clk_i;
    vlSelf->__Vtrigrprev__TOP__testbench__DOT__reset_i 
        = vlSelf->testbench__DOT__reset_i;
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        Vtestbench___024root___dump_triggers__act(vlSelf);
    }
#endif
}
