# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 342 \
    name sweep_rx1_L_0_V_data_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_rx1_L_0} \
    metadata {  } \
    op interface \
    ports { sweep_rx1_L_0_TDATA { I 128 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_rx1_L_0_V_data_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 343 \
    name sweep_rx1_L_0_V_keep_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_rx1_L_0} \
    metadata {  } \
    op interface \
    ports { sweep_rx1_L_0_TKEEP { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_rx1_L_0_V_keep_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 344 \
    name sweep_rx1_L_0_V_strb_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_rx1_L_0} \
    metadata {  } \
    op interface \
    ports { sweep_rx1_L_0_TSTRB { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_rx1_L_0_V_strb_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 345 \
    name sweep_rx1_L_0_V_last_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_rx1_L_0} \
    metadata {  } \
    op interface \
    ports { sweep_rx1_L_0_TLAST { I 1 vector } sweep_rx1_L_0_TVALID { I 1 bit } sweep_rx1_L_0_TREADY { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_rx1_L_0_V_last_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 347 \
    name sweep_rx1_R_0_V_data_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_rx1_R_0} \
    metadata {  } \
    op interface \
    ports { sweep_rx1_R_0_TDATA { I 128 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_rx1_R_0_V_data_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 348 \
    name sweep_rx1_R_0_V_keep_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_rx1_R_0} \
    metadata {  } \
    op interface \
    ports { sweep_rx1_R_0_TKEEP { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_rx1_R_0_V_keep_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 349 \
    name sweep_rx1_R_0_V_strb_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_rx1_R_0} \
    metadata {  } \
    op interface \
    ports { sweep_rx1_R_0_TSTRB { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_rx1_R_0_V_strb_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 350 \
    name sweep_rx1_R_0_V_last_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_rx1_R_0} \
    metadata {  } \
    op interface \
    ports { sweep_rx1_R_0_TLAST { I 1 vector } sweep_rx1_R_0_TVALID { I 1 bit } sweep_rx1_R_0_TREADY { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_rx1_R_0_V_last_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 352 \
    name sweep_rx1_L_1_V_data_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_rx1_L_1} \
    metadata {  } \
    op interface \
    ports { sweep_rx1_L_1_TDATA { I 128 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_rx1_L_1_V_data_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 353 \
    name sweep_rx1_L_1_V_keep_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_rx1_L_1} \
    metadata {  } \
    op interface \
    ports { sweep_rx1_L_1_TKEEP { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_rx1_L_1_V_keep_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 354 \
    name sweep_rx1_L_1_V_strb_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_rx1_L_1} \
    metadata {  } \
    op interface \
    ports { sweep_rx1_L_1_TSTRB { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_rx1_L_1_V_strb_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 355 \
    name sweep_rx1_L_1_V_last_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_rx1_L_1} \
    metadata {  } \
    op interface \
    ports { sweep_rx1_L_1_TLAST { I 1 vector } sweep_rx1_L_1_TVALID { I 1 bit } sweep_rx1_L_1_TREADY { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_rx1_L_1_V_last_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 357 \
    name sweep_rx1_R_1_V_data_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_rx1_R_1} \
    metadata {  } \
    op interface \
    ports { sweep_rx1_R_1_TDATA { I 128 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_rx1_R_1_V_data_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 358 \
    name sweep_rx1_R_1_V_keep_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_rx1_R_1} \
    metadata {  } \
    op interface \
    ports { sweep_rx1_R_1_TKEEP { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_rx1_R_1_V_keep_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 359 \
    name sweep_rx1_R_1_V_strb_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_rx1_R_1} \
    metadata {  } \
    op interface \
    ports { sweep_rx1_R_1_TSTRB { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_rx1_R_1_V_strb_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 360 \
    name sweep_rx1_R_1_V_last_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_rx1_R_1} \
    metadata {  } \
    op interface \
    ports { sweep_rx1_R_1_TLAST { I 1 vector } sweep_rx1_R_1_TVALID { I 1 bit } sweep_rx1_R_1_TREADY { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_rx1_R_1_V_last_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 341 \
    name receive_fifo_L_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_receive_fifo_L_0 \
    op interface \
    ports { receive_fifo_L_0_din { O 128 vector } receive_fifo_L_0_full_n { I 1 bit } receive_fifo_L_0_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 346 \
    name receive_fifo_R_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_receive_fifo_R_0 \
    op interface \
    ports { receive_fifo_R_0_din { O 128 vector } receive_fifo_R_0_full_n { I 1 bit } receive_fifo_R_0_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 351 \
    name receive_fifo_L_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_receive_fifo_L_1 \
    op interface \
    ports { receive_fifo_L_1_din { O 128 vector } receive_fifo_L_1_full_n { I 1 bit } receive_fifo_L_1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 356 \
    name receive_fifo_R_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_receive_fifo_R_1 \
    op interface \
    ports { receive_fifo_R_1_din { O 128 vector } receive_fifo_R_1_full_n { I 1 bit } receive_fifo_R_1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 361 \
    name convSet_L_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_convSet_L_0 \
    op interface \
    ports { convSet_L_0_din { O 32 vector } convSet_L_0_full_n { I 1 bit } convSet_L_0_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 362 \
    name convSet_R_0 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_convSet_R_0 \
    op interface \
    ports { convSet_R_0_din { O 32 vector } convSet_R_0_full_n { I 1 bit } convSet_R_0_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 363 \
    name convSet_L_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_convSet_L_1 \
    op interface \
    ports { convSet_L_1_din { O 32 vector } convSet_L_1_full_n { I 1 bit } convSet_L_1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 364 \
    name convSet_R_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_convSet_R_1 \
    op interface \
    ports { convSet_R_1_din { O 32 vector } convSet_R_1_full_n { I 1 bit } convSet_R_1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


