# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler TopPL_fifo_w32_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {convL0_channel_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler TopPL_fifo_w32_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {convR0_channel_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler TopPL_fifo_w32_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {convL1_channel_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler TopPL_fifo_w32_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {convR1_channel_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler TopPL_fifo_w32_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {convL2_channel_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler TopPL_fifo_w32_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {convR2_channel_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler TopPL_fifo_w32_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {convL3_channel_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler TopPL_fifo_w32_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {convR3_channel_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler TopPL_fifo_w32_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {empty_154_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler TopPL_fifo_w32_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {empty_153_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler TopPL_fifo_w32_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {empty_152_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler TopPL_fifo_w32_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {empty_151_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler TopPL_fifo_w32_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {empty_150_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler TopPL_fifo_w32_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {empty_149_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler TopPL_fifo_w32_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {empty_148_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler TopPL_fifo_w32_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {empty_U}
}


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
    id 612 \
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
    id 613 \
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
    id 614 \
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
    id 615 \
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
    id 617 \
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
    id 618 \
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
    id 619 \
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
    id 620 \
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
    id 622 \
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
    id 623 \
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
    id 624 \
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
    id 625 \
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
    id 627 \
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
    id 628 \
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
    id 629 \
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
    id 630 \
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
    id 632 \
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
    id 633 \
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
    id 634 \
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
    id 635 \
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
    id 637 \
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
    id 638 \
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
    id 639 \
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
    id 640 \
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
    id 642 \
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
    id 643 \
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
    id 644 \
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
    id 645 \
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
    id 647 \
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
    id 648 \
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
    id 649 \
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
    id 650 \
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
    id 610 \
    name i_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_i_0 \
    op interface \
    ports { i_0 { I 9 vector } i_0_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 611 \
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
    id 616 \
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
    id 621 \
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
    id 626 \
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
    id 631 \
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
    id 636 \
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
    id 641 \
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
    id 646 \
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
    id 651 \
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
    id 652 \
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
    id 653 \
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
    id 654 \
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
    id 655 \
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
    id 656 \
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
    id 657 \
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
    id 658 \
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


