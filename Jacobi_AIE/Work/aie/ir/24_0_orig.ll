; ModuleID = '/home/lxy/Projects/SVD/Jacobi_AIE/Work/aie/24_0/src/24_0.cc'
source_filename = "/home/lxy/Projects/SVD/Jacobi_AIE/Work/aie/24_0/src/24_0.cc"
target datalayout = "e-i8:8:8-i16:16:16-i32:32:32-i64:32:32-f32:32:32-f64:32:32-p:32:32:32:32:8-s0:256:256-a0:8:8-S256-n32:64-P1-p0:20:32:32:32:8-p1:20:32:32:32:8-p2:20:32:32:32:8-p3:20:32:32:32:8-p4:20:32:32:32:8-p5:20:32:32:32:8-p6:20:32:32:32:8-p7:20:32:32:32:8-p8:20:32:32:32:8-p9:20:32:32:32:8-p10:20:32:32:32:8-p11:20:32:32:32:8-p12:20:32:32:32:8-p13:20:32:32:32:8-p14:20:32:32:32:8-p15:1:32:32:32:32-p16:1:32:32:32:32-p17:1:32:32:32:32-p18:1:32:32:32:32-p19:1:32:32:32:32-p20:1:32:32:32:32-p21:1:32:32:32:32-p22:1:32:32:32:32-p23:1:32:32:32:32-p24:1:32:32:32:32-p25:1:32:32:32:32-p26:1:32:32:32:32-p27:1:32:32:32:32-p28:1:32:32:32:32-p29:1:32:32:32:32-p30:1:32:32:32:32"
target triple = "pdarch-unknown-unknown-elf"

%"struct.aie::detail::utils::unroll_context" = type { i8 }
%struct.input_stream = type { %union.anon }
%union.anon = type { i32 }
%struct.output_stream = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%"class.aie::vector" = type { %"class.aie::detail::vector_base" }
%"class.aie::detail::vector_base" = type { %struct.v4float }
%struct.v4float = type { %struct.ipd.custom_type.v16int8.v16int8 }
%struct.ipd.custom_type.v16int8.v16int8 = type { i128 }
%struct.ipd.custom_type.uint2_t.uint2_t = type { i2 }
%class.anon = type { %struct.input_stream**, %"class.aie::vector"* }
%class.anon.1 = type { i8 }
%struct.v8int16 = type { %struct.ipd.custom_type.v16int8.v16int8 }
%struct.input_stream.2 = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.v4int32 = type { %struct.ipd.custom_type.v16int8.v16int8 }
%struct.ipd.custom_type.uint1_t.uint1_t = type { i1 }
%"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sint" = type <{ %struct.v4int32, i32 }>
%"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sint" = type <{ %struct.v4int32, i32 }>
%"struct.me_primitive::chessout_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sint" = type <{ %struct.v4int32, i32 }>
%struct.output_stream.4 = type { %union.anon.5 }
%union.anon.5 = type { i32 }

$_ZN12input_streamIfEC2Ej = comdat any

$_ZN13output_streamIfEC2Ej = comdat any

$_Z13orthogonalizeILi4EEvP12input_streamIfES2_P13output_streamIfES5_ = comdat any

$_Z4donev = comdat any

$_ZN12me_primitive5eventE7uint2_t = comdat any

$_ZN7uint2_tC2Ei = comdat any

$_Z10readincr_vILj4EL22aie_stream_resource_in0EfEN3aie6vectorIT1_XT_EEEP12input_streamIS3_E = comdat any

$_Z9writeincrIL23aie_stream_resource_out0EfLj4EEvP13output_streamIT0_ERKN3aie6vectorIS2_XT1_EEE = comdat any

$_ZN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfE = comdat any

$_ZN3aie6vectorIfLj4EEC2Ev = comdat any

$_ZN3aie6detail5utils12unroll_timesILj1EZNS0_3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEEUlT_E_EEvOT0_ = comdat any

$_ZN3aie6detail11vector_baseIfLj4EEC2Ev = comdat any

$_ZN3aie6detail14vector_storageIfLj4EE5undefEv = comdat any

$_Z13undef_v4floatv = comdat any

$_ZN3aie6detail5utils10unroll_forIjLj0ELj1ELj1EZNS0_3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEEUlT_E_EEvOT3_ = comdat any

$_ZN3aie6detail5utils17unroll_for_helperIjLj0ELj1ELj0ELj1EE7executeIZNS0_3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEEUlT_E_EEvOSC_ = comdat any

$_ZZN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEENKUlT_E_clINS0_5utils14unroll_contextIjLj0ELj1ELj0EEEEEDaS8_ = comdat any

$_ZN3aie6detail5utils17unroll_for_helperIjLj0ELj1ELj1ELj1EE7executeIZNS0_3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEEUlT_E_EEvOSC_ = comdat any

$_ZN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE6get_opEv = comdat any

$_ZZN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE6get_opEvENKUlDpOT_E_clIJRP12input_streamIfEEEEDaS7_ = comdat any

$_ZN3aie6vectorIfLj4EEC2E7v4float = comdat any

$_ZN3aie6vectorIfLj4EE6insertILj4EEERS1_jRKNS0_IfXT_EEE = comdat any

$_ZNK3aie6detail5utils14unroll_contextIjLj0ELj1ELj0EEcvjEv = comdat any

$_Z10as_v4float7v8int16 = comdat any

$_ZN7v4floatC2E17chessllvmInternal7v16int8 = comdat any

$_Z7get_wssi = comdat any

$_Z10as_v8int167v4int32 = comdat any

$_Z8getl_wssi = comdat any

$_ZN7v8int16C2E17chessllvmInternal7v16int8 = comdat any

$_ZN12me_primitive14stream_read128IiEEN13chessEnableIfIXsr17chessIsCompatibleIN15chessRemoveQualIT_E4typeEiEE5valueE7v4int32E4typeEPU4AS25U16__protect_accessi7uint1_tRS3_ = comdat any

$_ZN7uint1_tC2Ei = comdat any

$_ZN12me_primitive14stream_read128IiEEN13chessEnableIfIXsr17chessIsCompatibleIN15chessRemoveQualIT_E4typeEiEE5valueE7v4int32E4typeEPU4AS26U16__protect_accessi7uint1_tRS3_ = comdat any

$_ZN12me_primitive14stream_read128IiEEN13chessEnableIfIXsr17chessIsCompatibleIN15chessRemoveQualIT_E4typeEiEE5valueE7v4int32E4typeEPU4AS17U16__protect_accessi7uint1_tRS3_ = comdat any

$_ZN3aie6detail11vector_baseIfLj4EEC2E7v4float = comdat any

$_ZN3aie6detail11vector_baseIfLj4EE6insertILj4EEERS2_jRKNS1_IfXT_EEE = comdat any

$_ZNK3aie6detail5utils14unroll_contextIjLj0ELj1ELj0EE7currentEv = comdat any

$_ZN3aie6detail3adf17stream_out_helperILj4EfL23aie_stream_resource_out0EE9writeincrEP13output_streamIfENS_6vectorIfLj4EEE = comdat any

$_ZNK3aie6vectorIfLj4EE7extractILj4EEENS0_IfXT_EEEj = comdat any

$_ZNK3aie6vectorIfLj4EEcv7v4floatEv = comdat any

$_Z10as_v8int167v4float = comdat any

$_Z7put_wmsi7v8int16i = comdat any

$_Z7put_wmsi7v4int32i = comdat any

$_Z10as_v4int327v8int16 = comdat any

$_ZN12me_primitive15stream_write128EPU4AS29U16__protect_accessi7v4int327uint1_tS3_ = comdat any

$_ZN12me_primitive15stream_write128EPU4AS30U16__protect_accessi7v4int327uint1_tS3_ = comdat any

$_ZN12me_primitive15stream_write128EPU4AS18U16__protect_accessi7v4int327uint1_tS3_ = comdat any

$_ZN7v4int32C2E17chessllvmInternal7v16int8 = comdat any

$_ZNK3aie6detail11vector_baseIfLj4EE7extractILj4EEENS1_IfXT_EEEj = comdat any

$_ZN3aie6vectorIfLj4EEC2ERKNS_6detail11vector_baseIfLj4EEE = comdat any

$_ZNK3aie6vectorIfLj4EE9to_nativeEv = comdat any

$_ZNK3aie6detail11vector_baseIfLj4EE9to_nativeEv = comdat any

@_ZL11sync_buffer = internal global [8 x i32] [i32 0, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 4, !dbg !0
@__const._ZN3aie6detail5utils17unroll_for_helperIjLj0ELj1ELj0ELj1EE7executeIZNS0_3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEEUlT_E_EEvOSC_.ctx = private unnamed_addr constant %"struct.aie::detail::utils::unroll_context" undef, align 1
@_ZN12me_primitive3ss0E = external dso_local addrspace(25) global i32, align 1 #0
@_ZN12me_primitive5wsst0E = external dso_local addrspace(20) global i32, align 1 #0
@_ZN12me_primitive3ss1E = external dso_local addrspace(26) global i32, align 1 #1
@_ZN12me_primitive5wsst1E = external dso_local addrspace(20) global i32, align 1 #1
@_ZN12me_primitive3ms0E = external dso_local addrspace(29) global i32, align 1 #0
@_ZN12me_primitive3ms1E = external dso_local addrspace(30) global i32, align 1 #1

; Function Attrs: mustprogress nounwind
define dso_local float @_Z4signd(double %x) addrspace(1) #2 !dbg !722 {
entry:
  %retval = alloca float, align 4
  %x.addr = alloca double, align 4
  store double %x, double* %x.addr, align 4, !tbaa !728
  call addrspace(1) void @llvm.dbg.declare(metadata double* %x.addr, metadata !727, metadata !DIExpression()), !dbg !732
  %0 = load double, double* %x.addr, align 4, !dbg !733, !tbaa !728
  %cmp = fcmp ogt double %0, 0.000000e+00, !dbg !735
  br i1 %cmp, label %if.then, label %if.else, !dbg !736

if.then:                                          ; preds = %entry
  %1 = load double, double* %x.addr, align 4, !dbg !737, !tbaa !728
  %conv = fptrunc double %1 to float, !dbg !737
  store float %conv, float* %retval, align 4, !dbg !738
  br label %return, !dbg !738

if.else:                                          ; preds = %entry
  %2 = load double, double* %x.addr, align 4, !dbg !739, !tbaa !728
  %cmp1 = fcmp oeq double %2, 0.000000e+00, !dbg !741
  br i1 %cmp1, label %if.then2, label %if.else3, !dbg !742

if.then2:                                         ; preds = %if.else
  store float 0.000000e+00, float* %retval, align 4, !dbg !743
  br label %return, !dbg !743

if.else3:                                         ; preds = %if.else
  store float -1.000000e+00, float* %retval, align 4, !dbg !744
  br label %return, !dbg !744

return:                                           ; preds = %if.else3, %if.then2, %if.then
  %3 = load float, float* %retval, align 4, !dbg !745
  ret float %3, !dbg !745
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) addrspace(1) #3

; Function Attrs: mustprogress norecurse nounwind
define dso_local i32 @main() addrspace(1) #4 !dbg !746 {
entry:
  %retval = alloca i32, align 4
  %stream_0 = alloca %struct.input_stream, align 4
  %stream_1 = alloca %struct.input_stream, align 4
  %stream_2 = alloca %struct.output_stream, align 4
  %stream_3 = alloca %struct.output_stream, align 4
  %index = alloca i32, align 4
  %proc_24_0_bounds = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 0, i32* %retval, align 4, !noalias !757
  store volatile i32 0, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @_ZL11sync_buffer, i32 0, i32 0), align 4, !dbg !763, !tbaa !764, !noalias !757
  store %struct.input_stream undef, %struct.input_stream* %stream_0, align 4, !dbg !766, !noalias !757
  %0 = bitcast %struct.input_stream* %stream_0 to i8*, !dbg !766
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #24, !dbg !766, !noalias !757
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.input_stream* %stream_0, metadata !748, metadata !DIExpression()), !dbg !767
  %1 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0s_struct.input_streams.i32(%struct.input_stream* %stream_0, i32 0, metadata !768), !dbg !766, !noalias !757
  call addrspace(1) void @_ZN12input_streamIfEC2Ej(%struct.input_stream* nonnull align 4 dereferenceable(4) %stream_0, i32 0) #25, !dbg !769, !noalias !757
  store %struct.input_stream undef, %struct.input_stream* %stream_1, align 4, !dbg !770, !noalias !757
  %2 = bitcast %struct.input_stream* %stream_1 to i8*, !dbg !770
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #24, !dbg !770, !noalias !757
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.input_stream* %stream_1, metadata !749, metadata !DIExpression()), !dbg !771
  %3 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0s_struct.input_streams.i32(%struct.input_stream* %stream_1, i32 0, metadata !772), !dbg !770, !noalias !757
  call addrspace(1) void @_ZN12input_streamIfEC2Ej(%struct.input_stream* nonnull align 4 dereferenceable(4) %stream_1, i32 1) #25, !dbg !773, !noalias !757
  store %struct.output_stream undef, %struct.output_stream* %stream_2, align 4, !dbg !774, !noalias !757
  %4 = bitcast %struct.output_stream* %stream_2 to i8*, !dbg !774
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #24, !dbg !774, !noalias !757
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.output_stream* %stream_2, metadata !750, metadata !DIExpression()), !dbg !775
  %5 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0s_struct.output_streams.i32(%struct.output_stream* %stream_2, i32 0, metadata !776), !dbg !774, !noalias !757
  call addrspace(1) void @_ZN13output_streamIfEC2Ej(%struct.output_stream* nonnull align 4 dereferenceable(4) %stream_2, i32 0) #25, !dbg !777, !noalias !757
  store %struct.output_stream undef, %struct.output_stream* %stream_3, align 4, !dbg !778, !noalias !757
  %6 = bitcast %struct.output_stream* %stream_3 to i8*, !dbg !778
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #24, !dbg !778, !noalias !757
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.output_stream* %stream_3, metadata !751, metadata !DIExpression()), !dbg !779
  %7 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0s_struct.output_streams.i32(%struct.output_stream* %stream_3, i32 0, metadata !780), !dbg !778, !noalias !757
  call addrspace(1) void @_ZN13output_streamIfEC2Ej(%struct.output_stream* nonnull align 4 dereferenceable(4) %stream_3, i32 1) #25, !dbg !781, !noalias !757
  store i32 undef, i32* %index, align 4, !dbg !782, !noalias !757
  %8 = bitcast i32* %index to i8*, !dbg !782
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #24, !dbg !782, !noalias !757
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %index, metadata !752, metadata !DIExpression()), !dbg !783
  store i32 1, i32* %index, align 4, !dbg !783, !tbaa !764, !noalias !757
  br label %while.cond, !dbg !784

while.cond:                                       ; preds = %cleanup.cont, %entry
  br label %while.body, !dbg !784

while.body:                                       ; preds = %while.cond
  store i32 undef, i32* %proc_24_0_bounds, align 4, !dbg !785, !noalias !757
  %9 = bitcast i32* %proc_24_0_bounds to i8*, !dbg !785
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #24, !dbg !785, !noalias !757
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %proc_24_0_bounds, metadata !755, metadata !DIExpression()), !dbg !786
  %10 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @_ZL11sync_buffer, i32 0, i32 1), align 4, !dbg !787, !tbaa !764, !noalias !757
  store i32 %10, i32* %proc_24_0_bounds, align 4, !dbg !786, !tbaa !764, !noalias !757
  br label %while.cond1, !dbg !788

while.cond1:                                      ; preds = %if.end, %while.body
  %11 = load i32, i32* %proc_24_0_bounds, align 4, !dbg !789, !tbaa !764, !noalias !757
  %tobool = icmp ne i32 %11, 0, !dbg !789
  br i1 %tobool, label %while.body2, label %while.end, !dbg !788

while.body2:                                      ; preds = %while.cond1
  call addrspace(1) void @_Z13orthogonalizeILi4EEvP12input_streamIfES2_P13output_streamIfES5_(%struct.input_stream* %stream_0, %struct.input_stream* %stream_1, %struct.output_stream* %stream_2, %struct.output_stream* %stream_3) #25, !dbg !790, !noalias !757
  %12 = load i32, i32* %index, align 4, !dbg !792, !tbaa !764, !noalias !757
  %sub = sub nsw i32 1, %12, !dbg !793
  store i32 %sub, i32* %index, align 4, !dbg !794, !tbaa !764, !noalias !757
  call addrspace(1) void @llvm.chess_memory_fence(), !dbg !795, !noalias !757
  %13 = load i32, i32* %proc_24_0_bounds, align 4, !dbg !796, !tbaa !764, !noalias !757
  %cmp = icmp sgt i32 %13, 0, !dbg !798
  br i1 %cmp, label %if.then, label %if.end, !dbg !799

if.then:                                          ; preds = %while.body2
  %14 = load i32, i32* %proc_24_0_bounds, align 4, !dbg !800, !tbaa !764, !noalias !757
  %dec = add nsw i32 %14, -1, !dbg !800
  store i32 %dec, i32* %proc_24_0_bounds, align 4, !dbg !800, !tbaa !764, !noalias !757
  br label %if.end, !dbg !800

if.end:                                           ; preds = %if.then, %while.body2
  br label %while.cond1, !dbg !788, !llvm.loop !801

while.end:                                        ; preds = %while.cond1
  call addrspace(1) void @_Z4donev() #26, !dbg !804, !noalias !757
  %15 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @_ZL11sync_buffer, i32 0, i32 0), align 4, !dbg !805, !tbaa !764, !noalias !757
  %cmp3 = icmp sgt i32 %15, 0, !dbg !807
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !808

if.then4:                                         ; preds = %while.end
  store i32 3, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !809

if.end5:                                          ; preds = %while.end
  store i32 0, i32* %cleanup.dest.slot, align 4, !dbg !810, !noalias !757
  br label %cleanup, !dbg !810

cleanup:                                          ; preds = %if.end5, %if.then4
  %16 = bitcast i32* %proc_24_0_bounds to i8*, !dbg !810
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %16) #24, !dbg !810, !noalias !757
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end6
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !784, !llvm.loop !811

while.end6:                                       ; preds = %cleanup
  store i32 0, i32* %retval, align 4, !dbg !812, !noalias !757
  store i32 1, i32* %cleanup.dest.slot, align 4
  %17 = bitcast i32* %index to i8*, !dbg !813
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %17) #24, !dbg !813
  %18 = bitcast %struct.output_stream* %stream_3 to i8*, !dbg !813
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #24, !dbg !813
  %19 = bitcast %struct.output_stream* %stream_2 to i8*, !dbg !813
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #24, !dbg !813
  %20 = bitcast %struct.input_stream* %stream_1 to i8*, !dbg !813
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %20) #24, !dbg !813
  %21 = bitcast %struct.input_stream* %stream_0 to i8*, !dbg !813
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #24, !dbg !813
  %22 = load i32, i32* %retval, align 4, !dbg !813
  ret i32 %22, !dbg !813

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) addrspace(1) #5

; Function Attrs: inaccessiblememonly nounwind willreturn
declare i8* @llvm.noalias.decl.p0i8.p0s_struct.input_streams.i32(%struct.input_stream*, i32, metadata) addrspace(1) #6

; Function Attrs: nounwind
define linkonce_odr dso_local void @_ZN12input_streamIfEC2Ej(%struct.input_stream* nonnull align 4 dereferenceable(4) %this, i32 %ch) unnamed_addr addrspace(1) #7 comdat align 2 !dbg !814 {
entry:
  %this.addr = alloca %struct.input_stream*, align 4
  %ch.addr = alloca i32, align 4
  store %struct.input_stream* %this, %struct.input_stream** %this.addr, align 4, !tbaa !819
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.input_stream** %this.addr, metadata !816, metadata !DIExpression()), !dbg !821
  store i32 %ch, i32* %ch.addr, align 4, !tbaa !764
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %ch.addr, metadata !818, metadata !DIExpression()), !dbg !822
  %this1 = load %struct.input_stream*, %struct.input_stream** %this.addr, align 4
  %0 = getelementptr inbounds %struct.input_stream, %struct.input_stream* %this1, i32 0, i32 0, !dbg !822
  %channel = bitcast %union.anon* %0 to i32*, !dbg !822
  %1 = load i32, i32* %ch.addr, align 4, !dbg !822, !tbaa !764
  store i32 %1, i32* %channel, align 4, !dbg !822, !tbaa !823
  ret void, !dbg !822
}

; Function Attrs: inaccessiblememonly nounwind willreturn
declare i8* @llvm.noalias.decl.p0i8.p0s_struct.output_streams.i32(%struct.output_stream*, i32, metadata) addrspace(1) #6

; Function Attrs: nounwind
define linkonce_odr dso_local void @_ZN13output_streamIfEC2Ej(%struct.output_stream* nonnull align 4 dereferenceable(4) %this, i32 %ch) unnamed_addr addrspace(1) #7 comdat align 2 !dbg !824 {
entry:
  %this.addr = alloca %struct.output_stream*, align 4
  %ch.addr = alloca i32, align 4
  store %struct.output_stream* %this, %struct.output_stream** %this.addr, align 4, !tbaa !819
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.output_stream** %this.addr, metadata !826, metadata !DIExpression()), !dbg !829
  store i32 %ch, i32* %ch.addr, align 4, !tbaa !764
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %ch.addr, metadata !828, metadata !DIExpression()), !dbg !830
  %this1 = load %struct.output_stream*, %struct.output_stream** %this.addr, align 4
  %0 = getelementptr inbounds %struct.output_stream, %struct.output_stream* %this1, i32 0, i32 0, !dbg !830
  %channel = bitcast %union.anon.0* %0 to i32*, !dbg !830
  %1 = load i32, i32* %ch.addr, align 4, !dbg !830, !tbaa !764
  store i32 %1, i32* %channel, align 4, !dbg !830, !tbaa !823
  ret void, !dbg !830
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_Z13orthogonalizeILi4EEvP12input_streamIfES2_P13output_streamIfES5_(%struct.input_stream* chesscopy noalias %Ap, %struct.input_stream* chesscopy noalias %Aq, %struct.output_stream* chesscopy noalias %Bp, %struct.output_stream* chesscopy noalias %Bq) addrspace(1) #2 comdat !dbg !831 {
entry:
  %Ap.addr = alloca %struct.input_stream*, align 4
  %Aq.addr = alloca %struct.input_stream*, align 4
  %Bp.addr = alloca %struct.output_stream*, align 4
  %Bq.addr = alloca %struct.output_stream*, align 4
  %VECSIZE = alloca i32, align 4
  %tmpAp = alloca %"class.aie::vector", align 16
  %tmpAq = alloca %"class.aie::vector", align 16
  %0 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0p0s_struct.input_streams.i32(%struct.input_stream** %Ap.addr, i32 0, metadata !847), !noalias !850
  store %struct.input_stream* %Ap, %struct.input_stream** %Ap.addr, align 4, !tbaa !819, !noalias !850
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.input_stream** %Ap.addr, metadata !837, metadata !DIExpression()), !dbg !854
  %1 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0p0s_struct.input_streams.i32(%struct.input_stream** %Aq.addr, i32 0, metadata !855), !noalias !850
  store %struct.input_stream* %Aq, %struct.input_stream** %Aq.addr, align 4, !tbaa !819, !noalias !850
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.input_stream** %Aq.addr, metadata !838, metadata !DIExpression()), !dbg !856
  %2 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0p0s_struct.output_streams.i32(%struct.output_stream** %Bp.addr, i32 0, metadata !857), !noalias !850
  store %struct.output_stream* %Bp, %struct.output_stream** %Bp.addr, align 4, !tbaa !819, !noalias !850
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.output_stream** %Bp.addr, metadata !839, metadata !DIExpression()), !dbg !858
  %3 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0p0s_struct.output_streams.i32(%struct.output_stream** %Bq.addr, i32 0, metadata !859), !noalias !850
  store %struct.output_stream* %Bq, %struct.output_stream** %Bq.addr, align 4, !tbaa !819, !noalias !850
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.output_stream** %Bq.addr, metadata !840, metadata !DIExpression()), !dbg !860
  store i32 undef, i32* %VECSIZE, align 4, !dbg !861, !noalias !850
  %4 = bitcast i32* %VECSIZE to i8*, !dbg !861
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #24, !dbg !861, !noalias !850
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %VECSIZE, metadata !841, metadata !DIExpression()), !dbg !862
  store i32 4, i32* %VECSIZE, align 4, !dbg !862, !tbaa !764, !noalias !850
  store %"class.aie::vector" undef, %"class.aie::vector"* %tmpAp, align 16, !dbg !863, !noalias !850
  %5 = bitcast %"class.aie::vector"* %tmpAp to i8*, !dbg !863
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 16, i8* %5) #24, !dbg !863, !noalias !850
  call addrspace(1) void @llvm.dbg.declare(metadata %"class.aie::vector"* %tmpAp, metadata !843, metadata !DIExpression()), !dbg !864
  %6 = load %struct.input_stream*, %struct.input_stream** %Ap.addr, align 4, !dbg !865, !tbaa !819, !noalias !850
  %7 = call addrspace(1) %struct.input_stream* @llvm.noalias.p0s_struct.input_streams.p0i8.p0p0s_struct.input_streams.i32(%struct.input_stream* %6, i8* %0, %struct.input_stream** %Ap.addr, i32 0, metadata !847), !dbg !865, !tbaa !819, !noalias !850
  %call = call addrspace(1) %"class.aie::vector" @_Z10readincr_vILj4EL22aie_stream_resource_in0EfEN3aie6vectorIT1_XT_EEEP12input_streamIS3_E(%struct.input_stream* %7) #25, !dbg !866, !noalias !850
  %8 = getelementptr inbounds %"class.aie::vector", %"class.aie::vector"* %tmpAp, i32 0, i32 0, !dbg !866
  %9 = extractvalue %"class.aie::vector" %call, 0, !dbg !866
  store %"class.aie::detail::vector_base" %9, %"class.aie::detail::vector_base"* %8, align 16, !dbg !866, !noalias !850
  store %"class.aie::vector" undef, %"class.aie::vector"* %tmpAq, align 16, !dbg !867, !noalias !850
  %10 = bitcast %"class.aie::vector"* %tmpAq to i8*, !dbg !867
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 16, i8* %10) #24, !dbg !867, !noalias !850
  call addrspace(1) void @llvm.dbg.declare(metadata %"class.aie::vector"* %tmpAq, metadata !844, metadata !DIExpression()), !dbg !868
  %11 = load %struct.input_stream*, %struct.input_stream** %Aq.addr, align 4, !dbg !869, !tbaa !819, !noalias !850
  %12 = call addrspace(1) %struct.input_stream* @llvm.noalias.p0s_struct.input_streams.p0i8.p0p0s_struct.input_streams.i32(%struct.input_stream* %11, i8* %1, %struct.input_stream** %Aq.addr, i32 0, metadata !855), !dbg !869, !tbaa !819, !noalias !850
  %call1 = call addrspace(1) %"class.aie::vector" @_Z10readincr_vILj4EL22aie_stream_resource_in0EfEN3aie6vectorIT1_XT_EEEP12input_streamIS3_E(%struct.input_stream* %12) #25, !dbg !870, !noalias !850
  %13 = getelementptr inbounds %"class.aie::vector", %"class.aie::vector"* %tmpAq, i32 0, i32 0, !dbg !870
  %14 = extractvalue %"class.aie::vector" %call1, 0, !dbg !870
  store %"class.aie::detail::vector_base" %14, %"class.aie::detail::vector_base"* %13, align 16, !dbg !870, !noalias !850
  %15 = load %struct.output_stream*, %struct.output_stream** %Bp.addr, align 4, !dbg !871, !tbaa !819, !noalias !850
  %16 = call addrspace(1) %struct.output_stream* @llvm.noalias.p0s_struct.output_streams.p0i8.p0p0s_struct.output_streams.i32(%struct.output_stream* %15, i8* %2, %struct.output_stream** %Bp.addr, i32 0, metadata !857), !dbg !871, !tbaa !819, !noalias !850
  call addrspace(1) void @_Z9writeincrIL23aie_stream_resource_out0EfLj4EEvP13output_streamIT0_ERKN3aie6vectorIS2_XT1_EEE(%struct.output_stream* %16, %"class.aie::vector"* nonnull align 16 dereferenceable(16) %tmpAp) #25, !dbg !872, !noalias !850
  %17 = load %struct.output_stream*, %struct.output_stream** %Bq.addr, align 4, !dbg !873, !tbaa !819, !noalias !850
  %18 = call addrspace(1) %struct.output_stream* @llvm.noalias.p0s_struct.output_streams.p0i8.p0p0s_struct.output_streams.i32(%struct.output_stream* %17, i8* %3, %struct.output_stream** %Bq.addr, i32 0, metadata !859), !dbg !873, !tbaa !819, !noalias !850
  call addrspace(1) void @_Z9writeincrIL23aie_stream_resource_out0EfLj4EEvP13output_streamIT0_ERKN3aie6vectorIS2_XT1_EEE(%struct.output_stream* %18, %"class.aie::vector"* nonnull align 16 dereferenceable(16) %tmpAq) #25, !dbg !874, !noalias !850
  %19 = bitcast %"class.aie::vector"* %tmpAq to i8*, !dbg !875
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 16, i8* %19) #24, !dbg !875
  %20 = bitcast %"class.aie::vector"* %tmpAp to i8*, !dbg !875
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 16, i8* %20) #24, !dbg !875
  %21 = bitcast i32* %VECSIZE to i8*, !dbg !875
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #24, !dbg !875
  ret void, !dbg !875
}

; Function Attrs: nounwind willreturn
declare void @llvm.chess_memory_fence() addrspace(1) #8

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local void @_Z4donev() addrspace(1) #9 comdat {
entry:
  %agg.tmp = alloca %struct.ipd.custom_type.uint2_t.uint2_t, align 4
  %custom_type.tmp = alloca %struct.ipd.custom_type.uint2_t.uint2_t, align 4
  call addrspace(1) void @llvm.chess_memory_fence()
  call addrspace(1) void @_Z25chess_separator_scheduleri(i32 8) #27
  call addrspace(1) void @_ZN7uint2_tC2Ei(%struct.ipd.custom_type.uint2_t.uint2_t* nonnull align 4 dereferenceable(1) %custom_type.tmp, i32 2) #25
  %0 = load %struct.ipd.custom_type.uint2_t.uint2_t, %struct.ipd.custom_type.uint2_t.uint2_t* %custom_type.tmp, align 4, !tbaa !876
  store %struct.ipd.custom_type.uint2_t.uint2_t %0, %struct.ipd.custom_type.uint2_t.uint2_t* %agg.tmp, align 4, !tbaa !876
  %1 = load %struct.ipd.custom_type.uint2_t.uint2_t, %struct.ipd.custom_type.uint2_t.uint2_t* %agg.tmp, align 4, !tbaa !876
  call addrspace(1) void @_ZN12me_primitive5eventE7uint2_t(%struct.ipd.custom_type.uint2_t.uint2_t %1) #28
  call addrspace(1) void @_Z25chess_separator_scheduleri(i32 5) #27
  call addrspace(1) void @llvm.chess_memory_fence()
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) addrspace(1) #5

; Function Attrs: inaccessiblememonly nounwind
declare dso_local void @_Z25chess_separator_scheduleri(i32) addrspace(1) #10

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local void @_ZN12me_primitive5eventE7uint2_t(%struct.ipd.custom_type.uint2_t.uint2_t %a0.coerce) addrspace(1) #11 comdat {
entry:
  %a0 = alloca %struct.ipd.custom_type.uint2_t.uint2_t, align 4
  store %struct.ipd.custom_type.uint2_t.uint2_t %a0.coerce, %struct.ipd.custom_type.uint2_t.uint2_t* %a0, align 4
  %0 = load %struct.ipd.custom_type.uint2_t.uint2_t, %struct.ipd.custom_type.uint2_t.uint2_t* %a0, align 4, !tbaa !876
  call x86_regcallcc addrspace(1) void @__regcall3__chessintr_void_event_uint2_t(%struct.ipd.custom_type.uint2_t.uint2_t %0) #27
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dso_local void @_ZN7uint2_tC2Ei(%struct.ipd.custom_type.uint2_t.uint2_t* nonnull align 4 dereferenceable(1) %this, i32 %a) unnamed_addr addrspace(1) #12 comdat align 2 {
entry:
  %this.addr = alloca %struct.ipd.custom_type.uint2_t.uint2_t*, align 4
  %a.addr = alloca i32, align 4
  store %struct.ipd.custom_type.uint2_t.uint2_t* %this, %struct.ipd.custom_type.uint2_t.uint2_t** %this.addr, align 4, !tbaa !819
  store i32 %a, i32* %a.addr, align 4, !tbaa !764
  %this1 = load %struct.ipd.custom_type.uint2_t.uint2_t*, %struct.ipd.custom_type.uint2_t.uint2_t** %this.addr, align 4
  %0 = bitcast %struct.ipd.custom_type.uint2_t.uint2_t* %this1 to i2*
  store i2 0, i2* %0, align 4
  %1 = load i32, i32* %a.addr, align 4, !tbaa !764
  %2 = call addrspace(1) %struct.ipd.custom_type.uint2_t.uint2_t @llvm.chess.init.customint.s_struct.ipd.custom_type.uint2_t.uint2_ts.i32.p1f_s_struct.ipd.custom_type.uint2_t.uint2_tsi32f(%struct.ipd.custom_type.uint2_t.uint2_t undef, i32 %1, i32 2, i32 32, i1 true, i32 0, %struct.ipd.custom_type.uint2_t.uint2_t (i32) addrspace(1)* @__regcall3__chessintr_uint2_t_uint2_t___sint)
  store %struct.ipd.custom_type.uint2_t.uint2_t %2, %struct.ipd.custom_type.uint2_t.uint2_t* %this1, align 4
  ret void
}

; Function Attrs: inaccessiblememonly nounwind
declare dso_local x86_regcallcc void @__regcall3__chessintr_void_event_uint2_t(%struct.ipd.custom_type.uint2_t.uint2_t) addrspace(1) #10

; Function Attrs: nounwind readnone willreturn
declare dso_local x86_regcallcc %struct.ipd.custom_type.uint2_t.uint2_t @__regcall3__chessintr_uint2_t_uint2_t___sint(i32 signext) addrspace(1) #13

; Function Attrs: nounwind readnone willreturn
declare %struct.ipd.custom_type.uint2_t.uint2_t @llvm.chess.init.customint.s_struct.ipd.custom_type.uint2_t.uint2_ts.i32.p1f_s_struct.ipd.custom_type.uint2_t.uint2_tsi32f(%struct.ipd.custom_type.uint2_t.uint2_t, i32, i32, i32, i1, i32, %struct.ipd.custom_type.uint2_t.uint2_t (i32) addrspace(1)*) addrspace(1) #14

; Function Attrs: inaccessiblememonly nounwind willreturn
declare i8* @llvm.noalias.decl.p0i8.p0p0s_struct.input_streams.i32(%struct.input_stream**, i32, metadata) addrspace(1) #6

; Function Attrs: inaccessiblememonly nounwind willreturn
declare i8* @llvm.noalias.decl.p0i8.p0p0s_struct.output_streams.i32(%struct.output_stream**, i32, metadata) addrspace(1) #6

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local %"class.aie::vector" @_Z10readincr_vILj4EL22aie_stream_resource_in0EfEN3aie6vectorIT1_XT_EEEP12input_streamIS3_E(%struct.input_stream* %w) addrspace(1) #15 comdat !dbg !878 {
entry:
  %retval = alloca %"class.aie::vector", align 16
  %w.addr = alloca %struct.input_stream*, align 4
  store %struct.input_stream* %w, %struct.input_stream** %w.addr, align 4, !tbaa !819
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.input_stream** %w.addr, metadata !882, metadata !DIExpression()), !dbg !885
  %0 = load %struct.input_stream*, %struct.input_stream** %w.addr, align 4, !dbg !886, !tbaa !819
  %call = call addrspace(1) %"class.aie::vector" @_ZN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfE(%struct.input_stream* %0) #25, !dbg !887
  %1 = getelementptr inbounds %"class.aie::vector", %"class.aie::vector"* %retval, i32 0, i32 0, !dbg !887
  %2 = extractvalue %"class.aie::vector" %call, 0, !dbg !887
  store %"class.aie::detail::vector_base" %2, %"class.aie::detail::vector_base"* %1, align 16, !dbg !887
  %3 = load %"class.aie::vector", %"class.aie::vector"* %retval, align 16, !dbg !888
  ret %"class.aie::vector" %3, !dbg !888
}

; Function Attrs: argmemonly nounwind speculatable willreturn
declare %struct.input_stream* @llvm.noalias.p0s_struct.input_streams.p0i8.p0p0s_struct.input_streams.i32(%struct.input_stream*, i8*, %struct.input_stream**, i32, metadata) addrspace(1) #16

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local void @_Z9writeincrIL23aie_stream_resource_out0EfLj4EEvP13output_streamIT0_ERKN3aie6vectorIS2_XT1_EEE(%struct.output_stream* %w, %"class.aie::vector"* nonnull align 16 dereferenceable(16) %value) addrspace(1) #15 comdat !dbg !889 {
entry:
  %w.addr = alloca %struct.output_stream*, align 4
  %value.addr = alloca %"class.aie::vector"*, align 4
  store %struct.output_stream* %w, %struct.output_stream** %w.addr, align 4, !tbaa !819
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.output_stream** %w.addr, metadata !894, metadata !DIExpression()), !dbg !898
  store %"class.aie::vector"* %value, %"class.aie::vector"** %value.addr, align 4, !tbaa !819
  call addrspace(1) void @llvm.dbg.declare(metadata %"class.aie::vector"** %value.addr, metadata !895, metadata !DIExpression()), !dbg !899
  %0 = load %struct.output_stream*, %struct.output_stream** %w.addr, align 4, !dbg !900, !tbaa !819
  %1 = load %"class.aie::vector"*, %"class.aie::vector"** %value.addr, align 4, !dbg !901, !tbaa !819
  %2 = load %"class.aie::vector", %"class.aie::vector"* %1, align 16, !dbg !902, !tbaa !903
  call addrspace(1) void @_ZN3aie6detail3adf17stream_out_helperILj4EfL23aie_stream_resource_out0EE9writeincrEP13output_streamIfENS_6vectorIfLj4EEE(%struct.output_stream* %0, %"class.aie::vector" %2) #25, !dbg !902
  ret void, !dbg !907
}

; Function Attrs: argmemonly nounwind speculatable willreturn
declare %struct.output_stream* @llvm.noalias.p0s_struct.output_streams.p0i8.p0p0s_struct.output_streams.i32(%struct.output_stream*, i8*, %struct.output_stream**, i32, metadata) addrspace(1) #16

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local %"class.aie::vector" @_ZN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfE(%struct.input_stream* %w) addrspace(1) #15 comdat align 2 !dbg !908 {
entry:
  %retval = alloca %"class.aie::vector", align 16
  %w.addr = alloca %struct.input_stream*, align 4
  %custom_type.tmp = alloca %"class.aie::vector", align 16
  %ref.tmp = alloca %class.anon, align 4
  store %struct.input_stream* %w, %struct.input_stream** %w.addr, align 4, !tbaa !819
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.input_stream** %w.addr, metadata !923, metadata !DIExpression()), !dbg !925
  call addrspace(1) void @llvm.dbg.declare(metadata %"class.aie::vector"* %retval, metadata !924, metadata !DIExpression()), !dbg !926
  call addrspace(1) void @_ZN3aie6vectorIfLj4EEC2Ev(%"class.aie::vector"* nonnull align 16 dereferenceable(16) %custom_type.tmp) #25, !dbg !926
  %0 = load %"class.aie::vector", %"class.aie::vector"* %custom_type.tmp, align 16, !dbg !926, !tbaa !903
  store %"class.aie::vector" %0, %"class.aie::vector"* %retval, align 16, !dbg !926, !tbaa !903
  %1 = bitcast %class.anon* %ref.tmp to i8*, !dbg !927
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #24, !dbg !927
  %2 = getelementptr inbounds %class.anon, %class.anon* %ref.tmp, i32 0, i32 0, !dbg !927
  store %struct.input_stream** %w.addr, %struct.input_stream*** %2, align 4, !dbg !927, !tbaa !819
  %3 = getelementptr inbounds %class.anon, %class.anon* %ref.tmp, i32 0, i32 1, !dbg !927
  store %"class.aie::vector"* %retval, %"class.aie::vector"** %3, align 4, !dbg !927, !tbaa !819
  call addrspace(1) void @_ZN3aie6detail5utils12unroll_timesILj1EZNS0_3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEEUlT_E_EEvOT0_(%class.anon* nonnull align 4 dereferenceable(8) %ref.tmp) #25, !dbg !929
  %4 = bitcast %class.anon* %ref.tmp to i8*, !dbg !929
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 8, i8* %4) #24, !dbg !929
  %5 = load %"class.aie::vector", %"class.aie::vector"* %retval, align 16, !dbg !930
  ret %"class.aie::vector" %5, !dbg !930
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dso_local void @_ZN3aie6vectorIfLj4EEC2Ev(%"class.aie::vector"* nonnull align 16 dereferenceable(16) %this) unnamed_addr addrspace(1) #12 comdat align 2 !dbg !931 {
entry:
  %this.addr = alloca %"class.aie::vector"*, align 4
  store %"class.aie::vector"* %this, %"class.aie::vector"** %this.addr, align 4, !tbaa !819
  call addrspace(1) void @llvm.dbg.declare(metadata %"class.aie::vector"** %this.addr, metadata !933, metadata !DIExpression()), !dbg !935
  %this1 = load %"class.aie::vector"*, %"class.aie::vector"** %this.addr, align 4
  %0 = bitcast %"class.aie::vector"* %this1 to %"class.aie::detail::vector_base"*, !dbg !936
  call addrspace(1) void @_ZN3aie6detail11vector_baseIfLj4EEC2Ev(%"class.aie::detail::vector_base"* nonnull align 16 dereferenceable(16) %0) #25, !dbg !937
  ret void, !dbg !938
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local void @_ZN3aie6detail5utils12unroll_timesILj1EZNS0_3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEEUlT_E_EEvOT0_(%class.anon* nonnull align 4 dereferenceable(8) %fn) addrspace(1) #15 comdat !dbg !939 {
entry:
  %fn.addr = alloca %class.anon*, align 4
  store %class.anon* %fn, %class.anon** %fn.addr, align 4, !tbaa !819
  call addrspace(1) void @llvm.dbg.declare(metadata %class.anon** %fn.addr, metadata !951, metadata !DIExpression()), !dbg !955
  %0 = load %class.anon*, %class.anon** %fn.addr, align 4, !dbg !956, !tbaa !819
  call addrspace(1) void @_ZN3aie6detail5utils10unroll_forIjLj0ELj1ELj1EZNS0_3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEEUlT_E_EEvOT3_(%class.anon* nonnull align 4 dereferenceable(8) %0) #25, !dbg !957
  ret void, !dbg !958
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dso_local void @_ZN3aie6detail11vector_baseIfLj4EEC2Ev(%"class.aie::detail::vector_base"* nonnull align 16 dereferenceable(16) %this) unnamed_addr addrspace(1) #12 comdat align 2 !dbg !959 {
entry:
  %this.addr = alloca %"class.aie::detail::vector_base"*, align 4
  store %"class.aie::detail::vector_base"* %this, %"class.aie::detail::vector_base"** %this.addr, align 4, !tbaa !819
  call addrspace(1) void @llvm.dbg.declare(metadata %"class.aie::detail::vector_base"** %this.addr, metadata !961, metadata !DIExpression()), !dbg !963
  %this1 = load %"class.aie::detail::vector_base"*, %"class.aie::detail::vector_base"** %this.addr, align 4
  %data = getelementptr inbounds %"class.aie::detail::vector_base", %"class.aie::detail::vector_base"* %this1, i32 0, i32 0, !dbg !964
  %call = call addrspace(1) %struct.v4float @_ZN3aie6detail14vector_storageIfLj4EE5undefEv() #25, !dbg !965
  %0 = getelementptr inbounds %struct.v4float, %struct.v4float* %data, i32 0, i32 0, !dbg !965
  %1 = extractvalue %struct.v4float %call, 0, !dbg !965
  store %struct.ipd.custom_type.v16int8.v16int8 %1, %struct.ipd.custom_type.v16int8.v16int8* %0, align 16, !dbg !965
  ret void, !dbg !966
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local %struct.v4float @_ZN3aie6detail14vector_storageIfLj4EE5undefEv() addrspace(1) #2 comdat align 2 !dbg !967 {
entry:
  %retval = alloca %struct.v4float, align 16
  %call = call addrspace(1) %struct.v4float @_Z13undef_v4floatv() #25, !dbg !968
  %0 = getelementptr inbounds %struct.v4float, %struct.v4float* %retval, i32 0, i32 0, !dbg !968
  %1 = extractvalue %struct.v4float %call, 0, !dbg !968
  store %struct.ipd.custom_type.v16int8.v16int8 %1, %struct.ipd.custom_type.v16int8.v16int8* %0, align 16, !dbg !968
  %2 = load %struct.v4float, %struct.v4float* %retval, align 16, !dbg !969
  ret %struct.v4float %2, !dbg !969
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local %struct.v4float @_Z13undef_v4floatv() addrspace(1) #15 comdat {
entry:
  %retval = alloca %struct.v4float, align 16
  %call = call x86_regcallcc addrspace(1) %struct.v4float @__regcall3__chessintr_v4float_undef_v4float() #29
  %0 = getelementptr inbounds %struct.v4float, %struct.v4float* %retval, i32 0, i32 0
  %1 = extractvalue %struct.v4float %call, 0
  store %struct.ipd.custom_type.v16int8.v16int8 %1, %struct.ipd.custom_type.v16int8.v16int8* %0, align 16
  %2 = load %struct.v4float, %struct.v4float* %retval, align 16
  ret %struct.v4float %2
}

; Function Attrs: nounwind readnone willreturn
declare dso_local x86_regcallcc %struct.v4float @__regcall3__chessintr_v4float_undef_v4float() addrspace(1) #13

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local void @_ZN3aie6detail5utils10unroll_forIjLj0ELj1ELj1EZNS0_3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEEUlT_E_EEvOT3_(%class.anon* nonnull align 4 dereferenceable(8) %fn) addrspace(1) #15 comdat !dbg !970 {
entry:
  %fn.addr = alloca %class.anon*, align 4
  store %class.anon* %fn, %class.anon** %fn.addr, align 4, !tbaa !819
  call addrspace(1) void @llvm.dbg.declare(metadata %class.anon** %fn.addr, metadata !972, metadata !DIExpression()), !dbg !978
  %0 = load %class.anon*, %class.anon** %fn.addr, align 4, !dbg !979, !tbaa !819
  call addrspace(1) void @_ZN3aie6detail5utils17unroll_for_helperIjLj0ELj1ELj0ELj1EE7executeIZNS0_3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEEUlT_E_EEvOSC_(%class.anon* nonnull align 4 dereferenceable(8) %0) #25, !dbg !980
  ret void, !dbg !981
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local void @_ZN3aie6detail5utils17unroll_for_helperIjLj0ELj1ELj0ELj1EE7executeIZNS0_3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEEUlT_E_EEvOSC_(%class.anon* nonnull align 4 dereferenceable(8) %fn) addrspace(1) #15 comdat align 2 !dbg !982 {
entry:
  %fn.addr = alloca %class.anon*, align 4
  %ctx = alloca %"struct.aie::detail::utils::unroll_context", align 1
  %agg.tmp = alloca %"struct.aie::detail::utils::unroll_context", align 1
  %next_it = alloca i32, align 4
  store %class.anon* %fn, %class.anon** %fn.addr, align 4, !tbaa !819
  call addrspace(1) void @llvm.dbg.declare(metadata %class.anon** %fn.addr, metadata !989, metadata !DIExpression()), !dbg !1005
  store %"struct.aie::detail::utils::unroll_context" undef, %"struct.aie::detail::utils::unroll_context"* %ctx, align 1, !dbg !1006
  %0 = bitcast %"struct.aie::detail::utils::unroll_context"* %ctx to i8*, !dbg !1006
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 1, i8* %0) #24, !dbg !1006
  call addrspace(1) void @llvm.dbg.declare(metadata %"struct.aie::detail::utils::unroll_context"* %ctx, metadata !990, metadata !DIExpression()), !dbg !1007
  %1 = bitcast %"struct.aie::detail::utils::unroll_context"* %ctx to i8*, !dbg !1007
  call addrspace(1) void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %1, i8* align 1 getelementptr inbounds (%"struct.aie::detail::utils::unroll_context", %"struct.aie::detail::utils::unroll_context"* @__const._ZN3aie6detail5utils17unroll_for_helperIjLj0ELj1ELj0ELj1EE7executeIZNS0_3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEEUlT_E_EEvOSC_.ctx, i32 0, i32 0), i32 1, i1 false), !dbg !1007
  %2 = load %class.anon*, %class.anon** %fn.addr, align 4, !dbg !1008, !tbaa !819
  call addrspace(1) void @_ZZN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEENKUlT_E_clINS0_5utils14unroll_contextIjLj0ELj1ELj0EEEEEDaS8_(%class.anon* nonnull align 4 dereferenceable(8) %2) #25, !dbg !1008
  store i32 undef, i32* %next_it, align 4, !dbg !1010
  %3 = bitcast i32* %next_it to i8*, !dbg !1010
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #24, !dbg !1010
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %next_it, metadata !1004, metadata !DIExpression()), !dbg !1011
  store i32 1, i32* %next_it, align 4, !dbg !1011, !tbaa !764
  %4 = load %class.anon*, %class.anon** %fn.addr, align 4, !dbg !1012, !tbaa !819
  call addrspace(1) void @_ZN3aie6detail5utils17unroll_for_helperIjLj0ELj1ELj1ELj1EE7executeIZNS0_3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEEUlT_E_EEvOSC_(%class.anon* nonnull align 4 dereferenceable(8) %4) #25, !dbg !1013
  %5 = bitcast i32* %next_it to i8*, !dbg !1014
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %5) #24, !dbg !1014
  %6 = bitcast %"struct.aie::detail::utils::unroll_context"* %ctx to i8*, !dbg !1014
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 1, i8* %6) #24, !dbg !1014
  ret void, !dbg !1015
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) addrspace(1) #17

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local void @_ZZN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEENKUlT_E_clINS0_5utils14unroll_contextIjLj0ELj1ELj0EEEEEDaS8_(%class.anon* nonnull align 4 dereferenceable(8) %this) addrspace(1) #15 comdat align 2 !dbg !1016 {
entry:
  %idx = alloca %"struct.aie::detail::utils::unroll_context", align 1
  %this.addr = alloca %class.anon*, align 4
  %tmp = alloca %"class.aie::vector", align 16
  %custom_type.tmp = alloca %"class.aie::vector", align 16
  %custom_type.tmp2 = alloca %"class.aie::vector", align 16
  %agg.tmp = alloca %struct.v4float, align 16
  %ref.tmp = alloca %class.anon.1, align 1
  %undef.agg.tmp = alloca %class.anon.1, align 1
  store %class.anon* %this, %class.anon** %this.addr, align 4, !tbaa !819
  call addrspace(1) void @llvm.dbg.declare(metadata %class.anon** %this.addr, metadata !1025, metadata !DIExpression()), !dbg !1029
  call addrspace(1) void @llvm.dbg.declare(metadata %"struct.aie::detail::utils::unroll_context"* %idx, metadata !1027, metadata !DIExpression()), !dbg !1030
  %this1 = load %class.anon*, %class.anon** %this.addr, align 4
  store %"class.aie::vector" undef, %"class.aie::vector"* %tmp, align 16, !dbg !1031
  %0 = bitcast %"class.aie::vector"* %tmp to i8*, !dbg !1031
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 16, i8* %0) #24, !dbg !1031
  call addrspace(1) void @llvm.dbg.declare(metadata %"class.aie::vector"* %tmp, metadata !1028, metadata !DIExpression()), !dbg !1032
  call addrspace(1) void @_ZN3aie6vectorIfLj4EEC2Ev(%"class.aie::vector"* nonnull align 16 dereferenceable(16) %custom_type.tmp) #25, !dbg !1032
  %1 = load %"class.aie::vector", %"class.aie::vector"* %custom_type.tmp, align 16, !dbg !1032, !tbaa !903
  store %"class.aie::vector" %1, %"class.aie::vector"* %tmp, align 16, !dbg !1032, !tbaa !903
  %2 = bitcast %class.anon.1* %ref.tmp to i8*, !dbg !1033
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 1, i8* %2) #24, !dbg !1033
  call addrspace(1) void @_ZN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE6get_opEv() #25, !dbg !1033
  %3 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 0, !dbg !1034
  %4 = load %struct.input_stream**, %struct.input_stream*** %3, align 4, !dbg !1034, !tbaa !1035
  %call = call addrspace(1) %struct.v4float @_ZZN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE6get_opEvENKUlDpOT_E_clIJRP12input_streamIfEEEEDaS7_(%class.anon.1* nonnull align 1 dereferenceable(1) %ref.tmp, %struct.input_stream** nonnull align 4 dereferenceable(4) %4) #25, !dbg !1033
  %5 = getelementptr inbounds %struct.v4float, %struct.v4float* %agg.tmp, i32 0, i32 0, !dbg !1033
  %6 = extractvalue %struct.v4float %call, 0, !dbg !1033
  store %struct.ipd.custom_type.v16int8.v16int8 %6, %struct.ipd.custom_type.v16int8.v16int8* %5, align 16, !dbg !1033
  %7 = load %struct.v4float, %struct.v4float* %agg.tmp, align 16, !dbg !1033, !tbaa !1037
  call addrspace(1) void @_ZN3aie6vectorIfLj4EEC2E7v4float(%"class.aie::vector"* nonnull align 16 dereferenceable(16) %custom_type.tmp2, %struct.v4float %7) #25, !dbg !1033
  %8 = load %"class.aie::vector", %"class.aie::vector"* %custom_type.tmp2, align 16, !dbg !1033, !tbaa !903
  store %"class.aie::vector" %8, %"class.aie::vector"* %tmp, align 16, !dbg !1033, !tbaa !903
  %9 = bitcast %class.anon.1* %ref.tmp to i8*, !dbg !1038
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 1, i8* %9) #24, !dbg !1038
  %10 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 1, !dbg !1039
  %11 = load %"class.aie::vector"*, %"class.aie::vector"** %10, align 4, !dbg !1039, !tbaa !1040
  %call3 = call addrspace(1) i32 @_ZNK3aie6detail5utils14unroll_contextIjLj0ELj1ELj0EEcvjEv(%"struct.aie::detail::utils::unroll_context"* nonnull align 1 dereferenceable(1) %idx) #25, !dbg !1041
  %call4 = call nonnull align 16 dereferenceable(16) addrspace(1) %"class.aie::vector"* @_ZN3aie6vectorIfLj4EE6insertILj4EEERS1_jRKNS0_IfXT_EEE(%"class.aie::vector"* nonnull align 16 dereferenceable(16) %11, i32 %call3, %"class.aie::vector"* nonnull align 16 dereferenceable(16) %tmp) #25, !dbg !1042
  %12 = bitcast %"class.aie::vector"* %tmp to i8*, !dbg !1043
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 16, i8* %12) #24, !dbg !1043
  ret void, !dbg !1043
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local void @_ZN3aie6detail5utils17unroll_for_helperIjLj0ELj1ELj1ELj1EE7executeIZNS0_3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEEUlT_E_EEvOSC_(%class.anon* nonnull align 4 dereferenceable(8) %fn) addrspace(1) #15 comdat align 2 !dbg !1044 {
entry:
  %fn.addr = alloca %class.anon*, align 4
  store %class.anon* %fn, %class.anon** %fn.addr, align 4, !tbaa !819
  call addrspace(1) void @llvm.dbg.declare(metadata %class.anon** %fn.addr, metadata !1050, metadata !DIExpression()), !dbg !1051
  ret void, !dbg !1052
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE6get_opEv() addrspace(1) #2 comdat align 2 !dbg !1053 {
entry:
  ret void, !dbg !1058
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local %struct.v4float @_ZZN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE6get_opEvENKUlDpOT_E_clIJRP12input_streamIfEEEEDaS7_(%class.anon.1* nonnull align 1 dereferenceable(1) %this, %struct.input_stream** nonnull align 4 dereferenceable(4) %args) addrspace(1) #15 comdat align 2 !dbg !1061 {
entry:
  %retval = alloca %struct.v4float, align 16
  %this.addr = alloca %class.anon.1*, align 4
  %args.addr = alloca %struct.input_stream**, align 4
  store %class.anon.1* %this, %class.anon.1** %this.addr, align 4, !tbaa !819
  call addrspace(1) void @llvm.dbg.declare(metadata %class.anon.1** %this.addr, metadata !1072, metadata !DIExpression()), !dbg !1075
  store %struct.input_stream** %args, %struct.input_stream*** %args.addr, align 4, !tbaa !819
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.input_stream*** %args.addr, metadata !1074, metadata !DIExpression()), !dbg !1076
  %this1 = load %class.anon.1*, %class.anon.1** %this.addr, align 4
  %0 = load %struct.input_stream**, %struct.input_stream*** %args.addr, align 4, !dbg !1077, !tbaa !819
  %1 = load %struct.input_stream*, %struct.input_stream** %0, align 4, !dbg !1078, !tbaa !819
  %call = call addrspace(1) %struct.v4float @_ZL11readincr_v4IL22aie_stream_resource_in0EE7v4floatP12input_streamIfE(%struct.input_stream* %1) #25, !dbg !1079
  %2 = getelementptr inbounds %struct.v4float, %struct.v4float* %retval, i32 0, i32 0, !dbg !1079
  %3 = extractvalue %struct.v4float %call, 0, !dbg !1079
  store %struct.ipd.custom_type.v16int8.v16int8 %3, %struct.ipd.custom_type.v16int8.v16int8* %2, align 16, !dbg !1079
  %4 = load %struct.v4float, %struct.v4float* %retval, align 16, !dbg !1080
  ret %struct.v4float %4, !dbg !1080
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dso_local void @_ZN3aie6vectorIfLj4EEC2E7v4float(%"class.aie::vector"* nonnull align 16 dereferenceable(16) %this, %struct.v4float %v.coerce) unnamed_addr addrspace(1) #12 comdat align 2 !dbg !1081 {
entry:
  %v = alloca %struct.v4float, align 16
  %this.addr = alloca %"class.aie::vector"*, align 4
  store %struct.v4float %v.coerce, %struct.v4float* %v, align 16
  store %"class.aie::vector"* %this, %"class.aie::vector"** %this.addr, align 4, !tbaa !819
  call addrspace(1) void @llvm.dbg.declare(metadata %"class.aie::vector"** %this.addr, metadata !1083, metadata !DIExpression()), !dbg !1085
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.v4float* %v, metadata !1084, metadata !DIExpression()), !dbg !1086
  %this1 = load %"class.aie::vector"*, %"class.aie::vector"** %this.addr, align 4
  %0 = bitcast %"class.aie::vector"* %this1 to %"class.aie::detail::vector_base"*, !dbg !1087
  %1 = load %struct.v4float, %struct.v4float* %v, align 16, !dbg !1088, !tbaa !1037
  call addrspace(1) void @_ZN3aie6detail11vector_baseIfLj4EEC2E7v4float(%"class.aie::detail::vector_base"* nonnull align 16 dereferenceable(16) %0, %struct.v4float %1) #25, !dbg !1088
  ret void, !dbg !1089
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local nonnull align 16 dereferenceable(16) %"class.aie::vector"* @_ZN3aie6vectorIfLj4EE6insertILj4EEERS1_jRKNS0_IfXT_EEE(%"class.aie::vector"* nonnull align 16 dereferenceable(16) %this, i32 %idx, %"class.aie::vector"* nonnull align 16 dereferenceable(16) %v) addrspace(1) #15 comdat align 2 !dbg !1090 {
entry:
  %this.addr = alloca %"class.aie::vector"*, align 4
  %idx.addr = alloca i32, align 4
  %v.addr = alloca %"class.aie::vector"*, align 4
  store %"class.aie::vector"* %this, %"class.aie::vector"** %this.addr, align 4, !tbaa !819
  call addrspace(1) void @llvm.dbg.declare(metadata %"class.aie::vector"** %this.addr, metadata !1097, metadata !DIExpression()), !dbg !1100
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !764
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %idx.addr, metadata !1098, metadata !DIExpression()), !dbg !1101
  store %"class.aie::vector"* %v, %"class.aie::vector"** %v.addr, align 4, !tbaa !819
  call addrspace(1) void @llvm.dbg.declare(metadata %"class.aie::vector"** %v.addr, metadata !1099, metadata !DIExpression()), !dbg !1102
  %this1 = load %"class.aie::vector"*, %"class.aie::vector"** %this.addr, align 4
  %0 = bitcast %"class.aie::vector"* %this1 to %"class.aie::detail::vector_base"*, !dbg !1103
  %1 = load i32, i32* %idx.addr, align 4, !dbg !1104, !tbaa !764
  %2 = load %"class.aie::vector"*, %"class.aie::vector"** %v.addr, align 4, !dbg !1105, !tbaa !819
  %3 = bitcast %"class.aie::vector"* %2 to %"class.aie::detail::vector_base"*, !dbg !1105
  %call = call nonnull align 16 dereferenceable(16) addrspace(1) %"class.aie::detail::vector_base"* @_ZN3aie6detail11vector_baseIfLj4EE6insertILj4EEERS2_jRKNS1_IfXT_EEE(%"class.aie::detail::vector_base"* nonnull align 16 dereferenceable(16) %0, i32 %1, %"class.aie::detail::vector_base"* nonnull align 16 dereferenceable(16) %3) #25, !dbg !1103
  ret %"class.aie::vector"* %this1, !dbg !1106
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local i32 @_ZNK3aie6detail5utils14unroll_contextIjLj0ELj1ELj0EEcvjEv(%"struct.aie::detail::utils::unroll_context"* nonnull align 1 dereferenceable(1) %this) addrspace(1) #2 comdat align 2 !dbg !1107 {
entry:
  %this.addr = alloca %"struct.aie::detail::utils::unroll_context"*, align 4
  store %"struct.aie::detail::utils::unroll_context"* %this, %"struct.aie::detail::utils::unroll_context"** %this.addr, align 4, !tbaa !819
  call addrspace(1) void @llvm.dbg.declare(metadata %"struct.aie::detail::utils::unroll_context"** %this.addr, metadata !1109, metadata !DIExpression()), !dbg !1111
  %this1 = load %"struct.aie::detail::utils::unroll_context"*, %"struct.aie::detail::utils::unroll_context"** %this.addr, align 4
  %call = call addrspace(1) i32 @_ZNK3aie6detail5utils14unroll_contextIjLj0ELj1ELj0EE7currentEv(%"struct.aie::detail::utils::unroll_context"* nonnull align 1 dereferenceable(1) %this1) #25, !dbg !1112
  ret i32 %call, !dbg !1113
}

; Function Attrs: inlinehint mustprogress nounwind
define internal %struct.v4float @_ZL11readincr_v4IL22aie_stream_resource_in0EE7v4floatP12input_streamIfE(%struct.input_stream* %str) addrspace(1) #18 !dbg !1114 {
entry:
  %retval = alloca %struct.v4float, align 16
  %str.addr = alloca %struct.input_stream*, align 4
  %agg.tmp = alloca %struct.v8int16, align 16
  store %struct.input_stream* %str, %struct.input_stream** %str.addr, align 4, !tbaa !819
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.input_stream** %str.addr, metadata !1120, metadata !DIExpression()), !dbg !1122
  %0 = load %struct.input_stream*, %struct.input_stream** %str.addr, align 4, !dbg !1122, !tbaa !819
  %1 = bitcast %struct.input_stream* %0 to %struct.input_stream.2*, !dbg !1122
  %call = call addrspace(1) %struct.v8int16 @_ZL11readincr_v8IL22aie_stream_resource_in0EE7v8int16P12input_streamIsE(%struct.input_stream.2* %1) #25, !dbg !1122
  %2 = getelementptr inbounds %struct.v8int16, %struct.v8int16* %agg.tmp, i32 0, i32 0, !dbg !1122
  %3 = extractvalue %struct.v8int16 %call, 0, !dbg !1122
  store %struct.ipd.custom_type.v16int8.v16int8 %3, %struct.ipd.custom_type.v16int8.v16int8* %2, align 16, !dbg !1122
  %4 = load %struct.v8int16, %struct.v8int16* %agg.tmp, align 16, !dbg !1122, !tbaa !1037
  %call1 = call addrspace(1) %struct.v4float @_Z10as_v4float7v8int16(%struct.v8int16 %4) #25, !dbg !1122
  %5 = getelementptr inbounds %struct.v4float, %struct.v4float* %retval, i32 0, i32 0, !dbg !1122
  %6 = extractvalue %struct.v4float %call1, 0, !dbg !1122
  store %struct.ipd.custom_type.v16int8.v16int8 %6, %struct.ipd.custom_type.v16int8.v16int8* %5, align 16, !dbg !1122
  %7 = load %struct.v4float, %struct.v4float* %retval, align 16, !dbg !1122
  ret %struct.v4float %7, !dbg !1122
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local %struct.v4float @_Z10as_v4float7v8int16(%struct.v8int16 %a.coerce) addrspace(1) #15 comdat {
entry:
  %a = alloca %struct.v8int16, align 16
  %custom_type.tmp = alloca %struct.v4float, align 16
  store %struct.v8int16 %a.coerce, %struct.v8int16* %a, align 16
  %mw = getelementptr inbounds %struct.v8int16, %struct.v8int16* %a, i32 0, i32 0
  %0 = load %struct.ipd.custom_type.v16int8.v16int8, %struct.ipd.custom_type.v16int8.v16int8* %mw, align 16, !tbaa !1037
  call addrspace(1) void @_ZN7v4floatC2E17chessllvmInternal7v16int8(%struct.v4float* nonnull align 16 dereferenceable(16) %custom_type.tmp, i32 0, %struct.ipd.custom_type.v16int8.v16int8 %0) #25
  %1 = load %struct.v4float, %struct.v4float* %custom_type.tmp, align 16, !tbaa !1037
  ret %struct.v4float %1
}

; Function Attrs: inlinehint mustprogress nounwind
define internal %struct.v8int16 @_ZL11readincr_v8IL22aie_stream_resource_in0EE7v8int16P12input_streamIsE(%struct.input_stream.2* %ss) addrspace(1) #18 !dbg !1123 {
entry:
  %retval = alloca %struct.v8int16, align 16
  %ss.addr = alloca %struct.input_stream.2*, align 4
  store %struct.input_stream.2* %ss, %struct.input_stream.2** %ss.addr, align 4, !tbaa !819
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.input_stream.2** %ss.addr, metadata !1128, metadata !DIExpression()), !dbg !1131
  %0 = load %struct.input_stream.2*, %struct.input_stream.2** %ss.addr, align 4, !dbg !1132, !tbaa !819
  %call = call addrspace(1) %struct.v8int16 @_ZN12stream_utilsL18aie_stream_get_wssIsEE7v8int16P12input_streamIsE(%struct.input_stream.2* %0) #25, !dbg !1133
  %1 = getelementptr inbounds %struct.v8int16, %struct.v8int16* %retval, i32 0, i32 0, !dbg !1133
  %2 = extractvalue %struct.v8int16 %call, 0, !dbg !1133
  store %struct.ipd.custom_type.v16int8.v16int8 %2, %struct.ipd.custom_type.v16int8.v16int8* %1, align 16, !dbg !1133
  %3 = load %struct.v8int16, %struct.v8int16* %retval, align 16, !dbg !1134
  ret %struct.v8int16 %3, !dbg !1134
}

; Function Attrs: nounwind
define linkonce_odr dso_local void @_ZN7v4floatC2E17chessllvmInternal7v16int8(%struct.v4float* nonnull align 16 dereferenceable(16) %this, i32 %0, %struct.ipd.custom_type.v16int8.v16int8 %aw.coerce) unnamed_addr addrspace(1) #7 comdat align 2 !dbg !1135 {
entry:
  %aw = alloca %struct.ipd.custom_type.v16int8.v16int8, align 16
  %this.addr = alloca %struct.v4float*, align 4
  %.addr = alloca i32, align 4
  store %struct.ipd.custom_type.v16int8.v16int8 %aw.coerce, %struct.ipd.custom_type.v16int8.v16int8* %aw, align 16
  store %struct.v4float* %this, %struct.v4float** %this.addr, align 4, !tbaa !819
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.v4float** %this.addr, metadata !1148, metadata !DIExpression()), !dbg !1152
  store i32 %0, i32* %.addr, align 4, !tbaa !1153
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %.addr, metadata !1150, metadata !DIExpression()), !dbg !1155
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.ipd.custom_type.v16int8.v16int8* %aw, metadata !1151, metadata !DIExpression()), !dbg !1156
  %this1 = load %struct.v4float*, %struct.v4float** %this.addr, align 4
  %mw = getelementptr inbounds %struct.v4float, %struct.v4float* %this1, i32 0, i32 0, !dbg !1157
  %1 = load %struct.ipd.custom_type.v16int8.v16int8, %struct.ipd.custom_type.v16int8.v16int8* %aw, align 16, !dbg !1158, !tbaa !1037
  store %struct.ipd.custom_type.v16int8.v16int8 %1, %struct.ipd.custom_type.v16int8.v16int8* %mw, align 16, !dbg !1158, !tbaa !1037
  ret void, !dbg !1159
}

; Function Attrs: inlinehint mustprogress nounwind
define internal %struct.v8int16 @_ZN12stream_utilsL18aie_stream_get_wssIsEE7v8int16P12input_streamIsE(%struct.input_stream.2* %ss) addrspace(1) #18 !dbg !1160 {
entry:
  %retval = alloca %struct.v8int16, align 16
  %ss.addr = alloca %struct.input_stream.2*, align 4
  store %struct.input_stream.2* %ss, %struct.input_stream.2** %ss.addr, align 4, !tbaa !819
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.input_stream.2** %ss.addr, metadata !1164, metadata !DIExpression()), !dbg !1167
  %0 = load %struct.input_stream.2*, %struct.input_stream.2** %ss.addr, align 4, !dbg !1168, !tbaa !819
  %1 = getelementptr inbounds %struct.input_stream.2, %struct.input_stream.2* %0, i32 0, i32 0, !dbg !1171
  %channel = bitcast %union.anon.3* %1 to i32*, !dbg !1171
  %2 = load i32, i32* %channel, align 4, !dbg !1171, !tbaa !823
  %call = call addrspace(1) %struct.v8int16 @_Z7get_wssi(i32 %2) #30, !dbg !1172
  %3 = getelementptr inbounds %struct.v8int16, %struct.v8int16* %retval, i32 0, i32 0, !dbg !1172
  %4 = extractvalue %struct.v8int16 %call, 0, !dbg !1172
  store %struct.ipd.custom_type.v16int8.v16int8 %4, %struct.ipd.custom_type.v16int8.v16int8* %3, align 16, !dbg !1172
  %5 = load %struct.v8int16, %struct.v8int16* %retval, align 16, !dbg !1173
  ret %struct.v8int16 %5, !dbg !1173
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local %struct.v8int16 @_Z7get_wssi(i32 %idx_ss) addrspace(1) #19 comdat {
entry:
  %retval = alloca %struct.v8int16, align 16
  %idx_ss.addr = alloca i32, align 4
  %agg.tmp = alloca %struct.v4int32, align 16
  store i32 %idx_ss, i32* %idx_ss.addr, align 4, !tbaa !764
  %0 = load i32, i32* %idx_ss.addr, align 4, !tbaa !764
  %call = call addrspace(1) %struct.v4int32 @_Z8getl_wssi(i32 %0) #31
  %1 = getelementptr inbounds %struct.v4int32, %struct.v4int32* %agg.tmp, i32 0, i32 0
  %2 = extractvalue %struct.v4int32 %call, 0
  store %struct.ipd.custom_type.v16int8.v16int8 %2, %struct.ipd.custom_type.v16int8.v16int8* %1, align 16
  %3 = load %struct.v4int32, %struct.v4int32* %agg.tmp, align 16, !tbaa !1037
  %call1 = call addrspace(1) %struct.v8int16 @_Z10as_v8int167v4int32(%struct.v4int32 %3) #25
  %4 = getelementptr inbounds %struct.v8int16, %struct.v8int16* %retval, i32 0, i32 0
  %5 = extractvalue %struct.v8int16 %call1, 0
  store %struct.ipd.custom_type.v16int8.v16int8 %5, %struct.ipd.custom_type.v16int8.v16int8* %4, align 16
  %6 = load %struct.v8int16, %struct.v8int16* %retval, align 16
  ret %struct.v8int16 %6
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local %struct.v8int16 @_Z10as_v8int167v4int32(%struct.v4int32 %a.coerce) addrspace(1) #15 comdat {
entry:
  %a = alloca %struct.v4int32, align 16
  %custom_type.tmp = alloca %struct.v8int16, align 16
  store %struct.v4int32 %a.coerce, %struct.v4int32* %a, align 16
  %mw = getelementptr inbounds %struct.v4int32, %struct.v4int32* %a, i32 0, i32 0
  %0 = load %struct.ipd.custom_type.v16int8.v16int8, %struct.ipd.custom_type.v16int8.v16int8* %mw, align 16, !tbaa !1037
  call addrspace(1) void @_ZN7v8int16C2E17chessllvmInternal7v16int8(%struct.v8int16* nonnull align 16 dereferenceable(16) %custom_type.tmp, i32 0, %struct.ipd.custom_type.v16int8.v16int8 %0) #25
  %1 = load %struct.v8int16, %struct.v8int16* %custom_type.tmp, align 16, !tbaa !1037
  ret %struct.v8int16 %1
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local %struct.v4int32 @_Z8getl_wssi(i32 %idx_ss) addrspace(1) #20 comdat {
entry:
  %retval = alloca %struct.v4int32, align 16
  %idx_ss.addr = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %agg.tmp = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %custom_type.tmp = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %tmp13 = alloca i32, align 4
  %agg.tmp4 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %custom_type.tmp5 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %tmp18 = alloca i32, align 4
  %agg.tmp9 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %custom_type.tmp10 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  store i32 %idx_ss, i32* %idx_ss.addr, align 4, !tbaa !764
  %0 = load i32, i32* %idx_ss.addr, align 4, !tbaa !764
  %cmp = icmp eq i32 %0, 0
  %1 = call addrspace(1) i1 @llvm.chess_manifest(i1 %cmp)
  br i1 %1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 undef, i32* %tmp1, align 4
  %2 = bitcast i32* %tmp1 to i8*
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #24
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp, i32 0) #25
  %3 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp, align 4, !tbaa !1174
  store %struct.ipd.custom_type.uint1_t.uint1_t %3, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp, align 4, !tbaa !1174
  %4 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp, align 4, !tbaa !1174
  %call = call addrspace(1) %struct.v4int32 @_ZN12me_primitive14stream_read128IiEEN13chessEnableIfIXsr17chessIsCompatibleIN15chessRemoveQualIT_E4typeEiEE5valueE7v4int32E4typeEPU4AS25U16__protect_accessi7uint1_tRS3_(i32 addrspace(25)* @_ZN12me_primitive3ss0E, %struct.ipd.custom_type.uint1_t.uint1_t %4, i32* nonnull align 4 dereferenceable(4) %tmp1) #32
  %5 = getelementptr inbounds %struct.v4int32, %struct.v4int32* %retval, i32 0, i32 0
  %6 = extractvalue %struct.v4int32 %call, 0
  store %struct.ipd.custom_type.v16int8.v16int8 %6, %struct.ipd.custom_type.v16int8.v16int8* %5, align 16
  %7 = load i32, i32* %tmp1, align 4, !tbaa !764
  store volatile i32 %7, i32 addrspace(20)* @_ZN12me_primitive5wsst0E, align 1, !tbaa !764, !chess_protect_access !1176
  %8 = bitcast i32* %tmp1 to i8*
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #24
  br label %return

if.else:                                          ; preds = %entry
  %9 = load i32, i32* %idx_ss.addr, align 4, !tbaa !764
  %cmp1 = icmp eq i32 %9, 1
  %10 = call addrspace(1) i1 @llvm.chess_manifest(i1 %cmp1)
  br i1 %10, label %if.then2, label %if.else7

if.then2:                                         ; preds = %if.else
  store i32 undef, i32* %tmp13, align 4
  %11 = bitcast i32* %tmp13 to i8*
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #24
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp5, i32 0) #25
  %12 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp5, align 4, !tbaa !1174
  store %struct.ipd.custom_type.uint1_t.uint1_t %12, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp4, align 4, !tbaa !1174
  %13 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp4, align 4, !tbaa !1174
  %call6 = call addrspace(1) %struct.v4int32 @_ZN12me_primitive14stream_read128IiEEN13chessEnableIfIXsr17chessIsCompatibleIN15chessRemoveQualIT_E4typeEiEE5valueE7v4int32E4typeEPU4AS26U16__protect_accessi7uint1_tRS3_(i32 addrspace(26)* @_ZN12me_primitive3ss1E, %struct.ipd.custom_type.uint1_t.uint1_t %13, i32* nonnull align 4 dereferenceable(4) %tmp13) #32
  %14 = getelementptr inbounds %struct.v4int32, %struct.v4int32* %retval, i32 0, i32 0
  %15 = extractvalue %struct.v4int32 %call6, 0
  store %struct.ipd.custom_type.v16int8.v16int8 %15, %struct.ipd.custom_type.v16int8.v16int8* %14, align 16
  %16 = load i32, i32* %tmp13, align 4, !tbaa !764
  store volatile i32 %16, i32 addrspace(20)* @_ZN12me_primitive5wsst1E, align 1, !tbaa !764, !chess_protect_access !1176
  %17 = bitcast i32* %tmp13 to i8*
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %17) #24
  br label %return

if.else7:                                         ; preds = %if.else
  store i32 undef, i32* %tmp18, align 4
  %18 = bitcast i32* %tmp18 to i8*
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #24
  %19 = load i32, i32* %idx_ss.addr, align 4, !tbaa !764
  %conv = trunc i32 %19 to i1
  %20 = inttoptr i1 %conv to i32 addrspace(17)*
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp10, i32 0) #25
  %21 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp10, align 4, !tbaa !1174
  store %struct.ipd.custom_type.uint1_t.uint1_t %21, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp9, align 4, !tbaa !1174
  %22 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp9, align 4, !tbaa !1174
  %call11 = call addrspace(1) %struct.v4int32 @_ZN12me_primitive14stream_read128IiEEN13chessEnableIfIXsr17chessIsCompatibleIN15chessRemoveQualIT_E4typeEiEE5valueE7v4int32E4typeEPU4AS17U16__protect_accessi7uint1_tRS3_(i32 addrspace(17)* %20, %struct.ipd.custom_type.uint1_t.uint1_t %22, i32* nonnull align 4 dereferenceable(4) %tmp18) #32
  %23 = getelementptr inbounds %struct.v4int32, %struct.v4int32* %retval, i32 0, i32 0
  %24 = extractvalue %struct.v4int32 %call11, 0
  store %struct.ipd.custom_type.v16int8.v16int8 %24, %struct.ipd.custom_type.v16int8.v16int8* %23, align 16
  %25 = load i32, i32* %tmp18, align 4, !tbaa !764
  %26 = load i32, i32* %idx_ss.addr, align 4, !tbaa !764
  %conv12 = trunc i32 %26 to i1
  %27 = inttoptr i1 %conv12 to i32 addrspace(20)*
  store volatile i32 %25, i32 addrspace(20)* %27, align 1, !tbaa !764, !chess_protect_access !1176
  %28 = bitcast i32* %tmp18 to i8*
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #24
  br label %return

return:                                           ; preds = %if.else7, %if.then2, %if.then
  %29 = load %struct.v4int32, %struct.v4int32* %retval, align 16
  ret %struct.v4int32 %29
}

; Function Attrs: nounwind
define linkonce_odr dso_local void @_ZN7v8int16C2E17chessllvmInternal7v16int8(%struct.v8int16* nonnull align 16 dereferenceable(16) %this, i32 %0, %struct.ipd.custom_type.v16int8.v16int8 %aw.coerce) unnamed_addr addrspace(1) #7 comdat align 2 !dbg !1177 {
entry:
  %aw = alloca %struct.ipd.custom_type.v16int8.v16int8, align 16
  %this.addr = alloca %struct.v8int16*, align 4
  %.addr = alloca i32, align 4
  store %struct.ipd.custom_type.v16int8.v16int8 %aw.coerce, %struct.ipd.custom_type.v16int8.v16int8* %aw, align 16
  store %struct.v8int16* %this, %struct.v8int16** %this.addr, align 4, !tbaa !819
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.v8int16** %this.addr, metadata !1199, metadata !DIExpression()), !dbg !1203
  store i32 %0, i32* %.addr, align 4, !tbaa !1153
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %.addr, metadata !1201, metadata !DIExpression()), !dbg !1204
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.ipd.custom_type.v16int8.v16int8* %aw, metadata !1202, metadata !DIExpression()), !dbg !1205
  %this1 = load %struct.v8int16*, %struct.v8int16** %this.addr, align 4
  %mw = getelementptr inbounds %struct.v8int16, %struct.v8int16* %this1, i32 0, i32 0, !dbg !1206
  %1 = load %struct.ipd.custom_type.v16int8.v16int8, %struct.ipd.custom_type.v16int8.v16int8* %aw, align 16, !dbg !1207, !tbaa !1037
  store %struct.ipd.custom_type.v16int8.v16int8 %1, %struct.ipd.custom_type.v16int8.v16int8* %mw, align 16, !dbg !1207, !tbaa !1037
  ret void, !dbg !1208
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.chess_manifest(i1) addrspace(1) #14

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local %struct.v4int32 @_ZN12me_primitive14stream_read128IiEEN13chessEnableIfIXsr17chessIsCompatibleIN15chessRemoveQualIT_E4typeEiEE5valueE7v4int32E4typeEPU4AS25U16__protect_accessi7uint1_tRS3_(i32 addrspace(25)* %a0, %struct.ipd.custom_type.uint1_t.uint1_t %a1.coerce, i32* nonnull align 4 dereferenceable(4) %a2) addrspace(1) #11 comdat {
entry:
  %a1 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %a0.addr = alloca i32 addrspace(25)*, align 4
  %a2.addr = alloca i32*, align 4
  %out = alloca %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sint", align 1
  store %struct.ipd.custom_type.uint1_t.uint1_t %a1.coerce, %struct.ipd.custom_type.uint1_t.uint1_t* %a1, align 4
  store i32 addrspace(25)* %a0, i32 addrspace(25)** %a0.addr, align 4, !tbaa !819
  store i32* %a2, i32** %a2.addr, align 4, !tbaa !819
  store %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sint" undef, %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sint"* %out, align 1
  %0 = bitcast %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sint"* %out to i8*
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 20, i8* %0) #24
  %1 = load i32 addrspace(25)*, i32 addrspace(25)** %a0.addr, align 4, !tbaa !819
  %2 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a1, align 4, !tbaa !1174
  %call = call x86_regcallcc addrspace(1) %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sint" @__regcall3__chessintr_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sint(i32 addrspace(25)* "ipd_load"="0,4" %1, %struct.ipd.custom_type.uint1_t.uint1_t %2) #33
  %3 = getelementptr inbounds %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sint", %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sint"* %out, i32 0, i32 0
  %4 = extractvalue %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sint" %call, 0
  store %struct.v4int32 %4, %struct.v4int32* %3, align 1
  %5 = getelementptr inbounds %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sint", %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sint"* %out, i32 0, i32 1
  %6 = extractvalue %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sint" %call, 1
  store i32 %6, i32* %5, align 1
  %o1 = getelementptr inbounds %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sint", %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sint"* %out, i32 0, i32 1
  %7 = load i32, i32* %o1, align 1, !tbaa !1209
  %8 = load i32*, i32** %a2.addr, align 4, !tbaa !819
  store i32 %7, i32* %8, align 4, !tbaa !764
  %o0 = getelementptr inbounds %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sint", %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sint"* %out, i32 0, i32 0
  %9 = load %struct.v4int32, %struct.v4int32* %o0, align 1, !tbaa !1037
  %10 = bitcast %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sint"* %out to i8*
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 20, i8* %10) #24
  ret %struct.v4int32 %9
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dso_local void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %this, i32 %a) unnamed_addr addrspace(1) #12 comdat align 2 {
entry:
  %this.addr = alloca %struct.ipd.custom_type.uint1_t.uint1_t*, align 4
  %a.addr = alloca i32, align 4
  store %struct.ipd.custom_type.uint1_t.uint1_t* %this, %struct.ipd.custom_type.uint1_t.uint1_t** %this.addr, align 4, !tbaa !819
  store i32 %a, i32* %a.addr, align 4, !tbaa !764
  %this1 = load %struct.ipd.custom_type.uint1_t.uint1_t*, %struct.ipd.custom_type.uint1_t.uint1_t** %this.addr, align 4
  %0 = bitcast %struct.ipd.custom_type.uint1_t.uint1_t* %this1 to i1*
  store i1 false, i1* %0, align 4
  %1 = load i32, i32* %a.addr, align 4, !tbaa !764
  %2 = call addrspace(1) %struct.ipd.custom_type.uint1_t.uint1_t @llvm.chess.init.customint.s_struct.ipd.custom_type.uint1_t.uint1_ts.i32.p1f_s_struct.ipd.custom_type.uint1_t.uint1_tsi32f(%struct.ipd.custom_type.uint1_t.uint1_t undef, i32 %1, i32 1, i32 32, i1 true, i32 0, %struct.ipd.custom_type.uint1_t.uint1_t (i32) addrspace(1)* @__regcall3__chessintr_uint1_t_uint1_t___sint)
  store %struct.ipd.custom_type.uint1_t.uint1_t %2, %struct.ipd.custom_type.uint1_t.uint1_t* %this1, align 4
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local %struct.v4int32 @_ZN12me_primitive14stream_read128IiEEN13chessEnableIfIXsr17chessIsCompatibleIN15chessRemoveQualIT_E4typeEiEE5valueE7v4int32E4typeEPU4AS26U16__protect_accessi7uint1_tRS3_(i32 addrspace(26)* %a0, %struct.ipd.custom_type.uint1_t.uint1_t %a1.coerce, i32* nonnull align 4 dereferenceable(4) %a2) addrspace(1) #11 comdat {
entry:
  %a1 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %a0.addr = alloca i32 addrspace(26)*, align 4
  %a2.addr = alloca i32*, align 4
  %out = alloca %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sint", align 1
  store %struct.ipd.custom_type.uint1_t.uint1_t %a1.coerce, %struct.ipd.custom_type.uint1_t.uint1_t* %a1, align 4
  store i32 addrspace(26)* %a0, i32 addrspace(26)** %a0.addr, align 4, !tbaa !819
  store i32* %a2, i32** %a2.addr, align 4, !tbaa !819
  store %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sint" undef, %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sint"* %out, align 1
  %0 = bitcast %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sint"* %out to i8*
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 20, i8* %0) #24
  %1 = load i32 addrspace(26)*, i32 addrspace(26)** %a0.addr, align 4, !tbaa !819
  %2 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a1, align 4, !tbaa !1174
  %call = call x86_regcallcc addrspace(1) %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sint" @__regcall3__chessintr_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sint(i32 addrspace(26)* "ipd_load"="0,4" %1, %struct.ipd.custom_type.uint1_t.uint1_t %2) #33
  %3 = getelementptr inbounds %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sint", %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sint"* %out, i32 0, i32 0
  %4 = extractvalue %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sint" %call, 0
  store %struct.v4int32 %4, %struct.v4int32* %3, align 1
  %5 = getelementptr inbounds %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sint", %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sint"* %out, i32 0, i32 1
  %6 = extractvalue %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sint" %call, 1
  store i32 %6, i32* %5, align 1
  %o1 = getelementptr inbounds %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sint", %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sint"* %out, i32 0, i32 1
  %7 = load i32, i32* %o1, align 1, !tbaa !1211
  %8 = load i32*, i32** %a2.addr, align 4, !tbaa !819
  store i32 %7, i32* %8, align 4, !tbaa !764
  %o0 = getelementptr inbounds %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sint", %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sint"* %out, i32 0, i32 0
  %9 = load %struct.v4int32, %struct.v4int32* %o0, align 1, !tbaa !1037
  %10 = bitcast %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sint"* %out to i8*
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 20, i8* %10) #24
  ret %struct.v4int32 %9
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local %struct.v4int32 @_ZN12me_primitive14stream_read128IiEEN13chessEnableIfIXsr17chessIsCompatibleIN15chessRemoveQualIT_E4typeEiEE5valueE7v4int32E4typeEPU4AS17U16__protect_accessi7uint1_tRS3_(i32 addrspace(17)* %a0, %struct.ipd.custom_type.uint1_t.uint1_t %a1.coerce, i32* nonnull align 4 dereferenceable(4) %a2) addrspace(1) #11 comdat {
entry:
  %a1 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %a0.addr = alloca i32 addrspace(17)*, align 4
  %a2.addr = alloca i32*, align 4
  %out = alloca %"struct.me_primitive::chessout_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sint", align 1
  store %struct.ipd.custom_type.uint1_t.uint1_t %a1.coerce, %struct.ipd.custom_type.uint1_t.uint1_t* %a1, align 4
  store i32 addrspace(17)* %a0, i32 addrspace(17)** %a0.addr, align 4, !tbaa !819
  store i32* %a2, i32** %a2.addr, align 4, !tbaa !819
  store %"struct.me_primitive::chessout_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sint" undef, %"struct.me_primitive::chessout_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sint"* %out, align 1
  %0 = bitcast %"struct.me_primitive::chessout_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sint"* %out to i8*
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 20, i8* %0) #24
  %1 = load i32 addrspace(17)*, i32 addrspace(17)** %a0.addr, align 4, !tbaa !819
  %2 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a1, align 4, !tbaa !1174
  %call = call x86_regcallcc addrspace(1) %"struct.me_primitive::chessout_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sint" @__regcall3__chessintr_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sint(i32 addrspace(17)* "ipd_load"="0,4" %1, %struct.ipd.custom_type.uint1_t.uint1_t %2) #33
  %3 = getelementptr inbounds %"struct.me_primitive::chessout_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sint", %"struct.me_primitive::chessout_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sint"* %out, i32 0, i32 0
  %4 = extractvalue %"struct.me_primitive::chessout_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sint" %call, 0
  store %struct.v4int32 %4, %struct.v4int32* %3, align 1
  %5 = getelementptr inbounds %"struct.me_primitive::chessout_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sint", %"struct.me_primitive::chessout_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sint"* %out, i32 0, i32 1
  %6 = extractvalue %"struct.me_primitive::chessout_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sint" %call, 1
  store i32 %6, i32* %5, align 1
  %o1 = getelementptr inbounds %"struct.me_primitive::chessout_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sint", %"struct.me_primitive::chessout_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sint"* %out, i32 0, i32 1
  %7 = load i32, i32* %o1, align 1, !tbaa !1213
  %8 = load i32*, i32** %a2.addr, align 4, !tbaa !819
  store i32 %7, i32* %8, align 4, !tbaa !764
  %o0 = getelementptr inbounds %"struct.me_primitive::chessout_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sint", %"struct.me_primitive::chessout_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sint"* %out, i32 0, i32 0
  %9 = load %struct.v4int32, %struct.v4int32* %o0, align 1, !tbaa !1037
  %10 = bitcast %"struct.me_primitive::chessout_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sint"* %out to i8*
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 20, i8* %10) #24
  ret %struct.v4int32 %9
}

; Function Attrs: argmemonly nounwind
declare dso_local x86_regcallcc %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sint" @__regcall3__chessintr_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sint(i32 addrspace(25)* "ipd_load"="0,4", %struct.ipd.custom_type.uint1_t.uint1_t) addrspace(1) #21

; Function Attrs: nounwind readnone willreturn
declare dso_local x86_regcallcc %struct.ipd.custom_type.uint1_t.uint1_t @__regcall3__chessintr_uint1_t_uint1_t___sint(i32 signext) addrspace(1) #13

; Function Attrs: nounwind readnone willreturn
declare %struct.ipd.custom_type.uint1_t.uint1_t @llvm.chess.init.customint.s_struct.ipd.custom_type.uint1_t.uint1_ts.i32.p1f_s_struct.ipd.custom_type.uint1_t.uint1_tsi32f(%struct.ipd.custom_type.uint1_t.uint1_t, i32, i32, i32, i1, i32, %struct.ipd.custom_type.uint1_t.uint1_t (i32) addrspace(1)*) addrspace(1) #14

; Function Attrs: argmemonly nounwind
declare dso_local x86_regcallcc %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sint" @__regcall3__chessintr_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sint(i32 addrspace(26)* "ipd_load"="0,4", %struct.ipd.custom_type.uint1_t.uint1_t) addrspace(1) #21

; Function Attrs: argmemonly nounwind
declare dso_local x86_regcallcc %"struct.me_primitive::chessout_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sint" @__regcall3__chessintr_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sint(i32 addrspace(17)* "ipd_load"="0,4", %struct.ipd.custom_type.uint1_t.uint1_t) addrspace(1) #21

; Function Attrs: alwaysinline nounwind
define linkonce_odr dso_local void @_ZN3aie6detail11vector_baseIfLj4EEC2E7v4float(%"class.aie::detail::vector_base"* nonnull align 16 dereferenceable(16) %this, %struct.v4float %v.coerce) unnamed_addr addrspace(1) #12 comdat align 2 !dbg !1215 {
entry:
  %v = alloca %struct.v4float, align 16
  %this.addr = alloca %"class.aie::detail::vector_base"*, align 4
  store %struct.v4float %v.coerce, %struct.v4float* %v, align 16
  store %"class.aie::detail::vector_base"* %this, %"class.aie::detail::vector_base"** %this.addr, align 4, !tbaa !819
  call addrspace(1) void @llvm.dbg.declare(metadata %"class.aie::detail::vector_base"** %this.addr, metadata !1217, metadata !DIExpression()), !dbg !1219
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.v4float* %v, metadata !1218, metadata !DIExpression()), !dbg !1220
  %this1 = load %"class.aie::detail::vector_base"*, %"class.aie::detail::vector_base"** %this.addr, align 4
  %data = getelementptr inbounds %"class.aie::detail::vector_base", %"class.aie::detail::vector_base"* %this1, i32 0, i32 0, !dbg !1221
  %0 = load %struct.v4float, %struct.v4float* %v, align 16, !dbg !1222, !tbaa !1037
  store %struct.v4float %0, %struct.v4float* %data, align 16, !dbg !1222, !tbaa !1037
  ret void, !dbg !1223
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local nonnull align 16 dereferenceable(16) %"class.aie::detail::vector_base"* @_ZN3aie6detail11vector_baseIfLj4EE6insertILj4EEERS2_jRKNS1_IfXT_EEE(%"class.aie::detail::vector_base"* nonnull align 16 dereferenceable(16) %this, i32 %idx, %"class.aie::detail::vector_base"* nonnull align 16 dereferenceable(16) %v) addrspace(1) #15 comdat align 2 !dbg !1224 {
entry:
  %this.addr = alloca %"class.aie::detail::vector_base"*, align 4
  %idx.addr = alloca i32, align 4
  %v.addr = alloca %"class.aie::detail::vector_base"*, align 4
  %input_bits = alloca i32, align 4
  store %"class.aie::detail::vector_base"* %this, %"class.aie::detail::vector_base"** %this.addr, align 4, !tbaa !819
  call addrspace(1) void @llvm.dbg.declare(metadata %"class.aie::detail::vector_base"** %this.addr, metadata !1230, metadata !DIExpression()), !dbg !1234
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !764
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %idx.addr, metadata !1231, metadata !DIExpression()), !dbg !1235
  store %"class.aie::detail::vector_base"* %v, %"class.aie::detail::vector_base"** %v.addr, align 4, !tbaa !819
  call addrspace(1) void @llvm.dbg.declare(metadata %"class.aie::detail::vector_base"** %v.addr, metadata !1232, metadata !DIExpression()), !dbg !1236
  %this1 = load %"class.aie::detail::vector_base"*, %"class.aie::detail::vector_base"** %this.addr, align 4
  br label %do.body, !dbg !1237

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %idx.addr, align 4, !dbg !1238, !tbaa !764
  %cmp = icmp ult i32 %0, 1, !dbg !1238
  %1 = call addrspace(1) i1 @llvm.is.constant.i1(i1 %cmp), !dbg !1238
  br i1 %1, label %if.then, label %if.else, !dbg !1241

if.then:                                          ; preds = %do.body
  br label %do.body2, !dbg !1242

do.body2:                                         ; preds = %if.then
  %2 = load i32, i32* %idx.addr, align 4, !dbg !1244, !tbaa !764
  %cmp3 = icmp ult i32 %2, 1, !dbg !1244
  %3 = call addrspace(1) i1 @llvm.chess_manifest(i1 %cmp3), !dbg !1244
  br i1 %3, label %if.end, label %if.then4, !dbg !1247

if.then4:                                         ; preds = %do.body2
  call addrspace(1) void @llvm.chess_error(metadata !1248), !dbg !1244
  br label %if.end, !dbg !1244

if.end:                                           ; preds = %if.then4, %do.body2
  br label %do.end, !dbg !1247

do.end:                                           ; preds = %if.end
  br label %if.end6, !dbg !1242

if.else:                                          ; preds = %do.body
  %4 = load i32, i32* %idx.addr, align 4, !dbg !1249, !tbaa !764
  %cmp5 = icmp ult i32 %4, 1, !dbg !1249
  call addrspace(1) void @llvm.assume(i1 %cmp5), !dbg !1249
  br label %if.end6

if.end6:                                          ; preds = %if.else, %do.end
  br label %do.end7, !dbg !1241

do.end7:                                          ; preds = %if.end6
  store i32 undef, i32* %input_bits, align 4, !dbg !1251
  %5 = bitcast i32* %input_bits to i8*, !dbg !1251
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #24, !dbg !1251
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %input_bits, metadata !1233, metadata !DIExpression()), !dbg !1252
  store i32 128, i32* %input_bits, align 4, !dbg !1252, !tbaa !764
  %data = getelementptr inbounds %"class.aie::detail::vector_base", %"class.aie::detail::vector_base"* %this1, i32 0, i32 0, !dbg !1253
  %6 = load %"class.aie::detail::vector_base"*, %"class.aie::detail::vector_base"** %v.addr, align 4, !dbg !1256, !tbaa !819
  %data8 = getelementptr inbounds %"class.aie::detail::vector_base", %"class.aie::detail::vector_base"* %6, i32 0, i32 0, !dbg !1257
  %7 = load %struct.v4float, %struct.v4float* %data8, align 16, !dbg !1257, !tbaa !1037
  store %struct.v4float %7, %struct.v4float* %data, align 16, !dbg !1257, !tbaa !1037
  %8 = bitcast i32* %input_bits to i8*, !dbg !1258
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #24, !dbg !1258
  ret %"class.aie::detail::vector_base"* %this1, !dbg !1259
}

; Function Attrs: convergent nocallback nofree nosync nounwind readnone willreturn
declare i1 @llvm.is.constant.i1(i1) addrspace(1) #22

; Function Attrs: nounwind willreturn
declare void @llvm.chess_error(metadata) addrspace(1) #8

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) addrspace(1) #23

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local i32 @_ZNK3aie6detail5utils14unroll_contextIjLj0ELj1ELj0EE7currentEv(%"struct.aie::detail::utils::unroll_context"* nonnull align 1 dereferenceable(1) %this) addrspace(1) #2 comdat align 2 !dbg !1260 {
entry:
  %this.addr = alloca %"struct.aie::detail::utils::unroll_context"*, align 4
  store %"struct.aie::detail::utils::unroll_context"* %this, %"struct.aie::detail::utils::unroll_context"** %this.addr, align 4, !tbaa !819
  call addrspace(1) void @llvm.dbg.declare(metadata %"struct.aie::detail::utils::unroll_context"** %this.addr, metadata !1262, metadata !DIExpression()), !dbg !1263
  %this1 = load %"struct.aie::detail::utils::unroll_context"*, %"struct.aie::detail::utils::unroll_context"** %this.addr, align 4
  ret i32 0, !dbg !1264
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local void @_ZN3aie6detail3adf17stream_out_helperILj4EfL23aie_stream_resource_out0EE9writeincrEP13output_streamIfENS_6vectorIfLj4EEE(%struct.output_stream* %w, %"class.aie::vector" %value.coerce) addrspace(1) #15 comdat align 2 !dbg !1265 {
entry:
  %value = alloca %"class.aie::vector", align 16
  %w.addr = alloca %struct.output_stream*, align 4
  %i = alloca i32, align 4
  %agg.tmp = alloca %struct.v4float, align 16
  %ref.tmp = alloca %"class.aie::vector", align 16
  store %"class.aie::vector" %value.coerce, %"class.aie::vector"* %value, align 16
  store %struct.output_stream* %w, %struct.output_stream** %w.addr, align 4, !tbaa !819
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.output_stream** %w.addr, metadata !1278, metadata !DIExpression()), !dbg !1282
  call addrspace(1) void @llvm.dbg.declare(metadata %"class.aie::vector"* %value, metadata !1279, metadata !DIExpression()), !dbg !1283
  store i32 undef, i32* %i, align 4, !dbg !1284
  %0 = bitcast i32* %i to i8*, !dbg !1284
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #24, !dbg !1284
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %i, metadata !1280, metadata !DIExpression()), !dbg !1285
  store i32 0, i32* %i, align 4, !dbg !1285, !tbaa !764
  br label %for.cond, !dbg !1284

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !1286, !tbaa !764
  %cmp = icmp ult i32 %1, 1, !dbg !1288
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !1289

for.cond.cleanup:                                 ; preds = %for.cond
  %2 = bitcast i32* %i to i8*, !dbg !1290
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %2) #24, !dbg !1290
  br label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.output_stream*, %struct.output_stream** %w.addr, align 4, !dbg !1291, !tbaa !819
  %4 = bitcast %"class.aie::vector"* %ref.tmp to i8*, !dbg !1292
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 16, i8* %4) #24, !dbg !1292
  %5 = load i32, i32* %i, align 4, !dbg !1293, !tbaa !764
  %call = call addrspace(1) %"class.aie::vector" @_ZNK3aie6vectorIfLj4EE7extractILj4EEENS0_IfXT_EEEj(%"class.aie::vector"* nonnull align 16 dereferenceable(16) %value, i32 %5) #25, !dbg !1294
  %6 = getelementptr inbounds %"class.aie::vector", %"class.aie::vector"* %ref.tmp, i32 0, i32 0, !dbg !1294
  %7 = extractvalue %"class.aie::vector" %call, 0, !dbg !1294
  store %"class.aie::detail::vector_base" %7, %"class.aie::detail::vector_base"* %6, align 16, !dbg !1294
  %call1 = call addrspace(1) %struct.v4float @_ZNK3aie6vectorIfLj4EEcv7v4floatEv(%"class.aie::vector"* nonnull align 16 dereferenceable(16) %ref.tmp) #25, !dbg !1292
  %8 = getelementptr inbounds %struct.v4float, %struct.v4float* %agg.tmp, i32 0, i32 0, !dbg !1292
  %9 = extractvalue %struct.v4float %call1, 0, !dbg !1292
  store %struct.ipd.custom_type.v16int8.v16int8 %9, %struct.ipd.custom_type.v16int8.v16int8* %8, align 16, !dbg !1292
  %10 = load %struct.v4float, %struct.v4float* %agg.tmp, align 16, !dbg !1295, !tbaa !1037
  call addrspace(1) void @_ZL9writeincrIL23aie_stream_resource_out0EEvP13output_streamIfE7v4floatb(%struct.output_stream* %3, %struct.v4float %10, i1 zeroext false) #25, !dbg !1295
  %11 = bitcast %"class.aie::vector"* %ref.tmp to i8*, !dbg !1295
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 16, i8* %11) #24, !dbg !1295
  br label %for.inc, !dbg !1295

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !dbg !1296, !tbaa !764
  %inc = add i32 %12, 1, !dbg !1296
  store i32 %inc, i32* %i, align 4, !dbg !1296, !tbaa !764
  br label %for.cond, !dbg !1290, !llvm.loop !1297

for.end:                                          ; preds = %for.cond.cleanup
  ret void, !dbg !1300
}

; Function Attrs: inlinehint mustprogress nounwind
define internal void @_ZL9writeincrIL23aie_stream_resource_out0EEvP13output_streamIfE7v4floatb(%struct.output_stream* %str, %struct.v4float %value.coerce, i1 zeroext %tlast) addrspace(1) #18 !dbg !1301 {
entry:
  %value = alloca %struct.v4float, align 16
  %str.addr = alloca %struct.output_stream*, align 4
  %tlast.addr = alloca i8, align 1
  %agg.tmp = alloca %struct.v8int16, align 16
  store %struct.v4float %value.coerce, %struct.v4float* %value, align 16
  store %struct.output_stream* %str, %struct.output_stream** %str.addr, align 4, !tbaa !819
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.output_stream** %str.addr, metadata !1306, metadata !DIExpression()), !dbg !1310
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.v4float* %value, metadata !1307, metadata !DIExpression()), !dbg !1310
  %frombool = zext i1 %tlast to i8
  store i8 %frombool, i8* %tlast.addr, align 1, !tbaa !1311
  call addrspace(1) void @llvm.dbg.declare(metadata i8* %tlast.addr, metadata !1308, metadata !DIExpression()), !dbg !1310
  %0 = load %struct.output_stream*, %struct.output_stream** %str.addr, align 4, !dbg !1310, !tbaa !819
  %1 = bitcast %struct.output_stream* %0 to %struct.output_stream.4*, !dbg !1310
  %2 = load %struct.v4float, %struct.v4float* %value, align 16, !dbg !1310, !tbaa !1037
  %call = call addrspace(1) %struct.v8int16 @_Z10as_v8int167v4float(%struct.v4float %2) #25, !dbg !1310
  %3 = getelementptr inbounds %struct.v8int16, %struct.v8int16* %agg.tmp, i32 0, i32 0, !dbg !1310
  %4 = extractvalue %struct.v8int16 %call, 0, !dbg !1310
  store %struct.ipd.custom_type.v16int8.v16int8 %4, %struct.ipd.custom_type.v16int8.v16int8* %3, align 16, !dbg !1310
  %5 = load i8, i8* %tlast.addr, align 1, !dbg !1310, !tbaa !1311, !range !1313
  %tobool = trunc i8 %5 to i1, !dbg !1310
  %6 = load %struct.v8int16, %struct.v8int16* %agg.tmp, align 16, !dbg !1310, !tbaa !1037
  call addrspace(1) void @_ZL9writeincrIL23aie_stream_resource_out0EEvP13output_streamIsE7v8int16b(%struct.output_stream.4* %1, %struct.v8int16 %6, i1 zeroext %tobool) #25, !dbg !1310
  ret void, !dbg !1310
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local %"class.aie::vector" @_ZNK3aie6vectorIfLj4EE7extractILj4EEENS0_IfXT_EEEj(%"class.aie::vector"* nonnull align 16 dereferenceable(16) %this, i32 %idx) addrspace(1) #15 comdat align 2 !dbg !1314 {
entry:
  %this.addr = alloca %"class.aie::vector"*, align 4
  %idx.addr = alloca i32, align 4
  %custom_type.tmp = alloca %"class.aie::vector", align 16
  %ref.tmp = alloca %"class.aie::detail::vector_base", align 16
  store %"class.aie::vector"* %this, %"class.aie::vector"** %this.addr, align 4, !tbaa !819
  call addrspace(1) void @llvm.dbg.declare(metadata %"class.aie::vector"** %this.addr, metadata !1321, metadata !DIExpression()), !dbg !1324
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !764
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %idx.addr, metadata !1323, metadata !DIExpression()), !dbg !1325
  %this1 = load %"class.aie::vector"*, %"class.aie::vector"** %this.addr, align 4
  %0 = bitcast %"class.aie::detail::vector_base"* %ref.tmp to i8*, !dbg !1326
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 16, i8* %0) #24, !dbg !1326
  %1 = bitcast %"class.aie::vector"* %this1 to %"class.aie::detail::vector_base"*, !dbg !1327
  %2 = load i32, i32* %idx.addr, align 4, !dbg !1328, !tbaa !764
  %call = call addrspace(1) %"class.aie::detail::vector_base" @_ZNK3aie6detail11vector_baseIfLj4EE7extractILj4EEENS1_IfXT_EEEj(%"class.aie::detail::vector_base"* nonnull align 16 dereferenceable(16) %1, i32 %2) #25, !dbg !1327
  %3 = getelementptr inbounds %"class.aie::detail::vector_base", %"class.aie::detail::vector_base"* %ref.tmp, i32 0, i32 0, !dbg !1327
  %4 = extractvalue %"class.aie::detail::vector_base" %call, 0, !dbg !1327
  store %struct.v4float %4, %struct.v4float* %3, align 16, !dbg !1327
  call addrspace(1) void @_ZN3aie6vectorIfLj4EEC2ERKNS_6detail11vector_baseIfLj4EEE(%"class.aie::vector"* nonnull align 16 dereferenceable(16) %custom_type.tmp, %"class.aie::detail::vector_base"* nonnull align 16 dereferenceable(16) %ref.tmp) #25, !dbg !1326
  %5 = load %"class.aie::vector", %"class.aie::vector"* %custom_type.tmp, align 16, !dbg !1326, !tbaa !903
  %6 = bitcast %"class.aie::detail::vector_base"* %ref.tmp to i8*, !dbg !1329
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 16, i8* %6) #24, !dbg !1329
  ret %"class.aie::vector" %5, !dbg !1326
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local %struct.v4float @_ZNK3aie6vectorIfLj4EEcv7v4floatEv(%"class.aie::vector"* nonnull align 16 dereferenceable(16) %this) addrspace(1) #15 comdat align 2 !dbg !1330 {
entry:
  %retval = alloca %struct.v4float, align 16
  %this.addr = alloca %"class.aie::vector"*, align 4
  store %"class.aie::vector"* %this, %"class.aie::vector"** %this.addr, align 4, !tbaa !819
  call addrspace(1) void @llvm.dbg.declare(metadata %"class.aie::vector"** %this.addr, metadata !1332, metadata !DIExpression()), !dbg !1333
  %this1 = load %"class.aie::vector"*, %"class.aie::vector"** %this.addr, align 4
  %call = call addrspace(1) %struct.v4float @_ZNK3aie6vectorIfLj4EE9to_nativeEv(%"class.aie::vector"* nonnull align 16 dereferenceable(16) %this1) #25, !dbg !1334
  %0 = getelementptr inbounds %struct.v4float, %struct.v4float* %retval, i32 0, i32 0, !dbg !1334
  %1 = extractvalue %struct.v4float %call, 0, !dbg !1334
  store %struct.ipd.custom_type.v16int8.v16int8 %1, %struct.ipd.custom_type.v16int8.v16int8* %0, align 16, !dbg !1334
  %2 = load %struct.v4float, %struct.v4float* %retval, align 16, !dbg !1335
  ret %struct.v4float %2, !dbg !1335
}

; Function Attrs: inlinehint mustprogress nounwind
define internal void @_ZL9writeincrIL23aie_stream_resource_out0EEvP13output_streamIsE7v8int16b(%struct.output_stream.4* %ss, %struct.v8int16 %value.coerce, i1 zeroext %tlast) addrspace(1) #18 !dbg !1336 {
entry:
  %value = alloca %struct.v8int16, align 16
  %ss.addr = alloca %struct.output_stream.4*, align 4
  %tlast.addr = alloca i8, align 1
  store %struct.v8int16 %value.coerce, %struct.v8int16* %value, align 16
  store %struct.output_stream.4* %ss, %struct.output_stream.4** %ss.addr, align 4, !tbaa !819
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.output_stream.4** %ss.addr, metadata !1340, metadata !DIExpression()), !dbg !1345
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.v8int16* %value, metadata !1341, metadata !DIExpression()), !dbg !1346
  %frombool = zext i1 %tlast to i8
  store i8 %frombool, i8* %tlast.addr, align 1, !tbaa !1311
  call addrspace(1) void @llvm.dbg.declare(metadata i8* %tlast.addr, metadata !1342, metadata !DIExpression()), !dbg !1347
  %0 = load %struct.output_stream.4*, %struct.output_stream.4** %ss.addr, align 4, !dbg !1348, !tbaa !819
  %1 = load %struct.v8int16, %struct.v8int16* %value, align 16, !dbg !1349, !tbaa !1037
  call addrspace(1) void @_ZN12stream_utilsL18aie_stream_put_wmsIsEEvP13output_streamIsE7v8int16Rb(%struct.output_stream.4* %0, %struct.v8int16 %1, i8* nonnull align 1 dereferenceable(1) %tlast.addr) #25, !dbg !1349
  ret void, !dbg !1350
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local %struct.v8int16 @_Z10as_v8int167v4float(%struct.v4float %a.coerce) addrspace(1) #15 comdat {
entry:
  %a = alloca %struct.v4float, align 16
  %custom_type.tmp = alloca %struct.v8int16, align 16
  store %struct.v4float %a.coerce, %struct.v4float* %a, align 16
  %mw = getelementptr inbounds %struct.v4float, %struct.v4float* %a, i32 0, i32 0
  %0 = load %struct.ipd.custom_type.v16int8.v16int8, %struct.ipd.custom_type.v16int8.v16int8* %mw, align 16, !tbaa !1037
  call addrspace(1) void @_ZN7v8int16C2E17chessllvmInternal7v16int8(%struct.v8int16* nonnull align 16 dereferenceable(16) %custom_type.tmp, i32 0, %struct.ipd.custom_type.v16int8.v16int8 %0) #25
  %1 = load %struct.v8int16, %struct.v8int16* %custom_type.tmp, align 16, !tbaa !1037
  ret %struct.v8int16 %1
}

; Function Attrs: inlinehint mustprogress nounwind
define internal void @_ZN12stream_utilsL18aie_stream_put_wmsIsEEvP13output_streamIsE7v8int16Rb(%struct.output_stream.4* %ss, %struct.v8int16 %value.coerce, i8* nonnull align 1 dereferenceable(1) %tlast) addrspace(1) #18 !dbg !1351 {
entry:
  %value = alloca %struct.v8int16, align 16
  %ss.addr = alloca %struct.output_stream.4*, align 4
  %tlast.addr = alloca i8*, align 4
  store %struct.v8int16 %value.coerce, %struct.v8int16* %value, align 16
  store %struct.output_stream.4* %ss, %struct.output_stream.4** %ss.addr, align 4, !tbaa !819
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.output_stream.4** %ss.addr, metadata !1355, metadata !DIExpression()), !dbg !1358
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.v8int16* %value, metadata !1356, metadata !DIExpression()), !dbg !1359
  store i8* %tlast, i8** %tlast.addr, align 4, !tbaa !819
  call addrspace(1) void @llvm.dbg.declare(metadata i8** %tlast.addr, metadata !1357, metadata !DIExpression()), !dbg !1360
  %0 = load %struct.output_stream.4*, %struct.output_stream.4** %ss.addr, align 4, !dbg !1361, !tbaa !819
  %1 = getelementptr inbounds %struct.output_stream.4, %struct.output_stream.4* %0, i32 0, i32 0, !dbg !1364
  %channel = bitcast %union.anon.5* %1 to i32*, !dbg !1364
  %2 = load i32, i32* %channel, align 4, !dbg !1364, !tbaa !823
  %3 = load i8*, i8** %tlast.addr, align 4, !dbg !1365, !tbaa !819
  %4 = load i8, i8* %3, align 1, !dbg !1365, !tbaa !1311, !range !1313
  %tobool = trunc i8 %4 to i1, !dbg !1365
  %conv = zext i1 %tobool to i32, !dbg !1365
  %5 = load %struct.v8int16, %struct.v8int16* %value, align 16, !dbg !1366, !tbaa !1037
  call addrspace(1) void @_Z7put_wmsi7v8int16i(i32 %2, %struct.v8int16 %5, i32 %conv) #30, !dbg !1366
  ret void, !dbg !1367
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local void @_Z7put_wmsi7v8int16i(i32 %idx_ms, %struct.v8int16 %a.coerce, i32 %tlast) addrspace(1) #19 comdat {
entry:
  %a = alloca %struct.v8int16, align 16
  %idx_ms.addr = alloca i32, align 4
  %tlast.addr = alloca i32, align 4
  %agg.tmp = alloca %struct.v4int32, align 16
  store %struct.v8int16 %a.coerce, %struct.v8int16* %a, align 16
  store i32 %idx_ms, i32* %idx_ms.addr, align 4, !tbaa !764
  store i32 %tlast, i32* %tlast.addr, align 4, !tbaa !764
  %0 = load i32, i32* %idx_ms.addr, align 4, !tbaa !764
  %1 = load %struct.v8int16, %struct.v8int16* %a, align 16, !tbaa !1037
  %call = call addrspace(1) %struct.v4int32 @_Z10as_v4int327v8int16(%struct.v8int16 %1) #25
  %2 = getelementptr inbounds %struct.v4int32, %struct.v4int32* %agg.tmp, i32 0, i32 0
  %3 = extractvalue %struct.v4int32 %call, 0
  store %struct.ipd.custom_type.v16int8.v16int8 %3, %struct.ipd.custom_type.v16int8.v16int8* %2, align 16
  %4 = load i32, i32* %tlast.addr, align 4, !tbaa !764
  %5 = load %struct.v4int32, %struct.v4int32* %agg.tmp, align 16, !tbaa !1037
  call addrspace(1) void @_Z7put_wmsi7v4int32i(i32 %0, %struct.v4int32 %5, i32 %4) #31
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local void @_Z7put_wmsi7v4int32i(i32 %idx_ms, %struct.v4int32 %val.coerce, i32 %tlast) addrspace(1) #20 comdat {
entry:
  %val = alloca %struct.v4int32, align 16
  %idx_ms.addr = alloca i32, align 4
  %tlast.addr = alloca i32, align 4
  %agg.tmp = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %custom_type.tmp = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %agg.tmp1 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %custom_type.tmp2 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %agg.tmp5 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %custom_type.tmp6 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %agg.tmp7 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %custom_type.tmp8 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %agg.tmp10 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %custom_type.tmp11 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %agg.tmp12 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %custom_type.tmp13 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  store %struct.v4int32 %val.coerce, %struct.v4int32* %val, align 16
  store i32 %idx_ms, i32* %idx_ms.addr, align 4, !tbaa !764
  store i32 %tlast, i32* %tlast.addr, align 4, !tbaa !764
  %0 = load i32, i32* %idx_ms.addr, align 4, !tbaa !764
  %cmp = icmp eq i32 %0, 0
  %1 = call addrspace(1) i1 @llvm.chess_manifest(i1 %cmp)
  br i1 %1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp, i32 0) #25
  %2 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp, align 4, !tbaa !1174
  store %struct.ipd.custom_type.uint1_t.uint1_t %2, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp, align 4, !tbaa !1174
  %3 = load i32, i32* %tlast.addr, align 4, !tbaa !764
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp2, i32 %3) #25
  %4 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp2, align 4, !tbaa !1174
  store %struct.ipd.custom_type.uint1_t.uint1_t %4, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp1, align 4, !tbaa !1174
  %5 = load %struct.v4int32, %struct.v4int32* %val, align 16, !tbaa !1037
  %6 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp, align 4, !tbaa !1174
  %7 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp1, align 4, !tbaa !1174
  call addrspace(1) void @_ZN12me_primitive15stream_write128EPU4AS29U16__protect_accessi7v4int327uint1_tS3_(i32 addrspace(29)* @_ZN12me_primitive3ms0E, %struct.v4int32 %5, %struct.ipd.custom_type.uint1_t.uint1_t %6, %struct.ipd.custom_type.uint1_t.uint1_t %7) #32
  br label %if.end14

if.else:                                          ; preds = %entry
  %8 = load i32, i32* %idx_ms.addr, align 4, !tbaa !764
  %cmp3 = icmp eq i32 %8, 1
  %9 = call addrspace(1) i1 @llvm.chess_manifest(i1 %cmp3)
  br i1 %9, label %if.then4, label %if.else9

if.then4:                                         ; preds = %if.else
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp6, i32 0) #25
  %10 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp6, align 4, !tbaa !1174
  store %struct.ipd.custom_type.uint1_t.uint1_t %10, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp5, align 4, !tbaa !1174
  %11 = load i32, i32* %tlast.addr, align 4, !tbaa !764
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp8, i32 %11) #25
  %12 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp8, align 4, !tbaa !1174
  store %struct.ipd.custom_type.uint1_t.uint1_t %12, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp7, align 4, !tbaa !1174
  %13 = load %struct.v4int32, %struct.v4int32* %val, align 16, !tbaa !1037
  %14 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp5, align 4, !tbaa !1174
  %15 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp7, align 4, !tbaa !1174
  call addrspace(1) void @_ZN12me_primitive15stream_write128EPU4AS30U16__protect_accessi7v4int327uint1_tS3_(i32 addrspace(30)* @_ZN12me_primitive3ms1E, %struct.v4int32 %13, %struct.ipd.custom_type.uint1_t.uint1_t %14, %struct.ipd.custom_type.uint1_t.uint1_t %15) #32
  br label %if.end

if.else9:                                         ; preds = %if.else
  %16 = load i32, i32* %idx_ms.addr, align 4, !tbaa !764
  %conv = trunc i32 %16 to i1
  %17 = inttoptr i1 %conv to i32 addrspace(18)*
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp11, i32 0) #25
  %18 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp11, align 4, !tbaa !1174
  store %struct.ipd.custom_type.uint1_t.uint1_t %18, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp10, align 4, !tbaa !1174
  %19 = load i32, i32* %tlast.addr, align 4, !tbaa !764
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp13, i32 %19) #25
  %20 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp13, align 4, !tbaa !1174
  store %struct.ipd.custom_type.uint1_t.uint1_t %20, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp12, align 4, !tbaa !1174
  %21 = load %struct.v4int32, %struct.v4int32* %val, align 16, !tbaa !1037
  %22 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp10, align 4, !tbaa !1174
  %23 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp12, align 4, !tbaa !1174
  call addrspace(1) void @_ZN12me_primitive15stream_write128EPU4AS18U16__protect_accessi7v4int327uint1_tS3_(i32 addrspace(18)* %17, %struct.v4int32 %21, %struct.ipd.custom_type.uint1_t.uint1_t %22, %struct.ipd.custom_type.uint1_t.uint1_t %23) #32
  br label %if.end

if.end:                                           ; preds = %if.else9, %if.then4
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local %struct.v4int32 @_Z10as_v4int327v8int16(%struct.v8int16 %a.coerce) addrspace(1) #15 comdat {
entry:
  %a = alloca %struct.v8int16, align 16
  %custom_type.tmp = alloca %struct.v4int32, align 16
  store %struct.v8int16 %a.coerce, %struct.v8int16* %a, align 16
  %mw = getelementptr inbounds %struct.v8int16, %struct.v8int16* %a, i32 0, i32 0
  %0 = load %struct.ipd.custom_type.v16int8.v16int8, %struct.ipd.custom_type.v16int8.v16int8* %mw, align 16, !tbaa !1037
  call addrspace(1) void @_ZN7v4int32C2E17chessllvmInternal7v16int8(%struct.v4int32* nonnull align 16 dereferenceable(16) %custom_type.tmp, i32 0, %struct.ipd.custom_type.v16int8.v16int8 %0) #25
  %1 = load %struct.v4int32, %struct.v4int32* %custom_type.tmp, align 16, !tbaa !1037
  ret %struct.v4int32 %1
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local void @_ZN12me_primitive15stream_write128EPU4AS29U16__protect_accessi7v4int327uint1_tS3_(i32 addrspace(29)* %a0, %struct.v4int32 %a1.coerce, %struct.ipd.custom_type.uint1_t.uint1_t %a2.coerce, %struct.ipd.custom_type.uint1_t.uint1_t %a3.coerce) addrspace(1) #11 comdat {
entry:
  %a1 = alloca %struct.v4int32, align 16
  %a2 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %a3 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %a0.addr = alloca i32 addrspace(29)*, align 4
  store %struct.v4int32 %a1.coerce, %struct.v4int32* %a1, align 16
  store %struct.ipd.custom_type.uint1_t.uint1_t %a2.coerce, %struct.ipd.custom_type.uint1_t.uint1_t* %a2, align 4
  store %struct.ipd.custom_type.uint1_t.uint1_t %a3.coerce, %struct.ipd.custom_type.uint1_t.uint1_t* %a3, align 4
  store i32 addrspace(29)* %a0, i32 addrspace(29)** %a0.addr, align 4, !tbaa !819
  %0 = load i32 addrspace(29)*, i32 addrspace(29)** %a0.addr, align 4, !tbaa !819
  %1 = load %struct.v4int32, %struct.v4int32* %a1, align 16, !tbaa !1037
  %2 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a2, align 4, !tbaa !1174
  %3 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a3, align 4, !tbaa !1174
  call x86_regcallcc addrspace(1) void @__regcall3__chessintr_void_stream_write128___PWMS_rsrc1__sint_v4int32_uint1_t_uint1_t(i32 addrspace(29)* "ipd_store"="0,4" %0, %struct.v4int32 %1, %struct.ipd.custom_type.uint1_t.uint1_t %2, %struct.ipd.custom_type.uint1_t.uint1_t %3) #33
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local void @_ZN12me_primitive15stream_write128EPU4AS30U16__protect_accessi7v4int327uint1_tS3_(i32 addrspace(30)* %a0, %struct.v4int32 %a1.coerce, %struct.ipd.custom_type.uint1_t.uint1_t %a2.coerce, %struct.ipd.custom_type.uint1_t.uint1_t %a3.coerce) addrspace(1) #11 comdat {
entry:
  %a1 = alloca %struct.v4int32, align 16
  %a2 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %a3 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %a0.addr = alloca i32 addrspace(30)*, align 4
  store %struct.v4int32 %a1.coerce, %struct.v4int32* %a1, align 16
  store %struct.ipd.custom_type.uint1_t.uint1_t %a2.coerce, %struct.ipd.custom_type.uint1_t.uint1_t* %a2, align 4
  store %struct.ipd.custom_type.uint1_t.uint1_t %a3.coerce, %struct.ipd.custom_type.uint1_t.uint1_t* %a3, align 4
  store i32 addrspace(30)* %a0, i32 addrspace(30)** %a0.addr, align 4, !tbaa !819
  %0 = load i32 addrspace(30)*, i32 addrspace(30)** %a0.addr, align 4, !tbaa !819
  %1 = load %struct.v4int32, %struct.v4int32* %a1, align 16, !tbaa !1037
  %2 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a2, align 4, !tbaa !1174
  %3 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a3, align 4, !tbaa !1174
  call x86_regcallcc addrspace(1) void @__regcall3__chessintr_void_stream_write128___PWMS_rsrc2__sint_v4int32_uint1_t_uint1_t(i32 addrspace(30)* "ipd_store"="0,4" %0, %struct.v4int32 %1, %struct.ipd.custom_type.uint1_t.uint1_t %2, %struct.ipd.custom_type.uint1_t.uint1_t %3) #33
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local void @_ZN12me_primitive15stream_write128EPU4AS18U16__protect_accessi7v4int327uint1_tS3_(i32 addrspace(18)* %a0, %struct.v4int32 %a1.coerce, %struct.ipd.custom_type.uint1_t.uint1_t %a2.coerce, %struct.ipd.custom_type.uint1_t.uint1_t %a3.coerce) addrspace(1) #11 comdat {
entry:
  %a1 = alloca %struct.v4int32, align 16
  %a2 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %a3 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %a0.addr = alloca i32 addrspace(18)*, align 4
  store %struct.v4int32 %a1.coerce, %struct.v4int32* %a1, align 16
  store %struct.ipd.custom_type.uint1_t.uint1_t %a2.coerce, %struct.ipd.custom_type.uint1_t.uint1_t* %a2, align 4
  store %struct.ipd.custom_type.uint1_t.uint1_t %a3.coerce, %struct.ipd.custom_type.uint1_t.uint1_t* %a3, align 4
  store i32 addrspace(18)* %a0, i32 addrspace(18)** %a0.addr, align 4, !tbaa !819
  %0 = load i32 addrspace(18)*, i32 addrspace(18)** %a0.addr, align 4, !tbaa !819
  %1 = load %struct.v4int32, %struct.v4int32* %a1, align 16, !tbaa !1037
  %2 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a2, align 4, !tbaa !1174
  %3 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a3, align 4, !tbaa !1174
  call x86_regcallcc addrspace(1) void @__regcall3__chessintr_void_stream_write128___PWMSMEM__sint_v4int32_uint1_t_uint1_t(i32 addrspace(18)* "ipd_store"="0,4" %0, %struct.v4int32 %1, %struct.ipd.custom_type.uint1_t.uint1_t %2, %struct.ipd.custom_type.uint1_t.uint1_t %3) #33
  ret void
}

; Function Attrs: argmemonly nounwind
declare dso_local x86_regcallcc void @__regcall3__chessintr_void_stream_write128___PWMS_rsrc1__sint_v4int32_uint1_t_uint1_t(i32 addrspace(29)* "ipd_store"="0,4", %struct.v4int32, %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t) addrspace(1) #21

; Function Attrs: argmemonly nounwind
declare dso_local x86_regcallcc void @__regcall3__chessintr_void_stream_write128___PWMS_rsrc2__sint_v4int32_uint1_t_uint1_t(i32 addrspace(30)* "ipd_store"="0,4", %struct.v4int32, %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t) addrspace(1) #21

; Function Attrs: argmemonly nounwind
declare dso_local x86_regcallcc void @__regcall3__chessintr_void_stream_write128___PWMSMEM__sint_v4int32_uint1_t_uint1_t(i32 addrspace(18)* "ipd_store"="0,4", %struct.v4int32, %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t) addrspace(1) #21

; Function Attrs: nounwind
define linkonce_odr dso_local void @_ZN7v4int32C2E17chessllvmInternal7v16int8(%struct.v4int32* nonnull align 16 dereferenceable(16) %this, i32 %0, %struct.ipd.custom_type.v16int8.v16int8 %aw.coerce) unnamed_addr addrspace(1) #7 comdat align 2 !dbg !1368 {
entry:
  %aw = alloca %struct.ipd.custom_type.v16int8.v16int8, align 16
  %this.addr = alloca %struct.v4int32*, align 4
  %.addr = alloca i32, align 4
  store %struct.ipd.custom_type.v16int8.v16int8 %aw.coerce, %struct.ipd.custom_type.v16int8.v16int8* %aw, align 16
  store %struct.v4int32* %this, %struct.v4int32** %this.addr, align 4, !tbaa !819
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.v4int32** %this.addr, metadata !1390, metadata !DIExpression()), !dbg !1394
  store i32 %0, i32* %.addr, align 4, !tbaa !1153
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %.addr, metadata !1392, metadata !DIExpression()), !dbg !1395
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.ipd.custom_type.v16int8.v16int8* %aw, metadata !1393, metadata !DIExpression()), !dbg !1396
  %this1 = load %struct.v4int32*, %struct.v4int32** %this.addr, align 4
  %mw = getelementptr inbounds %struct.v4int32, %struct.v4int32* %this1, i32 0, i32 0, !dbg !1397
  %1 = load %struct.ipd.custom_type.v16int8.v16int8, %struct.ipd.custom_type.v16int8.v16int8* %aw, align 16, !dbg !1398, !tbaa !1037
  store %struct.ipd.custom_type.v16int8.v16int8 %1, %struct.ipd.custom_type.v16int8.v16int8* %mw, align 16, !dbg !1398, !tbaa !1037
  ret void, !dbg !1399
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local %"class.aie::detail::vector_base" @_ZNK3aie6detail11vector_baseIfLj4EE7extractILj4EEENS1_IfXT_EEEj(%"class.aie::detail::vector_base"* nonnull align 16 dereferenceable(16) %this, i32 %idx) addrspace(1) #15 comdat align 2 !dbg !1400 {
entry:
  %this.addr = alloca %"class.aie::detail::vector_base"*, align 4
  %idx.addr = alloca i32, align 4
  %output_bits = alloca i32, align 4
  store %"class.aie::detail::vector_base"* %this, %"class.aie::detail::vector_base"** %this.addr, align 4, !tbaa !819
  call addrspace(1) void @llvm.dbg.declare(metadata %"class.aie::detail::vector_base"** %this.addr, metadata !1405, metadata !DIExpression()), !dbg !1409
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !764
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %idx.addr, metadata !1407, metadata !DIExpression()), !dbg !1410
  %this1 = load %"class.aie::detail::vector_base"*, %"class.aie::detail::vector_base"** %this.addr, align 4
  br label %do.body, !dbg !1411

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %idx.addr, align 4, !dbg !1412, !tbaa !764
  %cmp = icmp ult i32 %0, 1, !dbg !1412
  %1 = call addrspace(1) i1 @llvm.is.constant.i1(i1 %cmp), !dbg !1412
  br i1 %1, label %if.then, label %if.else, !dbg !1415

if.then:                                          ; preds = %do.body
  br label %do.body2, !dbg !1416

do.body2:                                         ; preds = %if.then
  %2 = load i32, i32* %idx.addr, align 4, !dbg !1418, !tbaa !764
  %cmp3 = icmp ult i32 %2, 1, !dbg !1418
  %3 = call addrspace(1) i1 @llvm.chess_manifest(i1 %cmp3), !dbg !1418
  br i1 %3, label %if.end, label %if.then4, !dbg !1421

if.then4:                                         ; preds = %do.body2
  call addrspace(1) void @llvm.chess_error(metadata !1248), !dbg !1418
  br label %if.end, !dbg !1418

if.end:                                           ; preds = %if.then4, %do.body2
  br label %do.end, !dbg !1421

do.end:                                           ; preds = %if.end
  br label %if.end6, !dbg !1416

if.else:                                          ; preds = %do.body
  %4 = load i32, i32* %idx.addr, align 4, !dbg !1422, !tbaa !764
  %cmp5 = icmp ult i32 %4, 1, !dbg !1422
  call addrspace(1) void @llvm.assume(i1 %cmp5), !dbg !1422
  br label %if.end6

if.end6:                                          ; preds = %if.else, %do.end
  br label %do.end7, !dbg !1415

do.end7:                                          ; preds = %if.end6
  store i32 undef, i32* %output_bits, align 4, !dbg !1424
  %5 = bitcast i32* %output_bits to i8*, !dbg !1424
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #24, !dbg !1424
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %output_bits, metadata !1408, metadata !DIExpression()), !dbg !1425
  store i32 128, i32* %output_bits, align 4, !dbg !1425, !tbaa !764
  %6 = load %"class.aie::detail::vector_base", %"class.aie::detail::vector_base"* %this1, align 16, !dbg !1426, !tbaa !1429
  %7 = bitcast i32* %output_bits to i8*, !dbg !1430
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %7) #24, !dbg !1430
  ret %"class.aie::detail::vector_base" %6, !dbg !1426
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dso_local void @_ZN3aie6vectorIfLj4EEC2ERKNS_6detail11vector_baseIfLj4EEE(%"class.aie::vector"* nonnull align 16 dereferenceable(16) %this, %"class.aie::detail::vector_base"* nonnull align 16 dereferenceable(16) %v) unnamed_addr addrspace(1) #12 comdat align 2 !dbg !1431 {
entry:
  %this.addr = alloca %"class.aie::vector"*, align 4
  %v.addr = alloca %"class.aie::detail::vector_base"*, align 4
  store %"class.aie::vector"* %this, %"class.aie::vector"** %this.addr, align 4, !tbaa !819
  call addrspace(1) void @llvm.dbg.declare(metadata %"class.aie::vector"** %this.addr, metadata !1433, metadata !DIExpression()), !dbg !1435
  store %"class.aie::detail::vector_base"* %v, %"class.aie::detail::vector_base"** %v.addr, align 4, !tbaa !819
  call addrspace(1) void @llvm.dbg.declare(metadata %"class.aie::detail::vector_base"** %v.addr, metadata !1434, metadata !DIExpression()), !dbg !1436
  %this1 = load %"class.aie::vector"*, %"class.aie::vector"** %this.addr, align 4
  %0 = bitcast %"class.aie::vector"* %this1 to %"class.aie::detail::vector_base"*, !dbg !1437
  %1 = load %"class.aie::detail::vector_base"*, %"class.aie::detail::vector_base"** %v.addr, align 4, !dbg !1438, !tbaa !819
  %2 = load %"class.aie::detail::vector_base", %"class.aie::detail::vector_base"* %1, align 16, !dbg !1439, !tbaa !1429
  store %"class.aie::detail::vector_base" %2, %"class.aie::detail::vector_base"* %0, align 16, !dbg !1439, !tbaa !1429
  ret void, !dbg !1440
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local %struct.v4float @_ZNK3aie6vectorIfLj4EE9to_nativeEv(%"class.aie::vector"* nonnull align 16 dereferenceable(16) %this) addrspace(1) #15 comdat align 2 !dbg !1441 {
entry:
  %retval = alloca %struct.v4float, align 16
  %this.addr = alloca %"class.aie::vector"*, align 4
  store %"class.aie::vector"* %this, %"class.aie::vector"** %this.addr, align 4, !tbaa !819
  call addrspace(1) void @llvm.dbg.declare(metadata %"class.aie::vector"** %this.addr, metadata !1443, metadata !DIExpression()), !dbg !1444
  %this1 = load %"class.aie::vector"*, %"class.aie::vector"** %this.addr, align 4
  %0 = bitcast %"class.aie::vector"* %this1 to %"class.aie::detail::vector_base"*, !dbg !1445
  %call = call addrspace(1) %struct.v4float @_ZNK3aie6detail11vector_baseIfLj4EE9to_nativeEv(%"class.aie::detail::vector_base"* nonnull align 16 dereferenceable(16) %0) #25, !dbg !1445
  %1 = getelementptr inbounds %struct.v4float, %struct.v4float* %retval, i32 0, i32 0, !dbg !1445
  %2 = extractvalue %struct.v4float %call, 0, !dbg !1445
  store %struct.ipd.custom_type.v16int8.v16int8 %2, %struct.ipd.custom_type.v16int8.v16int8* %1, align 16, !dbg !1445
  %3 = load %struct.v4float, %struct.v4float* %retval, align 16, !dbg !1446
  ret %struct.v4float %3, !dbg !1446
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local %struct.v4float @_ZNK3aie6detail11vector_baseIfLj4EE9to_nativeEv(%"class.aie::detail::vector_base"* nonnull align 16 dereferenceable(16) %this) addrspace(1) #15 comdat align 2 !dbg !1447 {
entry:
  %this.addr = alloca %"class.aie::detail::vector_base"*, align 4
  store %"class.aie::detail::vector_base"* %this, %"class.aie::detail::vector_base"** %this.addr, align 4, !tbaa !819
  call addrspace(1) void @llvm.dbg.declare(metadata %"class.aie::detail::vector_base"** %this.addr, metadata !1449, metadata !DIExpression()), !dbg !1450
  %this1 = load %"class.aie::detail::vector_base"*, %"class.aie::detail::vector_base"** %this.addr, align 4
  %data = getelementptr inbounds %"class.aie::detail::vector_base", %"class.aie::detail::vector_base"* %this1, i32 0, i32 0, !dbg !1451
  %0 = load %struct.v4float, %struct.v4float* %data, align 16, !dbg !1451, !tbaa !1037
  ret %struct.v4float %0, !dbg !1451
}

attributes #0 = { "chess_storage:addr"="0" }
attributes #1 = { "chess_storage:addr"="1" }
attributes #2 = { mustprogress nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-memcpy" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { mustprogress norecurse nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-memcpy" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { inaccessiblememonly nounwind willreturn }
attributes #7 = { nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-memcpy" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #8 = { nounwind willreturn }
attributes #9 = { alwaysinline mustprogress nounwind "chessFP:property"="contains_memory_fence do_generate" "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-memcpy" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #10 = { inaccessiblememonly nounwind "frame-pointer"="all" "no-builtin-memcpy" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #11 = { alwaysinline mustprogress nounwind "chessFP:llvm_local_block_replace_operand_with_variable" "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-memcpy" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #12 = { alwaysinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-memcpy" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #13 = { nounwind readnone willreturn "frame-pointer"="all" "no-builtin-memcpy" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #14 = { nounwind readnone willreturn }
attributes #15 = { alwaysinline mustprogress nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-memcpy" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #16 = { argmemonly nounwind speculatable willreturn }
attributes #17 = { argmemonly nocallback nofree nounwind willreturn }
attributes #18 = { inlinehint mustprogress nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-memcpy" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #19 = { alwaysinline mustprogress nounwind "chessFP:property"="do_generate" "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-memcpy" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #20 = { alwaysinline mustprogress nounwind "chessFP:property"="do_generate_llvm" "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-memcpy" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #21 = { argmemonly nounwind "frame-pointer"="all" "no-builtin-memcpy" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #22 = { convergent nocallback nofree nosync nounwind readnone willreturn }
attributes #23 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #24 = { nounwind }
attributes #25 = { "no-builtin-memcpy" }
attributes #26 = { "chessFP:property"="contains_memory_fence do_generate" "no-builtin-memcpy" }
attributes #27 = { inaccessiblememonly nounwind "no-builtin-memcpy" }
attributes #28 = { "chessFP:llvm_local_block_replace_operand_with_variable" "no-builtin-memcpy" }
attributes #29 = { nounwind readnone willreturn "no-builtin-memcpy" }
attributes #30 = { "chessFP:property"="do_generate" "no-builtin-memcpy" }
attributes #31 = { "chessFP:property"="do_generate_llvm" "no-builtin-memcpy" }
attributes #32 = { memop_protect_access "chessFP:llvm_local_block_replace_operand_with_variable" "no-builtin-memcpy" }
attributes #33 = { argmemonly nounwind "no-builtin-memcpy" }

!llvm.dbg.cu = !{!2}
!llvm.linker.options = !{}
!llvm.module.flags = !{!717, !718, !719, !720}
!llvm.ident = !{!721}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "sync_buffer", linkageName: "_ZL11sync_buffer", scope: !2, file: !604, line: 8, type: !713, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "clang version 15.0.5 (/u/sgasip/ipd/repositories/llvm_ipd 3a25925e0239306412dac02da5e4c8c51ae722e8)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !42, globals: !281, imports: !282, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/lxy/Projects/SVD/Jacobi_AIE/Work/aie/24_0/src/24_0.cc", directory: "/home/lxy/Projects/SVD/Jacobi_AIE/Work/aie")
!4 = !{!5, !13, !21, !31, !37, !38}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lut_oor_policy", scope: !7, file: !6, line: 57, baseType: !9, size: 32, flags: DIFlagEnumClass, elements: !10, identifier: "_ZTSN3aie6detail14lut_oor_policyE")
!6 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/aie_api/detail/lut.hpp", directory: "/home/lxy")
!7 = !DINamespace(name: "detail", scope: !8)
!8 = !DINamespace(name: "aie", scope: null)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !{!11, !12}
!11 = !DIEnumerator(name: "saturate", value: 0)
!12 = !DIEnumerator(name: "truncate", value: 1)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "saturation_mode", scope: !7, file: !14, line: 58, baseType: !15, size: 32, flags: DIFlagEnumClass, elements: !16, identifier: "_ZTSN3aie6detail15saturation_modeE")
!14 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/aie_api/detail/aie1/../tile.hpp", directory: "/home/lxy")
!15 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!16 = !{!17, !18, !19, !20}
!17 = !DIEnumerator(name: "none", value: 0, isUnsigned: true)
!18 = !DIEnumerator(name: "truncate", value: 1, isUnsigned: true)
!19 = !DIEnumerator(name: "saturate", value: 1, isUnsigned: true)
!20 = !DIEnumerator(name: "symmetric", value: 3, isUnsigned: true)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rounding_mode", scope: !7, file: !14, line: 66, baseType: !15, size: 32, flags: DIFlagEnumClass, elements: !22, identifier: "_ZTSN3aie6detail13rounding_modeE")
!22 = !{!23, !24, !25, !26, !27, !28, !29, !30}
!23 = !DIEnumerator(name: "floor", value: 0, isUnsigned: true)
!24 = !DIEnumerator(name: "ceil", value: 1, isUnsigned: true)
!25 = !DIEnumerator(name: "positive_inf", value: 2, isUnsigned: true)
!26 = !DIEnumerator(name: "negative_inf", value: 3, isUnsigned: true)
!27 = !DIEnumerator(name: "symmetric_inf", value: 4, isUnsigned: true)
!28 = !DIEnumerator(name: "symmetric_zero", value: 5, isUnsigned: true)
!29 = !DIEnumerator(name: "conv_even", value: 6, isUnsigned: true)
!30 = !DIEnumerator(name: "conv_odd", value: 7, isUnsigned: true)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "aie_stream_resource_in", file: !32, line: 396, baseType: !9, size: 32, flags: DIFlagEnumClass, elements: !33, identifier: "_ZTS22aie_stream_resource_in")
!32 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/me_defines.h", directory: "/home/lxy")
!33 = !{!34, !35, !36}
!34 = !DIEnumerator(name: "none", value: 0)
!35 = !DIEnumerator(name: "a", value: 1)
!36 = !DIEnumerator(name: "b", value: 2)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "aie_stream_resource_out", file: !32, line: 402, baseType: !9, size: 32, flags: DIFlagEnumClass, elements: !33, identifier: "_ZTS23aie_stream_resource_out")
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "chessllvmInternal", file: !39, line: 21, baseType: !15, size: 32, elements: !40, identifier: "_ZTS17chessllvmInternal")
!39 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/isg/me_chess_llvm.h", directory: "/home/lxy")
!40 = !{!41}
!41 = !DIEnumerator(name: "chessllvm_reinterpret", value: 0, isUnsigned: true)
!42 = !{!43, !104, !139, !81, !85, !77, !89, !141, !129, !133, !125, !45, !105, !143, !268, !162, !147, !269, !270, !280}
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "input_stream_float", file: !44, line: 18, baseType: !45)
!44 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/adf/stream/types.h", directory: "/home/lxy")
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_stream<float>", file: !46, line: 50, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !47, templateParams: !101, identifier: "_ZTS12input_streamIfE")
!46 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/adf/stream/me/structs.h", directory: "/home/lxy")
!47 = !{!48, !97}
!48 = !DIDerivedType(tag: DW_TAG_member, scope: !45, file: !46, line: 50, baseType: !49, size: 32)
!49 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !45, file: !46, line: 50, size: 32, flags: DIFlagExportSymbols | DIFlagTypePassByValue, elements: !50, identifier: "_ZTSN12input_streamIfEUt_E")
!50 = !{!51, !52, !57, !61, !65, !69, !72, !75, !79, !83, !87, !91, !94}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !49, file: !46, line: 50, baseType: !15, size: 32)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "channel_ss", scope: !49, file: !46, line: 50, baseType: !53, size: 32)
!53 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "ss_idx_t", scope: !55, file: !39, line: 655, baseType: !56)
!55 = !DINamespace(name: "me_primitive", scope: null)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32, dwarfAddressSpace: 67)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "channel_ss0", scope: !49, file: !46, line: 50, baseType: !58, size: 32)
!58 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "ss0_idx_t", scope: !55, file: !39, line: 559, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32, dwarfAddressSpace: 70)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "channel_ss1", scope: !49, file: !46, line: 50, baseType: !62, size: 32)
!62 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "ss1_idx_t", scope: !55, file: !39, line: 607, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32, dwarfAddressSpace: 71)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "channel_sst", scope: !49, file: !46, line: 50, baseType: !66, size: 32)
!66 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "ss_tlast_idx_t", scope: !55, file: !39, line: 679, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32, dwarfAddressSpace: 69)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "channel_sst0", scope: !49, file: !46, line: 50, baseType: !70, size: 32)
!70 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "ss0_tlast_idx_t", scope: !55, file: !39, line: 583, baseType: !68)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "channel_sst1", scope: !49, file: !46, line: 50, baseType: !73, size: 32)
!73 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "ss1_tlast_idx_t", scope: !55, file: !39, line: 631, baseType: !68)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "channel_wss", scope: !49, file: !46, line: 50, baseType: !76, size: 32)
!76 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !77)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "wss_idx_t", scope: !55, file: !39, line: 661, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32, dwarfAddressSpace: 75)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "channel_wss0", scope: !49, file: !46, line: 50, baseType: !80, size: 32)
!80 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "wss0_idx_t", scope: !55, file: !39, line: 565, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32, dwarfAddressSpace: 77)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "channel_wss1", scope: !49, file: !46, line: 50, baseType: !84, size: 32)
!84 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "wss1_idx_t", scope: !55, file: !39, line: 613, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32, dwarfAddressSpace: 78)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "channel_wsst", scope: !49, file: !46, line: 50, baseType: !88, size: 32)
!88 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "wss_tlast_idx_t", scope: !55, file: !39, line: 691, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32, dwarfAddressSpace: 76)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "channel_wsst0", scope: !49, file: !46, line: 50, baseType: !92, size: 32)
!92 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "wss0_tlast_idx_t", scope: !55, file: !39, line: 595, baseType: !90)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "channel_wsst1", scope: !49, file: !46, line: 50, baseType: !95, size: 32)
!95 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "wss1_tlast_idx_t", scope: !55, file: !39, line: 643, baseType: !90)
!97 = !DISubprogram(name: "input_stream", scope: !45, file: !46, line: 50, type: !98, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!98 = !DISubroutineType(types: !99)
!99 = !{null, !100, !15}
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!101 = !{!102}
!102 = !DITemplateTypeParameter(name: "T", type: !103)
!103 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "output_stream_float", file: !44, line: 30, baseType: !105)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "output_stream<float>", file: !46, line: 60, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !106, templateParams: !101, identifier: "_ZTS13output_streamIfE")
!106 = !{!107, !135}
!107 = !DIDerivedType(tag: DW_TAG_member, scope: !105, file: !46, line: 60, baseType: !108, size: 32)
!108 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !105, file: !46, line: 60, size: 32, flags: DIFlagExportSymbols | DIFlagTypePassByValue, elements: !109, identifier: "_ZTSN13output_streamIfEUt_E")
!109 = !{!110, !111, !115, !119, !123, !127, !131}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !108, file: !46, line: 60, baseType: !15, size: 32)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "channel_ms", scope: !108, file: !46, line: 60, baseType: !112, size: 32)
!112 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !113)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "ms_idx_t", scope: !55, file: !39, line: 667, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32, dwarfAddressSpace: 61)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "channel_ms0", scope: !108, file: !46, line: 60, baseType: !116, size: 32)
!116 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !117)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "ms0_idx_t", scope: !55, file: !39, line: 571, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32, dwarfAddressSpace: 63)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "channel_ms1", scope: !108, file: !46, line: 60, baseType: !120, size: 32)
!120 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "ms1_idx_t", scope: !55, file: !39, line: 619, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32, dwarfAddressSpace: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "channel_wms", scope: !108, file: !46, line: 60, baseType: !124, size: 32)
!124 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "wms_idx_t", scope: !55, file: !39, line: 673, baseType: !126)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32, dwarfAddressSpace: 72)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "channel_wms0", scope: !108, file: !46, line: 60, baseType: !128, size: 32)
!128 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "wms0_idx_t", scope: !55, file: !39, line: 577, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32, dwarfAddressSpace: 73)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "channel_wms1", scope: !108, file: !46, line: 60, baseType: !132, size: 32)
!132 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "wms1_idx_t", scope: !55, file: !39, line: 625, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32, dwarfAddressSpace: 74)
!135 = !DISubprogram(name: "output_stream", scope: !105, file: !46, line: 60, type: !136, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!136 = !DISubroutineType(types: !137)
!137 = !{null, !138, !15}
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 32)
!140 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_stream<short>", file: !46, line: 43, size: 32, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS12input_streamIsE")
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 32)
!142 = !DICompositeType(tag: DW_TAG_structure_type, name: "output_stream<short>", file: !46, line: 53, size: 32, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS13output_streamIsE")
!143 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "vector<float, 4U>", scope: !8, file: !144, line: 107, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !145, templateParams: !159, identifier: "_ZTSN3aie6vectorIfLj4EEE")
!144 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/aie_api/detail/aie1/../../vector.hpp", directory: "/home/lxy")
!145 = !{!146, !211, !218, !219, !220, !221, !222, !223, !224, !225, !226, !229, !233, !239, !244, !245, !250, !253, !256, !261, !265, !266, !267}
!146 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !143, baseType: !147, extraData: i32 0)
!147 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "vector_base<float, 4U>", scope: !7, file: !148, line: 177, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !149, templateParams: !159, identifier: "_ZTSN3aie6detail11vector_baseIfLj4EEE")
!148 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/aie_api/detail/aie1/vector.hpp", directory: "/home/lxy")
!149 = !{!150, !163, !166, !167, !168, !172, !173, !174, !175, !176, !180, !184, !194, !199, !200, !205, !208}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !147, file: !148, line: 1119, baseType: !151, size: 128)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "vector_storage_t<float, 4U>", scope: !7, file: !152, line: 59, baseType: !153)
!152 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/aie_api/detail/aie1/vector_native_types.hpp", directory: "/home/lxy")
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !154, file: !152, line: 97, baseType: !161)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vector_storage<float, 4U>", scope: !7, file: !152, line: 97, size: 8, flags: DIFlagTypePassByValue, elements: !155, templateParams: !159, identifier: "_ZTSN3aie6detail14vector_storageIfLj4EEE")
!155 = !{!156}
!156 = !DISubprogram(name: "undef", linkageName: "_ZN3aie6detail14vector_storageIfLj4EE5undefEv", scope: !154, file: !152, line: 97, type: !157, scopeLine: 97, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!157 = !DISubroutineType(types: !158)
!158 = !{!153}
!159 = !{!102, !160}
!160 = !DITemplateValueParameter(name: "Elems", type: !15, value: i32 4)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "v4float", file: !39, line: 535, baseType: !162)
!162 = !DIBasicType(name: "v4float", size: 128, encoding: DW_ATE_unsigned)
!163 = !DISubprogram(name: "type_bits", linkageName: "_ZN3aie6detail11vector_baseIfLj4EE9type_bitsEv", scope: !147, file: !148, line: 189, type: !164, scopeLine: 189, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!164 = !DISubroutineType(types: !165)
!165 = !{!15}
!166 = !DISubprogram(name: "size", linkageName: "_ZN3aie6detail11vector_baseIfLj4EE4sizeEv", scope: !147, file: !148, line: 194, type: !164, scopeLine: 194, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!167 = !DISubprogram(name: "bits", linkageName: "_ZN3aie6detail11vector_baseIfLj4EE4bitsEv", scope: !147, file: !148, line: 199, type: !164, scopeLine: 199, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!168 = !DISubprogram(name: "is_signed", linkageName: "_ZN3aie6detail11vector_baseIfLj4EE9is_signedEv", scope: !147, file: !148, line: 204, type: !169, scopeLine: 204, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!169 = !DISubroutineType(types: !170)
!170 = !{!171}
!171 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!172 = !DISubprogram(name: "is_complex", linkageName: "_ZN3aie6detail11vector_baseIfLj4EE10is_complexEv", scope: !147, file: !148, line: 209, type: !169, scopeLine: 209, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!173 = !DISubprogram(name: "is_real", linkageName: "_ZN3aie6detail11vector_baseIfLj4EE7is_realEv", scope: !147, file: !148, line: 214, type: !169, scopeLine: 214, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!174 = !DISubprogram(name: "is_integral", linkageName: "_ZN3aie6detail11vector_baseIfLj4EE11is_integralEv", scope: !147, file: !148, line: 219, type: !169, scopeLine: 219, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!175 = !DISubprogram(name: "is_floating_point", linkageName: "_ZN3aie6detail11vector_baseIfLj4EE17is_floating_pointEv", scope: !147, file: !148, line: 224, type: !169, scopeLine: 224, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!176 = !DISubprogram(name: "vector_base", scope: !147, file: !148, line: 230, type: !177, scopeLine: 230, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!177 = !DISubroutineType(types: !178)
!178 = !{null, !179}
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!180 = !DISubprogram(name: "vector_base", scope: !147, file: !148, line: 236, type: !181, scopeLine: 236, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!181 = !DISubroutineType(types: !182)
!182 = !{null, !179, !183}
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "storage_t", scope: !147, file: !148, line: 187, baseType: !153)
!184 = !DISubprogram(name: "vector_base", scope: !147, file: !148, line: 250, type: !185, scopeLine: 250, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!185 = !DISubroutineType(types: !186)
!186 = !{null, !179, !187}
!187 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !188, size: 32)
!188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "native_type", scope: !147, file: !148, line: 185, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "native_vector_type_t<float, 4U>", scope: !7, file: !152, line: 265, baseType: !191)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !192, file: !152, line: 244, baseType: !161)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "native_vector_type<float, 4U>", scope: !7, file: !152, line: 244, size: 8, flags: DIFlagTypePassByValue, elements: !193, templateParams: !159, identifier: "_ZTSN3aie6detail18native_vector_typeIfLj4EEE")
!193 = !{}
!194 = !DISubprogram(name: "to_native", linkageName: "_ZNK3aie6detail11vector_baseIfLj4EE9to_nativeEv", scope: !147, file: !148, line: 292, type: !195, scopeLine: 292, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!195 = !DISubroutineType(types: !196)
!196 = !{!189, !197}
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!199 = !DISubprogram(name: "operator v4float", linkageName: "_ZNK3aie6detail11vector_baseIfLj4EEcv7v4floatEv", scope: !147, file: !148, line: 305, type: !195, scopeLine: 305, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!200 = !DISubprogram(name: "push", linkageName: "_ZN3aie6detail11vector_baseIfLj4EE4pushEf", scope: !147, file: !148, line: 323, type: !201, scopeLine: 323, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!201 = !DISubroutineType(types: !202)
!202 = !{!203, !179, !204}
!203 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !147, size: 32)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !147, file: !148, line: 186, baseType: !103)
!205 = !DISubprogram(name: "set", linkageName: "_ZN3aie6detail11vector_baseIfLj4EE3setEfj", scope: !147, file: !148, line: 442, type: !206, scopeLine: 442, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!206 = !DISubroutineType(types: !207)
!207 = !{null, !179, !204, !15}
!208 = !DISubprogram(name: "get", linkageName: "_ZNK3aie6detail11vector_baseIfLj4EE3getEj", scope: !147, file: !148, line: 498, type: !209, scopeLine: 498, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!209 = !DISubroutineType(types: !210)
!210 = !{!204, !197, !15}
!211 = !DISubprogram(name: "vector", scope: !143, file: !144, line: 117, type: !212, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!212 = !DISubroutineType(types: !213)
!213 = !{null, !214, !215}
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!215 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !216, size: 32)
!216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "base_type", scope: !143, file: !144, line: 110, baseType: !147)
!218 = !DISubprogram(name: "type_bits", linkageName: "_ZN3aie6vectorIfLj4EE9type_bitsEv", scope: !143, file: !144, line: 132, type: !164, scopeLine: 132, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!219 = !DISubprogram(name: "size", linkageName: "_ZN3aie6vectorIfLj4EE4sizeEv", scope: !143, file: !144, line: 137, type: !164, scopeLine: 137, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!220 = !DISubprogram(name: "bits", linkageName: "_ZN3aie6vectorIfLj4EE4bitsEv", scope: !143, file: !144, line: 142, type: !164, scopeLine: 142, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!221 = !DISubprogram(name: "is_signed", linkageName: "_ZN3aie6vectorIfLj4EE9is_signedEv", scope: !143, file: !144, line: 147, type: !169, scopeLine: 147, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!222 = !DISubprogram(name: "is_complex", linkageName: "_ZN3aie6vectorIfLj4EE10is_complexEv", scope: !143, file: !144, line: 152, type: !169, scopeLine: 152, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!223 = !DISubprogram(name: "is_real", linkageName: "_ZN3aie6vectorIfLj4EE7is_realEv", scope: !143, file: !144, line: 157, type: !169, scopeLine: 157, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!224 = !DISubprogram(name: "is_integral", linkageName: "_ZN3aie6vectorIfLj4EE11is_integralEv", scope: !143, file: !144, line: 162, type: !169, scopeLine: 162, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!225 = !DISubprogram(name: "is_floating_point", linkageName: "_ZN3aie6vectorIfLj4EE17is_floating_pointEv", scope: !143, file: !144, line: 167, type: !169, scopeLine: 167, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!226 = !DISubprogram(name: "vector", scope: !143, file: !144, line: 173, type: !227, scopeLine: 173, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!227 = !DISubroutineType(types: !228)
!228 = !{null, !214}
!229 = !DISubprogram(name: "vector", scope: !143, file: !144, line: 184, type: !230, scopeLine: 184, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!230 = !DISubroutineType(types: !231)
!231 = !{null, !214, !232}
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "storage_t", scope: !143, file: !144, line: 127, baseType: !183)
!233 = !DISubprogram(name: "vector", scope: !143, file: !144, line: 198, type: !234, scopeLine: 198, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!234 = !DISubroutineType(types: !235)
!235 = !{null, !214, !236}
!236 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !237, size: 32)
!237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "native_type", scope: !143, file: !144, line: 121, baseType: !189)
!239 = !DISubprogram(name: "to_native", linkageName: "_ZNK3aie6vectorIfLj4EE9to_nativeEv", scope: !143, file: !144, line: 221, type: !240, scopeLine: 221, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!240 = !DISubroutineType(types: !241)
!241 = !{!238, !242}
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!244 = !DISubprogram(name: "operator v4float", linkageName: "_ZNK3aie6vectorIfLj4EEcv7v4floatEv", scope: !143, file: !144, line: 230, type: !240, scopeLine: 230, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!245 = !DISubprogram(name: "push", linkageName: "_ZN3aie6vectorIfLj4EE4pushEf", scope: !143, file: !144, line: 258, type: !246, scopeLine: 258, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!246 = !DISubroutineType(types: !247)
!247 = !{!248, !214, !249}
!248 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !143, size: 32)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !143, file: !144, line: 124, baseType: !204)
!250 = !DISubprogram(name: "set", linkageName: "_ZN3aie6vectorIfLj4EE3setEfj", scope: !143, file: !144, line: 296, type: !251, scopeLine: 296, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!251 = !DISubroutineType(types: !252)
!252 = !{null, !214, !249, !15}
!253 = !DISubprogram(name: "get", linkageName: "_ZNK3aie6vectorIfLj4EE3getEj", scope: !143, file: !144, line: 307, type: !254, scopeLine: 307, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!254 = !DISubroutineType(types: !255)
!255 = !{!249, !242, !15}
!256 = !DISubprogram(name: "operator[]", linkageName: "_ZNK3aie6vectorIfLj4EEixEj", scope: !143, file: !144, line: 317, type: !257, scopeLine: 317, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!257 = !DISubroutineType(types: !258)
!258 = !{!259, !242, !15}
!259 = !DICompositeType(tag: DW_TAG_class_type, name: "vector_elem_const_ref<float, 4U>", scope: !8, file: !260, line: 188, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN3aie21vector_elem_const_refIfLj4EEE")
!260 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/aie_api/aie_types.hpp", directory: "/home/lxy")
!261 = !DISubprogram(name: "operator[]", linkageName: "_ZN3aie6vectorIfLj4EEixEj", scope: !143, file: !144, line: 328, type: !262, scopeLine: 328, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!262 = !DISubroutineType(types: !263)
!263 = !{!264, !214, !15}
!264 = !DICompositeType(tag: DW_TAG_class_type, name: "vector_elem_ref<float, 4U>", scope: !8, file: !260, line: 177, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN3aie15vector_elem_refIfLj4EEE")
!265 = !DISubprogram(name: "elem_const_ref", linkageName: "_ZNK3aie6vectorIfLj4EE14elem_const_refEj", scope: !143, file: !144, line: 339, type: !257, scopeLine: 339, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!266 = !DISubprogram(name: "elem_ref", linkageName: "_ZNK3aie6vectorIfLj4EE8elem_refEj", scope: !143, file: !144, line: 350, type: !257, scopeLine: 350, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!267 = !DISubprogram(name: "elem_ref", linkageName: "_ZN3aie6vectorIfLj4EE8elem_refEj", scope: !143, file: !144, line: 361, type: !262, scopeLine: 361, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!268 = !DIBasicType(name: "v16int8", size: 128, encoding: DW_ATE_unsigned)
!269 = !DIBasicType(name: "v8int16", size: 128, encoding: DW_ATE_unsigned)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stream_helper_common<4U, float>", scope: !272, file: !271, line: 60, size: 8, flags: DIFlagTypePassByValue, elements: !273, templateParams: !278, identifier: "_ZTSN3aie6detail3adf20stream_helper_commonILj4EfEE")
!271 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/aie_api/adf/stream.hpp", directory: "/home/lxy")
!272 = !DINamespace(name: "adf", scope: !7)
!273 = !{!274, !276, !277}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "stream_width", scope: !270, file: !271, line: 65, baseType: !275, flags: DIFlagStaticMember, extraData: i32 128)
!275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !270, file: !271, line: 73, baseType: !275, flags: DIFlagStaticMember, extraData: i32 1)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "elems_per_op", scope: !270, file: !271, line: 74, baseType: !275, flags: DIFlagStaticMember, extraData: i32 4)
!278 = !{!279, !102}
!279 = !DITemplateValueParameter(name: "N", type: !15, value: i32 4)
!280 = !DIBasicType(name: "v4int32", size: 128, encoding: DW_ATE_unsigned)
!281 = !{!0}
!282 = !{!283, !289, !291, !295, !300, !303, !305, !308, !311, !314, !316, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !371, !375, !385, !389, !391, !393, !397, !401, !405, !407, !411, !416, !420, !424, !428, !430, !432, !434, !436, !438, !442, !448, !450, !452, !456, !458, !460, !462, !464, !466, !471, !476, !480, !482, !484, !486, !488, !490, !492, !494, !496, !498, !503, !508, !514, !519, !523, !527, !532, !536, !540, !544, !548, !553, !557, !559, !566, !571, !572, !577, !579, !583, !585, !589, !593, !597, !605, !607, !611, !615, !619, !621, !625, !629, !633, !635, !637, !639, !644, !649, !653, !657, !661, !663, !665, !667, !671, !675, !679, !681, !683, !687, !689, !693, !697, !699, !703, !705, !707, !710, !711, !712}
!283 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !286, file: !288, line: 57)
!284 = !DINamespace(name: "__2", scope: !285, exportSymbols: true)
!285 = !DINamespace(name: "std", scope: null)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !287, line: 35, baseType: !9)
!287 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/tps/lnx64/target/bin/LNa64bin/../../chessdir/clangdir/15.0.5/include/stddef.h", directory: "/home/lxy")
!288 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime_cxx/libs/libcxx-9.0.0/include-lite/../include/cstddef", directory: "/home/lxy")
!289 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !290, file: !288, line: 58)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !287, line: 46, baseType: !15)
!291 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !292, file: !288, line: 63)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "max_align_t", file: !293, line: 24, baseType: !294)
!293 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/tps/lnx64/target/bin/LNa64bin/../../chessdir/clangdir/15.0.5/include/__stddef_max_align_t.h", directory: "/home/lxy")
!294 = !DICompositeType(tag: DW_TAG_structure_type, file: !293, line: 19, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS11max_align_t")
!295 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !296, file: !299, line: 161)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !297, line: 23, baseType: !298)
!297 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime/include/stdint.h", directory: "/home/lxy")
!298 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!299 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime_cxx/libs/libcxx-9.0.0/include-lite/../include/cstdint", directory: "/home/lxy")
!300 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !301, file: !299, line: 163)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !297, line: 24, baseType: !302)
!302 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!303 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !304, file: !299, line: 164)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !297, line: 25, baseType: !9)
!305 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !306, file: !299, line: 166)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !297, line: 26, baseType: !307)
!307 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!308 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !309, file: !299, line: 170)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !297, line: 28, baseType: !310)
!310 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!311 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !312, file: !299, line: 172)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !297, line: 29, baseType: !313)
!313 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!314 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !315, file: !299, line: 173)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !297, line: 30, baseType: !15)
!316 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !317, file: !299, line: 175)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !297, line: 31, baseType: !318)
!318 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!319 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !320, file: !299, line: 178)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !297, line: 34, baseType: !298)
!321 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !322, file: !299, line: 179)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !297, line: 35, baseType: !302)
!323 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !324, file: !299, line: 180)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !297, line: 36, baseType: !9)
!325 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !326, file: !299, line: 182)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !297, line: 37, baseType: !307)
!327 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !328, file: !299, line: 185)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !297, line: 39, baseType: !310)
!329 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !330, file: !299, line: 186)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !297, line: 40, baseType: !313)
!331 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !332, file: !299, line: 187)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !297, line: 41, baseType: !15)
!333 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !334, file: !299, line: 189)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !297, line: 42, baseType: !318)
!335 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !336, file: !299, line: 192)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !297, line: 45, baseType: !9)
!337 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !338, file: !299, line: 193)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !297, line: 46, baseType: !9)
!339 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !340, file: !299, line: 194)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !297, line: 47, baseType: !9)
!341 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !342, file: !299, line: 196)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !297, line: 48, baseType: !307)
!343 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !344, file: !299, line: 199)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !297, line: 50, baseType: !15)
!345 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !346, file: !299, line: 200)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !297, line: 51, baseType: !15)
!347 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !348, file: !299, line: 201)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !297, line: 52, baseType: !15)
!349 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !350, file: !299, line: 203)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !297, line: 53, baseType: !318)
!351 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !352, file: !299, line: 206)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !297, line: 56, baseType: !9)
!353 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !354, file: !299, line: 207)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !297, line: 57, baseType: !15)
!355 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !356, file: !299, line: 209)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !297, line: 60, baseType: !9)
!357 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !358, file: !299, line: 210)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !297, line: 61, baseType: !15)
!359 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !290, file: !360, line: 76)
!360 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime_cxx/libs/libcxx-9.0.0/include-lite/../include/cstring", directory: "/home/lxy")
!361 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !362, file: !360, line: 77)
!362 = !DISubprogram(name: "memcpy", scope: !363, file: !363, line: 27, type: !364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!363 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime/include/string.h", directory: "/home/lxy")
!364 = !DISubroutineType(types: !365)
!365 = !{!366, !367, !368, !290}
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!367 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !366)
!368 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !369)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 32)
!370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!371 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !372, file: !360, line: 78)
!372 = !DISubprogram(name: "memmove", scope: !363, file: !363, line: 28, type: !373, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!373 = !DISubroutineType(types: !374)
!374 = !{!366, !366, !369, !290}
!375 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !376, file: !360, line: 79)
!376 = !DISubprogram(name: "strcpy", scope: !363, file: !363, line: 29, type: !377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!377 = !DISubroutineType(types: !378)
!378 = !{!379, !381, !382}
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 32)
!380 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!381 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !379)
!382 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !383)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 32)
!384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !380)
!385 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !386, file: !360, line: 80)
!386 = !DISubprogram(name: "strncpy", scope: !363, file: !363, line: 30, type: !387, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!387 = !DISubroutineType(types: !388)
!388 = !{!379, !381, !382, !290}
!389 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !390, file: !360, line: 81)
!390 = !DISubprogram(name: "strcat", scope: !363, file: !363, line: 33, type: !377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!391 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !392, file: !360, line: 82)
!392 = !DISubprogram(name: "strncat", scope: !363, file: !363, line: 34, type: !387, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!393 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !394, file: !360, line: 83)
!394 = !DISubprogram(name: "memcmp", scope: !363, file: !363, line: 37, type: !395, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!395 = !DISubroutineType(types: !396)
!396 = !{!9, !369, !369, !290}
!397 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !398, file: !360, line: 84)
!398 = !DISubprogram(name: "strcmp", scope: !363, file: !363, line: 38, type: !399, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!399 = !DISubroutineType(types: !400)
!400 = !{!9, !383, !383}
!401 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !402, file: !360, line: 85)
!402 = !DISubprogram(name: "strncmp", scope: !363, file: !363, line: 40, type: !403, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!403 = !DISubroutineType(types: !404)
!404 = !{!9, !383, !383, !290}
!405 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !406, file: !360, line: 86)
!406 = !DISubprogram(name: "strcoll", scope: !363, file: !363, line: 39, type: !399, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!407 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !408, file: !360, line: 87)
!408 = !DISubprogram(name: "strxfrm", scope: !363, file: !363, line: 41, type: !409, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!409 = !DISubroutineType(types: !410)
!410 = !{!290, !381, !382, !290}
!411 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !412, file: !360, line: 88)
!412 = !DISubprogram(name: "memchr", linkageName: "_Z6memchrUa9enable_ifILb1EEPvij", scope: !413, file: !413, line: 106, type: !414, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!413 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime_cxx/libs/libcxx-9.0.0/include-lite/../include/string.h", directory: "/home/lxy")
!414 = !DISubroutineType(types: !415)
!415 = !{!366, !366, !9, !290}
!416 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !417, file: !360, line: 89)
!417 = !DISubprogram(name: "strchr", linkageName: "_Z6strchrUa9enable_ifILb1EEPci", scope: !413, file: !413, line: 85, type: !418, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!418 = !DISubroutineType(types: !419)
!419 = !{!379, !379, !9}
!420 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !421, file: !360, line: 90)
!421 = !DISubprogram(name: "strcspn", scope: !363, file: !363, line: 46, type: !422, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!422 = !DISubroutineType(types: !423)
!423 = !{!290, !383, !383}
!424 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !425, file: !360, line: 91)
!425 = !DISubprogram(name: "strpbrk", linkageName: "_Z7strpbrkUa9enable_ifILb1EEPcPKc", scope: !413, file: !413, line: 92, type: !426, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!426 = !DISubroutineType(types: !427)
!427 = !{!379, !379, !383}
!428 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !429, file: !360, line: 92)
!429 = !DISubprogram(name: "strrchr", linkageName: "_Z7strrchrUa9enable_ifILb1EEPci", scope: !413, file: !413, line: 99, type: !418, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!430 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !431, file: !360, line: 93)
!431 = !DISubprogram(name: "strspn", scope: !363, file: !363, line: 49, type: !422, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!432 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !433, file: !360, line: 94)
!433 = !DISubprogram(name: "strstr", linkageName: "_Z6strstrUa9enable_ifILb1EEPcPKc", scope: !413, file: !413, line: 113, type: !426, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!434 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !435, file: !360, line: 96)
!435 = !DISubprogram(name: "strtok", scope: !363, file: !363, line: 51, type: !377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!436 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !437, file: !360, line: 98)
!437 = !DISubprogram(name: "memset", scope: !363, file: !363, line: 54, type: !414, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!438 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !439, file: !360, line: 102)
!439 = !DISubprogram(name: "strlen", scope: !363, file: !363, line: 56, type: !440, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!440 = !DISubroutineType(types: !441)
!441 = !{!290, !383}
!442 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !443, file: !447, line: 351)
!443 = !DISubprogram(name: "acosf", scope: !444, file: !444, line: 91, type: !445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!444 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime/include/math.h", directory: "/home/lxy")
!445 = !DISubroutineType(types: !446)
!446 = !{!103, !103}
!447 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime_cxx/libs/libcxx-9.0.0/include-lite/../include/cmath", directory: "/home/lxy")
!448 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !449, file: !447, line: 353)
!449 = !DISubprogram(name: "asinf", scope: !444, file: !444, line: 93, type: !445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!450 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !451, file: !447, line: 355)
!451 = !DISubprogram(name: "atanf", scope: !444, file: !444, line: 99, type: !445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!452 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !453, file: !447, line: 357)
!453 = !DISubprogram(name: "atan2f", scope: !444, file: !444, line: 96, type: !454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!454 = !DISubroutineType(types: !455)
!455 = !{!103, !103, !103}
!456 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !457, file: !447, line: 359)
!457 = !DISubprogram(name: "ceilf", scope: !444, file: !444, line: 67, type: !445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!458 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !459, file: !447, line: 361)
!459 = !DISubprogram(name: "cosf", scope: !444, file: !444, line: 75, type: !445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!460 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !461, file: !447, line: 368)
!461 = !DISubprogram(name: "expf", scope: !444, file: !444, line: 79, type: !445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!462 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !463, file: !447, line: 371)
!463 = !DISubprogram(name: "fabsf", scope: !444, file: !444, line: 30, type: !445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!464 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !465, file: !447, line: 373)
!465 = !DISubprogram(name: "floorf", scope: !444, file: !444, line: 69, type: !445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!466 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !467, file: !447, line: 375)
!467 = !DISubprogram(name: "fmod", scope: !444, file: !444, line: 90, type: !468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!468 = !DISubroutineType(types: !469)
!469 = !{!470, !470, !470}
!470 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!471 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !472, file: !447, line: 381)
!472 = !DISubprogram(name: "frexpf", scope: !444, file: !444, line: 106, type: !473, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!473 = !DISubroutineType(types: !474)
!474 = !{!103, !103, !475}
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32)
!476 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !477, file: !447, line: 383)
!477 = !DISubprogram(name: "ldexpf", scope: !444, file: !444, line: 65, type: !478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!478 = !DISubroutineType(types: !479)
!479 = !{!103, !103, !9}
!480 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !481, file: !447, line: 386)
!481 = !DISubprogram(name: "logf", scope: !444, file: !444, line: 81, type: !445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!482 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !483, file: !447, line: 389)
!483 = !DISubprogram(name: "log10f", scope: !444, file: !444, line: 83, type: !445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!484 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !485, file: !447, line: 396)
!485 = !DISubprogram(name: "powf", scope: !444, file: !444, line: 88, type: !454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!486 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !487, file: !447, line: 399)
!487 = !DISubprogram(name: "sinf", scope: !444, file: !444, line: 76, type: !445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!488 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !489, file: !447, line: 406)
!489 = !DISubprogram(name: "sqrtf", scope: !444, file: !444, line: 86, type: !445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!490 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !491, file: !447, line: 427)
!491 = !DISubprogram(name: "copysignf", scope: !444, file: !444, line: 35, type: !454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!492 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !493, file: !447, line: 484)
!493 = !DISubprogram(name: "roundf", scope: !444, file: !444, line: 71, type: !445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!494 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !495, file: !447, line: 494)
!495 = !DISubprogram(name: "truncf", scope: !444, file: !444, line: 102, type: !445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!496 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !290, file: !497, line: 107)
!497 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime_cxx/libs/libcxx-9.0.0/include-lite/../include/cstdlib", directory: "/home/lxy")
!498 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !499, file: !497, line: 118)
!499 = !DISubprogram(name: "atoi", scope: !500, file: !500, line: 37, type: !501, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!500 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime/include/stdlib.h", directory: "/home/lxy")
!501 = !DISubroutineType(types: !502)
!502 = !{!9, !383}
!503 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !504, file: !497, line: 119)
!504 = !DISubprogram(name: "atol", scope: !500, file: !500, line: 42, type: !505, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!505 = !DISubroutineType(types: !506)
!506 = !{!507, !383}
!507 = !DIBasicType(name: "long", size: 32, encoding: DW_ATE_signed)
!508 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !509, file: !497, line: 128)
!509 = !DISubprogram(name: "strtol", scope: !500, file: !500, line: 29, type: !510, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!510 = !DISubroutineType(types: !511)
!511 = !{!507, !382, !512, !9}
!512 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !513)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 32)
!514 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !515, file: !497, line: 134)
!515 = !DISubprogram(name: "strtoul", scope: !500, file: !500, line: 33, type: !516, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!516 = !DISubroutineType(types: !517)
!517 = !{!518, !382, !512, !9}
!518 = !DIBasicType(name: "unsigned long", size: 32, encoding: DW_ATE_unsigned)
!519 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !520, file: !497, line: 140)
!520 = !DISubprogram(name: "rand", scope: !500, file: !500, line: 51, type: !521, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!521 = !DISubroutineType(types: !522)
!522 = !{!9}
!523 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !524, file: !497, line: 141)
!524 = !DISubprogram(name: "srand", scope: !500, file: !500, line: 52, type: !525, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!525 = !DISubroutineType(types: !526)
!526 = !{null, !15}
!527 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !528, file: !497, line: 142)
!528 = !DISubprogram(name: "calloc", scope: !529, file: !529, line: 32, type: !530, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!529 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime/include/malloc.h", directory: "/home/lxy")
!530 = !DISubroutineType(types: !531)
!531 = !{!366, !290, !290}
!532 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !533, file: !497, line: 143)
!533 = !DISubprogram(name: "free", scope: !529, file: !529, line: 30, type: !534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!534 = !DISubroutineType(types: !535)
!535 = !{null, !366}
!536 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !537, file: !497, line: 144)
!537 = !DISubprogram(name: "malloc", scope: !529, file: !529, line: 28, type: !538, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!538 = !DISubroutineType(types: !539)
!539 = !{!366, !290}
!540 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !541, file: !497, line: 145)
!541 = !DISubprogram(name: "realloc", scope: !529, file: !529, line: 34, type: !542, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!542 = !DISubroutineType(types: !543)
!543 = !{!366, !366, !290}
!544 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !545, file: !497, line: 146)
!545 = !DISubprogram(name: "abort", scope: !500, file: !500, line: 83, type: !546, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!546 = !DISubroutineType(types: !547)
!547 = !{null}
!548 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !549, file: !497, line: 147)
!549 = !DISubprogram(name: "atexit", scope: !500, file: !500, line: 90, type: !550, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!550 = !DISubroutineType(types: !551)
!551 = !{!9, !552}
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 32, dwarfAddressSpace: 65)
!553 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !554, file: !497, line: 148)
!554 = !DISubprogram(name: "exit", scope: !500, file: !500, line: 75, type: !555, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!555 = !DISubroutineType(types: !556)
!556 = !{null, !9}
!557 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !558, file: !497, line: 149)
!558 = !DISubprogram(name: "_Exit", scope: !500, file: !500, line: 88, type: !555, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!559 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !560, file: !497, line: 157)
!560 = !DISubprogram(name: "qsort", scope: !500, file: !500, line: 96, type: !561, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!561 = !DISubroutineType(types: !562)
!562 = !{null, !366, !290, !290, !563}
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 32, dwarfAddressSpace: 65)
!564 = !DISubroutineType(types: !565)
!565 = !{!9, !369, !369}
!566 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !567, file: !570, line: 115)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !568, line: 30, baseType: !569)
!568 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime/include/stdio.h", directory: "/home/lxy")
!569 = !DICompositeType(tag: DW_TAG_structure_type, name: "FILE", file: !568, line: 29, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS4FILE")
!570 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime_cxx/libs/libcxx-9.0.0/include-lite/../include/cstdio", directory: "/home/lxy")
!571 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !290, file: !570, line: 119)
!572 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !573, file: !570, line: 121)
!573 = !DISubprogram(name: "fclose", scope: !568, file: !568, line: 77, type: !574, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!574 = !DISubroutineType(types: !575)
!575 = !{!9, !576}
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 32)
!577 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !578, file: !570, line: 122)
!578 = !DISubprogram(name: "fflush", scope: !568, file: !568, line: 78, type: !574, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!579 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !580, file: !570, line: 127)
!580 = !DISubprogram(name: "fprintf", scope: !568, file: !568, line: 87, type: !581, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!581 = !DISubroutineType(types: !582)
!582 = !{!9, !576, !383, null}
!583 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !584, file: !570, line: 128)
!584 = !DISubprogram(name: "fscanf", scope: !568, file: !568, line: 92, type: !581, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!585 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !586, file: !570, line: 129)
!586 = !DISubprogram(name: "snprintf", scope: !568, file: !568, line: 96, type: !587, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!587 = !DISubroutineType(types: !588)
!588 = !{!9, !379, !290, !383, null}
!589 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !590, file: !570, line: 130)
!590 = !DISubprogram(name: "sprintf", scope: !568, file: !568, line: 95, type: !591, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!591 = !DISubroutineType(types: !592)
!592 = !{!9, !379, !383, null}
!593 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !594, file: !570, line: 131)
!594 = !DISubprogram(name: "sscanf", scope: !568, file: !568, line: 100, type: !595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!595 = !DISubroutineType(types: !596)
!596 = !{!9, !383, !383, null}
!597 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !598, file: !570, line: 132)
!598 = !DISubprogram(name: "vfprintf", scope: !568, file: !568, line: 85, type: !599, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!599 = !DISubroutineType(types: !600)
!600 = !{!9, !576, !383, !601}
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !602, line: 14, baseType: !603)
!602 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/tps/lnx64/target/bin/LNa64bin/../../chessdir/clangdir/15.0.5/include/stdarg.h", directory: "/home/lxy")
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !604, baseType: !379)
!604 = !DIFile(filename: "24_0/src/24_0.cc", directory: "/home/lxy/Projects/SVD/Jacobi_AIE/Work/aie")
!605 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !606, file: !570, line: 133)
!606 = !DISubprogram(name: "vfscanf", scope: !568, file: !568, line: 90, type: !599, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!607 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !608, file: !570, line: 134)
!608 = !DISubprogram(name: "vsscanf", scope: !568, file: !568, line: 101, type: !609, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!609 = !DISubroutineType(types: !610)
!610 = !{!9, !383, !383, !601}
!611 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !612, file: !570, line: 135)
!612 = !DISubprogram(name: "vsnprintf", scope: !568, file: !568, line: 98, type: !613, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!613 = !DISubroutineType(types: !614)
!614 = !{!9, !379, !290, !383, !601}
!615 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !616, file: !570, line: 136)
!616 = !DISubprogram(name: "vsprintf", scope: !568, file: !568, line: 97, type: !617, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!617 = !DISubroutineType(types: !618)
!618 = !{!9, !379, !383, !601}
!619 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !620, file: !570, line: 137)
!620 = !DISubprogram(name: "fgetc", scope: !568, file: !568, line: 112, type: !574, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!621 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !622, file: !570, line: 138)
!622 = !DISubprogram(name: "fgets", scope: !568, file: !568, line: 115, type: !623, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!623 = !DISubroutineType(types: !624)
!624 = !{!379, !379, !9, !576}
!625 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !626, file: !570, line: 139)
!626 = !DISubprogram(name: "fputc", scope: !568, file: !568, line: 106, type: !627, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!627 = !DISubroutineType(types: !628)
!628 = !{!9, !9, !576}
!629 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !630, file: !570, line: 140)
!630 = !DISubprogram(name: "fputs", scope: !568, file: !568, line: 109, type: !631, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!631 = !DISubroutineType(types: !632)
!632 = !{!9, !383, !576}
!633 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !634, file: !570, line: 141)
!634 = !DISubprogram(name: "getc", scope: !568, file: !568, line: 186, type: !574, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!635 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !636, file: !570, line: 142)
!636 = !DISubprogram(name: "putc", scope: !568, file: !568, line: 168, type: !627, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!637 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !638, file: !570, line: 143)
!638 = !DISubprogram(name: "ungetc", scope: !568, file: !568, line: 118, type: !627, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!639 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !640, file: !570, line: 144)
!640 = !DISubprogram(name: "fread", scope: !568, file: !568, line: 125, type: !641, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!641 = !DISubroutineType(types: !642)
!642 = !{!290, !643, !290, !290, !576}
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32, dwarfAddressSpace: 12)
!644 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !645, file: !570, line: 145)
!645 = !DISubprogram(name: "fwrite", scope: !568, file: !568, line: 123, type: !646, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!646 = !DISubroutineType(types: !647)
!647 = !{!290, !648, !290, !290, !576}
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 32, dwarfAddressSpace: 12)
!649 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !650, file: !570, line: 149)
!650 = !DISubprogram(name: "fseek", scope: !568, file: !568, line: 138, type: !651, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!651 = !DISubroutineType(types: !652)
!652 = !{!9, !576, !507, !9}
!653 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !654, file: !570, line: 153)
!654 = !DISubprogram(name: "ftell", scope: !568, file: !568, line: 140, type: !655, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!655 = !DISubroutineType(types: !656)
!656 = !{!507, !576}
!657 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !658, file: !570, line: 154)
!658 = !DISubprogram(name: "rewind", scope: !568, file: !568, line: 163, type: !659, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!659 = !DISubroutineType(types: !660)
!660 = !{null, !576}
!661 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !662, file: !570, line: 155)
!662 = !DISubprogram(name: "clearerr", scope: !568, file: !568, line: 147, type: !659, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!663 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !664, file: !570, line: 156)
!664 = !DISubprogram(name: "feof", scope: !568, file: !568, line: 145, type: !574, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!665 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !666, file: !570, line: 157)
!666 = !DISubprogram(name: "ferror", scope: !568, file: !568, line: 146, type: !574, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!667 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !668, file: !570, line: 158)
!668 = !DISubprogram(name: "perror", scope: !568, file: !568, line: 148, type: !669, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!669 = !DISubroutineType(types: !670)
!670 = !{null, !383}
!671 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !672, file: !570, line: 161)
!672 = !DISubprogram(name: "fopen", scope: !568, file: !568, line: 76, type: !673, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!673 = !DISubroutineType(types: !674)
!674 = !{!576, !383, !383}
!675 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !676, file: !570, line: 162)
!676 = !DISubprogram(name: "freopen", scope: !568, file: !568, line: 80, type: !677, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!677 = !DISubroutineType(types: !678)
!678 = !{!576, !383, !383, !576}
!679 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !680, file: !570, line: 163)
!680 = !DISubprogram(name: "remove", scope: !568, file: !568, line: 66, type: !501, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!681 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !682, file: !570, line: 164)
!682 = !DISubprogram(name: "rename", scope: !568, file: !568, line: 67, type: !399, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!683 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !684, file: !570, line: 165)
!684 = !DISubprogram(name: "tmpfile", scope: !568, file: !568, line: 68, type: !685, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!685 = !DISubroutineType(types: !686)
!686 = !{!576}
!687 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !688, file: !570, line: 172)
!688 = !DISubprogram(name: "getchar", scope: !568, file: !568, line: 191, type: !521, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!689 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !690, file: !570, line: 176)
!690 = !DISubprogram(name: "scanf", scope: !568, file: !568, line: 93, type: !691, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!691 = !DISubroutineType(types: !692)
!692 = !{!9, !383, null}
!693 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !694, file: !570, line: 177)
!694 = !DISubprogram(name: "vscanf", scope: !568, file: !568, line: 158, type: !695, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!695 = !DISubroutineType(types: !696)
!696 = !{!9, !383, !601}
!697 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !698, file: !570, line: 181)
!698 = !DISubprogram(name: "printf", scope: !568, file: !568, line: 88, type: !691, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!699 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !700, file: !570, line: 182)
!700 = !DISubprogram(name: "putchar", scope: !568, file: !568, line: 173, type: !701, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!701 = !DISubroutineType(types: !702)
!702 = !{!9, !9}
!703 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !704, file: !570, line: 183)
!704 = !DISubprogram(name: "puts", scope: !568, file: !568, line: 178, type: !501, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!705 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !284, entity: !706, file: !570, line: 184)
!706 = !DISubprogram(name: "vprintf", scope: !568, file: !568, line: 153, type: !695, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!707 = !DIImportedEntity(tag: DW_TAG_imported_declaration, name: "Utils", scope: !8, entity: !708, file: !709, line: 119)
!708 = !DINamespace(name: "utils", scope: !7)
!709 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/aie_api/adf/../aie.hpp", directory: "/home/lxy")
!710 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !5, file: !709, line: 7686)
!711 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !13, file: !709, line: 10079)
!712 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !21, file: !709, line: 10080)
!713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !714, size: 256, elements: !715)
!714 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !9)
!715 = !{!716}
!716 = !DISubrange(count: 8)
!717 = !{i32 7, !"Dwarf Version", i32 4}
!718 = !{i32 2, !"Debug Info Version", i32 3}
!719 = !{i32 1, !"wchar_size", i32 4}
!720 = !{i32 7, !"frame-pointer", i32 2}
!721 = !{!"clang version 15.0.5 (/u/sgasip/ipd/repositories/llvm_ipd 3a25925e0239306412dac02da5e4c8c51ae722e8)"}
!722 = distinct !DISubprogram(name: "sign", linkageName: "_Z4signd", scope: !723, file: !723, line: 6, type: !724, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !726)
!723 = !DIFile(filename: "aie/src/ProcessUnit/Orthogonalize.cpp", directory: "/home/lxy/Projects/SVD/Jacobi_AIE")
!724 = !DISubroutineType(types: !725)
!725 = !{!103, !470}
!726 = !{!727}
!727 = !DILocalVariable(name: "x", arg: 1, scope: !722, file: !723, line: 6, type: !470)
!728 = !{!729, !729, i64 0, i64 8}
!729 = !{!730, i64 8, !"double"}
!730 = !{!731, i64 1, !"omnipotent char"}
!731 = !{!"Simple C++ TBAA"}
!732 = !DILocation(line: 6, column: 19, scope: !722)
!733 = !DILocation(line: 7, column: 8, scope: !734)
!734 = distinct !DILexicalBlock(scope: !722, file: !723, line: 7, column: 8)
!735 = !DILocation(line: 7, column: 10, scope: !734)
!736 = !DILocation(line: 7, column: 8, scope: !722)
!737 = !DILocation(line: 7, column: 22, scope: !734)
!738 = !DILocation(line: 7, column: 15, scope: !734)
!739 = !DILocation(line: 8, column: 13, scope: !740)
!740 = distinct !DILexicalBlock(scope: !734, file: !723, line: 8, column: 13)
!741 = !DILocation(line: 8, column: 15, scope: !740)
!742 = !DILocation(line: 8, column: 13, scope: !734)
!743 = !DILocation(line: 8, column: 21, scope: !740)
!744 = !DILocation(line: 9, column: 10, scope: !740)
!745 = !DILocation(line: 10, column: 1, scope: !722)
!746 = distinct !DISubprogram(name: "main", scope: !604, file: !604, line: 20, type: !521, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !747)
!747 = !{!748, !749, !750, !751, !752, !755}
!748 = !DILocalVariable(name: "stream_0", scope: !746, file: !604, line: 22, type: !43)
!749 = !DILocalVariable(name: "stream_1", scope: !746, file: !604, line: 23, type: !43)
!750 = !DILocalVariable(name: "stream_2", scope: !746, file: !604, line: 24, type: !104)
!751 = !DILocalVariable(name: "stream_3", scope: !746, file: !604, line: 25, type: !104)
!752 = !DILocalVariable(name: "index", scope: !746, file: !604, line: 26, type: !753)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32", file: !754, line: 65, baseType: !304)
!754 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/aie_api/detail/../types.hpp", directory: "/home/lxy")
!755 = !DILocalVariable(name: "proc_24_0_bounds", scope: !756, file: !604, line: 30, type: !753)
!756 = distinct !DILexicalBlock(scope: !746, file: !604, line: 28, column: 3)
!757 = !{!758, !760, !761, !762}
!758 = distinct !{!758, !759, !"main: stream_0"}
!759 = distinct !{!759, !"main"}
!760 = distinct !{!760, !759, !"main: stream_1"}
!761 = distinct !{!761, !759, !"main: stream_2"}
!762 = distinct !{!762, !759, !"main: stream_3"}
!763 = !DILocation(line: 21, column: 18, scope: !746)
!764 = !{!765, !765, i64 0, i64 4}
!765 = !{!730, i64 4, !"int"}
!766 = !DILocation(line: 22, column: 3, scope: !746)
!767 = !DILocation(line: 22, column: 22, scope: !746)
!768 = !{!758}
!769 = !DILocation(line: 22, column: 33, scope: !746)
!770 = !DILocation(line: 23, column: 3, scope: !746)
!771 = !DILocation(line: 23, column: 22, scope: !746)
!772 = !{!760}
!773 = !DILocation(line: 23, column: 33, scope: !746)
!774 = !DILocation(line: 24, column: 3, scope: !746)
!775 = !DILocation(line: 24, column: 23, scope: !746)
!776 = !{!761}
!777 = !DILocation(line: 24, column: 34, scope: !746)
!778 = !DILocation(line: 25, column: 3, scope: !746)
!779 = !DILocation(line: 25, column: 23, scope: !746)
!780 = !{!762}
!781 = !DILocation(line: 25, column: 34, scope: !746)
!782 = !DILocation(line: 26, column: 3, scope: !746)
!783 = !DILocation(line: 26, column: 9, scope: !746)
!784 = !DILocation(line: 27, column: 3, scope: !746)
!785 = !DILocation(line: 30, column: 3, scope: !756)
!786 = !DILocation(line: 30, column: 9, scope: !756)
!787 = !DILocation(line: 30, column: 28, scope: !756)
!788 = !DILocation(line: 32, column: 3, scope: !756)
!789 = !DILocation(line: 32, column: 10, scope: !756)
!790 = !DILocation(line: 36, column: 5, scope: !791)
!791 = distinct !DILexicalBlock(scope: !756, file: !604, line: 33, column: 3)
!792 = !DILocation(line: 37, column: 17, scope: !791)
!793 = !DILocation(line: 37, column: 15, scope: !791)
!794 = !DILocation(line: 37, column: 11, scope: !791)
!795 = !DILocation(line: 39, column: 5, scope: !791)
!796 = !DILocation(line: 41, column: 8, scope: !797)
!797 = distinct !DILexicalBlock(scope: !791, file: !604, line: 41, column: 8)
!798 = !DILocation(line: 41, column: 25, scope: !797)
!799 = !DILocation(line: 41, column: 8, scope: !791)
!800 = !DILocation(line: 42, column: 7, scope: !797)
!801 = distinct !{!801, !788, !802, !803}
!802 = !DILocation(line: 43, column: 3, scope: !756)
!803 = !{!"llvm.loop.mustprogress"}
!804 = !DILocation(line: 44, column: 3, scope: !756)
!805 = !DILocation(line: 45, column: 7, scope: !806)
!806 = distinct !DILexicalBlock(scope: !756, file: !604, line: 45, column: 7)
!807 = !DILocation(line: 45, column: 22, scope: !806)
!808 = !DILocation(line: 45, column: 7, scope: !756)
!809 = !DILocation(line: 45, column: 27, scope: !806)
!810 = !DILocation(line: 46, column: 3, scope: !746)
!811 = distinct !{!811, !784, !810, !803}
!812 = !DILocation(line: 47, column: 3, scope: !746)
!813 = !DILocation(line: 48, column: 1, scope: !746)
!814 = distinct !DISubprogram(name: "input_stream", linkageName: "_ZN12input_streamIfEC2Ej", scope: !45, file: !46, line: 50, type: !98, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !97, retainedNodes: !815)
!815 = !{!816, !818}
!816 = !DILocalVariable(name: "this", arg: 1, scope: !814, type: !817, flags: DIFlagArtificial | DIFlagObjectPointer)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 32)
!818 = !DILocalVariable(name: "ch", arg: 2, scope: !814, file: !46, line: 50, type: !15)
!819 = !{!820, !820, i64 0, i64 4}
!820 = !{!730, i64 4, !"any pointer"}
!821 = !DILocation(line: 0, scope: !814)
!822 = !DILocation(line: 50, column: 41, scope: !814)
!823 = !{!730, !730, i64 0, i64 0}
!824 = distinct !DISubprogram(name: "output_stream", linkageName: "_ZN13output_streamIfEC2Ej", scope: !105, file: !46, line: 60, type: !136, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !135, retainedNodes: !825)
!825 = !{!826, !828}
!826 = !DILocalVariable(name: "this", arg: 1, scope: !824, type: !827, flags: DIFlagArtificial | DIFlagObjectPointer)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 32)
!828 = !DILocalVariable(name: "ch", arg: 2, scope: !824, file: !46, line: 60, type: !15)
!829 = !DILocation(line: 0, scope: !824)
!830 = !DILocation(line: 60, column: 42, scope: !824)
!831 = distinct !DISubprogram(name: "orthogonalize<4>", linkageName: "_Z13orthogonalizeILi4EEvP12input_streamIfES2_P13output_streamIfES5_", scope: !723, file: !723, line: 13, type: !832, scopeLine: 16, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !845, retainedNodes: !836)
!832 = !DISubroutineType(types: !833)
!833 = !{null, !834, !834, !835, !835}
!834 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !817)
!835 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !827)
!836 = !{!837, !838, !839, !840, !841, !843, !844}
!837 = !DILocalVariable(name: "Ap", arg: 1, scope: !831, file: !723, line: 13, type: !834)
!838 = !DILocalVariable(name: "Aq", arg: 2, scope: !831, file: !723, line: 14, type: !834)
!839 = !DILocalVariable(name: "Bp", arg: 3, scope: !831, file: !723, line: 15, type: !835)
!840 = !DILocalVariable(name: "Bq", arg: 4, scope: !831, file: !723, line: 16, type: !835)
!841 = !DILocalVariable(name: "VECSIZE", scope: !831, file: !723, line: 17, type: !842)
!842 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!843 = !DILocalVariable(name: "tmpAp", scope: !831, file: !723, line: 21, type: !143)
!844 = !DILocalVariable(name: "tmpAq", scope: !831, file: !723, line: 22, type: !143)
!845 = !{!846}
!846 = !DITemplateValueParameter(name: "ROW", type: !9, value: i32 4)
!847 = !{!848}
!848 = distinct !{!848, !849, !"_Z13orthogonalizeILi4EEvP12input_streamIfES2_P13output_streamIfES5_: Ap"}
!849 = distinct !{!849, !"_Z13orthogonalizeILi4EEvP12input_streamIfES2_P13output_streamIfES5_"}
!850 = !{!848, !851, !852, !853}
!851 = distinct !{!851, !849, !"_Z13orthogonalizeILi4EEvP12input_streamIfES2_P13output_streamIfES5_: Aq"}
!852 = distinct !{!852, !849, !"_Z13orthogonalizeILi4EEvP12input_streamIfES2_P13output_streamIfES5_: Bp"}
!853 = distinct !{!853, !849, !"_Z13orthogonalizeILi4EEvP12input_streamIfES2_P13output_streamIfES5_: Bq"}
!854 = !DILocation(line: 13, column: 53, scope: !831)
!855 = !{!851}
!856 = !DILocation(line: 14, column: 53, scope: !831)
!857 = !{!852}
!858 = !DILocation(line: 15, column: 54, scope: !831)
!859 = !{!853}
!860 = !DILocation(line: 16, column: 54, scope: !831)
!861 = !DILocation(line: 17, column: 5, scope: !831)
!862 = !DILocation(line: 17, column: 15, scope: !831)
!863 = !DILocation(line: 21, column: 5, scope: !831)
!864 = !DILocation(line: 21, column: 29, scope: !831)
!865 = !DILocation(line: 21, column: 53, scope: !831)
!866 = !DILocation(line: 21, column: 37, scope: !831)
!867 = !DILocation(line: 22, column: 5, scope: !831)
!868 = !DILocation(line: 22, column: 29, scope: !831)
!869 = !DILocation(line: 22, column: 53, scope: !831)
!870 = !DILocation(line: 22, column: 37, scope: !831)
!871 = !DILocation(line: 23, column: 15, scope: !831)
!872 = !DILocation(line: 23, column: 5, scope: !831)
!873 = !DILocation(line: 24, column: 15, scope: !831)
!874 = !DILocation(line: 24, column: 5, scope: !831)
!875 = !DILocation(line: 53, column: 1, scope: !831)
!876 = !{!877, !877, i64 0, i64 4}
!877 = !{!730, i64 4, !"uint2_t"}
!878 = distinct !DISubprogram(name: "readincr_v<4U, (aie_stream_resource_in)0, float>", linkageName: "_Z10readincr_vILj4EL22aie_stream_resource_in0EfEN3aie6vectorIT1_XT_EEEP12input_streamIS3_E", scope: !271, file: !271, line: 458, type: !879, scopeLine: 458, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !883, retainedNodes: !881)
!879 = !DISubroutineType(types: !880)
!880 = !{!143, !817}
!881 = !{!882}
!882 = !DILocalVariable(name: "w", arg: 1, scope: !878, file: !271, line: 458, type: !817)
!883 = !{!279, !884, !102}
!884 = !DITemplateValueParameter(name: "Resource", type: !31, value: i32 0)
!885 = !DILocation(line: 458, column: 48, scope: !878)
!886 = !DILocation(line: 458, column: 165, scope: !878)
!887 = !DILocation(line: 458, column: 104, scope: !878)
!888 = !DILocation(line: 458, column: 97, scope: !878)
!889 = distinct !DISubprogram(name: "writeincr<(aie_stream_resource_out)0, float, 4U>", linkageName: "_Z9writeincrIL23aie_stream_resource_out0EfLj4EEvP13output_streamIT0_ERKN3aie6vectorIS2_XT1_EEE", scope: !271, file: !271, line: 432, type: !890, scopeLine: 432, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !896, retainedNodes: !893)
!890 = !DISubroutineType(types: !891)
!891 = !{null, !827, !892}
!892 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !243, size: 32)
!893 = !{!894, !895}
!894 = !DILocalVariable(name: "w", arg: 1, scope: !889, file: !271, line: 432, type: !827)
!895 = !DILocalVariable(name: "value", arg: 2, scope: !889, file: !271, line: 432, type: !892)
!896 = !{!897, !102, !279}
!897 = !DITemplateValueParameter(name: "Resource", type: !37, value: i32 0)
!898 = !DILocation(line: 432, column: 48, scope: !889)
!899 = !DILocation(line: 432, column: 76, scope: !889)
!900 = !DILocation(line: 432, column: 167, scope: !889)
!901 = !DILocation(line: 432, column: 170, scope: !889)
!902 = !DILocation(line: 432, column: 104, scope: !889)
!903 = !{!904, !904, i64 0, i64 16}
!904 = !{!730, i64 16, !"_ZTSN3aie6vectorIfLj4EEE", !905, i64 0, i64 16}
!905 = !{!730, i64 16, !"_ZTSN3aie6detail11vector_baseIfLj4EEE", !906, i64 0, i64 16}
!906 = !{!730, i64 16, !"v16int8"}
!907 = !DILocation(line: 432, column: 185, scope: !889)
!908 = distinct !DISubprogram(name: "readincr", linkageName: "_ZN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfE", scope: !909, file: !271, line: 97, type: !913, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !912, retainedNodes: !922)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stream_in_helper<4U, float, (aie_stream_resource_in)0>", scope: !272, file: !271, line: 78, size: 8, flags: DIFlagTypePassByValue, elements: !910, templateParams: !921, identifier: "_ZTSN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EEE")
!910 = !{!911, !912, !917}
!911 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !909, baseType: !270, extraData: i32 0)
!912 = !DISubprogram(name: "readincr", linkageName: "_ZN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfE", scope: !909, file: !271, line: 97, type: !913, scopeLine: 97, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!913 = !DISubroutineType(types: !914)
!914 = !{!915, !817}
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !909, file: !271, line: 80, baseType: !916)
!916 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !270, file: !271, line: 62, baseType: !143)
!917 = !DISubprogram(name: "readincr", linkageName: "_ZN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfERb", scope: !909, file: !271, line: 123, type: !918, scopeLine: 123, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!918 = !DISubroutineType(types: !919)
!919 = !{!915, !817, !920}
!920 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !171, size: 32)
!921 = !{!279, !102, !884}
!922 = !{!923, !924}
!923 = !DILocalVariable(name: "w", arg: 1, scope: !908, file: !271, line: 97, type: !817)
!924 = !DILocalVariable(name: "ret", scope: !908, file: !271, line: 99, type: !915)
!925 = !DILocation(line: 97, column: 43, scope: !908)
!926 = !DILocation(line: 99, column: 14, scope: !908)
!927 = !DILocation(line: 110, column: 60, scope: !928)
!928 = distinct !DILexicalBlock(scope: !908, file: !271, line: 109, column: 9)
!929 = !DILocation(line: 110, column: 13, scope: !928)
!930 = !DILocation(line: 119, column: 9, scope: !908)
!931 = distinct !DISubprogram(name: "vector", linkageName: "_ZN3aie6vectorIfLj4EEC2Ev", scope: !143, file: !144, line: 173, type: !227, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !226, retainedNodes: !932)
!932 = !{!933}
!933 = !DILocalVariable(name: "this", arg: 1, scope: !931, type: !934, flags: DIFlagArtificial | DIFlagObjectPointer)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 32)
!935 = !DILocation(line: 0, scope: !931)
!936 = !DILocation(line: 175, column: 5, scope: !931)
!937 = !DILocation(line: 174, column: 9, scope: !931)
!938 = !DILocation(line: 176, column: 5, scope: !931)
!939 = distinct !DISubprogram(name: "unroll_times<1U, (lambda at /home/lxy/tools/Xilinx/Vitis/2023.2/aietools/include/aie_api/adf/stream.hpp:110:60)>", linkageName: "_ZN3aie6detail5utils12unroll_timesILj1EZNS0_3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEEUlT_E_EEvOT0_", scope: !708, file: !940, line: 580, type: !941, scopeLine: 581, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !952, retainedNodes: !950)
!940 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/aie_api/detail/aie1/../utils.hpp", directory: "/home/lxy")
!941 = !DISubroutineType(types: !942)
!942 = !{null, !943}
!943 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !944, size: 32)
!944 = distinct !DICompositeType(tag: DW_TAG_class_type, scope: !908, file: !271, line: 110, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !945, identifier: "_ZTSZN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEEUlT_E_")
!945 = !{!946, !948}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !944, file: !271, line: 113, baseType: !947, size: 32)
!947 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !817, size: 32)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "ret", scope: !944, file: !271, line: 115, baseType: !949, size: 32, offset: 32)
!949 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !915, size: 32)
!950 = !{!951}
!951 = !DILocalVariable(name: "fn", arg: 1, scope: !939, file: !940, line: 580, type: !943)
!952 = !{!953, !954}
!953 = !DITemplateValueParameter(name: "Times", type: !15, value: i32 1)
!954 = !DITemplateTypeParameter(name: "Fn", type: !944)
!955 = !DILocation(line: 580, column: 24, scope: !939)
!956 = !DILocation(line: 582, column: 53, scope: !939)
!957 = !DILocation(line: 582, column: 5, scope: !939)
!958 = !DILocation(line: 583, column: 1, scope: !939)
!959 = distinct !DISubprogram(name: "vector_base", linkageName: "_ZN3aie6detail11vector_baseIfLj4EEC2Ev", scope: !147, file: !148, line: 230, type: !177, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !176, retainedNodes: !960)
!960 = !{!961}
!961 = !DILocalVariable(name: "this", arg: 1, scope: !959, type: !962, flags: DIFlagArtificial | DIFlagObjectPointer)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 32)
!963 = !DILocation(line: 0, scope: !959)
!964 = !DILocation(line: 231, column: 9, scope: !959)
!965 = !DILocation(line: 231, column: 14, scope: !959)
!966 = !DILocation(line: 233, column: 5, scope: !959)
!967 = distinct !DISubprogram(name: "undef", linkageName: "_ZN3aie6detail14vector_storageIfLj4EE5undefEv", scope: !154, file: !152, line: 97, type: !157, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !156, retainedNodes: !193)
!968 = !DILocation(line: 97, column: 118, scope: !967)
!969 = !DILocation(line: 97, column: 111, scope: !967)
!970 = distinct !DISubprogram(name: "unroll_for<unsigned int, 0U, 1U, 1U, (lambda at /home/lxy/tools/Xilinx/Vitis/2023.2/aietools/include/aie_api/adf/stream.hpp:110:60)>", linkageName: "_ZN3aie6detail5utils10unroll_forIjLj0ELj1ELj1EZNS0_3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEEUlT_E_EEvOT3_", scope: !708, file: !940, line: 569, type: !941, scopeLine: 570, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !973, retainedNodes: !971)
!971 = !{!972}
!972 = !DILocalVariable(name: "fn", arg: 1, scope: !970, file: !940, line: 569, type: !943)
!973 = !{!974, !975, !976, !977, !954}
!974 = !DITemplateTypeParameter(name: "T", type: !15)
!975 = !DITemplateValueParameter(name: "Start", type: !15, value: i32 0)
!976 = !DITemplateValueParameter(name: "End", type: !15, value: i32 1)
!977 = !DITemplateValueParameter(name: "Step", type: !15, value: i32 1)
!978 = !DILocation(line: 569, column: 22, scope: !970)
!979 = !DILocation(line: 571, column: 77, scope: !970)
!980 = !DILocation(line: 571, column: 5, scope: !970)
!981 = !DILocation(line: 572, column: 1, scope: !970)
!982 = distinct !DISubprogram(name: "execute<(lambda at /home/lxy/tools/Xilinx/Vitis/2023.2/aietools/include/aie_api/adf/stream.hpp:110:60)>", linkageName: "_ZN3aie6detail5utils17unroll_for_helperIjLj0ELj1ELj0ELj1EE7executeIZNS0_3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEEUlT_E_EEvOSC_", scope: !983, file: !940, line: 539, type: !941, scopeLine: 540, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !987, declaration: !986, retainedNodes: !988)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unroll_for_helper<unsigned int, 0U, 1U, 0U, 1U>", scope: !708, file: !940, line: 533, size: 8, flags: DIFlagTypePassByValue, elements: !193, templateParams: !984, identifier: "_ZTSN3aie6detail5utils17unroll_for_helperIjLj0ELj1ELj0ELj1EEE")
!984 = !{!974, !975, !976, !985, !977}
!985 = !DITemplateValueParameter(name: "It", type: !15, value: i32 0)
!986 = !DISubprogram(name: "execute<(lambda at /home/lxy/tools/Xilinx/Vitis/2023.2/aietools/include/aie_api/adf/stream.hpp:110:60)>", linkageName: "_ZN3aie6detail5utils17unroll_for_helperIjLj0ELj1ELj0ELj1EE7executeIZNS0_3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEEUlT_E_EEvOSC_", scope: !983, file: !940, line: 539, type: !941, scopeLine: 539, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized, templateParams: !987)
!987 = !{!954}
!988 = !{!989, !990, !1004}
!989 = !DILocalVariable(name: "fn", arg: 1, scope: !982, file: !940, line: 539, type: !943)
!990 = !DILocalVariable(name: "ctx", scope: !991, file: !940, line: 542, type: !993)
!991 = distinct !DILexicalBlock(scope: !992, file: !940, line: 541, column: 73)
!992 = distinct !DILexicalBlock(scope: !982, file: !940, line: 541, column: 23)
!993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !994)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unroll_context<unsigned int, 0U, 1U, 0U>", scope: !708, file: !940, line: 509, size: 8, flags: DIFlagTypePassByValue, elements: !995, templateParams: !1003, identifier: "_ZTSN3aie6detail5utils14unroll_contextIjLj0ELj1ELj0EEE")
!995 = !{!996, !1000, !1001, !1002}
!996 = !DISubprogram(name: "operator unsigned int", linkageName: "_ZNK3aie6detail5utils14unroll_contextIjLj0ELj1ELj0EEcvjEv", scope: !994, file: !940, line: 511, type: !997, scopeLine: 511, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!997 = !DISubroutineType(types: !998)
!998 = !{!15, !999}
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!1000 = !DISubprogram(name: "min", linkageName: "_ZNK3aie6detail5utils14unroll_contextIjLj0ELj1ELj0EE3minEv", scope: !994, file: !940, line: 516, type: !997, scopeLine: 516, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1001 = !DISubprogram(name: "max", linkageName: "_ZNK3aie6detail5utils14unroll_contextIjLj0ELj1ELj0EE3maxEv", scope: !994, file: !940, line: 521, type: !997, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1002 = !DISubprogram(name: "current", linkageName: "_ZNK3aie6detail5utils14unroll_contextIjLj0ELj1ELj0EE7currentEv", scope: !994, file: !940, line: 526, type: !997, scopeLine: 526, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1003 = !{!974, !975, !976, !985}
!1004 = !DILocalVariable(name: "next_it", scope: !991, file: !940, line: 552, type: !275)
!1005 = !DILocation(line: 539, column: 31, scope: !982)
!1006 = !DILocation(line: 542, column: 13, scope: !991)
!1007 = !DILocation(line: 542, column: 57, scope: !991)
!1008 = !DILocation(line: 548, column: 17, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !991, file: !940, line: 547, column: 27)
!1010 = !DILocation(line: 552, column: 13, scope: !991)
!1011 = !DILocation(line: 552, column: 25, scope: !991)
!1012 = !DILocation(line: 558, column: 87, scope: !991)
!1013 = !DILocation(line: 558, column: 13, scope: !991)
!1014 = !DILocation(line: 559, column: 9, scope: !992)
!1015 = !DILocation(line: 560, column: 5, scope: !982)
!1016 = distinct !DISubprogram(name: "operator()<aie::detail::utils::unroll_context<unsigned int, 0U, 1U, 0U> >", linkageName: "_ZZN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEENKUlT_E_clINS0_5utils14unroll_contextIjLj0ELj1ELj0EEEEEDaS8_", scope: !944, file: !271, line: 110, type: !1017, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !1022, declaration: !1021, retainedNodes: !1024)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{null, !1019, !994}
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!1020 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !944)
!1021 = !DISubprogram(name: "operator()<aie::detail::utils::unroll_context<unsigned int, 0U, 1U, 0U> >", scope: !944, file: !271, line: 110, type: !1017, scopeLine: 110, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !1022)
!1022 = !{!1023}
!1023 = !DITemplateTypeParameter(name: "idx:auto", type: !994)
!1024 = !{!1025, !1027, !1028}
!1025 = !DILocalVariable(name: "this", arg: 1, scope: !1016, type: !1026, flags: DIFlagArtificial | DIFlagObjectPointer)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 32)
!1027 = !DILocalVariable(name: "idx", arg: 2, scope: !1016, file: !271, line: 110, type: !994)
!1028 = !DILocalVariable(name: "tmp", scope: !1016, file: !271, line: 111, type: !143)
!1029 = !DILocation(line: 0, scope: !1016)
!1030 = !DILocation(line: 110, column: 69, scope: !1016)
!1031 = !DILocation(line: 111, column: 17, scope: !1016)
!1032 = !DILocation(line: 111, column: 64, scope: !1016)
!1033 = !DILocation(line: 113, column: 23, scope: !1016)
!1034 = !DILocation(line: 113, column: 32, scope: !1016)
!1035 = !{!1036, !820, i64 0, i64 4}
!1036 = !{!730, i64 8, !"_ZTSZN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEEUlT_E_", !820, i64 0, i64 4, !820, i64 4, i64 4}
!1037 = !{!906, !906, i64 0, i64 16}
!1038 = !DILocation(line: 113, column: 17, scope: !1016)
!1039 = !DILocation(line: 115, column: 17, scope: !1016)
!1040 = !{!1036, !820, i64 4, i64 4}
!1041 = !DILocation(line: 115, column: 28, scope: !1016)
!1042 = !DILocation(line: 115, column: 21, scope: !1016)
!1043 = !DILocation(line: 116, column: 13, scope: !1016)
!1044 = distinct !DISubprogram(name: "execute<(lambda at /home/lxy/tools/Xilinx/Vitis/2023.2/aietools/include/aie_api/adf/stream.hpp:110:60)>", linkageName: "_ZN3aie6detail5utils17unroll_for_helperIjLj0ELj1ELj1ELj1EE7executeIZNS0_3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEEUlT_E_EEvOSC_", scope: !1045, file: !940, line: 539, type: !941, scopeLine: 540, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !987, declaration: !1048, retainedNodes: !1049)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unroll_for_helper<unsigned int, 0U, 1U, 1U, 1U>", scope: !708, file: !940, line: 533, size: 8, flags: DIFlagTypePassByValue, elements: !193, templateParams: !1046, identifier: "_ZTSN3aie6detail5utils17unroll_for_helperIjLj0ELj1ELj1ELj1EEE")
!1046 = !{!974, !975, !976, !1047, !977}
!1047 = !DITemplateValueParameter(name: "It", type: !15, value: i32 1)
!1048 = !DISubprogram(name: "execute<(lambda at /home/lxy/tools/Xilinx/Vitis/2023.2/aietools/include/aie_api/adf/stream.hpp:110:60)>", linkageName: "_ZN3aie6detail5utils17unroll_for_helperIjLj0ELj1ELj1ELj1EE7executeIZNS0_3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEEUlT_E_EEvOSC_", scope: !1045, file: !940, line: 539, type: !941, scopeLine: 539, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized, templateParams: !987)
!1049 = !{!1050}
!1050 = !DILocalVariable(name: "fn", arg: 1, scope: !1044, file: !940, line: 539, type: !943)
!1051 = !DILocation(line: 539, column: 31, scope: !1044)
!1052 = !DILocation(line: 560, column: 5, scope: !1044)
!1053 = distinct !DISubprogram(name: "get_op", linkageName: "_ZN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE6get_opEv", scope: !909, file: !271, line: 82, type: !1054, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !1057, retainedNodes: !193)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!1056}
!1056 = distinct !DICompositeType(tag: DW_TAG_class_type, file: !271, line: 85, size: 8, flags: DIFlagTypePassByValue, elements: !193, identifier: "_ZTSZN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE6get_opEvEUlDpOT_E_")
!1057 = !DISubprogram(name: "get_op", linkageName: "_ZN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE6get_opEv", scope: !909, file: !271, line: 82, type: !1054, scopeLine: 82, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1058 = !DILocation(line: 85, column: 67, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1060, file: !271, line: 85, column: 28)
!1060 = distinct !DILexicalBlock(scope: !1053, file: !271, line: 84, column: 28)
!1061 = distinct !DISubprogram(name: "operator()<input_stream<float> *&>", linkageName: "_ZZN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE6get_opEvENKUlDpOT_E_clIJRP12input_streamIfEEEEDaS7_", scope: !1056, file: !271, line: 85, type: !1062, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !1067, declaration: !1066, retainedNodes: !1071)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!161, !1064, !947}
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!1065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1056)
!1066 = !DISubprogram(name: "operator()<input_stream<float> *&>", scope: !1056, file: !271, line: 85, type: !1062, scopeLine: 85, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !1067)
!1067 = !{!1068}
!1068 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "args:auto", value: !1069)
!1069 = !{!1070}
!1070 = !DITemplateTypeParameter(type: !947)
!1071 = !{!1072, !1074}
!1072 = !DILocalVariable(name: "this", arg: 1, scope: !1061, type: !1073, flags: DIFlagArtificial | DIFlagObjectPointer)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 32)
!1074 = !DILocalVariable(name: "args", arg: 2, scope: !1061, file: !271, line: 85, type: !947)
!1075 = !DILocation(line: 0, scope: !1061)
!1076 = !DILocation(line: 85, column: 87, scope: !1061)
!1077 = !DILocation(line: 85, column: 170, scope: !1061)
!1078 = !DILocation(line: 85, column: 141, scope: !1061)
!1079 = !DILocation(line: 85, column: 115, scope: !1061)
!1080 = !DILocation(line: 85, column: 108, scope: !1061)
!1081 = distinct !DISubprogram(name: "vector", linkageName: "_ZN3aie6vectorIfLj4EEC2E7v4float", scope: !143, file: !144, line: 184, type: !230, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !229, retainedNodes: !1082)
!1082 = !{!1083, !1084}
!1083 = !DILocalVariable(name: "this", arg: 1, scope: !1081, type: !934, flags: DIFlagArtificial | DIFlagObjectPointer)
!1084 = !DILocalVariable(name: "v", arg: 2, scope: !1081, file: !144, line: 184, type: !232)
!1085 = !DILocation(line: 0, scope: !1081)
!1086 = !DILocation(line: 184, column: 22, scope: !1081)
!1087 = !DILocation(line: 186, column: 5, scope: !1081)
!1088 = !DILocation(line: 185, column: 9, scope: !1081)
!1089 = !DILocation(line: 188, column: 5, scope: !1081)
!1090 = distinct !DISubprogram(name: "insert<4U>", linkageName: "_ZN3aie6vectorIfLj4EE6insertILj4EEERS1_jRKNS0_IfXT_EEE", scope: !143, file: !144, line: 393, type: !1091, scopeLine: 394, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !1094, declaration: !1093, retainedNodes: !1096)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!248, !214, !15, !892}
!1093 = !DISubprogram(name: "insert<4U>", linkageName: "_ZN3aie6vectorIfLj4EE6insertILj4EEERS1_jRKNS0_IfXT_EEE", scope: !143, file: !144, line: 393, type: !1091, scopeLine: 393, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !1094)
!1094 = !{!1095}
!1095 = !DITemplateValueParameter(name: "ElemsIn", type: !15, value: i32 4)
!1096 = !{!1097, !1098, !1099}
!1097 = !DILocalVariable(name: "this", arg: 1, scope: !1090, type: !934, flags: DIFlagArtificial | DIFlagObjectPointer)
!1098 = !DILocalVariable(name: "idx", arg: 2, scope: !1090, file: !144, line: 393, type: !15)
!1099 = !DILocalVariable(name: "v", arg: 3, scope: !1090, file: !144, line: 393, type: !892)
!1100 = !DILocation(line: 0, scope: !1090)
!1101 = !DILocation(line: 393, column: 29, scope: !1090)
!1102 = !DILocation(line: 393, column: 60, scope: !1090)
!1103 = !DILocation(line: 395, column: 29, scope: !1090)
!1104 = !DILocation(line: 395, column: 45, scope: !1090)
!1105 = !DILocation(line: 395, column: 50, scope: !1090)
!1106 = !DILocation(line: 396, column: 9, scope: !1090)
!1107 = distinct !DISubprogram(name: "operator unsigned int", linkageName: "_ZNK3aie6detail5utils14unroll_contextIjLj0ELj1ELj0EEcvjEv", scope: !994, file: !940, line: 511, type: !997, scopeLine: 512, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !996, retainedNodes: !1108)
!1108 = !{!1109}
!1109 = !DILocalVariable(name: "this", arg: 1, scope: !1107, type: !1110, flags: DIFlagArtificial | DIFlagObjectPointer)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 32)
!1111 = !DILocation(line: 0, scope: !1107)
!1112 = !DILocation(line: 513, column: 16, scope: !1107)
!1113 = !DILocation(line: 513, column: 9, scope: !1107)
!1114 = distinct !DISubprogram(name: "readincr_v4<(aie_stream_resource_in)0>", linkageName: "_ZL11readincr_v4IL22aie_stream_resource_in0EE7v4floatP12input_streamIfE", scope: !1115, file: !1115, line: 340, type: !1116, scopeLine: 340, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !1121, retainedNodes: !1119)
!1115 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/adf/stream/me/accessors.h", directory: "/home/lxy")
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!161, !1118}
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 32)
!1119 = !{!1120}
!1120 = !DILocalVariable(name: "str", arg: 1, scope: !1114, file: !1115, line: 340, type: !1118)
!1121 = !{!884}
!1122 = !DILocation(line: 340, column: 1, scope: !1114)
!1123 = distinct !DISubprogram(name: "readincr_v8<(aie_stream_resource_in)0>", linkageName: "_ZL11readincr_v8IL22aie_stream_resource_in0EE7v8int16P12input_streamIsE", scope: !1115, file: !1115, line: 309, type: !1124, scopeLine: 310, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !1129, retainedNodes: !1127)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!1126, !139}
!1126 = !DIDerivedType(tag: DW_TAG_typedef, name: "v8int16", file: !39, line: 496, baseType: !269)
!1127 = !{!1128}
!1128 = !DILocalVariable(name: "ss", arg: 1, scope: !1123, file: !1115, line: 309, type: !139)
!1129 = !{!1130}
!1130 = !DITemplateValueParameter(name: "resource", type: !31, value: i32 0)
!1131 = !DILocation(line: 309, column: 34, scope: !1123)
!1132 = !DILocation(line: 312, column: 53, scope: !1123)
!1133 = !DILocation(line: 312, column: 12, scope: !1123)
!1134 = !DILocation(line: 312, column: 5, scope: !1123)
!1135 = distinct !DISubprogram(name: "v4float", linkageName: "_ZN7v4floatC2E17chessllvmInternal7v16int8", scope: !1136, file: !39, line: 2705, type: !1145, scopeLine: 2705, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !1144, retainedNodes: !1147)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4float", file: !39, line: 2702, size: 128, flags: DIFlagTypePassByValue, elements: !1137, identifier: "_ZTS7v4float")
!1137 = !{!1138, !1140, !1144}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "mw", scope: !1136, file: !39, line: 2708, baseType: !1139, size: 128)
!1139 = !DIDerivedType(tag: DW_TAG_typedef, name: "v16int8", file: !39, line: 494, baseType: !268)
!1140 = !DISubprogram(name: "v4float", scope: !1136, file: !39, line: 2704, type: !1141, scopeLine: 2704, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{null, !1143}
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!1144 = !DISubprogram(name: "v4float", scope: !1136, file: !39, line: 2705, type: !1145, scopeLine: 2705, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{null, !1143, !38, !1139}
!1147 = !{!1148, !1150, !1151}
!1148 = !DILocalVariable(name: "this", arg: 1, scope: !1135, type: !1149, flags: DIFlagArtificial | DIFlagObjectPointer)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 32)
!1150 = !DILocalVariable(arg: 2, scope: !1135, file: !39, line: 2705, type: !38)
!1151 = !DILocalVariable(name: "aw", arg: 3, scope: !1135, file: !39, line: 2705, type: !1139)
!1152 = !DILocation(line: 0, scope: !1135)
!1153 = !{!1154, !1154, i64 0, i64 4}
!1154 = !{!730, i64 4, !"_ZTS17chessllvmInternal"}
!1155 = !DILocation(line: 2705, column: 42, scope: !1135)
!1156 = !DILocation(line: 2705, column: 52, scope: !1135)
!1157 = !DILocation(line: 2705, column: 58, scope: !1135)
!1158 = !DILocation(line: 2705, column: 61, scope: !1135)
!1159 = !DILocation(line: 2705, column: 66, scope: !1135)
!1160 = distinct !DISubprogram(name: "aie_stream_get_wss<short>", linkageName: "_ZN12stream_utilsL18aie_stream_get_wssIsEE7v8int16P12input_streamIsE", scope: !1162, file: !1161, line: 186, type: !1124, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !1165, retainedNodes: !1163)
!1161 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/adf/stream/me/stream_utils.h", directory: "/home/lxy")
!1162 = !DINamespace(name: "stream_utils", scope: null)
!1163 = !{!1164}
!1164 = !DILocalVariable(name: "ss", arg: 1, scope: !1160, file: !1161, line: 186, type: !139)
!1165 = !{!1166}
!1166 = !DITemplateTypeParameter(name: "T", type: !302)
!1167 = !DILocation(line: 186, column: 42, scope: !1160)
!1168 = !DILocation(line: 193, column: 24, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1170, file: !1161, line: 190, column: 24)
!1170 = distinct !DILexicalBlock(scope: !1160, file: !1161, line: 188, column: 19)
!1171 = !DILocation(line: 193, column: 28, scope: !1169)
!1172 = !DILocation(line: 193, column: 16, scope: !1169)
!1173 = !DILocation(line: 193, column: 9, scope: !1169)
!1174 = !{!1175, !1175, i64 0, i64 4}
!1175 = !{!730, i64 4, !"uint1_t"}
!1176 = !{i32 1}
!1177 = distinct !DISubprogram(name: "v8int16", linkageName: "_ZN7v8int16C2E17chessllvmInternal7v16int8", scope: !1178, file: !39, line: 1808, type: !1196, scopeLine: 1808, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !1195, retainedNodes: !1198)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v8int16", file: !39, line: 1800, size: 128, flags: DIFlagTypePassByValue, elements: !1179, identifier: "_ZTS7v8int16")
!1179 = !{!1180, !1181, !1185, !1190, !1191, !1192, !1195}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "mw", scope: !1178, file: !39, line: 1811, baseType: !1139, size: 128)
!1181 = !DISubprogram(name: "operator+=", linkageName: "_ZN7v8int16pLES_", scope: !1178, file: !39, line: 1803, type: !1182, scopeLine: 1803, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!1178, !1184, !1178}
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!1185 = !DISubprogram(name: "operator+=", linkageName: "_ZNV7v8int16pLES_", scope: !1178, file: !39, line: 1804, type: !1186, scopeLine: 1804, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!1178, !1188, !1178}
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!1189 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1178)
!1190 = !DISubprogram(name: "operator-=", linkageName: "_ZN7v8int16mIES_", scope: !1178, file: !39, line: 1805, type: !1182, scopeLine: 1805, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1191 = !DISubprogram(name: "operator-=", linkageName: "_ZNV7v8int16mIES_", scope: !1178, file: !39, line: 1806, type: !1186, scopeLine: 1806, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1192 = !DISubprogram(name: "v8int16", scope: !1178, file: !39, line: 1807, type: !1193, scopeLine: 1807, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{null, !1184}
!1195 = !DISubprogram(name: "v8int16", scope: !1178, file: !39, line: 1808, type: !1196, scopeLine: 1808, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{null, !1184, !38, !1139}
!1198 = !{!1199, !1201, !1202}
!1199 = !DILocalVariable(name: "this", arg: 1, scope: !1177, type: !1200, flags: DIFlagArtificial | DIFlagObjectPointer)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 32)
!1201 = !DILocalVariable(arg: 2, scope: !1177, file: !39, line: 1808, type: !38)
!1202 = !DILocalVariable(name: "aw", arg: 3, scope: !1177, file: !39, line: 1808, type: !1139)
!1203 = !DILocation(line: 0, scope: !1177)
!1204 = !DILocation(line: 1808, column: 42, scope: !1177)
!1205 = !DILocation(line: 1808, column: 52, scope: !1177)
!1206 = !DILocation(line: 1808, column: 58, scope: !1177)
!1207 = !DILocation(line: 1808, column: 61, scope: !1177)
!1208 = !DILocation(line: 1808, column: 66, scope: !1177)
!1209 = !{!1210, !765, i64 16, i64 4}
!1210 = !{!730, i64 20, !"_ZTSN12me_primitive65chessout_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sintE", !906, i64 0, i64 16, !765, i64 16, i64 4}
!1211 = !{!1212, !765, i64 16, i64 4}
!1212 = !{!730, i64 20, !"_ZTSN12me_primitive65chessout_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sintE", !906, i64 0, i64 16, !765, i64 16, i64 4}
!1213 = !{!1214, !765, i64 16, i64 4}
!1214 = !{!730, i64 20, !"_ZTSN12me_primitive62chessout_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sintE", !906, i64 0, i64 16, !765, i64 16, i64 4}
!1215 = distinct !DISubprogram(name: "vector_base", linkageName: "_ZN3aie6detail11vector_baseIfLj4EEC2E7v4float", scope: !147, file: !148, line: 236, type: !181, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !180, retainedNodes: !1216)
!1216 = !{!1217, !1218}
!1217 = !DILocalVariable(name: "this", arg: 1, scope: !1215, type: !962, flags: DIFlagArtificial | DIFlagObjectPointer)
!1218 = !DILocalVariable(name: "v", arg: 2, scope: !1215, file: !148, line: 236, type: !183)
!1219 = !DILocation(line: 0, scope: !1215)
!1220 = !DILocation(line: 236, column: 27, scope: !1215)
!1221 = !DILocation(line: 237, column: 9, scope: !1215)
!1222 = !DILocation(line: 237, column: 14, scope: !1215)
!1223 = !DILocation(line: 240, column: 5, scope: !1215)
!1224 = distinct !DISubprogram(name: "insert<4U>", linkageName: "_ZN3aie6detail11vector_baseIfLj4EE6insertILj4EEERS2_jRKNS1_IfXT_EEE", scope: !147, file: !148, line: 585, type: !1225, scopeLine: 586, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !1094, declaration: !1228, retainedNodes: !1229)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!203, !179, !15, !1227}
!1227 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !198, size: 32)
!1228 = !DISubprogram(name: "insert<4U>", linkageName: "_ZN3aie6detail11vector_baseIfLj4EE6insertILj4EEERS2_jRKNS1_IfXT_EEE", scope: !147, file: !148, line: 585, type: !1225, scopeLine: 585, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !1094)
!1229 = !{!1230, !1231, !1232, !1233}
!1230 = !DILocalVariable(name: "this", arg: 1, scope: !1224, type: !962, flags: DIFlagArtificial | DIFlagObjectPointer)
!1231 = !DILocalVariable(name: "idx", arg: 2, scope: !1224, file: !148, line: 585, type: !15)
!1232 = !DILocalVariable(name: "v", arg: 3, scope: !1224, file: !148, line: 585, type: !1227)
!1233 = !DILocalVariable(name: "input_bits", scope: !1224, file: !148, line: 589, type: !275)
!1234 = !DILocation(line: 0, scope: !1224)
!1235 = !DILocation(line: 585, column: 34, scope: !1224)
!1236 = !DILocation(line: 585, column: 70, scope: !1224)
!1237 = !DILocation(line: 587, column: 9, scope: !1224)
!1238 = !DILocation(line: 587, column: 9, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1240, file: !148, line: 587, column: 9)
!1240 = distinct !DILexicalBlock(scope: !1224, file: !148, line: 587, column: 9)
!1241 = !DILocation(line: 587, column: 9, scope: !1240)
!1242 = !DILocation(line: 587, column: 9, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1239, file: !148, line: 587, column: 9)
!1244 = !DILocation(line: 587, column: 9, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1246, file: !148, line: 587, column: 9)
!1246 = distinct !DILexicalBlock(scope: !1243, file: !148, line: 587, column: 9)
!1247 = !DILocation(line: 587, column: 9, scope: !1246)
!1248 = !{!"idx needs to be a valid subvector index"}
!1249 = !DILocation(line: 587, column: 9, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1239, file: !148, line: 587, column: 9)
!1251 = !DILocation(line: 589, column: 9, scope: !1224)
!1252 = !DILocation(line: 589, column: 28, scope: !1224)
!1253 = !DILocation(line: 595, column: 13, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1255, file: !148, line: 594, column: 45)
!1255 = distinct !DILexicalBlock(scope: !1224, file: !148, line: 594, column: 23)
!1256 = !DILocation(line: 595, column: 20, scope: !1254)
!1257 = !DILocation(line: 595, column: 22, scope: !1254)
!1258 = !DILocation(line: 690, column: 5, scope: !1224)
!1259 = !DILocation(line: 689, column: 9, scope: !1224)
!1260 = distinct !DISubprogram(name: "current", linkageName: "_ZNK3aie6detail5utils14unroll_contextIjLj0ELj1ELj0EE7currentEv", scope: !994, file: !940, line: 526, type: !997, scopeLine: 527, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !1002, retainedNodes: !1261)
!1261 = !{!1262}
!1262 = !DILocalVariable(name: "this", arg: 1, scope: !1260, type: !1110, flags: DIFlagArtificial | DIFlagObjectPointer)
!1263 = !DILocation(line: 0, scope: !1260)
!1264 = !DILocation(line: 528, column: 9, scope: !1260)
!1265 = distinct !DISubprogram(name: "writeincr", linkageName: "_ZN3aie6detail3adf17stream_out_helperILj4EfL23aie_stream_resource_out0EE9writeincrEP13output_streamIfENS_6vectorIfLj4EEE", scope: !1266, file: !271, line: 148, type: !1270, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !1269, retainedNodes: !1277)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stream_out_helper<4U, float, (aie_stream_resource_out)0>", scope: !272, file: !271, line: 143, size: 8, flags: DIFlagTypePassByValue, elements: !1267, templateParams: !1276, identifier: "_ZTSN3aie6detail3adf17stream_out_helperILj4EfL23aie_stream_resource_out0EEE")
!1267 = !{!1268, !1269, !1273}
!1268 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1266, baseType: !270, extraData: i32 0)
!1269 = !DISubprogram(name: "writeincr", linkageName: "_ZN3aie6detail3adf17stream_out_helperILj4EfL23aie_stream_resource_out0EE9writeincrEP13output_streamIfENS_6vectorIfLj4EEE", scope: !1266, file: !271, line: 148, type: !1270, scopeLine: 148, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{null, !827, !1272}
!1272 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1266, file: !271, line: 145, baseType: !916)
!1273 = !DISubprogram(name: "writeincr", linkageName: "_ZN3aie6detail3adf17stream_out_helperILj4EfL23aie_stream_resource_out0EE9writeincrEP13output_streamIfENS_6vectorIfLj4EEEb", scope: !1266, file: !271, line: 156, type: !1274, scopeLine: 156, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{null, !827, !1272, !171}
!1276 = !{!279, !102, !897}
!1277 = !{!1278, !1279, !1280}
!1278 = !DILocalVariable(name: "w", arg: 1, scope: !1265, file: !271, line: 148, type: !827)
!1279 = !DILocalVariable(name: "value", arg: 2, scope: !1265, file: !271, line: 148, type: !1272)
!1280 = !DILocalVariable(name: "i", scope: !1281, file: !271, line: 151, type: !15)
!1281 = distinct !DILexicalBlock(scope: !1265, file: !271, line: 151, column: 9)
!1282 = !DILocation(line: 148, column: 45, scope: !1265)
!1283 = !DILocation(line: 148, column: 53, scope: !1265)
!1284 = !DILocation(line: 151, column: 14, scope: !1281)
!1285 = !DILocation(line: 151, column: 23, scope: !1281)
!1286 = !DILocation(line: 151, column: 30, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1281, file: !271, line: 151, column: 9)
!1288 = !DILocation(line: 151, column: 32, scope: !1287)
!1289 = !DILocation(line: 151, column: 9, scope: !1281)
!1290 = !DILocation(line: 151, column: 9, scope: !1287)
!1291 = !DILocation(line: 152, column: 35, scope: !1287)
!1292 = !DILocation(line: 152, column: 38, scope: !1287)
!1293 = !DILocation(line: 152, column: 94, scope: !1287)
!1294 = !DILocation(line: 152, column: 53, scope: !1287)
!1295 = !DILocation(line: 152, column: 13, scope: !1287)
!1296 = !DILocation(line: 151, column: 62, scope: !1287)
!1297 = distinct !{!1297, !1289, !1298, !803, !1299}
!1298 = !DILocation(line: 152, column: 96, scope: !1281)
!1299 = !{!"llvm.loop.unroll.enable"}
!1300 = !DILocation(line: 153, column: 5, scope: !1265)
!1301 = distinct !DISubprogram(name: "writeincr<(aie_stream_resource_out)0>", linkageName: "_ZL9writeincrIL23aie_stream_resource_out0EEvP13output_streamIfE7v4floatb", scope: !1115, file: !1115, line: 380, type: !1302, scopeLine: 380, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !1309, retainedNodes: !1305)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{null, !1304, !161, !171}
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 32)
!1305 = !{!1306, !1307, !1308}
!1306 = !DILocalVariable(name: "str", arg: 1, scope: !1301, file: !1115, line: 380, type: !1304)
!1307 = !DILocalVariable(name: "value", arg: 2, scope: !1301, file: !1115, line: 380, type: !161)
!1308 = !DILocalVariable(name: "tlast", arg: 3, scope: !1301, file: !1115, line: 380, type: !171)
!1309 = !{!897}
!1310 = !DILocation(line: 380, column: 1, scope: !1301)
!1311 = !{!1312, !1312, i64 0, i64 1}
!1312 = !{!730, i64 1, !"bool"}
!1313 = !{i8 0, i8 2}
!1314 = distinct !DISubprogram(name: "extract<4U>", linkageName: "_ZNK3aie6vectorIfLj4EE7extractILj4EEENS0_IfXT_EEEj", scope: !143, file: !144, line: 427, type: !1315, scopeLine: 428, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !1318, declaration: !1317, retainedNodes: !1320)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{!143, !242, !15}
!1317 = !DISubprogram(name: "extract<4U>", linkageName: "_ZNK3aie6vectorIfLj4EE7extractILj4EEENS0_IfXT_EEEj", scope: !143, file: !144, line: 427, type: !1315, scopeLine: 427, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !1318)
!1318 = !{!1319}
!1319 = !DITemplateValueParameter(name: "ElemsOut", type: !15, value: i32 4)
!1320 = !{!1321, !1323}
!1321 = !DILocalVariable(name: "this", arg: 1, scope: !1314, type: !1322, flags: DIFlagArtificial | DIFlagObjectPointer)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 32)
!1323 = !DILocalVariable(name: "idx", arg: 2, scope: !1314, file: !144, line: 427, type: !15)
!1324 = !DILocation(line: 0, scope: !1314)
!1325 = !DILocation(line: 427, column: 51, scope: !1314)
!1326 = !DILocation(line: 429, column: 16, scope: !1314)
!1327 = !DILocation(line: 429, column: 36, scope: !1314)
!1328 = !DILocation(line: 429, column: 54, scope: !1314)
!1329 = !DILocation(line: 429, column: 9, scope: !1314)
!1330 = distinct !DISubprogram(name: "operator v4float", linkageName: "_ZNK3aie6vectorIfLj4EEcv7v4floatEv", scope: !143, file: !144, line: 230, type: !240, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !244, retainedNodes: !1331)
!1331 = !{!1332}
!1332 = !DILocalVariable(name: "this", arg: 1, scope: !1330, type: !1322, flags: DIFlagArtificial | DIFlagObjectPointer)
!1333 = !DILocation(line: 0, scope: !1330)
!1334 = !DILocation(line: 232, column: 16, scope: !1330)
!1335 = !DILocation(line: 232, column: 9, scope: !1330)
!1336 = distinct !DISubprogram(name: "writeincr<(aie_stream_resource_out)0>", linkageName: "_ZL9writeincrIL23aie_stream_resource_out0EEvP13output_streamIsE7v8int16b", scope: !1115, file: !1115, line: 355, type: !1337, scopeLine: 356, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !1343, retainedNodes: !1339)
!1337 = !DISubroutineType(types: !1338)
!1338 = !{null, !141, !1126, !171}
!1339 = !{!1340, !1341, !1342}
!1340 = !DILocalVariable(name: "ss", arg: 1, scope: !1336, file: !1115, line: 355, type: !141)
!1341 = !DILocalVariable(name: "value", arg: 2, scope: !1336, file: !1115, line: 355, type: !1126)
!1342 = !DILocalVariable(name: "tlast", arg: 3, scope: !1336, file: !1115, line: 355, type: !171)
!1343 = !{!1344}
!1344 = !DITemplateValueParameter(name: "resource", type: !37, value: i32 0)
!1345 = !DILocation(line: 355, column: 33, scope: !1336)
!1346 = !DILocation(line: 355, column: 45, scope: !1336)
!1347 = !DILocation(line: 355, column: 57, scope: !1336)
!1348 = !DILocation(line: 358, column: 53, scope: !1336)
!1349 = !DILocation(line: 358, column: 12, scope: !1336)
!1350 = !DILocation(line: 358, column: 5, scope: !1336)
!1351 = distinct !DISubprogram(name: "aie_stream_put_wms<short>", linkageName: "_ZN12stream_utilsL18aie_stream_put_wmsIsEEvP13output_streamIsE7v8int16Rb", scope: !1162, file: !1161, line: 219, type: !1352, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !1165, retainedNodes: !1354)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{null, !141, !1126, !920}
!1354 = !{!1355, !1356, !1357}
!1355 = !DILocalVariable(name: "ss", arg: 1, scope: !1351, file: !1161, line: 219, type: !141)
!1356 = !DILocalVariable(name: "value", arg: 2, scope: !1351, file: !1161, line: 219, type: !1126)
!1357 = !DILocalVariable(name: "tlast", arg: 3, scope: !1351, file: !1161, line: 219, type: !920)
!1358 = !DILocation(line: 219, column: 43, scope: !1351)
!1359 = !DILocation(line: 219, column: 55, scope: !1351)
!1360 = !DILocation(line: 219, column: 68, scope: !1351)
!1361 = !DILocation(line: 226, column: 17, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1363, file: !1161, line: 223, column: 24)
!1363 = distinct !DILexicalBlock(scope: !1351, file: !1161, line: 221, column: 19)
!1364 = !DILocation(line: 226, column: 21, scope: !1362)
!1365 = !DILocation(line: 226, column: 37, scope: !1362)
!1366 = !DILocation(line: 226, column: 9, scope: !1362)
!1367 = !DILocation(line: 227, column: 1, scope: !1351)
!1368 = distinct !DISubprogram(name: "v4int32", linkageName: "_ZN7v4int32C2E17chessllvmInternal7v16int8", scope: !280, file: !39, line: 1830, type: !1369, scopeLine: 1830, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !1388, retainedNodes: !1389)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{null, !1371, !38, !1139}
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4int32", file: !39, line: 1822, size: 128, flags: DIFlagTypePassByValue, elements: !1373, identifier: "_ZTS7v4int32")
!1373 = !{!1374, !1375, !1378, !1383, !1384, !1385, !1388}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "mw", scope: !1372, file: !39, line: 1833, baseType: !1139, size: 128)
!1375 = !DISubprogram(name: "operator+=", linkageName: "_ZN7v4int32pLES_", scope: !1372, file: !39, line: 1825, type: !1376, scopeLine: 1825, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{!1372, !1371, !1372}
!1378 = !DISubprogram(name: "operator+=", linkageName: "_ZNV7v4int32pLES_", scope: !1372, file: !39, line: 1826, type: !1379, scopeLine: 1826, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{!1372, !1381, !1372}
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!1382 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1372)
!1383 = !DISubprogram(name: "operator-=", linkageName: "_ZN7v4int32mIES_", scope: !1372, file: !39, line: 1827, type: !1376, scopeLine: 1827, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1384 = !DISubprogram(name: "operator-=", linkageName: "_ZNV7v4int32mIES_", scope: !1372, file: !39, line: 1828, type: !1379, scopeLine: 1828, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1385 = !DISubprogram(name: "v4int32", scope: !1372, file: !39, line: 1829, type: !1386, scopeLine: 1829, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{null, !1371}
!1388 = !DISubprogram(name: "v4int32", scope: !1372, file: !39, line: 1830, type: !1369, scopeLine: 1830, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1389 = !{!1390, !1392, !1393}
!1390 = !DILocalVariable(name: "this", arg: 1, scope: !1368, type: !1391, flags: DIFlagArtificial | DIFlagObjectPointer)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 32)
!1392 = !DILocalVariable(arg: 2, scope: !1368, file: !39, line: 1830, type: !38)
!1393 = !DILocalVariable(name: "aw", arg: 3, scope: !1368, file: !39, line: 1830, type: !1139)
!1394 = !DILocation(line: 0, scope: !1368)
!1395 = !DILocation(line: 1830, column: 42, scope: !1368)
!1396 = !DILocation(line: 1830, column: 52, scope: !1368)
!1397 = !DILocation(line: 1830, column: 58, scope: !1368)
!1398 = !DILocation(line: 1830, column: 61, scope: !1368)
!1399 = !DILocation(line: 1830, column: 66, scope: !1368)
!1400 = distinct !DISubprogram(name: "extract<4U>", linkageName: "_ZNK3aie6detail11vector_baseIfLj4EE7extractILj4EEENS1_IfXT_EEEj", scope: !147, file: !148, line: 705, type: !1401, scopeLine: 706, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !1318, declaration: !1403, retainedNodes: !1404)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{!147, !197, !15}
!1403 = !DISubprogram(name: "extract<4U>", linkageName: "_ZNK3aie6detail11vector_baseIfLj4EE7extractILj4EEENS1_IfXT_EEEj", scope: !147, file: !148, line: 705, type: !1401, scopeLine: 705, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !1318)
!1404 = !{!1405, !1407, !1408}
!1405 = !DILocalVariable(name: "this", arg: 1, scope: !1400, type: !1406, flags: DIFlagArtificial | DIFlagObjectPointer)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 32)
!1407 = !DILocalVariable(name: "idx", arg: 2, scope: !1400, file: !148, line: 705, type: !15)
!1408 = !DILocalVariable(name: "output_bits", scope: !1400, file: !148, line: 709, type: !275)
!1409 = !DILocation(line: 0, scope: !1400)
!1410 = !DILocation(line: 705, column: 56, scope: !1400)
!1411 = !DILocation(line: 707, column: 9, scope: !1400)
!1412 = !DILocation(line: 707, column: 9, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1414, file: !148, line: 707, column: 9)
!1414 = distinct !DILexicalBlock(scope: !1400, file: !148, line: 707, column: 9)
!1415 = !DILocation(line: 707, column: 9, scope: !1414)
!1416 = !DILocation(line: 707, column: 9, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1413, file: !148, line: 707, column: 9)
!1418 = !DILocation(line: 707, column: 9, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1420, file: !148, line: 707, column: 9)
!1420 = distinct !DILexicalBlock(scope: !1417, file: !148, line: 707, column: 9)
!1421 = !DILocation(line: 707, column: 9, scope: !1420)
!1422 = !DILocation(line: 707, column: 9, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1413, file: !148, line: 707, column: 9)
!1424 = !DILocation(line: 709, column: 9, scope: !1400)
!1425 = !DILocation(line: 709, column: 28, scope: !1400)
!1426 = !DILocation(line: 715, column: 20, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1428, file: !148, line: 714, column: 46)
!1428 = distinct !DILexicalBlock(scope: !1400, file: !148, line: 714, column: 23)
!1429 = !{!905, !905, i64 0, i64 16}
!1430 = !DILocation(line: 776, column: 5, scope: !1400)
!1431 = distinct !DISubprogram(name: "vector", linkageName: "_ZN3aie6vectorIfLj4EEC2ERKNS_6detail11vector_baseIfLj4EEE", scope: !143, file: !144, line: 117, type: !212, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !211, retainedNodes: !1432)
!1432 = !{!1433, !1434}
!1433 = !DILocalVariable(name: "this", arg: 1, scope: !1431, type: !934, flags: DIFlagArtificial | DIFlagObjectPointer)
!1434 = !DILocalVariable(name: "v", arg: 2, scope: !1431, file: !144, line: 117, type: !215)
!1435 = !DILocation(line: 0, scope: !1431)
!1436 = !DILocation(line: 117, column: 29, scope: !1431)
!1437 = !DILocation(line: 117, column: 47, scope: !1431)
!1438 = !DILocation(line: 117, column: 44, scope: !1431)
!1439 = !DILocation(line: 117, column: 34, scope: !1431)
!1440 = !DILocation(line: 117, column: 48, scope: !1431)
!1441 = distinct !DISubprogram(name: "to_native", linkageName: "_ZNK3aie6vectorIfLj4EE9to_nativeEv", scope: !143, file: !144, line: 221, type: !240, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !239, retainedNodes: !1442)
!1442 = !{!1443}
!1443 = !DILocalVariable(name: "this", arg: 1, scope: !1441, type: !1322, flags: DIFlagArtificial | DIFlagObjectPointer)
!1444 = !DILocation(line: 0, scope: !1441)
!1445 = !DILocation(line: 223, column: 27, scope: !1441)
!1446 = !DILocation(line: 223, column: 9, scope: !1441)
!1447 = distinct !DISubprogram(name: "to_native", linkageName: "_ZNK3aie6detail11vector_baseIfLj4EE9to_nativeEv", scope: !147, file: !148, line: 292, type: !195, scopeLine: 293, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !194, retainedNodes: !1448)
!1448 = !{!1449}
!1449 = !DILocalVariable(name: "this", arg: 1, scope: !1447, type: !1406, flags: DIFlagArtificial | DIFlagObjectPointer)
!1450 = !DILocation(line: 0, scope: !1447)
!1451 = !DILocation(line: 300, column: 20, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1447, file: !148, line: 297, column: 23)
