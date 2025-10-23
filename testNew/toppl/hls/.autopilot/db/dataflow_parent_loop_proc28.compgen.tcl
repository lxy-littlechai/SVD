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
    id 660 \
    name sweep_rx1_0_V_data_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_rx1_0} \
    metadata {  } \
    op interface \
    ports { sweep_rx1_0_TDATA { I 128 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_rx1_0_V_data_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 661 \
    name sweep_rx1_0_V_keep_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_rx1_0} \
    metadata {  } \
    op interface \
    ports { sweep_rx1_0_TKEEP { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_rx1_0_V_keep_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 662 \
    name sweep_rx1_0_V_strb_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_rx1_0} \
    metadata {  } \
    op interface \
    ports { sweep_rx1_0_TSTRB { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_rx1_0_V_strb_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 663 \
    name sweep_rx1_0_V_last_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_rx1_0} \
    metadata {  } \
    op interface \
    ports { sweep_rx1_0_TLAST { I 1 vector } sweep_rx1_0_TVALID { I 1 bit } sweep_rx1_0_TREADY { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_rx1_0_V_last_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 665 \
    name sweep_rx1_1_V_data_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_rx1_1} \
    metadata {  } \
    op interface \
    ports { sweep_rx1_1_TDATA { I 128 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_rx1_1_V_data_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 666 \
    name sweep_rx1_1_V_keep_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_rx1_1} \
    metadata {  } \
    op interface \
    ports { sweep_rx1_1_TKEEP { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_rx1_1_V_keep_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 667 \
    name sweep_rx1_1_V_strb_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_rx1_1} \
    metadata {  } \
    op interface \
    ports { sweep_rx1_1_TSTRB { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_rx1_1_V_strb_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 668 \
    name sweep_rx1_1_V_last_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_rx1_1} \
    metadata {  } \
    op interface \
    ports { sweep_rx1_1_TLAST { I 1 vector } sweep_rx1_1_TVALID { I 1 bit } sweep_rx1_1_TREADY { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_rx1_1_V_last_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 670 \
    name sweep_rx2_0_V_data_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_rx2_0} \
    metadata {  } \
    op interface \
    ports { sweep_rx2_0_TDATA { I 128 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_rx2_0_V_data_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 671 \
    name sweep_rx2_0_V_keep_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_rx2_0} \
    metadata {  } \
    op interface \
    ports { sweep_rx2_0_TKEEP { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_rx2_0_V_keep_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 672 \
    name sweep_rx2_0_V_strb_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_rx2_0} \
    metadata {  } \
    op interface \
    ports { sweep_rx2_0_TSTRB { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_rx2_0_V_strb_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 673 \
    name sweep_rx2_0_V_last_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_rx2_0} \
    metadata {  } \
    op interface \
    ports { sweep_rx2_0_TLAST { I 1 vector } sweep_rx2_0_TVALID { I 1 bit } sweep_rx2_0_TREADY { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_rx2_0_V_last_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 675 \
    name sweep_rx2_1_V_data_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_rx2_1} \
    metadata {  } \
    op interface \
    ports { sweep_rx2_1_TDATA { I 128 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_rx2_1_V_data_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 676 \
    name sweep_rx2_1_V_keep_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_rx2_1} \
    metadata {  } \
    op interface \
    ports { sweep_rx2_1_TKEEP { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_rx2_1_V_keep_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 677 \
    name sweep_rx2_1_V_strb_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_rx2_1} \
    metadata {  } \
    op interface \
    ports { sweep_rx2_1_TSTRB { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_rx2_1_V_strb_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 678 \
    name sweep_rx2_1_V_last_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_rx2_1} \
    metadata {  } \
    op interface \
    ports { sweep_rx2_1_TLAST { I 1 vector } sweep_rx2_1_TVALID { I 1 bit } sweep_rx2_1_TREADY { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_rx2_1_V_last_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 680 \
    name sweep_rx3_0_V_data_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_rx3_0} \
    metadata {  } \
    op interface \
    ports { sweep_rx3_0_TDATA { I 128 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_rx3_0_V_data_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 681 \
    name sweep_rx3_0_V_keep_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_rx3_0} \
    metadata {  } \
    op interface \
    ports { sweep_rx3_0_TKEEP { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_rx3_0_V_keep_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 682 \
    name sweep_rx3_0_V_strb_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_rx3_0} \
    metadata {  } \
    op interface \
    ports { sweep_rx3_0_TSTRB { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_rx3_0_V_strb_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 683 \
    name sweep_rx3_0_V_last_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_rx3_0} \
    metadata {  } \
    op interface \
    ports { sweep_rx3_0_TLAST { I 1 vector } sweep_rx3_0_TVALID { I 1 bit } sweep_rx3_0_TREADY { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_rx3_0_V_last_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 685 \
    name sweep_rx3_1_V_data_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_rx3_1} \
    metadata {  } \
    op interface \
    ports { sweep_rx3_1_TDATA { I 128 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_rx3_1_V_data_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 686 \
    name sweep_rx3_1_V_keep_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_rx3_1} \
    metadata {  } \
    op interface \
    ports { sweep_rx3_1_TKEEP { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_rx3_1_V_keep_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 687 \
    name sweep_rx3_1_V_strb_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_rx3_1} \
    metadata {  } \
    op interface \
    ports { sweep_rx3_1_TSTRB { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_rx3_1_V_strb_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 688 \
    name sweep_rx3_1_V_last_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_rx3_1} \
    metadata {  } \
    op interface \
    ports { sweep_rx3_1_TLAST { I 1 vector } sweep_rx3_1_TVALID { I 1 bit } sweep_rx3_1_TREADY { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_rx3_1_V_last_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 690 \
    name sweep_rx4_0_V_data_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_rx4_0} \
    metadata {  } \
    op interface \
    ports { sweep_rx4_0_TDATA { I 128 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_rx4_0_V_data_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 691 \
    name sweep_rx4_0_V_keep_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_rx4_0} \
    metadata {  } \
    op interface \
    ports { sweep_rx4_0_TKEEP { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_rx4_0_V_keep_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 692 \
    name sweep_rx4_0_V_strb_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_rx4_0} \
    metadata {  } \
    op interface \
    ports { sweep_rx4_0_TSTRB { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_rx4_0_V_strb_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 693 \
    name sweep_rx4_0_V_last_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_rx4_0} \
    metadata {  } \
    op interface \
    ports { sweep_rx4_0_TLAST { I 1 vector } sweep_rx4_0_TVALID { I 1 bit } sweep_rx4_0_TREADY { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_rx4_0_V_last_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 695 \
    name sweep_rx4_1_V_data_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_rx4_1} \
    metadata {  } \
    op interface \
    ports { sweep_rx4_1_TDATA { I 128 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_rx4_1_V_data_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 696 \
    name sweep_rx4_1_V_keep_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_rx4_1} \
    metadata {  } \
    op interface \
    ports { sweep_rx4_1_TKEEP { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_rx4_1_V_keep_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 697 \
    name sweep_rx4_1_V_strb_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_rx4_1} \
    metadata {  } \
    op interface \
    ports { sweep_rx4_1_TSTRB { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_rx4_1_V_strb_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 698 \
    name sweep_rx4_1_V_last_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_rx4_1} \
    metadata {  } \
    op interface \
    ports { sweep_rx4_1_TLAST { I 1 vector } sweep_rx4_1_TVALID { I 1 bit } sweep_rx4_1_TREADY { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_rx4_1_V_last_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 659 \
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
    id 664 \
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
    id 669 \
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
    id 674 \
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
    id 679 \
    name receive_fifo_L_2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_receive_fifo_L_2 \
    op interface \
    ports { receive_fifo_L_2_din { O 128 vector } receive_fifo_L_2_full_n { I 1 bit } receive_fifo_L_2_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 684 \
    name receive_fifo_R_2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_receive_fifo_R_2 \
    op interface \
    ports { receive_fifo_R_2_din { O 128 vector } receive_fifo_R_2_full_n { I 1 bit } receive_fifo_R_2_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 689 \
    name receive_fifo_L_3 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_receive_fifo_L_3 \
    op interface \
    ports { receive_fifo_L_3_din { O 128 vector } receive_fifo_L_3_full_n { I 1 bit } receive_fifo_L_3_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 694 \
    name receive_fifo_R_3 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_receive_fifo_R_3 \
    op interface \
    ports { receive_fifo_R_3_din { O 128 vector } receive_fifo_R_3_full_n { I 1 bit } receive_fifo_R_3_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 699 \
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
    id 700 \
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
    id 701 \
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
    id 702 \
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
    id 703 \
    name convSet_L_2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_convSet_L_2 \
    op interface \
    ports { convSet_L_2_din { O 32 vector } convSet_L_2_full_n { I 1 bit } convSet_L_2_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 704 \
    name convSet_R_2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_convSet_R_2 \
    op interface \
    ports { convSet_R_2_din { O 32 vector } convSet_R_2_full_n { I 1 bit } convSet_R_2_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 705 \
    name convSet_L_3 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_convSet_L_3 \
    op interface \
    ports { convSet_L_3_din { O 32 vector } convSet_L_3_full_n { I 1 bit } convSet_L_3_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 706 \
    name convSet_R_3 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_convSet_R_3 \
    op interface \
    ports { convSet_R_3_din { O 32 vector } convSet_R_3_full_n { I 1 bit } convSet_R_3_write { O 1 bit } } \
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


