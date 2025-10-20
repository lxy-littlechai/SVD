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
    id 175 \
    name sweep_tx1_0_V_data_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_tx1_0} \
    metadata {  } \
    op interface \
    ports { sweep_tx1_0_TDATA { O 128 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_tx1_0_V_data_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 176 \
    name sweep_tx1_0_V_keep_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_tx1_0} \
    metadata {  } \
    op interface \
    ports { sweep_tx1_0_TKEEP { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_tx1_0_V_keep_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 177 \
    name sweep_tx1_0_V_strb_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_tx1_0} \
    metadata {  } \
    op interface \
    ports { sweep_tx1_0_TSTRB { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_tx1_0_V_strb_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 178 \
    name sweep_tx1_0_V_last_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_tx1_0} \
    metadata {  } \
    op interface \
    ports { sweep_tx1_0_TLAST { O 1 vector } sweep_tx1_0_TVALID { O 1 bit } sweep_tx1_0_TREADY { I 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_tx1_0_V_last_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 180 \
    name sweep_tx1_1_V_data_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_tx1_1} \
    metadata {  } \
    op interface \
    ports { sweep_tx1_1_TDATA { O 128 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_tx1_1_V_data_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 181 \
    name sweep_tx1_1_V_keep_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_tx1_1} \
    metadata {  } \
    op interface \
    ports { sweep_tx1_1_TKEEP { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_tx1_1_V_keep_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 182 \
    name sweep_tx1_1_V_strb_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_tx1_1} \
    metadata {  } \
    op interface \
    ports { sweep_tx1_1_TSTRB { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_tx1_1_V_strb_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 183 \
    name sweep_tx1_1_V_last_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_tx1_1} \
    metadata {  } \
    op interface \
    ports { sweep_tx1_1_TLAST { O 1 vector } sweep_tx1_1_TVALID { O 1 bit } sweep_tx1_1_TREADY { I 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_tx1_1_V_last_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 185 \
    name sweep_tx2_0_V_data_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_tx2_0} \
    metadata {  } \
    op interface \
    ports { sweep_tx2_0_TDATA { O 128 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_tx2_0_V_data_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 186 \
    name sweep_tx2_0_V_keep_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_tx2_0} \
    metadata {  } \
    op interface \
    ports { sweep_tx2_0_TKEEP { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_tx2_0_V_keep_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 187 \
    name sweep_tx2_0_V_strb_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_tx2_0} \
    metadata {  } \
    op interface \
    ports { sweep_tx2_0_TSTRB { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_tx2_0_V_strb_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 188 \
    name sweep_tx2_0_V_last_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_tx2_0} \
    metadata {  } \
    op interface \
    ports { sweep_tx2_0_TLAST { O 1 vector } sweep_tx2_0_TVALID { O 1 bit } sweep_tx2_0_TREADY { I 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_tx2_0_V_last_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 190 \
    name sweep_tx2_1_V_data_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_tx2_1} \
    metadata {  } \
    op interface \
    ports { sweep_tx2_1_TDATA { O 128 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_tx2_1_V_data_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 191 \
    name sweep_tx2_1_V_keep_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_tx2_1} \
    metadata {  } \
    op interface \
    ports { sweep_tx2_1_TKEEP { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_tx2_1_V_keep_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 192 \
    name sweep_tx2_1_V_strb_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_tx2_1} \
    metadata {  } \
    op interface \
    ports { sweep_tx2_1_TSTRB { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_tx2_1_V_strb_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 193 \
    name sweep_tx2_1_V_last_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_tx2_1} \
    metadata {  } \
    op interface \
    ports { sweep_tx2_1_TLAST { O 1 vector } sweep_tx2_1_TVALID { O 1 bit } sweep_tx2_1_TREADY { I 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_tx2_1_V_last_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 195 \
    name sweep_tx3_0_V_data_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_tx3_0} \
    metadata {  } \
    op interface \
    ports { sweep_tx3_0_TDATA { O 128 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_tx3_0_V_data_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 196 \
    name sweep_tx3_0_V_keep_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_tx3_0} \
    metadata {  } \
    op interface \
    ports { sweep_tx3_0_TKEEP { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_tx3_0_V_keep_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 197 \
    name sweep_tx3_0_V_strb_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_tx3_0} \
    metadata {  } \
    op interface \
    ports { sweep_tx3_0_TSTRB { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_tx3_0_V_strb_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 198 \
    name sweep_tx3_0_V_last_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_tx3_0} \
    metadata {  } \
    op interface \
    ports { sweep_tx3_0_TLAST { O 1 vector } sweep_tx3_0_TVALID { O 1 bit } sweep_tx3_0_TREADY { I 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_tx3_0_V_last_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 200 \
    name sweep_tx3_1_V_data_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_tx3_1} \
    metadata {  } \
    op interface \
    ports { sweep_tx3_1_TDATA { O 128 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_tx3_1_V_data_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 201 \
    name sweep_tx3_1_V_keep_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_tx3_1} \
    metadata {  } \
    op interface \
    ports { sweep_tx3_1_TKEEP { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_tx3_1_V_keep_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 202 \
    name sweep_tx3_1_V_strb_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_tx3_1} \
    metadata {  } \
    op interface \
    ports { sweep_tx3_1_TSTRB { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_tx3_1_V_strb_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 203 \
    name sweep_tx3_1_V_last_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_tx3_1} \
    metadata {  } \
    op interface \
    ports { sweep_tx3_1_TLAST { O 1 vector } sweep_tx3_1_TVALID { O 1 bit } sweep_tx3_1_TREADY { I 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_tx3_1_V_last_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 205 \
    name sweep_tx4_0_V_data_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_tx4_0} \
    metadata {  } \
    op interface \
    ports { sweep_tx4_0_TDATA { O 128 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_tx4_0_V_data_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 206 \
    name sweep_tx4_0_V_keep_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_tx4_0} \
    metadata {  } \
    op interface \
    ports { sweep_tx4_0_TKEEP { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_tx4_0_V_keep_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 207 \
    name sweep_tx4_0_V_strb_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_tx4_0} \
    metadata {  } \
    op interface \
    ports { sweep_tx4_0_TSTRB { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_tx4_0_V_strb_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 208 \
    name sweep_tx4_0_V_last_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_tx4_0} \
    metadata {  } \
    op interface \
    ports { sweep_tx4_0_TLAST { O 1 vector } sweep_tx4_0_TVALID { O 1 bit } sweep_tx4_0_TREADY { I 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_tx4_0_V_last_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 210 \
    name sweep_tx4_1_V_data_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_tx4_1} \
    metadata {  } \
    op interface \
    ports { sweep_tx4_1_TDATA { O 128 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_tx4_1_V_data_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 211 \
    name sweep_tx4_1_V_keep_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_tx4_1} \
    metadata {  } \
    op interface \
    ports { sweep_tx4_1_TKEEP { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_tx4_1_V_keep_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 212 \
    name sweep_tx4_1_V_strb_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_tx4_1} \
    metadata {  } \
    op interface \
    ports { sweep_tx4_1_TSTRB { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_tx4_1_V_strb_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 213 \
    name sweep_tx4_1_V_last_V \
    reset_level 1 \
    sync_rst true \
    corename {sweep_tx4_1} \
    metadata {  } \
    op interface \
    ports { sweep_tx4_1_TLAST { O 1 vector } sweep_tx4_1_TVALID { O 1 bit } sweep_tx4_1_TREADY { I 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sweep_tx4_1_V_last_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 174 \
    name send_fifo_L_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_send_fifo_L_0 \
    op interface \
    ports { send_fifo_L_0_dout { I 128 vector } send_fifo_L_0_empty_n { I 1 bit } send_fifo_L_0_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 179 \
    name send_fifo_R_0 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_send_fifo_R_0 \
    op interface \
    ports { send_fifo_R_0_dout { I 128 vector } send_fifo_R_0_empty_n { I 1 bit } send_fifo_R_0_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 184 \
    name send_fifo_L_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_send_fifo_L_1 \
    op interface \
    ports { send_fifo_L_1_dout { I 128 vector } send_fifo_L_1_empty_n { I 1 bit } send_fifo_L_1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 189 \
    name send_fifo_R_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_send_fifo_R_1 \
    op interface \
    ports { send_fifo_R_1_dout { I 128 vector } send_fifo_R_1_empty_n { I 1 bit } send_fifo_R_1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 194 \
    name send_fifo_L_2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_send_fifo_L_2 \
    op interface \
    ports { send_fifo_L_2_dout { I 128 vector } send_fifo_L_2_empty_n { I 1 bit } send_fifo_L_2_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 199 \
    name send_fifo_R_2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_send_fifo_R_2 \
    op interface \
    ports { send_fifo_R_2_dout { I 128 vector } send_fifo_R_2_empty_n { I 1 bit } send_fifo_R_2_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 204 \
    name send_fifo_L_3 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_send_fifo_L_3 \
    op interface \
    ports { send_fifo_L_3_dout { I 128 vector } send_fifo_L_3_empty_n { I 1 bit } send_fifo_L_3_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 209 \
    name send_fifo_R_3 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_send_fifo_R_3 \
    op interface \
    ports { send_fifo_R_3_dout { I 128 vector } send_fifo_R_3_empty_n { I 1 bit } send_fifo_R_3_read { O 1 bit } } \
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


