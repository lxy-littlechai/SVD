; ModuleID = 'ir/24_0.ll'
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

@_ZL11sync_buffer = internal global [8 x i32] [i32 0, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16, !dbg !0
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
  call addrspace(1) void @llvm.dbg.value(metadata double %x, metadata !727, metadata !DIExpression()), !dbg !728
  %cmp = fcmp ogt double %x, 0.000000e+00, !dbg !729
  %conv = fptrunc double %x to float, !dbg !731
  %cmp1 = fcmp oeq double %x, 0.000000e+00, !dbg !731
  %. = select i1 %cmp1, float 0.000000e+00, float -1.000000e+00, !dbg !731
  %retval.0 = select i1 %cmp, float %conv, float %., !dbg !731
  ret float %retval.0, !dbg !732
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) addrspace(1) #3

; Function Attrs: mustprogress norecurse nounwind
define dso_local i32 @main() addrspace(1) #4 !dbg !733 {
entry:
  %stream_0 = alloca %struct.input_stream, align 4
  %stream_1 = alloca %struct.input_stream, align 4
  %stream_2 = alloca %struct.output_stream, align 4
  %stream_3 = alloca %struct.output_stream, align 4
  store volatile i32 0, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @_ZL11sync_buffer, i32 0, i32 0), align 4, !dbg !744, !tbaa !745, !noalias !749
  store %struct.input_stream undef, %struct.input_stream* %stream_0, align 4, !dbg !755, !noalias !749
  %0 = bitcast %struct.input_stream* %stream_0 to i8*, !dbg !755
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #25, !dbg !755, !noalias !749
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.input_stream* %stream_0, metadata !735, metadata !DIExpression()), !dbg !756
  %1 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0s_struct.input_streams.i32(%struct.input_stream* %stream_0, i32 0, metadata !757), !dbg !755, !noalias !749
  call addrspace(1) void @_ZN12input_streamIfEC2Ej(%struct.input_stream* nonnull align 4 dereferenceable(4) %stream_0, i32 0) #26, !dbg !758, !noalias !749
  store %struct.input_stream undef, %struct.input_stream* %stream_1, align 4, !dbg !759, !noalias !749
  %2 = bitcast %struct.input_stream* %stream_1 to i8*, !dbg !759
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #25, !dbg !759, !noalias !749
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.input_stream* %stream_1, metadata !736, metadata !DIExpression()), !dbg !760
  %3 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0s_struct.input_streams.i32(%struct.input_stream* %stream_1, i32 0, metadata !761), !dbg !759, !noalias !749
  call addrspace(1) void @_ZN12input_streamIfEC2Ej(%struct.input_stream* nonnull align 4 dereferenceable(4) %stream_1, i32 1) #26, !dbg !762, !noalias !749
  store %struct.output_stream undef, %struct.output_stream* %stream_2, align 4, !dbg !763, !noalias !749
  %4 = bitcast %struct.output_stream* %stream_2 to i8*, !dbg !763
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #25, !dbg !763, !noalias !749
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.output_stream* %stream_2, metadata !737, metadata !DIExpression()), !dbg !764
  %5 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0s_struct.output_streams.i32(%struct.output_stream* %stream_2, i32 0, metadata !765), !dbg !763, !noalias !749
  call addrspace(1) void @_ZN13output_streamIfEC2Ej(%struct.output_stream* nonnull align 4 dereferenceable(4) %stream_2, i32 0) #26, !dbg !766, !noalias !749
  store %struct.output_stream undef, %struct.output_stream* %stream_3, align 4, !dbg !767, !noalias !749
  %6 = bitcast %struct.output_stream* %stream_3 to i8*, !dbg !767
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #25, !dbg !767, !noalias !749
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.output_stream* %stream_3, metadata !738, metadata !DIExpression()), !dbg !768
  %7 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0s_struct.output_streams.i32(%struct.output_stream* %stream_3, i32 0, metadata !769), !dbg !767, !noalias !749
  call addrspace(1) void @_ZN13output_streamIfEC2Ej(%struct.output_stream* nonnull align 4 dereferenceable(4) %stream_3, i32 1) #26, !dbg !770, !noalias !749
  call addrspace(1) void @llvm.dbg.value(metadata i32 undef, metadata !739, metadata !DIExpression()), !dbg !771
  call addrspace(1) void @llvm.dbg.value(metadata i32 1, metadata !739, metadata !DIExpression()), !dbg !771
  br label %while.cond, !dbg !772

while.cond:                                       ; preds = %while.end, %entry
  %index.0 = phi i32 [ 1, %entry ], [ %index.1.lcssa, %while.end ], !dbg !773
  call addrspace(1) void @llvm.dbg.value(metadata i32 %index.0, metadata !739, metadata !DIExpression()), !dbg !771
  call addrspace(1) void @llvm.dbg.value(metadata i32 undef, metadata !742, metadata !DIExpression()), !dbg !774
  %8 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @_ZL11sync_buffer, i32 0, i32 1), align 4, !dbg !775, !tbaa !745, !noalias !749
  call addrspace(1) void @llvm.dbg.value(metadata i32 %8, metadata !742, metadata !DIExpression()), !dbg !774
  call addrspace(1) void @llvm.dbg.value(metadata i32 %index.0, metadata !739, metadata !DIExpression()), !dbg !771
  %tobool1 = icmp ne i32 %8, 0, !dbg !776
  br i1 %tobool1, label %while.body2.lr.ph, label %while.end, !dbg !777

while.body2.lr.ph:                                ; preds = %while.cond
  br label %while.body2, !dbg !777

while.body2:                                      ; preds = %while.body2, %while.body2.lr.ph
  %index.13 = phi i32 [ %index.0, %while.body2.lr.ph ], [ %sub, %while.body2 ]
  %proc_24_0_bounds.02 = phi i32 [ %8, %while.body2.lr.ph ], [ %spec.select, %while.body2 ]
  call addrspace(1) void @llvm.dbg.value(metadata i32 %index.13, metadata !739, metadata !DIExpression()), !dbg !771
  call addrspace(1) void @llvm.dbg.value(metadata i32 %proc_24_0_bounds.02, metadata !742, metadata !DIExpression()), !dbg !774
  call addrspace(1) void @_Z13orthogonalizeILi4EEvP12input_streamIfES2_P13output_streamIfES5_(%struct.input_stream* %stream_0, %struct.input_stream* %stream_1, %struct.output_stream* %stream_2, %struct.output_stream* %stream_3) #26, !dbg !778, !noalias !749
  %sub = sub nsw i32 1, %index.13, !dbg !780
  call addrspace(1) void @llvm.dbg.value(metadata i32 %sub, metadata !739, metadata !DIExpression()), !dbg !771
  call addrspace(1) void @llvm.chess_memory_fence(), !dbg !781, !noalias !749
  %cmp = icmp sgt i32 %proc_24_0_bounds.02, 0, !dbg !782
  %dec = add nsw i32 %proc_24_0_bounds.02, -1
  %spec.select = select i1 %cmp, i32 %dec, i32 %proc_24_0_bounds.02, !dbg !784
  call addrspace(1) void @llvm.dbg.value(metadata i32 %spec.select, metadata !742, metadata !DIExpression()), !dbg !774
  %tobool = icmp ne i32 %spec.select, 0, !dbg !776
  br i1 %tobool, label %while.body2, label %while.cond1.while.end_crit_edge, !dbg !777, !llvm.loop !785

while.cond1.while.end_crit_edge:                  ; preds = %while.body2
  %split = phi i32 [ %sub, %while.body2 ]
  br label %while.end, !dbg !777

while.end:                                        ; preds = %while.cond1.while.end_crit_edge, %while.cond
  %index.1.lcssa = phi i32 [ %split, %while.cond1.while.end_crit_edge ], [ %index.0, %while.cond ], !dbg !771
  call addrspace(1) void @_Z4donev() #27, !dbg !788, !noalias !749
  %9 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @_ZL11sync_buffer, i32 0, i32 0), align 4, !dbg !789, !tbaa !745, !noalias !749
  %cmp3 = icmp sgt i32 %9, 0, !dbg !791
  br i1 %cmp3, label %while.end6, label %while.cond

while.end6:                                       ; preds = %while.end
  %10 = bitcast %struct.output_stream* %stream_3 to i8*, !dbg !792
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #25, !dbg !792
  %11 = bitcast %struct.output_stream* %stream_2 to i8*, !dbg !792
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #25, !dbg !792
  %12 = bitcast %struct.input_stream* %stream_1 to i8*, !dbg !792
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #25, !dbg !792
  %13 = bitcast %struct.input_stream* %stream_0 to i8*, !dbg !792
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %13) #25, !dbg !792
  ret i32 0, !dbg !792
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) addrspace(1) #5

; Function Attrs: inaccessiblememonly nounwind willreturn
declare i8* @llvm.noalias.decl.p0i8.p0s_struct.input_streams.i32(%struct.input_stream*, i32, metadata) addrspace(1) #6

; Function Attrs: nounwind
define linkonce_odr dso_local void @_ZN12input_streamIfEC2Ej(%struct.input_stream* nonnull align 4 dereferenceable(4) %this, i32 %ch) unnamed_addr addrspace(1) #7 comdat align 2 !dbg !793 {
entry:
  call addrspace(1) void @llvm.dbg.value(metadata %struct.input_stream* %this, metadata !795, metadata !DIExpression()), !dbg !798
  call addrspace(1) void @llvm.dbg.value(metadata i32 %ch, metadata !797, metadata !DIExpression()), !dbg !798
  %0 = getelementptr inbounds %struct.input_stream, %struct.input_stream* %this, i32 0, i32 0, !dbg !799
  %channel = bitcast %union.anon* %0 to i32*, !dbg !799
  store i32 %ch, i32* %channel, align 4, !dbg !799, !tbaa !800
  ret void, !dbg !799
}

; Function Attrs: inaccessiblememonly nounwind willreturn
declare i8* @llvm.noalias.decl.p0i8.p0s_struct.output_streams.i32(%struct.output_stream*, i32, metadata) addrspace(1) #6

; Function Attrs: nounwind
define linkonce_odr dso_local void @_ZN13output_streamIfEC2Ej(%struct.output_stream* nonnull align 4 dereferenceable(4) %this, i32 %ch) unnamed_addr addrspace(1) #7 comdat align 2 !dbg !801 {
entry:
  call addrspace(1) void @llvm.dbg.value(metadata %struct.output_stream* %this, metadata !803, metadata !DIExpression()), !dbg !806
  call addrspace(1) void @llvm.dbg.value(metadata i32 %ch, metadata !805, metadata !DIExpression()), !dbg !806
  %0 = getelementptr inbounds %struct.output_stream, %struct.output_stream* %this, i32 0, i32 0, !dbg !807
  %channel = bitcast %union.anon.0* %0 to i32*, !dbg !807
  store i32 %ch, i32* %channel, align 4, !dbg !807, !tbaa !800
  ret void, !dbg !807
}

; Function Attrs: mustprogress noinline nounwind
define linkonce_odr dso_local void @_Z13orthogonalizeILi4EEvP12input_streamIfES2_P13output_streamIfES5_(%struct.input_stream* chesscopy noalias %Ap, %struct.input_stream* chesscopy noalias %Aq, %struct.output_stream* chesscopy noalias %Bp, %struct.output_stream* chesscopy noalias %Bq) addrspace(1) #8 comdat !dbg !808 {
entry:
  %Ap.addr = alloca %struct.input_stream*, align 4
  %Aq.addr = alloca %struct.input_stream*, align 4
  %Bp.addr = alloca %struct.output_stream*, align 4
  %Bq.addr = alloca %struct.output_stream*, align 4
  %tmpAp = alloca %"class.aie::vector", align 16
  %tmpAq = alloca %"class.aie::vector", align 16
  %0 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0p0s_struct.input_streams.i32(%struct.input_stream** %Ap.addr, i32 0, metadata !824), !noalias !827
  store %struct.input_stream* %Ap, %struct.input_stream** %Ap.addr, align 4, !tbaa !831, !noalias !827
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.input_stream** %Ap.addr, metadata !814, metadata !DIExpression()), !dbg !833
  %1 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0p0s_struct.input_streams.i32(%struct.input_stream** %Aq.addr, i32 0, metadata !834), !noalias !827
  store %struct.input_stream* %Aq, %struct.input_stream** %Aq.addr, align 4, !tbaa !831, !noalias !827
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.input_stream** %Aq.addr, metadata !815, metadata !DIExpression()), !dbg !835
  %2 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0p0s_struct.output_streams.i32(%struct.output_stream** %Bp.addr, i32 0, metadata !836), !noalias !827
  store %struct.output_stream* %Bp, %struct.output_stream** %Bp.addr, align 4, !tbaa !831, !noalias !827
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.output_stream** %Bp.addr, metadata !816, metadata !DIExpression()), !dbg !837
  %3 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0p0s_struct.output_streams.i32(%struct.output_stream** %Bq.addr, i32 0, metadata !838), !noalias !827
  store %struct.output_stream* %Bq, %struct.output_stream** %Bq.addr, align 4, !tbaa !831, !noalias !827
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.output_stream** %Bq.addr, metadata !817, metadata !DIExpression()), !dbg !839
  call addrspace(1) void @llvm.dbg.value(metadata i32 undef, metadata !818, metadata !DIExpression()), !dbg !840
  call addrspace(1) void @llvm.dbg.value(metadata i32 4, metadata !818, metadata !DIExpression()), !dbg !840
  store %"class.aie::vector" undef, %"class.aie::vector"* %tmpAp, align 16, !dbg !841, !noalias !827
  %4 = bitcast %"class.aie::vector"* %tmpAp to i8*, !dbg !841
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 16, i8* %4) #25, !dbg !841, !noalias !827
  call addrspace(1) void @llvm.dbg.declare(metadata %"class.aie::vector"* %tmpAp, metadata !820, metadata !DIExpression()), !dbg !842
  %5 = load %struct.input_stream*, %struct.input_stream** %Ap.addr, align 4, !dbg !843, !tbaa !831, !noalias !827
  %6 = call addrspace(1) %struct.input_stream* @llvm.noalias.p0s_struct.input_streams.p0i8.p0p0s_struct.input_streams.i32(%struct.input_stream* %5, i8* %0, %struct.input_stream** %Ap.addr, i32 0, metadata !824), !dbg !843, !tbaa !831, !noalias !827
  %call = call addrspace(1) %"class.aie::vector" @_Z10readincr_vILj4EL22aie_stream_resource_in0EfEN3aie6vectorIT1_XT_EEEP12input_streamIS3_E(%struct.input_stream* %6) #26, !dbg !844, !noalias !827
  %7 = getelementptr inbounds %"class.aie::vector", %"class.aie::vector"* %tmpAp, i32 0, i32 0, !dbg !844
  %8 = extractvalue %"class.aie::vector" %call, 0, !dbg !844
  store %"class.aie::detail::vector_base" %8, %"class.aie::detail::vector_base"* %7, align 16, !dbg !844, !noalias !827
  store %"class.aie::vector" undef, %"class.aie::vector"* %tmpAq, align 16, !dbg !845, !noalias !827
  %9 = bitcast %"class.aie::vector"* %tmpAq to i8*, !dbg !845
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 16, i8* %9) #25, !dbg !845, !noalias !827
  call addrspace(1) void @llvm.dbg.declare(metadata %"class.aie::vector"* %tmpAq, metadata !821, metadata !DIExpression()), !dbg !846
  %10 = load %struct.input_stream*, %struct.input_stream** %Aq.addr, align 4, !dbg !847, !tbaa !831, !noalias !827
  %11 = call addrspace(1) %struct.input_stream* @llvm.noalias.p0s_struct.input_streams.p0i8.p0p0s_struct.input_streams.i32(%struct.input_stream* %10, i8* %1, %struct.input_stream** %Aq.addr, i32 0, metadata !834), !dbg !847, !tbaa !831, !noalias !827
  %call1 = call addrspace(1) %"class.aie::vector" @_Z10readincr_vILj4EL22aie_stream_resource_in0EfEN3aie6vectorIT1_XT_EEEP12input_streamIS3_E(%struct.input_stream* %11) #26, !dbg !848, !noalias !827
  %12 = getelementptr inbounds %"class.aie::vector", %"class.aie::vector"* %tmpAq, i32 0, i32 0, !dbg !848
  %13 = extractvalue %"class.aie::vector" %call1, 0, !dbg !848
  store %"class.aie::detail::vector_base" %13, %"class.aie::detail::vector_base"* %12, align 16, !dbg !848, !noalias !827
  %14 = load %struct.output_stream*, %struct.output_stream** %Bp.addr, align 4, !dbg !849, !tbaa !831, !noalias !827
  %15 = call addrspace(1) %struct.output_stream* @llvm.noalias.p0s_struct.output_streams.p0i8.p0p0s_struct.output_streams.i32(%struct.output_stream* %14, i8* %2, %struct.output_stream** %Bp.addr, i32 0, metadata !836), !dbg !849, !tbaa !831, !noalias !827
  call addrspace(1) void @_Z9writeincrIL23aie_stream_resource_out0EfLj4EEvP13output_streamIT0_ERKN3aie6vectorIS2_XT1_EEE(%struct.output_stream* %15, %"class.aie::vector"* nonnull align 16 dereferenceable(16) %tmpAp) #26, !dbg !850, !noalias !827
  %16 = load %struct.output_stream*, %struct.output_stream** %Bq.addr, align 4, !dbg !851, !tbaa !831, !noalias !827
  %17 = call addrspace(1) %struct.output_stream* @llvm.noalias.p0s_struct.output_streams.p0i8.p0p0s_struct.output_streams.i32(%struct.output_stream* %16, i8* %3, %struct.output_stream** %Bq.addr, i32 0, metadata !838), !dbg !851, !tbaa !831, !noalias !827
  call addrspace(1) void @_Z9writeincrIL23aie_stream_resource_out0EfLj4EEvP13output_streamIT0_ERKN3aie6vectorIS2_XT1_EEE(%struct.output_stream* %17, %"class.aie::vector"* nonnull align 16 dereferenceable(16) %tmpAq) #26, !dbg !852, !noalias !827
  %18 = bitcast %"class.aie::vector"* %tmpAq to i8*, !dbg !853
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 16, i8* %18) #25, !dbg !853
  %19 = bitcast %"class.aie::vector"* %tmpAp to i8*, !dbg !853
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 16, i8* %19) #25, !dbg !853
  ret void, !dbg !853
}

; Function Attrs: nounwind willreturn
declare void @llvm.chess_memory_fence() addrspace(1) #9

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local void @_Z4donev() addrspace(1) #10 comdat {
entry:
  %agg.tmp = alloca %struct.ipd.custom_type.uint2_t.uint2_t, align 4
  %custom_type.tmp = alloca %struct.ipd.custom_type.uint2_t.uint2_t, align 4
  call addrspace(1) void @llvm.chess_memory_fence()
  call addrspace(1) void @_Z25chess_separator_scheduleri(i32 8) #28
  call addrspace(1) void @_ZN7uint2_tC2Ei(%struct.ipd.custom_type.uint2_t.uint2_t* nonnull align 4 dereferenceable(1) %custom_type.tmp, i32 2) #26
  %0 = load %struct.ipd.custom_type.uint2_t.uint2_t, %struct.ipd.custom_type.uint2_t.uint2_t* %custom_type.tmp, align 4, !tbaa !854
  store %struct.ipd.custom_type.uint2_t.uint2_t %0, %struct.ipd.custom_type.uint2_t.uint2_t* %agg.tmp, align 4, !tbaa !854
  %1 = load %struct.ipd.custom_type.uint2_t.uint2_t, %struct.ipd.custom_type.uint2_t.uint2_t* %agg.tmp, align 4, !tbaa !854
  call addrspace(1) void @_ZN12me_primitive5eventE7uint2_t(%struct.ipd.custom_type.uint2_t.uint2_t %1) #29
  call addrspace(1) void @_Z25chess_separator_scheduleri(i32 5) #28
  call addrspace(1) void @llvm.chess_memory_fence()
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) addrspace(1) #5

; Function Attrs: inaccessiblememonly nounwind
declare dso_local void @_Z25chess_separator_scheduleri(i32) addrspace(1) #11

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local void @_ZN12me_primitive5eventE7uint2_t(%struct.ipd.custom_type.uint2_t.uint2_t %a0.coerce) addrspace(1) #12 comdat {
entry:
  %a0 = alloca %struct.ipd.custom_type.uint2_t.uint2_t, align 4
  store %struct.ipd.custom_type.uint2_t.uint2_t %a0.coerce, %struct.ipd.custom_type.uint2_t.uint2_t* %a0, align 4
  %0 = load %struct.ipd.custom_type.uint2_t.uint2_t, %struct.ipd.custom_type.uint2_t.uint2_t* %a0, align 4, !tbaa !854
  call x86_regcallcc addrspace(1) void @__regcall3__chessintr_void_event_uint2_t(%struct.ipd.custom_type.uint2_t.uint2_t %0) #28
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dso_local void @_ZN7uint2_tC2Ei(%struct.ipd.custom_type.uint2_t.uint2_t* nonnull align 4 dereferenceable(1) %this, i32 %a) unnamed_addr addrspace(1) #13 comdat align 2 {
entry:
  %this.addr = alloca %struct.ipd.custom_type.uint2_t.uint2_t*, align 4
  %a.addr = alloca i32, align 4
  store %struct.ipd.custom_type.uint2_t.uint2_t* %this, %struct.ipd.custom_type.uint2_t.uint2_t** %this.addr, align 4, !tbaa !831
  store i32 2, i32* %a.addr, align 4, !tbaa !745
  %this1 = load %struct.ipd.custom_type.uint2_t.uint2_t*, %struct.ipd.custom_type.uint2_t.uint2_t** %this.addr, align 4
  %0 = bitcast %struct.ipd.custom_type.uint2_t.uint2_t* %this1 to i2*
  store i2 0, i2* %0, align 4
  %1 = load i32, i32* %a.addr, align 4, !tbaa !745
  %2 = call addrspace(1) %struct.ipd.custom_type.uint2_t.uint2_t @llvm.chess.init.customint.s_struct.ipd.custom_type.uint2_t.uint2_ts.i32.p1f_s_struct.ipd.custom_type.uint2_t.uint2_tsi32f(%struct.ipd.custom_type.uint2_t.uint2_t undef, i32 %1, i32 2, i32 32, i1 true, i32 0, %struct.ipd.custom_type.uint2_t.uint2_t (i32) addrspace(1)* @__regcall3__chessintr_uint2_t_uint2_t___sint)
  store %struct.ipd.custom_type.uint2_t.uint2_t %2, %struct.ipd.custom_type.uint2_t.uint2_t* %this1, align 4
  ret void
}

; Function Attrs: inaccessiblememonly nounwind
declare dso_local x86_regcallcc void @__regcall3__chessintr_void_event_uint2_t(%struct.ipd.custom_type.uint2_t.uint2_t) addrspace(1) #11

; Function Attrs: nounwind readnone willreturn
declare dso_local x86_regcallcc %struct.ipd.custom_type.uint2_t.uint2_t @__regcall3__chessintr_uint2_t_uint2_t___sint(i32 signext) addrspace(1) #14

; Function Attrs: nounwind readnone willreturn
declare %struct.ipd.custom_type.uint2_t.uint2_t @llvm.chess.init.customint.s_struct.ipd.custom_type.uint2_t.uint2_ts.i32.p1f_s_struct.ipd.custom_type.uint2_t.uint2_tsi32f(%struct.ipd.custom_type.uint2_t.uint2_t, i32, i32, i32, i1, i32, %struct.ipd.custom_type.uint2_t.uint2_t (i32) addrspace(1)*) addrspace(1) #15

; Function Attrs: inaccessiblememonly nounwind willreturn
declare i8* @llvm.noalias.decl.p0i8.p0p0s_struct.input_streams.i32(%struct.input_stream**, i32, metadata) addrspace(1) #6

; Function Attrs: inaccessiblememonly nounwind willreturn
declare i8* @llvm.noalias.decl.p0i8.p0p0s_struct.output_streams.i32(%struct.output_stream**, i32, metadata) addrspace(1) #6

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local %"class.aie::vector" @_Z10readincr_vILj4EL22aie_stream_resource_in0EfEN3aie6vectorIT1_XT_EEEP12input_streamIS3_E(%struct.input_stream* %w) addrspace(1) #16 comdat !dbg !856 {
entry:
  %retval = alloca %"class.aie::vector", align 16
  call addrspace(1) void @llvm.dbg.value(metadata %struct.input_stream* %w, metadata !860, metadata !DIExpression()), !dbg !863
  %call = call addrspace(1) %"class.aie::vector" @_ZN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfE(%struct.input_stream* %w) #26, !dbg !864
  %0 = getelementptr inbounds %"class.aie::vector", %"class.aie::vector"* %retval, i32 0, i32 0, !dbg !864
  %1 = extractvalue %"class.aie::vector" %call, 0, !dbg !864
  store %"class.aie::detail::vector_base" %1, %"class.aie::detail::vector_base"* %0, align 16, !dbg !864
  %2 = load %"class.aie::vector", %"class.aie::vector"* %retval, align 16, !dbg !865
  ret %"class.aie::vector" %2, !dbg !865
}

; Function Attrs: argmemonly nounwind speculatable willreturn
declare %struct.input_stream* @llvm.noalias.p0s_struct.input_streams.p0i8.p0p0s_struct.input_streams.i32(%struct.input_stream*, i8*, %struct.input_stream**, i32, metadata) addrspace(1) #17

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local void @_Z9writeincrIL23aie_stream_resource_out0EfLj4EEvP13output_streamIT0_ERKN3aie6vectorIS2_XT1_EEE(%struct.output_stream* %w, %"class.aie::vector"* nonnull align 16 dereferenceable(16) %value) addrspace(1) #16 comdat !dbg !866 {
entry:
  call addrspace(1) void @llvm.dbg.value(metadata %struct.output_stream* %w, metadata !871, metadata !DIExpression()), !dbg !875
  call addrspace(1) void @llvm.dbg.value(metadata %"class.aie::vector"* %value, metadata !872, metadata !DIExpression()), !dbg !875
  %0 = load %"class.aie::vector", %"class.aie::vector"* %value, align 16, !dbg !876, !tbaa !877
  call addrspace(1) void @_ZN3aie6detail3adf17stream_out_helperILj4EfL23aie_stream_resource_out0EE9writeincrEP13output_streamIfENS_6vectorIfLj4EEE(%struct.output_stream* %w, %"class.aie::vector" %0) #26, !dbg !876
  ret void, !dbg !881
}

; Function Attrs: argmemonly nounwind speculatable willreturn
declare %struct.output_stream* @llvm.noalias.p0s_struct.output_streams.p0i8.p0p0s_struct.output_streams.i32(%struct.output_stream*, i8*, %struct.output_stream**, i32, metadata) addrspace(1) #17

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local %"class.aie::vector" @_ZN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfE(%struct.input_stream* %w) addrspace(1) #16 comdat align 2 !dbg !882 {
entry:
  %retval = alloca %"class.aie::vector", align 16
  %w.addr = alloca %struct.input_stream*, align 4
  %custom_type.tmp = alloca %"class.aie::vector", align 16
  %ref.tmp = alloca %class.anon, align 4
  store %struct.input_stream* %w, %struct.input_stream** %w.addr, align 4, !tbaa !831
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.input_stream** %w.addr, metadata !897, metadata !DIExpression()), !dbg !899
  call addrspace(1) void @llvm.dbg.declare(metadata %"class.aie::vector"* %retval, metadata !898, metadata !DIExpression()), !dbg !900
  call addrspace(1) void @_ZN3aie6vectorIfLj4EEC2Ev(%"class.aie::vector"* nonnull align 16 dereferenceable(16) %custom_type.tmp) #26, !dbg !900
  %0 = load %"class.aie::vector", %"class.aie::vector"* %custom_type.tmp, align 16, !dbg !900, !tbaa !877
  store %"class.aie::vector" %0, %"class.aie::vector"* %retval, align 16, !dbg !900, !tbaa !877
  %1 = bitcast %class.anon* %ref.tmp to i8*, !dbg !901
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #25, !dbg !901
  %2 = getelementptr inbounds %class.anon, %class.anon* %ref.tmp, i32 0, i32 0, !dbg !901
  store %struct.input_stream** %w.addr, %struct.input_stream*** %2, align 4, !dbg !901, !tbaa !831
  %3 = getelementptr inbounds %class.anon, %class.anon* %ref.tmp, i32 0, i32 1, !dbg !901
  store %"class.aie::vector"* %retval, %"class.aie::vector"** %3, align 4, !dbg !901, !tbaa !831
  call addrspace(1) void @_ZN3aie6detail5utils12unroll_timesILj1EZNS0_3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEEUlT_E_EEvOT0_(%class.anon* nonnull align 4 dereferenceable(8) %ref.tmp) #26, !dbg !903
  %4 = bitcast %class.anon* %ref.tmp to i8*, !dbg !903
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 8, i8* %4) #25, !dbg !903
  %5 = load %"class.aie::vector", %"class.aie::vector"* %retval, align 16, !dbg !904
  ret %"class.aie::vector" %5, !dbg !904
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dso_local void @_ZN3aie6vectorIfLj4EEC2Ev(%"class.aie::vector"* nonnull align 16 dereferenceable(16) %this) unnamed_addr addrspace(1) #13 comdat align 2 !dbg !905 {
entry:
  call addrspace(1) void @llvm.dbg.value(metadata %"class.aie::vector"* %this, metadata !907, metadata !DIExpression()), !dbg !909
  %0 = bitcast %"class.aie::vector"* %this to %"class.aie::detail::vector_base"*, !dbg !910
  call addrspace(1) void @_ZN3aie6detail11vector_baseIfLj4EEC2Ev(%"class.aie::detail::vector_base"* nonnull align 16 dereferenceable(16) %0) #26, !dbg !911
  ret void, !dbg !912
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local void @_ZN3aie6detail5utils12unroll_timesILj1EZNS0_3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEEUlT_E_EEvOT0_(%class.anon* nonnull align 4 dereferenceable(8) %fn) addrspace(1) #16 comdat !dbg !913 {
entry:
  call addrspace(1) void @llvm.dbg.value(metadata %class.anon* %fn, metadata !925, metadata !DIExpression()), !dbg !929
  call addrspace(1) void @_ZN3aie6detail5utils10unroll_forIjLj0ELj1ELj1EZNS0_3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEEUlT_E_EEvOT3_(%class.anon* nonnull align 4 dereferenceable(8) %fn) #26, !dbg !930
  ret void, !dbg !931
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dso_local void @_ZN3aie6detail11vector_baseIfLj4EEC2Ev(%"class.aie::detail::vector_base"* nonnull align 16 dereferenceable(16) %this) unnamed_addr addrspace(1) #13 comdat align 2 !dbg !932 {
entry:
  call addrspace(1) void @llvm.dbg.value(metadata %"class.aie::detail::vector_base"* %this, metadata !934, metadata !DIExpression()), !dbg !936
  %data = getelementptr inbounds %"class.aie::detail::vector_base", %"class.aie::detail::vector_base"* %this, i32 0, i32 0, !dbg !937
  %call = call addrspace(1) %struct.v4float @_ZN3aie6detail14vector_storageIfLj4EE5undefEv() #26, !dbg !938
  %0 = getelementptr inbounds %struct.v4float, %struct.v4float* %data, i32 0, i32 0, !dbg !938
  %1 = extractvalue %struct.v4float %call, 0, !dbg !938
  store %struct.ipd.custom_type.v16int8.v16int8 %1, %struct.ipd.custom_type.v16int8.v16int8* %0, align 16, !dbg !938
  ret void, !dbg !939
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local %struct.v4float @_ZN3aie6detail14vector_storageIfLj4EE5undefEv() addrspace(1) #2 comdat align 2 !dbg !940 {
entry:
  %retval = alloca %struct.v4float, align 16
  %call = call addrspace(1) %struct.v4float @_Z13undef_v4floatv() #26, !dbg !941
  %0 = getelementptr inbounds %struct.v4float, %struct.v4float* %retval, i32 0, i32 0, !dbg !941
  %1 = extractvalue %struct.v4float %call, 0, !dbg !941
  store %struct.ipd.custom_type.v16int8.v16int8 %1, %struct.ipd.custom_type.v16int8.v16int8* %0, align 16, !dbg !941
  %2 = load %struct.v4float, %struct.v4float* %retval, align 16, !dbg !942
  ret %struct.v4float %2, !dbg !942
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local %struct.v4float @_Z13undef_v4floatv() addrspace(1) #16 comdat {
entry:
  %retval = alloca %struct.v4float, align 16
  %call = call x86_regcallcc addrspace(1) %struct.v4float @__regcall3__chessintr_v4float_undef_v4float() #30
  %0 = getelementptr inbounds %struct.v4float, %struct.v4float* %retval, i32 0, i32 0
  %1 = extractvalue %struct.v4float %call, 0
  store %struct.ipd.custom_type.v16int8.v16int8 %1, %struct.ipd.custom_type.v16int8.v16int8* %0, align 16
  %2 = load %struct.v4float, %struct.v4float* %retval, align 16
  ret %struct.v4float %2
}

; Function Attrs: nounwind readnone willreturn
declare dso_local x86_regcallcc %struct.v4float @__regcall3__chessintr_v4float_undef_v4float() addrspace(1) #14

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local void @_ZN3aie6detail5utils10unroll_forIjLj0ELj1ELj1EZNS0_3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEEUlT_E_EEvOT3_(%class.anon* nonnull align 4 dereferenceable(8) %fn) addrspace(1) #16 comdat !dbg !943 {
entry:
  call addrspace(1) void @llvm.dbg.value(metadata %class.anon* %fn, metadata !945, metadata !DIExpression()), !dbg !951
  call addrspace(1) void @_ZN3aie6detail5utils17unroll_for_helperIjLj0ELj1ELj0ELj1EE7executeIZNS0_3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEEUlT_E_EEvOSC_(%class.anon* nonnull align 4 dereferenceable(8) %fn) #26, !dbg !952
  ret void, !dbg !953
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local void @_ZN3aie6detail5utils17unroll_for_helperIjLj0ELj1ELj0ELj1EE7executeIZNS0_3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEEUlT_E_EEvOSC_(%class.anon* nonnull align 4 dereferenceable(8) %fn) addrspace(1) #16 comdat align 2 !dbg !954 {
entry:
  %ctx = alloca %"struct.aie::detail::utils::unroll_context", align 1
  call addrspace(1) void @llvm.dbg.value(metadata %class.anon* %fn, metadata !961, metadata !DIExpression()), !dbg !977
  store %"struct.aie::detail::utils::unroll_context" undef, %"struct.aie::detail::utils::unroll_context"* %ctx, align 1, !dbg !978
  %0 = bitcast %"struct.aie::detail::utils::unroll_context"* %ctx to i8*, !dbg !978
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 1, i8* %0) #25, !dbg !978
  call addrspace(1) void @llvm.dbg.declare(metadata %"struct.aie::detail::utils::unroll_context"* %ctx, metadata !962, metadata !DIExpression()), !dbg !979
  %1 = bitcast %"struct.aie::detail::utils::unroll_context"* %ctx to i8*, !dbg !979
  call addrspace(1) void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %1, i8* align 1 getelementptr inbounds (%"struct.aie::detail::utils::unroll_context", %"struct.aie::detail::utils::unroll_context"* @__const._ZN3aie6detail5utils17unroll_for_helperIjLj0ELj1ELj0ELj1EE7executeIZNS0_3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEEUlT_E_EEvOSC_.ctx, i32 0, i32 0), i32 1, i1 false), !dbg !979
  call addrspace(1) void @_ZZN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEENKUlT_E_clINS0_5utils14unroll_contextIjLj0ELj1ELj0EEEEEDaS8_(%class.anon* nonnull align 4 dereferenceable(8) %fn) #26, !dbg !980
  call addrspace(1) void @llvm.dbg.value(metadata i32 undef, metadata !976, metadata !DIExpression()), !dbg !982
  call addrspace(1) void @llvm.dbg.value(metadata i32 1, metadata !976, metadata !DIExpression()), !dbg !982
  call addrspace(1) void @_ZN3aie6detail5utils17unroll_for_helperIjLj0ELj1ELj1ELj1EE7executeIZNS0_3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEEUlT_E_EEvOSC_(%class.anon* nonnull align 4 dereferenceable(8) %fn) #26, !dbg !983
  %2 = bitcast %"struct.aie::detail::utils::unroll_context"* %ctx to i8*, !dbg !984
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 1, i8* %2) #25, !dbg !984
  ret void, !dbg !985
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) addrspace(1) #18

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local void @_ZZN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEENKUlT_E_clINS0_5utils14unroll_contextIjLj0ELj1ELj0EEEEEDaS8_(%class.anon* nonnull align 4 dereferenceable(8) %this) addrspace(1) #16 comdat align 2 !dbg !986 {
entry:
  %idx = alloca %"struct.aie::detail::utils::unroll_context", align 1
  %tmp = alloca %"class.aie::vector", align 16
  %custom_type.tmp = alloca %"class.aie::vector", align 16
  %custom_type.tmp2 = alloca %"class.aie::vector", align 16
  %agg.tmp = alloca %struct.v4float, align 16
  %ref.tmp = alloca %class.anon.1, align 1
  call addrspace(1) void @llvm.dbg.value(metadata %class.anon* %this, metadata !995, metadata !DIExpression()), !dbg !999
  call addrspace(1) void @llvm.dbg.declare(metadata %"struct.aie::detail::utils::unroll_context"* %idx, metadata !997, metadata !DIExpression()), !dbg !1000
  store %"class.aie::vector" undef, %"class.aie::vector"* %tmp, align 16, !dbg !1001
  %0 = bitcast %"class.aie::vector"* %tmp to i8*, !dbg !1001
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 16, i8* %0) #25, !dbg !1001
  call addrspace(1) void @llvm.dbg.declare(metadata %"class.aie::vector"* %tmp, metadata !998, metadata !DIExpression()), !dbg !1002
  call addrspace(1) void @_ZN3aie6vectorIfLj4EEC2Ev(%"class.aie::vector"* nonnull align 16 dereferenceable(16) %custom_type.tmp) #26, !dbg !1002
  %1 = load %"class.aie::vector", %"class.aie::vector"* %custom_type.tmp, align 16, !dbg !1002, !tbaa !877
  store %"class.aie::vector" %1, %"class.aie::vector"* %tmp, align 16, !dbg !1002, !tbaa !877
  %2 = bitcast %class.anon.1* %ref.tmp to i8*, !dbg !1003
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 1, i8* %2) #25, !dbg !1003
  call addrspace(1) void @_ZN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE6get_opEv() #26, !dbg !1003
  %3 = getelementptr inbounds %class.anon, %class.anon* %this, i32 0, i32 0, !dbg !1004
  %4 = load %struct.input_stream**, %struct.input_stream*** %3, align 4, !dbg !1004, !tbaa !1005
  %call = call addrspace(1) %struct.v4float @_ZZN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE6get_opEvENKUlDpOT_E_clIJRP12input_streamIfEEEEDaS7_(%class.anon.1* nonnull align 1 dereferenceable(1) %ref.tmp, %struct.input_stream** nonnull align 4 dereferenceable(4) %4) #26, !dbg !1003
  %5 = getelementptr inbounds %struct.v4float, %struct.v4float* %agg.tmp, i32 0, i32 0, !dbg !1003
  %6 = extractvalue %struct.v4float %call, 0, !dbg !1003
  store %struct.ipd.custom_type.v16int8.v16int8 %6, %struct.ipd.custom_type.v16int8.v16int8* %5, align 16, !dbg !1003
  %7 = load %struct.v4float, %struct.v4float* %agg.tmp, align 16, !dbg !1003, !tbaa !1007
  call addrspace(1) void @_ZN3aie6vectorIfLj4EEC2E7v4float(%"class.aie::vector"* nonnull align 16 dereferenceable(16) %custom_type.tmp2, %struct.v4float %7) #26, !dbg !1003
  %8 = load %"class.aie::vector", %"class.aie::vector"* %custom_type.tmp2, align 16, !dbg !1003, !tbaa !877
  store %"class.aie::vector" %8, %"class.aie::vector"* %tmp, align 16, !dbg !1003, !tbaa !877
  %9 = bitcast %class.anon.1* %ref.tmp to i8*, !dbg !1008
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 1, i8* %9) #25, !dbg !1008
  %10 = getelementptr inbounds %class.anon, %class.anon* %this, i32 0, i32 1, !dbg !1009
  %11 = load %"class.aie::vector"*, %"class.aie::vector"** %10, align 4, !dbg !1009, !tbaa !1010
  %call3 = call addrspace(1) i32 @_ZNK3aie6detail5utils14unroll_contextIjLj0ELj1ELj0EEcvjEv(%"struct.aie::detail::utils::unroll_context"* nonnull align 1 dereferenceable(1) %idx) #26, !dbg !1011
  %call4 = call nonnull align 16 dereferenceable(16) addrspace(1) %"class.aie::vector"* @_ZN3aie6vectorIfLj4EE6insertILj4EEERS1_jRKNS0_IfXT_EEE(%"class.aie::vector"* nonnull align 16 dereferenceable(16) %11, i32 %call3, %"class.aie::vector"* nonnull align 16 dereferenceable(16) %tmp) #26, !dbg !1012
  %12 = bitcast %"class.aie::vector"* %tmp to i8*, !dbg !1013
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 16, i8* %12) #25, !dbg !1013
  ret void, !dbg !1013
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local void @_ZN3aie6detail5utils17unroll_for_helperIjLj0ELj1ELj1ELj1EE7executeIZNS0_3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEEUlT_E_EEvOSC_(%class.anon* nonnull align 4 dereferenceable(8) %fn) addrspace(1) #16 comdat align 2 !dbg !1014 {
entry:
  call addrspace(1) void @llvm.dbg.value(metadata %class.anon* %fn, metadata !1020, metadata !DIExpression()), !dbg !1021
  ret void, !dbg !1022
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE6get_opEv() addrspace(1) #2 comdat align 2 !dbg !1023 {
entry:
  ret void, !dbg !1028
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local %struct.v4float @_ZZN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE6get_opEvENKUlDpOT_E_clIJRP12input_streamIfEEEEDaS7_(%class.anon.1* nonnull align 1 dereferenceable(1) %this, %struct.input_stream** nonnull align 4 dereferenceable(4) %args) addrspace(1) #16 comdat align 2 !dbg !1031 {
entry:
  %retval = alloca %struct.v4float, align 16
  call addrspace(1) void @llvm.dbg.value(metadata %class.anon.1* %this, metadata !1042, metadata !DIExpression()), !dbg !1045
  call addrspace(1) void @llvm.dbg.value(metadata %struct.input_stream** %args, metadata !1044, metadata !DIExpression()), !dbg !1045
  %0 = load %struct.input_stream*, %struct.input_stream** %args, align 4, !dbg !1046, !tbaa !831
  %call = call addrspace(1) %struct.v4float @_ZL11readincr_v4IL22aie_stream_resource_in0EE7v4floatP12input_streamIfE(%struct.input_stream* %0) #26, !dbg !1047
  %1 = getelementptr inbounds %struct.v4float, %struct.v4float* %retval, i32 0, i32 0, !dbg !1047
  %2 = extractvalue %struct.v4float %call, 0, !dbg !1047
  store %struct.ipd.custom_type.v16int8.v16int8 %2, %struct.ipd.custom_type.v16int8.v16int8* %1, align 16, !dbg !1047
  %3 = load %struct.v4float, %struct.v4float* %retval, align 16, !dbg !1048
  ret %struct.v4float %3, !dbg !1048
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dso_local void @_ZN3aie6vectorIfLj4EEC2E7v4float(%"class.aie::vector"* nonnull align 16 dereferenceable(16) %this, %struct.v4float %v.coerce) unnamed_addr addrspace(1) #13 comdat align 2 !dbg !1049 {
entry:
  call addrspace(1) void @llvm.dbg.value(metadata %struct.v4float %v.coerce, metadata !1052, metadata !DIExpression()), !dbg !1053
  call addrspace(1) void @llvm.dbg.value(metadata %"class.aie::vector"* %this, metadata !1051, metadata !DIExpression()), !dbg !1053
  %0 = bitcast %"class.aie::vector"* %this to %"class.aie::detail::vector_base"*, !dbg !1054
  call addrspace(1) void @_ZN3aie6detail11vector_baseIfLj4EEC2E7v4float(%"class.aie::detail::vector_base"* nonnull align 16 dereferenceable(16) %0, %struct.v4float %v.coerce) #26, !dbg !1055
  ret void, !dbg !1056
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local nonnull align 16 dereferenceable(16) %"class.aie::vector"* @_ZN3aie6vectorIfLj4EE6insertILj4EEERS1_jRKNS0_IfXT_EEE(%"class.aie::vector"* nonnull align 16 dereferenceable(16) %this, i32 %idx, %"class.aie::vector"* nonnull align 16 dereferenceable(16) %v) addrspace(1) #16 comdat align 2 !dbg !1057 {
entry:
  call addrspace(1) void @llvm.dbg.value(metadata %"class.aie::vector"* %this, metadata !1064, metadata !DIExpression()), !dbg !1067
  call addrspace(1) void @llvm.dbg.value(metadata i32 %idx, metadata !1065, metadata !DIExpression()), !dbg !1067
  call addrspace(1) void @llvm.dbg.value(metadata %"class.aie::vector"* %v, metadata !1066, metadata !DIExpression()), !dbg !1067
  %0 = bitcast %"class.aie::vector"* %this to %"class.aie::detail::vector_base"*, !dbg !1068
  %1 = bitcast %"class.aie::vector"* %v to %"class.aie::detail::vector_base"*, !dbg !1069
  %call = call nonnull align 16 dereferenceable(16) addrspace(1) %"class.aie::detail::vector_base"* @_ZN3aie6detail11vector_baseIfLj4EE6insertILj4EEERS2_jRKNS1_IfXT_EEE(%"class.aie::detail::vector_base"* nonnull align 16 dereferenceable(16) %0, i32 %idx, %"class.aie::detail::vector_base"* nonnull align 16 dereferenceable(16) %1) #26, !dbg !1068
  ret %"class.aie::vector"* %this, !dbg !1070
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local i32 @_ZNK3aie6detail5utils14unroll_contextIjLj0ELj1ELj0EEcvjEv(%"struct.aie::detail::utils::unroll_context"* nonnull align 1 dereferenceable(1) %this) addrspace(1) #2 comdat align 2 !dbg !1071 {
entry:
  call addrspace(1) void @llvm.dbg.value(metadata %"struct.aie::detail::utils::unroll_context"* %this, metadata !1073, metadata !DIExpression()), !dbg !1075
  %call = call addrspace(1) i32 @_ZNK3aie6detail5utils14unroll_contextIjLj0ELj1ELj0EE7currentEv(%"struct.aie::detail::utils::unroll_context"* nonnull align 1 dereferenceable(1) %this) #26, !dbg !1076
  ret i32 %call, !dbg !1077
}

; Function Attrs: inlinehint mustprogress nounwind
define internal %struct.v4float @_ZL11readincr_v4IL22aie_stream_resource_in0EE7v4floatP12input_streamIfE(%struct.input_stream* %str) addrspace(1) #19 !dbg !1078 {
entry:
  %retval = alloca %struct.v4float, align 16
  %agg.tmp = alloca %struct.v8int16, align 16
  call addrspace(1) void @llvm.dbg.value(metadata %struct.input_stream* %str, metadata !1084, metadata !DIExpression()), !dbg !1086
  %0 = bitcast %struct.input_stream* %str to %struct.input_stream.2*, !dbg !1087
  %call = call addrspace(1) %struct.v8int16 @_ZL11readincr_v8IL22aie_stream_resource_in0EE7v8int16P12input_streamIsE(%struct.input_stream.2* %0) #26, !dbg !1087
  %1 = getelementptr inbounds %struct.v8int16, %struct.v8int16* %agg.tmp, i32 0, i32 0, !dbg !1087
  %2 = extractvalue %struct.v8int16 %call, 0, !dbg !1087
  store %struct.ipd.custom_type.v16int8.v16int8 %2, %struct.ipd.custom_type.v16int8.v16int8* %1, align 16, !dbg !1087
  %3 = load %struct.v8int16, %struct.v8int16* %agg.tmp, align 16, !dbg !1087, !tbaa !1007
  %call1 = call addrspace(1) %struct.v4float @_Z10as_v4float7v8int16(%struct.v8int16 %3) #26, !dbg !1087
  %4 = getelementptr inbounds %struct.v4float, %struct.v4float* %retval, i32 0, i32 0, !dbg !1087
  %5 = extractvalue %struct.v4float %call1, 0, !dbg !1087
  store %struct.ipd.custom_type.v16int8.v16int8 %5, %struct.ipd.custom_type.v16int8.v16int8* %4, align 16, !dbg !1087
  %6 = load %struct.v4float, %struct.v4float* %retval, align 16, !dbg !1087
  ret %struct.v4float %6, !dbg !1087
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local %struct.v4float @_Z10as_v4float7v8int16(%struct.v8int16 %a.coerce) addrspace(1) #16 comdat {
entry:
  %a = alloca %struct.v8int16, align 16
  %custom_type.tmp = alloca %struct.v4float, align 16
  store %struct.v8int16 %a.coerce, %struct.v8int16* %a, align 16
  %mw = getelementptr inbounds %struct.v8int16, %struct.v8int16* %a, i32 0, i32 0
  %0 = load %struct.ipd.custom_type.v16int8.v16int8, %struct.ipd.custom_type.v16int8.v16int8* %mw, align 16, !tbaa !1007
  call addrspace(1) void @_ZN7v4floatC2E17chessllvmInternal7v16int8(%struct.v4float* nonnull align 16 dereferenceable(16) %custom_type.tmp, i32 0, %struct.ipd.custom_type.v16int8.v16int8 %0) #26
  %1 = load %struct.v4float, %struct.v4float* %custom_type.tmp, align 16, !tbaa !1007
  ret %struct.v4float %1
}

; Function Attrs: inlinehint mustprogress nounwind
define internal %struct.v8int16 @_ZL11readincr_v8IL22aie_stream_resource_in0EE7v8int16P12input_streamIsE(%struct.input_stream.2* %ss) addrspace(1) #19 !dbg !1088 {
entry:
  %retval = alloca %struct.v8int16, align 16
  call addrspace(1) void @llvm.dbg.value(metadata %struct.input_stream.2* %ss, metadata !1093, metadata !DIExpression()), !dbg !1096
  %call = call addrspace(1) %struct.v8int16 @_ZN12stream_utilsL18aie_stream_get_wssIsEE7v8int16P12input_streamIsE(%struct.input_stream.2* %ss) #26, !dbg !1097
  %0 = getelementptr inbounds %struct.v8int16, %struct.v8int16* %retval, i32 0, i32 0, !dbg !1097
  %1 = extractvalue %struct.v8int16 %call, 0, !dbg !1097
  store %struct.ipd.custom_type.v16int8.v16int8 %1, %struct.ipd.custom_type.v16int8.v16int8* %0, align 16, !dbg !1097
  %2 = load %struct.v8int16, %struct.v8int16* %retval, align 16, !dbg !1098
  ret %struct.v8int16 %2, !dbg !1098
}

; Function Attrs: nounwind
define linkonce_odr dso_local void @_ZN7v4floatC2E17chessllvmInternal7v16int8(%struct.v4float* nonnull align 16 dereferenceable(16) %this, i32 %0, %struct.ipd.custom_type.v16int8.v16int8 %aw.coerce) unnamed_addr addrspace(1) #7 comdat align 2 !dbg !1099 {
entry:
  %aw = alloca %struct.ipd.custom_type.v16int8.v16int8, align 16
  %this.addr = alloca %struct.v4float*, align 4
  %.addr = alloca i32, align 4
  store %struct.ipd.custom_type.v16int8.v16int8 %aw.coerce, %struct.ipd.custom_type.v16int8.v16int8* %aw, align 16
  store %struct.v4float* %this, %struct.v4float** %this.addr, align 4, !tbaa !831
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.v4float** %this.addr, metadata !1112, metadata !DIExpression()), !dbg !1116
  store i32 0, i32* %.addr, align 4, !tbaa !1117
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %.addr, metadata !1114, metadata !DIExpression()), !dbg !1119
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.ipd.custom_type.v16int8.v16int8* %aw, metadata !1115, metadata !DIExpression()), !dbg !1120
  %this1 = load %struct.v4float*, %struct.v4float** %this.addr, align 4
  %mw = getelementptr inbounds %struct.v4float, %struct.v4float* %this1, i32 0, i32 0, !dbg !1121
  %1 = load %struct.ipd.custom_type.v16int8.v16int8, %struct.ipd.custom_type.v16int8.v16int8* %aw, align 16, !dbg !1122, !tbaa !1007
  store %struct.ipd.custom_type.v16int8.v16int8 %1, %struct.ipd.custom_type.v16int8.v16int8* %mw, align 16, !dbg !1122, !tbaa !1007
  ret void, !dbg !1123
}

; Function Attrs: inlinehint mustprogress nounwind
define internal %struct.v8int16 @_ZN12stream_utilsL18aie_stream_get_wssIsEE7v8int16P12input_streamIsE(%struct.input_stream.2* %ss) addrspace(1) #19 !dbg !1124 {
entry:
  %retval = alloca %struct.v8int16, align 16
  call addrspace(1) void @llvm.dbg.value(metadata %struct.input_stream.2* %ss, metadata !1128, metadata !DIExpression()), !dbg !1131
  %0 = getelementptr inbounds %struct.input_stream.2, %struct.input_stream.2* %ss, i32 0, i32 0, !dbg !1132
  %channel = bitcast %union.anon.3* %0 to i32*, !dbg !1132
  %1 = load i32, i32* %channel, align 4, !dbg !1132, !tbaa !800
  %call = call addrspace(1) %struct.v8int16 @_Z7get_wssi(i32 %1) #31, !dbg !1135
  %2 = getelementptr inbounds %struct.v8int16, %struct.v8int16* %retval, i32 0, i32 0, !dbg !1135
  %3 = extractvalue %struct.v8int16 %call, 0, !dbg !1135
  store %struct.ipd.custom_type.v16int8.v16int8 %3, %struct.ipd.custom_type.v16int8.v16int8* %2, align 16, !dbg !1135
  %4 = load %struct.v8int16, %struct.v8int16* %retval, align 16, !dbg !1136
  ret %struct.v8int16 %4, !dbg !1136
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local %struct.v8int16 @_Z7get_wssi(i32 %idx_ss) addrspace(1) #20 comdat {
entry:
  %retval = alloca %struct.v8int16, align 16
  %idx_ss.addr = alloca i32, align 4
  %agg.tmp = alloca %struct.v4int32, align 16
  store i32 %idx_ss, i32* %idx_ss.addr, align 4, !tbaa !745
  %0 = load i32, i32* %idx_ss.addr, align 4, !tbaa !745
  %call = call addrspace(1) %struct.v4int32 @_Z8getl_wssi(i32 %0) #32
  %1 = getelementptr inbounds %struct.v4int32, %struct.v4int32* %agg.tmp, i32 0, i32 0
  %2 = extractvalue %struct.v4int32 %call, 0
  store %struct.ipd.custom_type.v16int8.v16int8 %2, %struct.ipd.custom_type.v16int8.v16int8* %1, align 16
  %3 = load %struct.v4int32, %struct.v4int32* %agg.tmp, align 16, !tbaa !1007
  %call1 = call addrspace(1) %struct.v8int16 @_Z10as_v8int167v4int32(%struct.v4int32 %3) #26
  %4 = getelementptr inbounds %struct.v8int16, %struct.v8int16* %retval, i32 0, i32 0
  %5 = extractvalue %struct.v8int16 %call1, 0
  store %struct.ipd.custom_type.v16int8.v16int8 %5, %struct.ipd.custom_type.v16int8.v16int8* %4, align 16
  %6 = load %struct.v8int16, %struct.v8int16* %retval, align 16
  ret %struct.v8int16 %6
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local %struct.v8int16 @_Z10as_v8int167v4int32(%struct.v4int32 %a.coerce) addrspace(1) #16 comdat {
entry:
  %a = alloca %struct.v4int32, align 16
  %custom_type.tmp = alloca %struct.v8int16, align 16
  store %struct.v4int32 %a.coerce, %struct.v4int32* %a, align 16
  %mw = getelementptr inbounds %struct.v4int32, %struct.v4int32* %a, i32 0, i32 0
  %0 = load %struct.ipd.custom_type.v16int8.v16int8, %struct.ipd.custom_type.v16int8.v16int8* %mw, align 16, !tbaa !1007
  call addrspace(1) void @_ZN7v8int16C2E17chessllvmInternal7v16int8(%struct.v8int16* nonnull align 16 dereferenceable(16) %custom_type.tmp, i32 0, %struct.ipd.custom_type.v16int8.v16int8 %0) #26
  %1 = load %struct.v8int16, %struct.v8int16* %custom_type.tmp, align 16, !tbaa !1007
  ret %struct.v8int16 %1
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local %struct.v4int32 @_Z8getl_wssi(i32 %idx_ss) addrspace(1) #21 comdat {
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
  store i32 %idx_ss, i32* %idx_ss.addr, align 4, !tbaa !745
  %0 = load i32, i32* %idx_ss.addr, align 4, !tbaa !745
  %cmp = icmp eq i32 %0, 0
  %1 = call addrspace(1) i1 @llvm.chess_manifest(i1 %cmp)
  br i1 %1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 undef, i32* %tmp1, align 4
  %2 = bitcast i32* %tmp1 to i8*
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #25
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp, i32 0) #26
  %3 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp, align 4, !tbaa !1137
  store %struct.ipd.custom_type.uint1_t.uint1_t %3, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp, align 4, !tbaa !1137
  %4 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp, align 4, !tbaa !1137
  %call = call addrspace(1) %struct.v4int32 @_ZN12me_primitive14stream_read128IiEEN13chessEnableIfIXsr17chessIsCompatibleIN15chessRemoveQualIT_E4typeEiEE5valueE7v4int32E4typeEPU4AS25U16__protect_accessi7uint1_tRS3_(i32 addrspace(25)* @_ZN12me_primitive3ss0E, %struct.ipd.custom_type.uint1_t.uint1_t %4, i32* nonnull align 4 dereferenceable(4) %tmp1) #33
  %5 = getelementptr inbounds %struct.v4int32, %struct.v4int32* %retval, i32 0, i32 0
  %6 = extractvalue %struct.v4int32 %call, 0
  store %struct.ipd.custom_type.v16int8.v16int8 %6, %struct.ipd.custom_type.v16int8.v16int8* %5, align 16
  %7 = load i32, i32* %tmp1, align 4, !tbaa !745
  store volatile i32 %7, i32 addrspace(20)* @_ZN12me_primitive5wsst0E, align 1, !tbaa !745, !chess_protect_access !1139
  %8 = bitcast i32* %tmp1 to i8*
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #25
  br label %return

if.else:                                          ; preds = %entry
  %9 = load i32, i32* %idx_ss.addr, align 4, !tbaa !745
  %cmp1 = icmp eq i32 %9, 1
  %10 = call addrspace(1) i1 @llvm.chess_manifest(i1 %cmp1)
  br i1 %10, label %if.then2, label %if.else7

if.then2:                                         ; preds = %if.else
  store i32 undef, i32* %tmp13, align 4
  %11 = bitcast i32* %tmp13 to i8*
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #25
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp5, i32 0) #26
  %12 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp5, align 4, !tbaa !1137
  store %struct.ipd.custom_type.uint1_t.uint1_t %12, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp4, align 4, !tbaa !1137
  %13 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp4, align 4, !tbaa !1137
  %call6 = call addrspace(1) %struct.v4int32 @_ZN12me_primitive14stream_read128IiEEN13chessEnableIfIXsr17chessIsCompatibleIN15chessRemoveQualIT_E4typeEiEE5valueE7v4int32E4typeEPU4AS26U16__protect_accessi7uint1_tRS3_(i32 addrspace(26)* @_ZN12me_primitive3ss1E, %struct.ipd.custom_type.uint1_t.uint1_t %13, i32* nonnull align 4 dereferenceable(4) %tmp13) #33
  %14 = getelementptr inbounds %struct.v4int32, %struct.v4int32* %retval, i32 0, i32 0
  %15 = extractvalue %struct.v4int32 %call6, 0
  store %struct.ipd.custom_type.v16int8.v16int8 %15, %struct.ipd.custom_type.v16int8.v16int8* %14, align 16
  %16 = load i32, i32* %tmp13, align 4, !tbaa !745
  store volatile i32 %16, i32 addrspace(20)* @_ZN12me_primitive5wsst1E, align 1, !tbaa !745, !chess_protect_access !1139
  %17 = bitcast i32* %tmp13 to i8*
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %17) #25
  br label %return

if.else7:                                         ; preds = %if.else
  store i32 undef, i32* %tmp18, align 4
  %18 = bitcast i32* %tmp18 to i8*
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #25
  %19 = load i32, i32* %idx_ss.addr, align 4, !tbaa !745
  %conv = trunc i32 %19 to i1
  %20 = inttoptr i1 %conv to i32 addrspace(17)*
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp10, i32 0) #26
  %21 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp10, align 4, !tbaa !1137
  store %struct.ipd.custom_type.uint1_t.uint1_t %21, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp9, align 4, !tbaa !1137
  %22 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp9, align 4, !tbaa !1137
  %call11 = call addrspace(1) %struct.v4int32 @_ZN12me_primitive14stream_read128IiEEN13chessEnableIfIXsr17chessIsCompatibleIN15chessRemoveQualIT_E4typeEiEE5valueE7v4int32E4typeEPU4AS17U16__protect_accessi7uint1_tRS3_(i32 addrspace(17)* %20, %struct.ipd.custom_type.uint1_t.uint1_t %22, i32* nonnull align 4 dereferenceable(4) %tmp18) #33
  %23 = getelementptr inbounds %struct.v4int32, %struct.v4int32* %retval, i32 0, i32 0
  %24 = extractvalue %struct.v4int32 %call11, 0
  store %struct.ipd.custom_type.v16int8.v16int8 %24, %struct.ipd.custom_type.v16int8.v16int8* %23, align 16
  %25 = load i32, i32* %tmp18, align 4, !tbaa !745
  %26 = load i32, i32* %idx_ss.addr, align 4, !tbaa !745
  %conv12 = trunc i32 %26 to i1
  %27 = inttoptr i1 %conv12 to i32 addrspace(20)*
  store volatile i32 %25, i32 addrspace(20)* %27, align 1, !tbaa !745, !chess_protect_access !1139
  %28 = bitcast i32* %tmp18 to i8*
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #25
  br label %return

return:                                           ; preds = %if.else7, %if.then2, %if.then
  %29 = load %struct.v4int32, %struct.v4int32* %retval, align 16
  ret %struct.v4int32 %29
}

; Function Attrs: nounwind
define linkonce_odr dso_local void @_ZN7v8int16C2E17chessllvmInternal7v16int8(%struct.v8int16* nonnull align 16 dereferenceable(16) %this, i32 %0, %struct.ipd.custom_type.v16int8.v16int8 %aw.coerce) unnamed_addr addrspace(1) #7 comdat align 2 !dbg !1140 {
entry:
  %aw = alloca %struct.ipd.custom_type.v16int8.v16int8, align 16
  %this.addr = alloca %struct.v8int16*, align 4
  %.addr = alloca i32, align 4
  store %struct.ipd.custom_type.v16int8.v16int8 %aw.coerce, %struct.ipd.custom_type.v16int8.v16int8* %aw, align 16
  store %struct.v8int16* %this, %struct.v8int16** %this.addr, align 4, !tbaa !831
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.v8int16** %this.addr, metadata !1162, metadata !DIExpression()), !dbg !1166
  store i32 0, i32* %.addr, align 4, !tbaa !1117
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %.addr, metadata !1164, metadata !DIExpression()), !dbg !1167
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.ipd.custom_type.v16int8.v16int8* %aw, metadata !1165, metadata !DIExpression()), !dbg !1168
  %this1 = load %struct.v8int16*, %struct.v8int16** %this.addr, align 4
  %mw = getelementptr inbounds %struct.v8int16, %struct.v8int16* %this1, i32 0, i32 0, !dbg !1169
  %1 = load %struct.ipd.custom_type.v16int8.v16int8, %struct.ipd.custom_type.v16int8.v16int8* %aw, align 16, !dbg !1170, !tbaa !1007
  store %struct.ipd.custom_type.v16int8.v16int8 %1, %struct.ipd.custom_type.v16int8.v16int8* %mw, align 16, !dbg !1170, !tbaa !1007
  ret void, !dbg !1171
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.chess_manifest(i1) addrspace(1) #15

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local %struct.v4int32 @_ZN12me_primitive14stream_read128IiEEN13chessEnableIfIXsr17chessIsCompatibleIN15chessRemoveQualIT_E4typeEiEE5valueE7v4int32E4typeEPU4AS25U16__protect_accessi7uint1_tRS3_(i32 addrspace(25)* %a0, %struct.ipd.custom_type.uint1_t.uint1_t %a1.coerce, i32* nonnull align 4 dereferenceable(4) %a2) addrspace(1) #12 comdat {
entry:
  %a1 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %a0.addr = alloca i32 addrspace(25)*, align 4
  %a2.addr = alloca i32*, align 4
  %out = alloca %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sint", align 1
  store %struct.ipd.custom_type.uint1_t.uint1_t %a1.coerce, %struct.ipd.custom_type.uint1_t.uint1_t* %a1, align 4
  store i32 addrspace(25)* @_ZN12me_primitive3ss0E, i32 addrspace(25)** %a0.addr, align 4, !tbaa !831
  store i32* %a2, i32** %a2.addr, align 4, !tbaa !831
  store %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sint" undef, %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sint"* %out, align 1
  %0 = bitcast %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sint"* %out to i8*
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 20, i8* %0) #25
  %1 = load i32 addrspace(25)*, i32 addrspace(25)** %a0.addr, align 4, !tbaa !831
  %2 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a1, align 4, !tbaa !1137
  %call = call x86_regcallcc addrspace(1) %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sint" @__regcall3__chessintr_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sint(i32 addrspace(25)* "ipd_load"="0,4" %1, %struct.ipd.custom_type.uint1_t.uint1_t %2) #34
  %3 = getelementptr inbounds %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sint", %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sint"* %out, i32 0, i32 0
  %4 = extractvalue %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sint" %call, 0
  store %struct.v4int32 %4, %struct.v4int32* %3, align 1
  %5 = getelementptr inbounds %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sint", %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sint"* %out, i32 0, i32 1
  %6 = extractvalue %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sint" %call, 1
  store i32 %6, i32* %5, align 1
  %o1 = getelementptr inbounds %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sint", %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sint"* %out, i32 0, i32 1
  %7 = load i32, i32* %o1, align 1, !tbaa !1172
  %8 = load i32*, i32** %a2.addr, align 4, !tbaa !831
  store i32 %7, i32* %8, align 4, !tbaa !745
  %o0 = getelementptr inbounds %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sint", %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sint"* %out, i32 0, i32 0
  %9 = load %struct.v4int32, %struct.v4int32* %o0, align 1, !tbaa !1007
  %10 = bitcast %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sint"* %out to i8*
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 20, i8* %10) #25
  ret %struct.v4int32 %9
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dso_local void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %this, i32 %a) unnamed_addr addrspace(1) #13 comdat align 2 {
entry:
  %this.addr = alloca %struct.ipd.custom_type.uint1_t.uint1_t*, align 4
  %a.addr = alloca i32, align 4
  store %struct.ipd.custom_type.uint1_t.uint1_t* %this, %struct.ipd.custom_type.uint1_t.uint1_t** %this.addr, align 4, !tbaa !831
  store i32 %a, i32* %a.addr, align 4, !tbaa !745
  %this1 = load %struct.ipd.custom_type.uint1_t.uint1_t*, %struct.ipd.custom_type.uint1_t.uint1_t** %this.addr, align 4
  %0 = bitcast %struct.ipd.custom_type.uint1_t.uint1_t* %this1 to i1*
  store i1 false, i1* %0, align 4
  %1 = load i32, i32* %a.addr, align 4, !tbaa !745
  %2 = call addrspace(1) %struct.ipd.custom_type.uint1_t.uint1_t @llvm.chess.init.customint.s_struct.ipd.custom_type.uint1_t.uint1_ts.i32.p1f_s_struct.ipd.custom_type.uint1_t.uint1_tsi32f(%struct.ipd.custom_type.uint1_t.uint1_t undef, i32 %1, i32 1, i32 32, i1 true, i32 0, %struct.ipd.custom_type.uint1_t.uint1_t (i32) addrspace(1)* @__regcall3__chessintr_uint1_t_uint1_t___sint)
  store %struct.ipd.custom_type.uint1_t.uint1_t %2, %struct.ipd.custom_type.uint1_t.uint1_t* %this1, align 4
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local %struct.v4int32 @_ZN12me_primitive14stream_read128IiEEN13chessEnableIfIXsr17chessIsCompatibleIN15chessRemoveQualIT_E4typeEiEE5valueE7v4int32E4typeEPU4AS26U16__protect_accessi7uint1_tRS3_(i32 addrspace(26)* %a0, %struct.ipd.custom_type.uint1_t.uint1_t %a1.coerce, i32* nonnull align 4 dereferenceable(4) %a2) addrspace(1) #12 comdat {
entry:
  %a1 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %a0.addr = alloca i32 addrspace(26)*, align 4
  %a2.addr = alloca i32*, align 4
  %out = alloca %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sint", align 1
  store %struct.ipd.custom_type.uint1_t.uint1_t %a1.coerce, %struct.ipd.custom_type.uint1_t.uint1_t* %a1, align 4
  store i32 addrspace(26)* @_ZN12me_primitive3ss1E, i32 addrspace(26)** %a0.addr, align 4, !tbaa !831
  store i32* %a2, i32** %a2.addr, align 4, !tbaa !831
  store %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sint" undef, %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sint"* %out, align 1
  %0 = bitcast %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sint"* %out to i8*
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 20, i8* %0) #25
  %1 = load i32 addrspace(26)*, i32 addrspace(26)** %a0.addr, align 4, !tbaa !831
  %2 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a1, align 4, !tbaa !1137
  %call = call x86_regcallcc addrspace(1) %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sint" @__regcall3__chessintr_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sint(i32 addrspace(26)* "ipd_load"="0,4" %1, %struct.ipd.custom_type.uint1_t.uint1_t %2) #34
  %3 = getelementptr inbounds %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sint", %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sint"* %out, i32 0, i32 0
  %4 = extractvalue %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sint" %call, 0
  store %struct.v4int32 %4, %struct.v4int32* %3, align 1
  %5 = getelementptr inbounds %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sint", %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sint"* %out, i32 0, i32 1
  %6 = extractvalue %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sint" %call, 1
  store i32 %6, i32* %5, align 1
  %o1 = getelementptr inbounds %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sint", %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sint"* %out, i32 0, i32 1
  %7 = load i32, i32* %o1, align 1, !tbaa !1174
  %8 = load i32*, i32** %a2.addr, align 4, !tbaa !831
  store i32 %7, i32* %8, align 4, !tbaa !745
  %o0 = getelementptr inbounds %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sint", %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sint"* %out, i32 0, i32 0
  %9 = load %struct.v4int32, %struct.v4int32* %o0, align 1, !tbaa !1007
  %10 = bitcast %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sint"* %out to i8*
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 20, i8* %10) #25
  ret %struct.v4int32 %9
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local %struct.v4int32 @_ZN12me_primitive14stream_read128IiEEN13chessEnableIfIXsr17chessIsCompatibleIN15chessRemoveQualIT_E4typeEiEE5valueE7v4int32E4typeEPU4AS17U16__protect_accessi7uint1_tRS3_(i32 addrspace(17)* %a0, %struct.ipd.custom_type.uint1_t.uint1_t %a1.coerce, i32* nonnull align 4 dereferenceable(4) %a2) addrspace(1) #12 comdat {
entry:
  %a1 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %a0.addr = alloca i32 addrspace(17)*, align 4
  %a2.addr = alloca i32*, align 4
  %out = alloca %"struct.me_primitive::chessout_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sint", align 1
  store %struct.ipd.custom_type.uint1_t.uint1_t %a1.coerce, %struct.ipd.custom_type.uint1_t.uint1_t* %a1, align 4
  store i32 addrspace(17)* %a0, i32 addrspace(17)** %a0.addr, align 4, !tbaa !831
  store i32* %a2, i32** %a2.addr, align 4, !tbaa !831
  store %"struct.me_primitive::chessout_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sint" undef, %"struct.me_primitive::chessout_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sint"* %out, align 1
  %0 = bitcast %"struct.me_primitive::chessout_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sint"* %out to i8*
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 20, i8* %0) #25
  %1 = load i32 addrspace(17)*, i32 addrspace(17)** %a0.addr, align 4, !tbaa !831
  %2 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a1, align 4, !tbaa !1137
  %call = call x86_regcallcc addrspace(1) %"struct.me_primitive::chessout_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sint" @__regcall3__chessintr_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sint(i32 addrspace(17)* "ipd_load"="0,4" %1, %struct.ipd.custom_type.uint1_t.uint1_t %2) #34
  %3 = getelementptr inbounds %"struct.me_primitive::chessout_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sint", %"struct.me_primitive::chessout_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sint"* %out, i32 0, i32 0
  %4 = extractvalue %"struct.me_primitive::chessout_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sint" %call, 0
  store %struct.v4int32 %4, %struct.v4int32* %3, align 1
  %5 = getelementptr inbounds %"struct.me_primitive::chessout_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sint", %"struct.me_primitive::chessout_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sint"* %out, i32 0, i32 1
  %6 = extractvalue %"struct.me_primitive::chessout_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sint" %call, 1
  store i32 %6, i32* %5, align 1
  %o1 = getelementptr inbounds %"struct.me_primitive::chessout_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sint", %"struct.me_primitive::chessout_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sint"* %out, i32 0, i32 1
  %7 = load i32, i32* %o1, align 1, !tbaa !1176
  %8 = load i32*, i32** %a2.addr, align 4, !tbaa !831
  store i32 %7, i32* %8, align 4, !tbaa !745
  %o0 = getelementptr inbounds %"struct.me_primitive::chessout_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sint", %"struct.me_primitive::chessout_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sint"* %out, i32 0, i32 0
  %9 = load %struct.v4int32, %struct.v4int32* %o0, align 1, !tbaa !1007
  %10 = bitcast %"struct.me_primitive::chessout_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sint"* %out to i8*
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 20, i8* %10) #25
  ret %struct.v4int32 %9
}

; Function Attrs: argmemonly nounwind
declare dso_local x86_regcallcc %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sint" @__regcall3__chessintr_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sint(i32 addrspace(25)* "ipd_load"="0,4", %struct.ipd.custom_type.uint1_t.uint1_t) addrspace(1) #22

; Function Attrs: nounwind readnone willreturn
declare dso_local x86_regcallcc %struct.ipd.custom_type.uint1_t.uint1_t @__regcall3__chessintr_uint1_t_uint1_t___sint(i32 signext) addrspace(1) #14

; Function Attrs: nounwind readnone willreturn
declare %struct.ipd.custom_type.uint1_t.uint1_t @llvm.chess.init.customint.s_struct.ipd.custom_type.uint1_t.uint1_ts.i32.p1f_s_struct.ipd.custom_type.uint1_t.uint1_tsi32f(%struct.ipd.custom_type.uint1_t.uint1_t, i32, i32, i32, i1, i32, %struct.ipd.custom_type.uint1_t.uint1_t (i32) addrspace(1)*) addrspace(1) #15

; Function Attrs: argmemonly nounwind
declare dso_local x86_regcallcc %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sint" @__regcall3__chessintr_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sint(i32 addrspace(26)* "ipd_load"="0,4", %struct.ipd.custom_type.uint1_t.uint1_t) addrspace(1) #22

; Function Attrs: argmemonly nounwind
declare dso_local x86_regcallcc %"struct.me_primitive::chessout_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sint" @__regcall3__chessintr_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sint(i32 addrspace(17)* "ipd_load"="0,4", %struct.ipd.custom_type.uint1_t.uint1_t) addrspace(1) #22

; Function Attrs: alwaysinline nounwind
define linkonce_odr dso_local void @_ZN3aie6detail11vector_baseIfLj4EEC2E7v4float(%"class.aie::detail::vector_base"* nonnull align 16 dereferenceable(16) %this, %struct.v4float %v.coerce) unnamed_addr addrspace(1) #13 comdat align 2 !dbg !1178 {
entry:
  call addrspace(1) void @llvm.dbg.value(metadata %struct.v4float %v.coerce, metadata !1181, metadata !DIExpression()), !dbg !1182
  call addrspace(1) void @llvm.dbg.value(metadata %"class.aie::detail::vector_base"* %this, metadata !1180, metadata !DIExpression()), !dbg !1182
  %data = getelementptr inbounds %"class.aie::detail::vector_base", %"class.aie::detail::vector_base"* %this, i32 0, i32 0, !dbg !1183
  store %struct.v4float %v.coerce, %struct.v4float* %data, align 16, !dbg !1184, !tbaa !1007
  ret void, !dbg !1185
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local nonnull align 16 dereferenceable(16) %"class.aie::detail::vector_base"* @_ZN3aie6detail11vector_baseIfLj4EE6insertILj4EEERS2_jRKNS1_IfXT_EEE(%"class.aie::detail::vector_base"* nonnull align 16 dereferenceable(16) %this, i32 %idx, %"class.aie::detail::vector_base"* nonnull align 16 dereferenceable(16) %v) addrspace(1) #16 comdat align 2 !dbg !1186 {
entry:
  call addrspace(1) void @llvm.dbg.value(metadata %"class.aie::detail::vector_base"* %this, metadata !1192, metadata !DIExpression()), !dbg !1196
  call addrspace(1) void @llvm.dbg.value(metadata i32 %idx, metadata !1193, metadata !DIExpression()), !dbg !1196
  call addrspace(1) void @llvm.dbg.value(metadata %"class.aie::detail::vector_base"* %v, metadata !1194, metadata !DIExpression()), !dbg !1196
  %cmp = icmp ult i32 %idx, 1, !dbg !1197
  %0 = call addrspace(1) i1 @llvm.is.constant.i1(i1 %cmp), !dbg !1197
  br i1 %0, label %do.body2, label %if.else, !dbg !1200

do.body2:                                         ; preds = %entry
  %cmp3 = icmp ult i32 %idx, 1, !dbg !1201
  %1 = call addrspace(1) i1 @llvm.chess_manifest(i1 %cmp3), !dbg !1201
  br i1 %1, label %do.end7, label %if.then4, !dbg !1205

if.then4:                                         ; preds = %do.body2
  call addrspace(1) void @llvm.chess_error(metadata !1206), !dbg !1201
  br label %do.end7, !dbg !1201

if.else:                                          ; preds = %entry
  %cmp5 = icmp ult i32 %idx, 1, !dbg !1207
  call addrspace(1) void @llvm.assume(i1 %cmp5), !dbg !1207
  br label %do.end7

do.end7:                                          ; preds = %if.else, %if.then4, %do.body2
  call addrspace(1) void @llvm.dbg.value(metadata i32 undef, metadata !1195, metadata !DIExpression()), !dbg !1196
  call addrspace(1) void @llvm.dbg.value(metadata i32 128, metadata !1195, metadata !DIExpression()), !dbg !1196
  %data = getelementptr inbounds %"class.aie::detail::vector_base", %"class.aie::detail::vector_base"* %this, i32 0, i32 0, !dbg !1209
  %data8 = getelementptr inbounds %"class.aie::detail::vector_base", %"class.aie::detail::vector_base"* %v, i32 0, i32 0, !dbg !1212
  %2 = load %struct.v4float, %struct.v4float* %data8, align 16, !dbg !1212, !tbaa !1007
  store %struct.v4float %2, %struct.v4float* %data, align 16, !dbg !1212, !tbaa !1007
  ret %"class.aie::detail::vector_base"* %this, !dbg !1213
}

; Function Attrs: convergent nocallback nofree nosync nounwind readnone willreturn
declare i1 @llvm.is.constant.i1(i1) addrspace(1) #23

; Function Attrs: nounwind willreturn
declare void @llvm.chess_error(metadata) addrspace(1) #9

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) addrspace(1) #24

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local i32 @_ZNK3aie6detail5utils14unroll_contextIjLj0ELj1ELj0EE7currentEv(%"struct.aie::detail::utils::unroll_context"* nonnull align 1 dereferenceable(1) %this) addrspace(1) #2 comdat align 2 !dbg !1214 {
entry:
  call addrspace(1) void @llvm.dbg.value(metadata %"struct.aie::detail::utils::unroll_context"* %this, metadata !1216, metadata !DIExpression()), !dbg !1217
  ret i32 0, !dbg !1218
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local void @_ZN3aie6detail3adf17stream_out_helperILj4EfL23aie_stream_resource_out0EE9writeincrEP13output_streamIfENS_6vectorIfLj4EEE(%struct.output_stream* %w, %"class.aie::vector" %value.coerce) addrspace(1) #16 comdat align 2 !dbg !1219 {
entry:
  %value = alloca %"class.aie::vector", align 16
  %agg.tmp = alloca %struct.v4float, align 16
  %ref.tmp = alloca %"class.aie::vector", align 16
  store %"class.aie::vector" %value.coerce, %"class.aie::vector"* %value, align 16
  call addrspace(1) void @llvm.dbg.value(metadata %struct.output_stream* %w, metadata !1232, metadata !DIExpression()), !dbg !1236
  call addrspace(1) void @llvm.dbg.declare(metadata %"class.aie::vector"* %value, metadata !1233, metadata !DIExpression()), !dbg !1237
  call addrspace(1) void @llvm.dbg.value(metadata i32 undef, metadata !1234, metadata !DIExpression()), !dbg !1238
  call addrspace(1) void @llvm.dbg.value(metadata i32 0, metadata !1234, metadata !DIExpression()), !dbg !1238
  br label %for.body, !dbg !1239

for.body:                                         ; preds = %for.body, %entry
  %i.01 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  call addrspace(1) void @llvm.dbg.value(metadata i32 %i.01, metadata !1234, metadata !DIExpression()), !dbg !1238
  %0 = bitcast %"class.aie::vector"* %ref.tmp to i8*, !dbg !1240
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 16, i8* %0) #25, !dbg !1240
  %call = call addrspace(1) %"class.aie::vector" @_ZNK3aie6vectorIfLj4EE7extractILj4EEENS0_IfXT_EEEj(%"class.aie::vector"* nonnull align 16 dereferenceable(16) %value, i32 %i.01) #26, !dbg !1242
  %1 = getelementptr inbounds %"class.aie::vector", %"class.aie::vector"* %ref.tmp, i32 0, i32 0, !dbg !1242
  %2 = extractvalue %"class.aie::vector" %call, 0, !dbg !1242
  store %"class.aie::detail::vector_base" %2, %"class.aie::detail::vector_base"* %1, align 16, !dbg !1242
  %call1 = call addrspace(1) %struct.v4float @_ZNK3aie6vectorIfLj4EEcv7v4floatEv(%"class.aie::vector"* nonnull align 16 dereferenceable(16) %ref.tmp) #26, !dbg !1240
  %3 = getelementptr inbounds %struct.v4float, %struct.v4float* %agg.tmp, i32 0, i32 0, !dbg !1240
  %4 = extractvalue %struct.v4float %call1, 0, !dbg !1240
  store %struct.ipd.custom_type.v16int8.v16int8 %4, %struct.ipd.custom_type.v16int8.v16int8* %3, align 16, !dbg !1240
  %5 = load %struct.v4float, %struct.v4float* %agg.tmp, align 16, !dbg !1243, !tbaa !1007
  call addrspace(1) void @_ZL9writeincrIL23aie_stream_resource_out0EEvP13output_streamIfE7v4floatb(%struct.output_stream* %w, %struct.v4float %5, i1 zeroext false) #26, !dbg !1243
  %6 = bitcast %"class.aie::vector"* %ref.tmp to i8*, !dbg !1243
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 16, i8* %6) #25, !dbg !1243
  %inc = add i32 %i.01, 1, !dbg !1244
  call addrspace(1) void @llvm.dbg.value(metadata i32 %inc, metadata !1234, metadata !DIExpression()), !dbg !1238
  %cmp = icmp ult i32 %inc, 1, !dbg !1245
  br i1 %cmp, label %for.body, label %for.end, !dbg !1239, !llvm.loop !1246

for.end:                                          ; preds = %for.body
  ret void, !dbg !1252
}

; Function Attrs: inlinehint mustprogress nounwind
define internal void @_ZL9writeincrIL23aie_stream_resource_out0EEvP13output_streamIfE7v4floatb(%struct.output_stream* %str, %struct.v4float %value.coerce, i1 zeroext %tlast) addrspace(1) #19 !dbg !1253 {
entry:
  %agg.tmp = alloca %struct.v8int16, align 16
  call addrspace(1) void @llvm.dbg.value(metadata %struct.v4float %value.coerce, metadata !1259, metadata !DIExpression()), !dbg !1262
  call addrspace(1) void @llvm.dbg.value(metadata %struct.output_stream* %str, metadata !1258, metadata !DIExpression()), !dbg !1262
  %frombool = zext i1 false to i8
  call addrspace(1) void @llvm.dbg.value(metadata i8 %frombool, metadata !1260, metadata !DIExpression()), !dbg !1262
  %0 = bitcast %struct.output_stream* %str to %struct.output_stream.4*, !dbg !1263
  %call = call addrspace(1) %struct.v8int16 @_Z10as_v8int167v4float(%struct.v4float %value.coerce) #26, !dbg !1263
  %1 = getelementptr inbounds %struct.v8int16, %struct.v8int16* %agg.tmp, i32 0, i32 0, !dbg !1263
  %2 = extractvalue %struct.v8int16 %call, 0, !dbg !1263
  store %struct.ipd.custom_type.v16int8.v16int8 %2, %struct.ipd.custom_type.v16int8.v16int8* %1, align 16, !dbg !1263
  %tobool = trunc i8 %frombool to i1, !dbg !1263
  %3 = load %struct.v8int16, %struct.v8int16* %agg.tmp, align 16, !dbg !1263, !tbaa !1007
  call addrspace(1) void @_ZL9writeincrIL23aie_stream_resource_out0EEvP13output_streamIsE7v8int16b(%struct.output_stream.4* %0, %struct.v8int16 %3, i1 zeroext %tobool) #26, !dbg !1263
  ret void, !dbg !1263
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local %"class.aie::vector" @_ZNK3aie6vectorIfLj4EE7extractILj4EEENS0_IfXT_EEEj(%"class.aie::vector"* nonnull align 16 dereferenceable(16) %this, i32 %idx) addrspace(1) #16 comdat align 2 !dbg !1264 {
entry:
  %custom_type.tmp = alloca %"class.aie::vector", align 16
  %ref.tmp = alloca %"class.aie::detail::vector_base", align 16
  call addrspace(1) void @llvm.dbg.value(metadata %"class.aie::vector"* %this, metadata !1271, metadata !DIExpression()), !dbg !1274
  call addrspace(1) void @llvm.dbg.value(metadata i32 %idx, metadata !1273, metadata !DIExpression()), !dbg !1274
  %0 = bitcast %"class.aie::detail::vector_base"* %ref.tmp to i8*, !dbg !1275
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 16, i8* %0) #25, !dbg !1275
  %1 = bitcast %"class.aie::vector"* %this to %"class.aie::detail::vector_base"*, !dbg !1276
  %call = call addrspace(1) %"class.aie::detail::vector_base" @_ZNK3aie6detail11vector_baseIfLj4EE7extractILj4EEENS1_IfXT_EEEj(%"class.aie::detail::vector_base"* nonnull align 16 dereferenceable(16) %1, i32 %idx) #26, !dbg !1276
  %2 = getelementptr inbounds %"class.aie::detail::vector_base", %"class.aie::detail::vector_base"* %ref.tmp, i32 0, i32 0, !dbg !1276
  %3 = extractvalue %"class.aie::detail::vector_base" %call, 0, !dbg !1276
  store %struct.v4float %3, %struct.v4float* %2, align 16, !dbg !1276
  call addrspace(1) void @_ZN3aie6vectorIfLj4EEC2ERKNS_6detail11vector_baseIfLj4EEE(%"class.aie::vector"* nonnull align 16 dereferenceable(16) %custom_type.tmp, %"class.aie::detail::vector_base"* nonnull align 16 dereferenceable(16) %ref.tmp) #26, !dbg !1275
  %4 = load %"class.aie::vector", %"class.aie::vector"* %custom_type.tmp, align 16, !dbg !1275, !tbaa !877
  %5 = bitcast %"class.aie::detail::vector_base"* %ref.tmp to i8*, !dbg !1277
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 16, i8* %5) #25, !dbg !1277
  ret %"class.aie::vector" %4, !dbg !1275
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local %struct.v4float @_ZNK3aie6vectorIfLj4EEcv7v4floatEv(%"class.aie::vector"* nonnull align 16 dereferenceable(16) %this) addrspace(1) #16 comdat align 2 !dbg !1278 {
entry:
  %retval = alloca %struct.v4float, align 16
  call addrspace(1) void @llvm.dbg.value(metadata %"class.aie::vector"* %this, metadata !1280, metadata !DIExpression()), !dbg !1281
  %call = call addrspace(1) %struct.v4float @_ZNK3aie6vectorIfLj4EE9to_nativeEv(%"class.aie::vector"* nonnull align 16 dereferenceable(16) %this) #26, !dbg !1282
  %0 = getelementptr inbounds %struct.v4float, %struct.v4float* %retval, i32 0, i32 0, !dbg !1282
  %1 = extractvalue %struct.v4float %call, 0, !dbg !1282
  store %struct.ipd.custom_type.v16int8.v16int8 %1, %struct.ipd.custom_type.v16int8.v16int8* %0, align 16, !dbg !1282
  %2 = load %struct.v4float, %struct.v4float* %retval, align 16, !dbg !1283
  ret %struct.v4float %2, !dbg !1283
}

; Function Attrs: inlinehint mustprogress nounwind
define internal void @_ZL9writeincrIL23aie_stream_resource_out0EEvP13output_streamIsE7v8int16b(%struct.output_stream.4* %ss, %struct.v8int16 %value.coerce, i1 zeroext %tlast) addrspace(1) #19 !dbg !1284 {
entry:
  %tlast.addr = alloca i8, align 1
  call addrspace(1) void @llvm.dbg.value(metadata %struct.v8int16 %value.coerce, metadata !1289, metadata !DIExpression()), !dbg !1293
  call addrspace(1) void @llvm.dbg.value(metadata %struct.output_stream.4* %ss, metadata !1288, metadata !DIExpression()), !dbg !1293
  %frombool = zext i1 %tlast to i8
  store i8 %frombool, i8* %tlast.addr, align 1, !tbaa !1294
  call addrspace(1) void @llvm.dbg.declare(metadata i8* %tlast.addr, metadata !1290, metadata !DIExpression()), !dbg !1296
  call addrspace(1) void @_ZN12stream_utilsL18aie_stream_put_wmsIsEEvP13output_streamIsE7v8int16Rb(%struct.output_stream.4* %ss, %struct.v8int16 %value.coerce, i8* nonnull align 1 dereferenceable(1) %tlast.addr) #26, !dbg !1297
  ret void, !dbg !1298
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local %struct.v8int16 @_Z10as_v8int167v4float(%struct.v4float %a.coerce) addrspace(1) #16 comdat {
entry:
  %a = alloca %struct.v4float, align 16
  %custom_type.tmp = alloca %struct.v8int16, align 16
  store %struct.v4float %a.coerce, %struct.v4float* %a, align 16
  %mw = getelementptr inbounds %struct.v4float, %struct.v4float* %a, i32 0, i32 0
  %0 = load %struct.ipd.custom_type.v16int8.v16int8, %struct.ipd.custom_type.v16int8.v16int8* %mw, align 16, !tbaa !1007
  call addrspace(1) void @_ZN7v8int16C2E17chessllvmInternal7v16int8(%struct.v8int16* nonnull align 16 dereferenceable(16) %custom_type.tmp, i32 0, %struct.ipd.custom_type.v16int8.v16int8 %0) #26
  %1 = load %struct.v8int16, %struct.v8int16* %custom_type.tmp, align 16, !tbaa !1007
  ret %struct.v8int16 %1
}

; Function Attrs: inlinehint mustprogress nounwind
define internal void @_ZN12stream_utilsL18aie_stream_put_wmsIsEEvP13output_streamIsE7v8int16Rb(%struct.output_stream.4* %ss, %struct.v8int16 %value.coerce, i8* nonnull align 1 dereferenceable(1) %tlast) addrspace(1) #19 !dbg !1299 {
entry:
  call addrspace(1) void @llvm.dbg.value(metadata %struct.v8int16 %value.coerce, metadata !1304, metadata !DIExpression()), !dbg !1306
  call addrspace(1) void @llvm.dbg.value(metadata %struct.output_stream.4* %ss, metadata !1303, metadata !DIExpression()), !dbg !1306
  call addrspace(1) void @llvm.dbg.value(metadata i8* %tlast, metadata !1305, metadata !DIExpression()), !dbg !1306
  %0 = getelementptr inbounds %struct.output_stream.4, %struct.output_stream.4* %ss, i32 0, i32 0, !dbg !1307
  %channel = bitcast %union.anon.5* %0 to i32*, !dbg !1307
  %1 = load i32, i32* %channel, align 4, !dbg !1307, !tbaa !800
  %2 = load i8, i8* %tlast, align 1, !dbg !1310, !tbaa !1294, !range !1311
  %tobool = trunc i8 %2 to i1, !dbg !1310
  %conv = zext i1 %tobool to i32, !dbg !1310
  call addrspace(1) void @_Z7put_wmsi7v8int16i(i32 %1, %struct.v8int16 %value.coerce, i32 %conv) #31, !dbg !1312
  ret void, !dbg !1313
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local void @_Z7put_wmsi7v8int16i(i32 %idx_ms, %struct.v8int16 %a.coerce, i32 %tlast) addrspace(1) #20 comdat {
entry:
  %a = alloca %struct.v8int16, align 16
  %idx_ms.addr = alloca i32, align 4
  %tlast.addr = alloca i32, align 4
  %agg.tmp = alloca %struct.v4int32, align 16
  store %struct.v8int16 %a.coerce, %struct.v8int16* %a, align 16
  store i32 %idx_ms, i32* %idx_ms.addr, align 4, !tbaa !745
  store i32 %tlast, i32* %tlast.addr, align 4, !tbaa !745
  %0 = load i32, i32* %idx_ms.addr, align 4, !tbaa !745
  %1 = load %struct.v8int16, %struct.v8int16* %a, align 16, !tbaa !1007
  %call = call addrspace(1) %struct.v4int32 @_Z10as_v4int327v8int16(%struct.v8int16 %1) #26
  %2 = getelementptr inbounds %struct.v4int32, %struct.v4int32* %agg.tmp, i32 0, i32 0
  %3 = extractvalue %struct.v4int32 %call, 0
  store %struct.ipd.custom_type.v16int8.v16int8 %3, %struct.ipd.custom_type.v16int8.v16int8* %2, align 16
  %4 = load i32, i32* %tlast.addr, align 4, !tbaa !745
  %5 = load %struct.v4int32, %struct.v4int32* %agg.tmp, align 16, !tbaa !1007
  call addrspace(1) void @_Z7put_wmsi7v4int32i(i32 %0, %struct.v4int32 %5, i32 %4) #32
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local void @_Z7put_wmsi7v4int32i(i32 %idx_ms, %struct.v4int32 %val.coerce, i32 %tlast) addrspace(1) #21 comdat {
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
  store i32 %idx_ms, i32* %idx_ms.addr, align 4, !tbaa !745
  store i32 %tlast, i32* %tlast.addr, align 4, !tbaa !745
  %0 = load i32, i32* %idx_ms.addr, align 4, !tbaa !745
  %cmp = icmp eq i32 %0, 0
  %1 = call addrspace(1) i1 @llvm.chess_manifest(i1 %cmp)
  br i1 %1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp, i32 0) #26
  %2 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp, align 4, !tbaa !1137
  store %struct.ipd.custom_type.uint1_t.uint1_t %2, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp, align 4, !tbaa !1137
  %3 = load i32, i32* %tlast.addr, align 4, !tbaa !745
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp2, i32 %3) #26
  %4 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp2, align 4, !tbaa !1137
  store %struct.ipd.custom_type.uint1_t.uint1_t %4, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp1, align 4, !tbaa !1137
  %5 = load %struct.v4int32, %struct.v4int32* %val, align 16, !tbaa !1007
  %6 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp, align 4, !tbaa !1137
  %7 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp1, align 4, !tbaa !1137
  call addrspace(1) void @_ZN12me_primitive15stream_write128EPU4AS29U16__protect_accessi7v4int327uint1_tS3_(i32 addrspace(29)* @_ZN12me_primitive3ms0E, %struct.v4int32 %5, %struct.ipd.custom_type.uint1_t.uint1_t %6, %struct.ipd.custom_type.uint1_t.uint1_t %7) #33
  br label %if.end14

if.else:                                          ; preds = %entry
  %8 = load i32, i32* %idx_ms.addr, align 4, !tbaa !745
  %cmp3 = icmp eq i32 %8, 1
  %9 = call addrspace(1) i1 @llvm.chess_manifest(i1 %cmp3)
  br i1 %9, label %if.then4, label %if.else9

if.then4:                                         ; preds = %if.else
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp6, i32 0) #26
  %10 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp6, align 4, !tbaa !1137
  store %struct.ipd.custom_type.uint1_t.uint1_t %10, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp5, align 4, !tbaa !1137
  %11 = load i32, i32* %tlast.addr, align 4, !tbaa !745
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp8, i32 %11) #26
  %12 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp8, align 4, !tbaa !1137
  store %struct.ipd.custom_type.uint1_t.uint1_t %12, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp7, align 4, !tbaa !1137
  %13 = load %struct.v4int32, %struct.v4int32* %val, align 16, !tbaa !1007
  %14 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp5, align 4, !tbaa !1137
  %15 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp7, align 4, !tbaa !1137
  call addrspace(1) void @_ZN12me_primitive15stream_write128EPU4AS30U16__protect_accessi7v4int327uint1_tS3_(i32 addrspace(30)* @_ZN12me_primitive3ms1E, %struct.v4int32 %13, %struct.ipd.custom_type.uint1_t.uint1_t %14, %struct.ipd.custom_type.uint1_t.uint1_t %15) #33
  br label %if.end

if.else9:                                         ; preds = %if.else
  %16 = load i32, i32* %idx_ms.addr, align 4, !tbaa !745
  %conv = trunc i32 %16 to i1
  %17 = inttoptr i1 %conv to i32 addrspace(18)*
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp11, i32 0) #26
  %18 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp11, align 4, !tbaa !1137
  store %struct.ipd.custom_type.uint1_t.uint1_t %18, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp10, align 4, !tbaa !1137
  %19 = load i32, i32* %tlast.addr, align 4, !tbaa !745
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp13, i32 %19) #26
  %20 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp13, align 4, !tbaa !1137
  store %struct.ipd.custom_type.uint1_t.uint1_t %20, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp12, align 4, !tbaa !1137
  %21 = load %struct.v4int32, %struct.v4int32* %val, align 16, !tbaa !1007
  %22 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp10, align 4, !tbaa !1137
  %23 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp12, align 4, !tbaa !1137
  call addrspace(1) void @_ZN12me_primitive15stream_write128EPU4AS18U16__protect_accessi7v4int327uint1_tS3_(i32 addrspace(18)* %17, %struct.v4int32 %21, %struct.ipd.custom_type.uint1_t.uint1_t %22, %struct.ipd.custom_type.uint1_t.uint1_t %23) #33
  br label %if.end

if.end:                                           ; preds = %if.else9, %if.then4
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local %struct.v4int32 @_Z10as_v4int327v8int16(%struct.v8int16 %a.coerce) addrspace(1) #16 comdat {
entry:
  %a = alloca %struct.v8int16, align 16
  %custom_type.tmp = alloca %struct.v4int32, align 16
  store %struct.v8int16 %a.coerce, %struct.v8int16* %a, align 16
  %mw = getelementptr inbounds %struct.v8int16, %struct.v8int16* %a, i32 0, i32 0
  %0 = load %struct.ipd.custom_type.v16int8.v16int8, %struct.ipd.custom_type.v16int8.v16int8* %mw, align 16, !tbaa !1007
  call addrspace(1) void @_ZN7v4int32C2E17chessllvmInternal7v16int8(%struct.v4int32* nonnull align 16 dereferenceable(16) %custom_type.tmp, i32 0, %struct.ipd.custom_type.v16int8.v16int8 %0) #26
  %1 = load %struct.v4int32, %struct.v4int32* %custom_type.tmp, align 16, !tbaa !1007
  ret %struct.v4int32 %1
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local void @_ZN12me_primitive15stream_write128EPU4AS29U16__protect_accessi7v4int327uint1_tS3_(i32 addrspace(29)* %a0, %struct.v4int32 %a1.coerce, %struct.ipd.custom_type.uint1_t.uint1_t %a2.coerce, %struct.ipd.custom_type.uint1_t.uint1_t %a3.coerce) addrspace(1) #12 comdat {
entry:
  %a1 = alloca %struct.v4int32, align 16
  %a2 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %a3 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %a0.addr = alloca i32 addrspace(29)*, align 4
  store %struct.v4int32 %a1.coerce, %struct.v4int32* %a1, align 16
  store %struct.ipd.custom_type.uint1_t.uint1_t %a2.coerce, %struct.ipd.custom_type.uint1_t.uint1_t* %a2, align 4
  store %struct.ipd.custom_type.uint1_t.uint1_t %a3.coerce, %struct.ipd.custom_type.uint1_t.uint1_t* %a3, align 4
  store i32 addrspace(29)* @_ZN12me_primitive3ms0E, i32 addrspace(29)** %a0.addr, align 4, !tbaa !831
  %0 = load i32 addrspace(29)*, i32 addrspace(29)** %a0.addr, align 4, !tbaa !831
  %1 = load %struct.v4int32, %struct.v4int32* %a1, align 16, !tbaa !1007
  %2 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a2, align 4, !tbaa !1137
  %3 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a3, align 4, !tbaa !1137
  call x86_regcallcc addrspace(1) void @__regcall3__chessintr_void_stream_write128___PWMS_rsrc1__sint_v4int32_uint1_t_uint1_t(i32 addrspace(29)* "ipd_store"="0,4" %0, %struct.v4int32 %1, %struct.ipd.custom_type.uint1_t.uint1_t %2, %struct.ipd.custom_type.uint1_t.uint1_t %3) #34
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local void @_ZN12me_primitive15stream_write128EPU4AS30U16__protect_accessi7v4int327uint1_tS3_(i32 addrspace(30)* %a0, %struct.v4int32 %a1.coerce, %struct.ipd.custom_type.uint1_t.uint1_t %a2.coerce, %struct.ipd.custom_type.uint1_t.uint1_t %a3.coerce) addrspace(1) #12 comdat {
entry:
  %a1 = alloca %struct.v4int32, align 16
  %a2 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %a3 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %a0.addr = alloca i32 addrspace(30)*, align 4
  store %struct.v4int32 %a1.coerce, %struct.v4int32* %a1, align 16
  store %struct.ipd.custom_type.uint1_t.uint1_t %a2.coerce, %struct.ipd.custom_type.uint1_t.uint1_t* %a2, align 4
  store %struct.ipd.custom_type.uint1_t.uint1_t %a3.coerce, %struct.ipd.custom_type.uint1_t.uint1_t* %a3, align 4
  store i32 addrspace(30)* @_ZN12me_primitive3ms1E, i32 addrspace(30)** %a0.addr, align 4, !tbaa !831
  %0 = load i32 addrspace(30)*, i32 addrspace(30)** %a0.addr, align 4, !tbaa !831
  %1 = load %struct.v4int32, %struct.v4int32* %a1, align 16, !tbaa !1007
  %2 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a2, align 4, !tbaa !1137
  %3 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a3, align 4, !tbaa !1137
  call x86_regcallcc addrspace(1) void @__regcall3__chessintr_void_stream_write128___PWMS_rsrc2__sint_v4int32_uint1_t_uint1_t(i32 addrspace(30)* "ipd_store"="0,4" %0, %struct.v4int32 %1, %struct.ipd.custom_type.uint1_t.uint1_t %2, %struct.ipd.custom_type.uint1_t.uint1_t %3) #34
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local void @_ZN12me_primitive15stream_write128EPU4AS18U16__protect_accessi7v4int327uint1_tS3_(i32 addrspace(18)* %a0, %struct.v4int32 %a1.coerce, %struct.ipd.custom_type.uint1_t.uint1_t %a2.coerce, %struct.ipd.custom_type.uint1_t.uint1_t %a3.coerce) addrspace(1) #12 comdat {
entry:
  %a1 = alloca %struct.v4int32, align 16
  %a2 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %a3 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %a0.addr = alloca i32 addrspace(18)*, align 4
  store %struct.v4int32 %a1.coerce, %struct.v4int32* %a1, align 16
  store %struct.ipd.custom_type.uint1_t.uint1_t %a2.coerce, %struct.ipd.custom_type.uint1_t.uint1_t* %a2, align 4
  store %struct.ipd.custom_type.uint1_t.uint1_t %a3.coerce, %struct.ipd.custom_type.uint1_t.uint1_t* %a3, align 4
  store i32 addrspace(18)* %a0, i32 addrspace(18)** %a0.addr, align 4, !tbaa !831
  %0 = load i32 addrspace(18)*, i32 addrspace(18)** %a0.addr, align 4, !tbaa !831
  %1 = load %struct.v4int32, %struct.v4int32* %a1, align 16, !tbaa !1007
  %2 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a2, align 4, !tbaa !1137
  %3 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a3, align 4, !tbaa !1137
  call x86_regcallcc addrspace(1) void @__regcall3__chessintr_void_stream_write128___PWMSMEM__sint_v4int32_uint1_t_uint1_t(i32 addrspace(18)* "ipd_store"="0,4" %0, %struct.v4int32 %1, %struct.ipd.custom_type.uint1_t.uint1_t %2, %struct.ipd.custom_type.uint1_t.uint1_t %3) #34
  ret void
}

; Function Attrs: argmemonly nounwind
declare dso_local x86_regcallcc void @__regcall3__chessintr_void_stream_write128___PWMS_rsrc1__sint_v4int32_uint1_t_uint1_t(i32 addrspace(29)* "ipd_store"="0,4", %struct.v4int32, %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t) addrspace(1) #22

; Function Attrs: argmemonly nounwind
declare dso_local x86_regcallcc void @__regcall3__chessintr_void_stream_write128___PWMS_rsrc2__sint_v4int32_uint1_t_uint1_t(i32 addrspace(30)* "ipd_store"="0,4", %struct.v4int32, %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t) addrspace(1) #22

; Function Attrs: argmemonly nounwind
declare dso_local x86_regcallcc void @__regcall3__chessintr_void_stream_write128___PWMSMEM__sint_v4int32_uint1_t_uint1_t(i32 addrspace(18)* "ipd_store"="0,4", %struct.v4int32, %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t) addrspace(1) #22

; Function Attrs: nounwind
define linkonce_odr dso_local void @_ZN7v4int32C2E17chessllvmInternal7v16int8(%struct.v4int32* nonnull align 16 dereferenceable(16) %this, i32 %0, %struct.ipd.custom_type.v16int8.v16int8 %aw.coerce) unnamed_addr addrspace(1) #7 comdat align 2 !dbg !1314 {
entry:
  %aw = alloca %struct.ipd.custom_type.v16int8.v16int8, align 16
  %this.addr = alloca %struct.v4int32*, align 4
  %.addr = alloca i32, align 4
  store %struct.ipd.custom_type.v16int8.v16int8 %aw.coerce, %struct.ipd.custom_type.v16int8.v16int8* %aw, align 16
  store %struct.v4int32* %this, %struct.v4int32** %this.addr, align 4, !tbaa !831
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.v4int32** %this.addr, metadata !1336, metadata !DIExpression()), !dbg !1340
  store i32 0, i32* %.addr, align 4, !tbaa !1117
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %.addr, metadata !1338, metadata !DIExpression()), !dbg !1341
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.ipd.custom_type.v16int8.v16int8* %aw, metadata !1339, metadata !DIExpression()), !dbg !1342
  %this1 = load %struct.v4int32*, %struct.v4int32** %this.addr, align 4
  %mw = getelementptr inbounds %struct.v4int32, %struct.v4int32* %this1, i32 0, i32 0, !dbg !1343
  %1 = load %struct.ipd.custom_type.v16int8.v16int8, %struct.ipd.custom_type.v16int8.v16int8* %aw, align 16, !dbg !1344, !tbaa !1007
  store %struct.ipd.custom_type.v16int8.v16int8 %1, %struct.ipd.custom_type.v16int8.v16int8* %mw, align 16, !dbg !1344, !tbaa !1007
  ret void, !dbg !1345
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local %"class.aie::detail::vector_base" @_ZNK3aie6detail11vector_baseIfLj4EE7extractILj4EEENS1_IfXT_EEEj(%"class.aie::detail::vector_base"* nonnull align 16 dereferenceable(16) %this, i32 %idx) addrspace(1) #16 comdat align 2 !dbg !1346 {
entry:
  call addrspace(1) void @llvm.dbg.value(metadata %"class.aie::detail::vector_base"* %this, metadata !1351, metadata !DIExpression()), !dbg !1355
  call addrspace(1) void @llvm.dbg.value(metadata i32 %idx, metadata !1353, metadata !DIExpression()), !dbg !1355
  %cmp = icmp ult i32 %idx, 1, !dbg !1356
  %0 = call addrspace(1) i1 @llvm.is.constant.i1(i1 %cmp), !dbg !1356
  br i1 %0, label %do.body2, label %if.else, !dbg !1359

do.body2:                                         ; preds = %entry
  %cmp3 = icmp ult i32 %idx, 1, !dbg !1360
  %1 = call addrspace(1) i1 @llvm.chess_manifest(i1 %cmp3), !dbg !1360
  br i1 %1, label %do.end7, label %if.then4, !dbg !1364

if.then4:                                         ; preds = %do.body2
  call addrspace(1) void @llvm.chess_error(metadata !1206), !dbg !1360
  br label %do.end7, !dbg !1360

if.else:                                          ; preds = %entry
  %cmp5 = icmp ult i32 %idx, 1, !dbg !1365
  call addrspace(1) void @llvm.assume(i1 %cmp5), !dbg !1365
  br label %do.end7

do.end7:                                          ; preds = %if.else, %if.then4, %do.body2
  call addrspace(1) void @llvm.dbg.value(metadata i32 undef, metadata !1354, metadata !DIExpression()), !dbg !1355
  call addrspace(1) void @llvm.dbg.value(metadata i32 128, metadata !1354, metadata !DIExpression()), !dbg !1355
  %2 = load %"class.aie::detail::vector_base", %"class.aie::detail::vector_base"* %this, align 16, !dbg !1367, !tbaa !1370
  ret %"class.aie::detail::vector_base" %2, !dbg !1367
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dso_local void @_ZN3aie6vectorIfLj4EEC2ERKNS_6detail11vector_baseIfLj4EEE(%"class.aie::vector"* nonnull align 16 dereferenceable(16) %this, %"class.aie::detail::vector_base"* nonnull align 16 dereferenceable(16) %v) unnamed_addr addrspace(1) #13 comdat align 2 !dbg !1371 {
entry:
  call addrspace(1) void @llvm.dbg.value(metadata %"class.aie::vector"* %this, metadata !1373, metadata !DIExpression()), !dbg !1375
  call addrspace(1) void @llvm.dbg.value(metadata %"class.aie::detail::vector_base"* %v, metadata !1374, metadata !DIExpression()), !dbg !1375
  %0 = bitcast %"class.aie::vector"* %this to %"class.aie::detail::vector_base"*, !dbg !1376
  %1 = load %"class.aie::detail::vector_base", %"class.aie::detail::vector_base"* %v, align 16, !dbg !1377, !tbaa !1370
  store %"class.aie::detail::vector_base" %1, %"class.aie::detail::vector_base"* %0, align 16, !dbg !1377, !tbaa !1370
  ret void, !dbg !1378
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local %struct.v4float @_ZNK3aie6vectorIfLj4EE9to_nativeEv(%"class.aie::vector"* nonnull align 16 dereferenceable(16) %this) addrspace(1) #16 comdat align 2 !dbg !1379 {
entry:
  %retval = alloca %struct.v4float, align 16
  call addrspace(1) void @llvm.dbg.value(metadata %"class.aie::vector"* %this, metadata !1381, metadata !DIExpression()), !dbg !1382
  %0 = bitcast %"class.aie::vector"* %this to %"class.aie::detail::vector_base"*, !dbg !1383
  %call = call addrspace(1) %struct.v4float @_ZNK3aie6detail11vector_baseIfLj4EE9to_nativeEv(%"class.aie::detail::vector_base"* nonnull align 16 dereferenceable(16) %0) #26, !dbg !1383
  %1 = getelementptr inbounds %struct.v4float, %struct.v4float* %retval, i32 0, i32 0, !dbg !1383
  %2 = extractvalue %struct.v4float %call, 0, !dbg !1383
  store %struct.ipd.custom_type.v16int8.v16int8 %2, %struct.ipd.custom_type.v16int8.v16int8* %1, align 16, !dbg !1383
  %3 = load %struct.v4float, %struct.v4float* %retval, align 16, !dbg !1384
  ret %struct.v4float %3, !dbg !1384
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local %struct.v4float @_ZNK3aie6detail11vector_baseIfLj4EE9to_nativeEv(%"class.aie::detail::vector_base"* nonnull align 16 dereferenceable(16) %this) addrspace(1) #16 comdat align 2 !dbg !1385 {
entry:
  call addrspace(1) void @llvm.dbg.value(metadata %"class.aie::detail::vector_base"* %this, metadata !1387, metadata !DIExpression()), !dbg !1388
  %data = getelementptr inbounds %"class.aie::detail::vector_base", %"class.aie::detail::vector_base"* %this, i32 0, i32 0, !dbg !1389
  %0 = load %struct.v4float, %struct.v4float* %data, align 16, !dbg !1389, !tbaa !1007
  ret %struct.v4float %0, !dbg !1389
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) addrspace(1) #3

attributes #0 = { "chess_storage:addr"="0" }
attributes #1 = { "chess_storage:addr"="1" }
attributes #2 = { mustprogress nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-memcpy" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { mustprogress norecurse nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-memcpy" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { inaccessiblememonly nounwind willreturn }
attributes #7 = { nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-memcpy" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #8 = { mustprogress noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-memcpy" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #9 = { nounwind willreturn }
attributes #10 = { alwaysinline mustprogress nounwind "chessFP:property"="contains_memory_fence do_generate" "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-memcpy" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #11 = { inaccessiblememonly nounwind "frame-pointer"="all" "no-builtin-memcpy" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #12 = { alwaysinline mustprogress nounwind "chessFP:llvm_local_block_replace_operand_with_variable" "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-memcpy" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #13 = { alwaysinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-memcpy" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #14 = { nounwind readnone willreturn "frame-pointer"="all" "no-builtin-memcpy" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #15 = { nounwind readnone willreturn }
attributes #16 = { alwaysinline mustprogress nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-memcpy" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #17 = { argmemonly nounwind speculatable willreturn }
attributes #18 = { argmemonly nocallback nofree nounwind willreturn }
attributes #19 = { inlinehint mustprogress nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-memcpy" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #20 = { alwaysinline mustprogress nounwind "chessFP:property"="do_generate" "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-memcpy" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #21 = { alwaysinline mustprogress nounwind "chessFP:property"="do_generate_llvm" "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-memcpy" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #22 = { argmemonly nounwind "frame-pointer"="all" "no-builtin-memcpy" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #23 = { convergent nocallback nofree nosync nounwind readnone willreturn }
attributes #24 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #25 = { nounwind }
attributes #26 = { "no-builtin-memcpy" }
attributes #27 = { "chessFP:property"="contains_memory_fence do_generate" "no-builtin-memcpy" }
attributes #28 = { inaccessiblememonly nounwind "no-builtin-memcpy" }
attributes #29 = { "chessFP:llvm_local_block_replace_operand_with_variable" "no-builtin-memcpy" }
attributes #30 = { nounwind readnone willreturn "no-builtin-memcpy" }
attributes #31 = { "chessFP:property"="do_generate" "no-builtin-memcpy" }
attributes #32 = { "chessFP:property"="do_generate_llvm" "no-builtin-memcpy" }
attributes #33 = { memop_protect_access "chessFP:llvm_local_block_replace_operand_with_variable" "no-builtin-memcpy" }
attributes #34 = { argmemonly nounwind "no-builtin-memcpy" }

!llvm.dbg.cu = !{!2}
!llvm.linker.options = !{}
!llvm.module.flags = !{!717, !718, !719, !720}
!llvm.ident = !{!721}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "sync_buffer", linkageName: "_ZL11sync_buffer", scope: !2, file: !604, line: 8, type: !713, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "clang version 15.0.5 (/u/sgasip/ipd/repositories/llvm_ipd 3a25925e0239306412dac02da5e4c8c51ae722e8)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !42, globals: !281, imports: !282, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/lxy/Projects/SVD/Jacobi_AIE/Work/aie/24_0/src/24_0.cc", directory: "/home/lxy/Projects/SVD/Jacobi_AIE/Work/aie")
!4 = !{!5, !13, !21, !31, !37, !38}
!5 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "lut_oor_policy", scope: !7, file: !6, line: 57, baseType: !9, size: 32, flags: DIFlagEnumClass, elements: !10, identifier: "_ZTSN3aie6detail14lut_oor_policyE")
!6 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/aie_api/detail/lut.hpp", directory: "/home/lxy")
!7 = !DINamespace(name: "detail", scope: !8)
!8 = !DINamespace(name: "aie", scope: null)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !{!11, !12}
!11 = !DIEnumerator(name: "saturate", value: 0)
!12 = !DIEnumerator(name: "truncate", value: 1)
!13 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "saturation_mode", scope: !7, file: !14, line: 58, baseType: !15, size: 32, flags: DIFlagEnumClass, elements: !16, identifier: "_ZTSN3aie6detail15saturation_modeE")
!14 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/aie_api/detail/aie1/../tile.hpp", directory: "/home/lxy")
!15 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!16 = !{!17, !18, !19, !20}
!17 = !DIEnumerator(name: "none", value: 0, isUnsigned: true)
!18 = !DIEnumerator(name: "truncate", value: 1, isUnsigned: true)
!19 = !DIEnumerator(name: "saturate", value: 1, isUnsigned: true)
!20 = !DIEnumerator(name: "symmetric", value: 3, isUnsigned: true)
!21 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "rounding_mode", scope: !7, file: !14, line: 66, baseType: !15, size: 32, flags: DIFlagEnumClass, elements: !22, identifier: "_ZTSN3aie6detail13rounding_modeE")
!22 = !{!23, !24, !25, !26, !27, !28, !29, !30}
!23 = !DIEnumerator(name: "floor", value: 0, isUnsigned: true)
!24 = !DIEnumerator(name: "ceil", value: 1, isUnsigned: true)
!25 = !DIEnumerator(name: "positive_inf", value: 2, isUnsigned: true)
!26 = !DIEnumerator(name: "negative_inf", value: 3, isUnsigned: true)
!27 = !DIEnumerator(name: "symmetric_inf", value: 4, isUnsigned: true)
!28 = !DIEnumerator(name: "symmetric_zero", value: 5, isUnsigned: true)
!29 = !DIEnumerator(name: "conv_even", value: 6, isUnsigned: true)
!30 = !DIEnumerator(name: "conv_odd", value: 7, isUnsigned: true)
!31 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "aie_stream_resource_in", file: !32, line: 396, baseType: !9, size: 32, flags: DIFlagEnumClass, elements: !33, identifier: "_ZTS22aie_stream_resource_in")
!32 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/me_defines.h", directory: "/home/lxy")
!33 = !{!34, !35, !36}
!34 = !DIEnumerator(name: "none", value: 0)
!35 = !DIEnumerator(name: "a", value: 1)
!36 = !DIEnumerator(name: "b", value: 2)
!37 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "aie_stream_resource_out", file: !32, line: 402, baseType: !9, size: 32, flags: DIFlagEnumClass, elements: !33, identifier: "_ZTS23aie_stream_resource_out")
!38 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "chessllvmInternal", file: !39, line: 21, baseType: !15, size: 32, elements: !40, identifier: "_ZTS17chessllvmInternal")
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
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_stream<short>", file: !46, line: 43, size: 32, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS12input_streamIsE")
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 32)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "output_stream<short>", file: !46, line: 53, size: 32, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS13output_streamIsE")
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
!259 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "vector_elem_const_ref<float, 4U>", scope: !8, file: !260, line: 188, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN3aie21vector_elem_const_refIfLj4EEE")
!260 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/aie_api/aie_types.hpp", directory: "/home/lxy")
!261 = !DISubprogram(name: "operator[]", linkageName: "_ZN3aie6vectorIfLj4EEixEj", scope: !143, file: !144, line: 328, type: !262, scopeLine: 328, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!262 = !DISubroutineType(types: !263)
!263 = !{!264, !214, !15}
!264 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "vector_elem_ref<float, 4U>", scope: !8, file: !260, line: 177, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN3aie15vector_elem_refIfLj4EEE")
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
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !293, line: 19, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS11max_align_t")
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
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FILE", file: !568, line: 29, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS4FILE")
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
!728 = !DILocation(line: 0, scope: !722)
!729 = !DILocation(line: 7, column: 10, scope: !730)
!730 = distinct !DILexicalBlock(scope: !722, file: !723, line: 7, column: 8)
!731 = !DILocation(line: 7, column: 8, scope: !722)
!732 = !DILocation(line: 10, column: 1, scope: !722)
!733 = distinct !DISubprogram(name: "main", scope: !604, file: !604, line: 20, type: !521, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !734)
!734 = !{!735, !736, !737, !738, !739, !742}
!735 = !DILocalVariable(name: "stream_0", scope: !733, file: !604, line: 22, type: !43)
!736 = !DILocalVariable(name: "stream_1", scope: !733, file: !604, line: 23, type: !43)
!737 = !DILocalVariable(name: "stream_2", scope: !733, file: !604, line: 24, type: !104)
!738 = !DILocalVariable(name: "stream_3", scope: !733, file: !604, line: 25, type: !104)
!739 = !DILocalVariable(name: "index", scope: !733, file: !604, line: 26, type: !740)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32", file: !741, line: 65, baseType: !304)
!741 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/aie_api/detail/../types.hpp", directory: "/home/lxy")
!742 = !DILocalVariable(name: "proc_24_0_bounds", scope: !743, file: !604, line: 30, type: !740)
!743 = distinct !DILexicalBlock(scope: !733, file: !604, line: 28, column: 3)
!744 = !DILocation(line: 21, column: 18, scope: !733)
!745 = !{!746, !746, i64 0, i64 4}
!746 = !{!747, i64 4, !"int"}
!747 = !{!748, i64 1, !"omnipotent char"}
!748 = !{!"Simple C++ TBAA"}
!749 = !{!750, !752, !753, !754}
!750 = distinct !{!750, !751, !"main: stream_0"}
!751 = distinct !{!751, !"main"}
!752 = distinct !{!752, !751, !"main: stream_1"}
!753 = distinct !{!753, !751, !"main: stream_2"}
!754 = distinct !{!754, !751, !"main: stream_3"}
!755 = !DILocation(line: 22, column: 3, scope: !733)
!756 = !DILocation(line: 22, column: 22, scope: !733)
!757 = !{!750}
!758 = !DILocation(line: 22, column: 33, scope: !733)
!759 = !DILocation(line: 23, column: 3, scope: !733)
!760 = !DILocation(line: 23, column: 22, scope: !733)
!761 = !{!752}
!762 = !DILocation(line: 23, column: 33, scope: !733)
!763 = !DILocation(line: 24, column: 3, scope: !733)
!764 = !DILocation(line: 24, column: 23, scope: !733)
!765 = !{!753}
!766 = !DILocation(line: 24, column: 34, scope: !733)
!767 = !DILocation(line: 25, column: 3, scope: !733)
!768 = !DILocation(line: 25, column: 23, scope: !733)
!769 = !{!754}
!770 = !DILocation(line: 25, column: 34, scope: !733)
!771 = !DILocation(line: 0, scope: !733)
!772 = !DILocation(line: 27, column: 3, scope: !733)
!773 = !DILocation(line: 26, column: 9, scope: !733)
!774 = !DILocation(line: 0, scope: !743)
!775 = !DILocation(line: 30, column: 28, scope: !743)
!776 = !DILocation(line: 32, column: 10, scope: !743)
!777 = !DILocation(line: 32, column: 3, scope: !743)
!778 = !DILocation(line: 36, column: 5, scope: !779)
!779 = distinct !DILexicalBlock(scope: !743, file: !604, line: 33, column: 3)
!780 = !DILocation(line: 37, column: 15, scope: !779)
!781 = !DILocation(line: 39, column: 5, scope: !779)
!782 = !DILocation(line: 41, column: 25, scope: !783)
!783 = distinct !DILexicalBlock(scope: !779, file: !604, line: 41, column: 8)
!784 = !DILocation(line: 41, column: 8, scope: !779)
!785 = distinct !{!785, !777, !786, !787}
!786 = !DILocation(line: 43, column: 3, scope: !743)
!787 = !{!"llvm.loop.mustprogress"}
!788 = !DILocation(line: 44, column: 3, scope: !743)
!789 = !DILocation(line: 45, column: 7, scope: !790)
!790 = distinct !DILexicalBlock(scope: !743, file: !604, line: 45, column: 7)
!791 = !DILocation(line: 45, column: 22, scope: !790)
!792 = !DILocation(line: 48, column: 1, scope: !733)
!793 = distinct !DISubprogram(name: "input_stream", linkageName: "_ZN12input_streamIfEC2Ej", scope: !45, file: !46, line: 50, type: !98, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !97, retainedNodes: !794)
!794 = !{!795, !797}
!795 = !DILocalVariable(name: "this", arg: 1, scope: !793, type: !796, flags: DIFlagArtificial | DIFlagObjectPointer)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 32)
!797 = !DILocalVariable(name: "ch", arg: 2, scope: !793, file: !46, line: 50, type: !15)
!798 = !DILocation(line: 0, scope: !793)
!799 = !DILocation(line: 50, column: 41, scope: !793)
!800 = !{!747, !747, i64 0, i64 0}
!801 = distinct !DISubprogram(name: "output_stream", linkageName: "_ZN13output_streamIfEC2Ej", scope: !105, file: !46, line: 60, type: !136, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !135, retainedNodes: !802)
!802 = !{!803, !805}
!803 = !DILocalVariable(name: "this", arg: 1, scope: !801, type: !804, flags: DIFlagArtificial | DIFlagObjectPointer)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 32)
!805 = !DILocalVariable(name: "ch", arg: 2, scope: !801, file: !46, line: 60, type: !15)
!806 = !DILocation(line: 0, scope: !801)
!807 = !DILocation(line: 60, column: 42, scope: !801)
!808 = distinct !DISubprogram(name: "orthogonalize<4>", linkageName: "_Z13orthogonalizeILi4EEvP12input_streamIfES2_P13output_streamIfES5_", scope: !723, file: !723, line: 13, type: !809, scopeLine: 16, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !822, retainedNodes: !813)
!809 = !DISubroutineType(types: !810)
!810 = !{null, !811, !811, !812, !812}
!811 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !796)
!812 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !804)
!813 = !{!814, !815, !816, !817, !818, !820, !821}
!814 = !DILocalVariable(name: "Ap", arg: 1, scope: !808, file: !723, line: 13, type: !811)
!815 = !DILocalVariable(name: "Aq", arg: 2, scope: !808, file: !723, line: 14, type: !811)
!816 = !DILocalVariable(name: "Bp", arg: 3, scope: !808, file: !723, line: 15, type: !812)
!817 = !DILocalVariable(name: "Bq", arg: 4, scope: !808, file: !723, line: 16, type: !812)
!818 = !DILocalVariable(name: "VECSIZE", scope: !808, file: !723, line: 17, type: !819)
!819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!820 = !DILocalVariable(name: "tmpAp", scope: !808, file: !723, line: 21, type: !143)
!821 = !DILocalVariable(name: "tmpAq", scope: !808, file: !723, line: 22, type: !143)
!822 = !{!823}
!823 = !DITemplateValueParameter(name: "ROW", type: !9, value: i32 4)
!824 = !{!825}
!825 = distinct !{!825, !826, !"_Z13orthogonalizeILi4EEvP12input_streamIfES2_P13output_streamIfES5_: Ap"}
!826 = distinct !{!826, !"_Z13orthogonalizeILi4EEvP12input_streamIfES2_P13output_streamIfES5_"}
!827 = !{!825, !828, !829, !830}
!828 = distinct !{!828, !826, !"_Z13orthogonalizeILi4EEvP12input_streamIfES2_P13output_streamIfES5_: Aq"}
!829 = distinct !{!829, !826, !"_Z13orthogonalizeILi4EEvP12input_streamIfES2_P13output_streamIfES5_: Bp"}
!830 = distinct !{!830, !826, !"_Z13orthogonalizeILi4EEvP12input_streamIfES2_P13output_streamIfES5_: Bq"}
!831 = !{!832, !832, i64 0, i64 4}
!832 = !{!747, i64 4, !"any pointer"}
!833 = !DILocation(line: 13, column: 53, scope: !808)
!834 = !{!828}
!835 = !DILocation(line: 14, column: 53, scope: !808)
!836 = !{!829}
!837 = !DILocation(line: 15, column: 54, scope: !808)
!838 = !{!830}
!839 = !DILocation(line: 16, column: 54, scope: !808)
!840 = !DILocation(line: 0, scope: !808)
!841 = !DILocation(line: 21, column: 5, scope: !808)
!842 = !DILocation(line: 21, column: 29, scope: !808)
!843 = !DILocation(line: 21, column: 53, scope: !808)
!844 = !DILocation(line: 21, column: 37, scope: !808)
!845 = !DILocation(line: 22, column: 5, scope: !808)
!846 = !DILocation(line: 22, column: 29, scope: !808)
!847 = !DILocation(line: 22, column: 53, scope: !808)
!848 = !DILocation(line: 22, column: 37, scope: !808)
!849 = !DILocation(line: 23, column: 15, scope: !808)
!850 = !DILocation(line: 23, column: 5, scope: !808)
!851 = !DILocation(line: 24, column: 15, scope: !808)
!852 = !DILocation(line: 24, column: 5, scope: !808)
!853 = !DILocation(line: 53, column: 1, scope: !808)
!854 = !{!855, !855, i64 0, i64 4}
!855 = !{!747, i64 4, !"uint2_t"}
!856 = distinct !DISubprogram(name: "readincr_v<4U, (aie_stream_resource_in)0, float>", linkageName: "_Z10readincr_vILj4EL22aie_stream_resource_in0EfEN3aie6vectorIT1_XT_EEEP12input_streamIS3_E", scope: !271, file: !271, line: 458, type: !857, scopeLine: 458, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !861, retainedNodes: !859)
!857 = !DISubroutineType(types: !858)
!858 = !{!143, !796}
!859 = !{!860}
!860 = !DILocalVariable(name: "w", arg: 1, scope: !856, file: !271, line: 458, type: !796)
!861 = !{!279, !862, !102}
!862 = !DITemplateValueParameter(name: "Resource", type: !31, value: i32 0)
!863 = !DILocation(line: 0, scope: !856)
!864 = !DILocation(line: 458, column: 104, scope: !856)
!865 = !DILocation(line: 458, column: 97, scope: !856)
!866 = distinct !DISubprogram(name: "writeincr<(aie_stream_resource_out)0, float, 4U>", linkageName: "_Z9writeincrIL23aie_stream_resource_out0EfLj4EEvP13output_streamIT0_ERKN3aie6vectorIS2_XT1_EEE", scope: !271, file: !271, line: 432, type: !867, scopeLine: 432, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !873, retainedNodes: !870)
!867 = !DISubroutineType(types: !868)
!868 = !{null, !804, !869}
!869 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !243, size: 32)
!870 = !{!871, !872}
!871 = !DILocalVariable(name: "w", arg: 1, scope: !866, file: !271, line: 432, type: !804)
!872 = !DILocalVariable(name: "value", arg: 2, scope: !866, file: !271, line: 432, type: !869)
!873 = !{!874, !102, !279}
!874 = !DITemplateValueParameter(name: "Resource", type: !37, value: i32 0)
!875 = !DILocation(line: 0, scope: !866)
!876 = !DILocation(line: 432, column: 104, scope: !866)
!877 = !{!878, !878, i64 0, i64 16}
!878 = !{!747, i64 16, !"_ZTSN3aie6vectorIfLj4EEE", !879, i64 0, i64 16}
!879 = !{!747, i64 16, !"_ZTSN3aie6detail11vector_baseIfLj4EEE", !880, i64 0, i64 16}
!880 = !{!747, i64 16, !"v16int8"}
!881 = !DILocation(line: 432, column: 185, scope: !866)
!882 = distinct !DISubprogram(name: "readincr", linkageName: "_ZN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfE", scope: !883, file: !271, line: 97, type: !887, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !886, retainedNodes: !896)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stream_in_helper<4U, float, (aie_stream_resource_in)0>", scope: !272, file: !271, line: 78, size: 8, flags: DIFlagTypePassByValue, elements: !884, templateParams: !895, identifier: "_ZTSN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EEE")
!884 = !{!885, !886, !891}
!885 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !883, baseType: !270, extraData: i32 0)
!886 = !DISubprogram(name: "readincr", linkageName: "_ZN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfE", scope: !883, file: !271, line: 97, type: !887, scopeLine: 97, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!887 = !DISubroutineType(types: !888)
!888 = !{!889, !796}
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !883, file: !271, line: 80, baseType: !890)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !270, file: !271, line: 62, baseType: !143)
!891 = !DISubprogram(name: "readincr", linkageName: "_ZN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfERb", scope: !883, file: !271, line: 123, type: !892, scopeLine: 123, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!892 = !DISubroutineType(types: !893)
!893 = !{!889, !796, !894}
!894 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !171, size: 32)
!895 = !{!279, !102, !862}
!896 = !{!897, !898}
!897 = !DILocalVariable(name: "w", arg: 1, scope: !882, file: !271, line: 97, type: !796)
!898 = !DILocalVariable(name: "ret", scope: !882, file: !271, line: 99, type: !889)
!899 = !DILocation(line: 97, column: 43, scope: !882)
!900 = !DILocation(line: 99, column: 14, scope: !882)
!901 = !DILocation(line: 110, column: 60, scope: !902)
!902 = distinct !DILexicalBlock(scope: !882, file: !271, line: 109, column: 9)
!903 = !DILocation(line: 110, column: 13, scope: !902)
!904 = !DILocation(line: 119, column: 9, scope: !882)
!905 = distinct !DISubprogram(name: "vector", linkageName: "_ZN3aie6vectorIfLj4EEC2Ev", scope: !143, file: !144, line: 173, type: !227, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !226, retainedNodes: !906)
!906 = !{!907}
!907 = !DILocalVariable(name: "this", arg: 1, scope: !905, type: !908, flags: DIFlagArtificial | DIFlagObjectPointer)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 32)
!909 = !DILocation(line: 0, scope: !905)
!910 = !DILocation(line: 175, column: 5, scope: !905)
!911 = !DILocation(line: 174, column: 9, scope: !905)
!912 = !DILocation(line: 176, column: 5, scope: !905)
!913 = distinct !DISubprogram(name: "unroll_times<1U, (lambda at /home/lxy/tools/Xilinx/Vitis/2023.2/aietools/include/aie_api/adf/stream.hpp:110:60)>", linkageName: "_ZN3aie6detail5utils12unroll_timesILj1EZNS0_3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEEUlT_E_EEvOT0_", scope: !708, file: !914, line: 580, type: !915, scopeLine: 581, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !926, retainedNodes: !924)
!914 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/aie_api/detail/aie1/../utils.hpp", directory: "/home/lxy")
!915 = !DISubroutineType(types: !916)
!916 = !{null, !917}
!917 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !918, size: 32)
!918 = distinct !DICompositeType(tag: DW_TAG_class_type, scope: !882, file: !271, line: 110, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !919, identifier: "_ZTSZN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEEUlT_E_")
!919 = !{!920, !922}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !918, file: !271, line: 113, baseType: !921, size: 32)
!921 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !796, size: 32)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "ret", scope: !918, file: !271, line: 115, baseType: !923, size: 32, offset: 32)
!923 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !889, size: 32)
!924 = !{!925}
!925 = !DILocalVariable(name: "fn", arg: 1, scope: !913, file: !914, line: 580, type: !917)
!926 = !{!927, !928}
!927 = !DITemplateValueParameter(name: "Times", type: !15, value: i32 1)
!928 = !DITemplateTypeParameter(name: "Fn", type: !918)
!929 = !DILocation(line: 0, scope: !913)
!930 = !DILocation(line: 582, column: 5, scope: !913)
!931 = !DILocation(line: 583, column: 1, scope: !913)
!932 = distinct !DISubprogram(name: "vector_base", linkageName: "_ZN3aie6detail11vector_baseIfLj4EEC2Ev", scope: !147, file: !148, line: 230, type: !177, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !176, retainedNodes: !933)
!933 = !{!934}
!934 = !DILocalVariable(name: "this", arg: 1, scope: !932, type: !935, flags: DIFlagArtificial | DIFlagObjectPointer)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 32)
!936 = !DILocation(line: 0, scope: !932)
!937 = !DILocation(line: 231, column: 9, scope: !932)
!938 = !DILocation(line: 231, column: 14, scope: !932)
!939 = !DILocation(line: 233, column: 5, scope: !932)
!940 = distinct !DISubprogram(name: "undef", linkageName: "_ZN3aie6detail14vector_storageIfLj4EE5undefEv", scope: !154, file: !152, line: 97, type: !157, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !156, retainedNodes: !193)
!941 = !DILocation(line: 97, column: 118, scope: !940)
!942 = !DILocation(line: 97, column: 111, scope: !940)
!943 = distinct !DISubprogram(name: "unroll_for<unsigned int, 0U, 1U, 1U, (lambda at /home/lxy/tools/Xilinx/Vitis/2023.2/aietools/include/aie_api/adf/stream.hpp:110:60)>", linkageName: "_ZN3aie6detail5utils10unroll_forIjLj0ELj1ELj1EZNS0_3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEEUlT_E_EEvOT3_", scope: !708, file: !914, line: 569, type: !915, scopeLine: 570, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !946, retainedNodes: !944)
!944 = !{!945}
!945 = !DILocalVariable(name: "fn", arg: 1, scope: !943, file: !914, line: 569, type: !917)
!946 = !{!947, !948, !949, !950, !928}
!947 = !DITemplateTypeParameter(name: "T", type: !15)
!948 = !DITemplateValueParameter(name: "Start", type: !15, value: i32 0)
!949 = !DITemplateValueParameter(name: "End", type: !15, value: i32 1)
!950 = !DITemplateValueParameter(name: "Step", type: !15, value: i32 1)
!951 = !DILocation(line: 0, scope: !943)
!952 = !DILocation(line: 571, column: 5, scope: !943)
!953 = !DILocation(line: 572, column: 1, scope: !943)
!954 = distinct !DISubprogram(name: "execute<(lambda at /home/lxy/tools/Xilinx/Vitis/2023.2/aietools/include/aie_api/adf/stream.hpp:110:60)>", linkageName: "_ZN3aie6detail5utils17unroll_for_helperIjLj0ELj1ELj0ELj1EE7executeIZNS0_3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEEUlT_E_EEvOSC_", scope: !955, file: !914, line: 539, type: !915, scopeLine: 540, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !959, declaration: !958, retainedNodes: !960)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unroll_for_helper<unsigned int, 0U, 1U, 0U, 1U>", scope: !708, file: !914, line: 533, size: 8, flags: DIFlagTypePassByValue, elements: !193, templateParams: !956, identifier: "_ZTSN3aie6detail5utils17unroll_for_helperIjLj0ELj1ELj0ELj1EEE")
!956 = !{!947, !948, !949, !957, !950}
!957 = !DITemplateValueParameter(name: "It", type: !15, value: i32 0)
!958 = !DISubprogram(name: "execute<(lambda at /home/lxy/tools/Xilinx/Vitis/2023.2/aietools/include/aie_api/adf/stream.hpp:110:60)>", linkageName: "_ZN3aie6detail5utils17unroll_for_helperIjLj0ELj1ELj0ELj1EE7executeIZNS0_3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEEUlT_E_EEvOSC_", scope: !955, file: !914, line: 539, type: !915, scopeLine: 539, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized, templateParams: !959)
!959 = !{!928}
!960 = !{!961, !962, !976}
!961 = !DILocalVariable(name: "fn", arg: 1, scope: !954, file: !914, line: 539, type: !917)
!962 = !DILocalVariable(name: "ctx", scope: !963, file: !914, line: 542, type: !965)
!963 = distinct !DILexicalBlock(scope: !964, file: !914, line: 541, column: 73)
!964 = distinct !DILexicalBlock(scope: !954, file: !914, line: 541, column: 23)
!965 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !966)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unroll_context<unsigned int, 0U, 1U, 0U>", scope: !708, file: !914, line: 509, size: 8, flags: DIFlagTypePassByValue, elements: !967, templateParams: !975, identifier: "_ZTSN3aie6detail5utils14unroll_contextIjLj0ELj1ELj0EEE")
!967 = !{!968, !972, !973, !974}
!968 = !DISubprogram(name: "operator unsigned int", linkageName: "_ZNK3aie6detail5utils14unroll_contextIjLj0ELj1ELj0EEcvjEv", scope: !966, file: !914, line: 511, type: !969, scopeLine: 511, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!969 = !DISubroutineType(types: !970)
!970 = !{!15, !971}
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!972 = !DISubprogram(name: "min", linkageName: "_ZNK3aie6detail5utils14unroll_contextIjLj0ELj1ELj0EE3minEv", scope: !966, file: !914, line: 516, type: !969, scopeLine: 516, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!973 = !DISubprogram(name: "max", linkageName: "_ZNK3aie6detail5utils14unroll_contextIjLj0ELj1ELj0EE3maxEv", scope: !966, file: !914, line: 521, type: !969, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!974 = !DISubprogram(name: "current", linkageName: "_ZNK3aie6detail5utils14unroll_contextIjLj0ELj1ELj0EE7currentEv", scope: !966, file: !914, line: 526, type: !969, scopeLine: 526, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!975 = !{!947, !948, !949, !957}
!976 = !DILocalVariable(name: "next_it", scope: !963, file: !914, line: 552, type: !275)
!977 = !DILocation(line: 0, scope: !954)
!978 = !DILocation(line: 542, column: 13, scope: !963)
!979 = !DILocation(line: 542, column: 57, scope: !963)
!980 = !DILocation(line: 548, column: 17, scope: !981)
!981 = distinct !DILexicalBlock(scope: !963, file: !914, line: 547, column: 27)
!982 = !DILocation(line: 0, scope: !963)
!983 = !DILocation(line: 558, column: 13, scope: !963)
!984 = !DILocation(line: 559, column: 9, scope: !964)
!985 = !DILocation(line: 560, column: 5, scope: !954)
!986 = distinct !DISubprogram(name: "operator()<aie::detail::utils::unroll_context<unsigned int, 0U, 1U, 0U> >", linkageName: "_ZZN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEENKUlT_E_clINS0_5utils14unroll_contextIjLj0ELj1ELj0EEEEEDaS8_", scope: !918, file: !271, line: 110, type: !987, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !992, declaration: !991, retainedNodes: !994)
!987 = !DISubroutineType(types: !988)
!988 = !{null, !989, !966}
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!990 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !918)
!991 = !DISubprogram(name: "operator()<aie::detail::utils::unroll_context<unsigned int, 0U, 1U, 0U> >", scope: !918, file: !271, line: 110, type: !987, scopeLine: 110, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !992)
!992 = !{!993}
!993 = !DITemplateTypeParameter(name: "idx:auto", type: !966)
!994 = !{!995, !997, !998}
!995 = !DILocalVariable(name: "this", arg: 1, scope: !986, type: !996, flags: DIFlagArtificial | DIFlagObjectPointer)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 32)
!997 = !DILocalVariable(name: "idx", arg: 2, scope: !986, file: !271, line: 110, type: !966)
!998 = !DILocalVariable(name: "tmp", scope: !986, file: !271, line: 111, type: !143)
!999 = !DILocation(line: 0, scope: !986)
!1000 = !DILocation(line: 110, column: 69, scope: !986)
!1001 = !DILocation(line: 111, column: 17, scope: !986)
!1002 = !DILocation(line: 111, column: 64, scope: !986)
!1003 = !DILocation(line: 113, column: 23, scope: !986)
!1004 = !DILocation(line: 113, column: 32, scope: !986)
!1005 = !{!1006, !832, i64 0, i64 4}
!1006 = !{!747, i64 8, !"_ZTSZN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEEUlT_E_", !832, i64 0, i64 4, !832, i64 4, i64 4}
!1007 = !{!880, !880, i64 0, i64 16}
!1008 = !DILocation(line: 113, column: 17, scope: !986)
!1009 = !DILocation(line: 115, column: 17, scope: !986)
!1010 = !{!1006, !832, i64 4, i64 4}
!1011 = !DILocation(line: 115, column: 28, scope: !986)
!1012 = !DILocation(line: 115, column: 21, scope: !986)
!1013 = !DILocation(line: 116, column: 13, scope: !986)
!1014 = distinct !DISubprogram(name: "execute<(lambda at /home/lxy/tools/Xilinx/Vitis/2023.2/aietools/include/aie_api/adf/stream.hpp:110:60)>", linkageName: "_ZN3aie6detail5utils17unroll_for_helperIjLj0ELj1ELj1ELj1EE7executeIZNS0_3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEEUlT_E_EEvOSC_", scope: !1015, file: !914, line: 539, type: !915, scopeLine: 540, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !959, declaration: !1018, retainedNodes: !1019)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unroll_for_helper<unsigned int, 0U, 1U, 1U, 1U>", scope: !708, file: !914, line: 533, size: 8, flags: DIFlagTypePassByValue, elements: !193, templateParams: !1016, identifier: "_ZTSN3aie6detail5utils17unroll_for_helperIjLj0ELj1ELj1ELj1EEE")
!1016 = !{!947, !948, !949, !1017, !950}
!1017 = !DITemplateValueParameter(name: "It", type: !15, value: i32 1)
!1018 = !DISubprogram(name: "execute<(lambda at /home/lxy/tools/Xilinx/Vitis/2023.2/aietools/include/aie_api/adf/stream.hpp:110:60)>", linkageName: "_ZN3aie6detail5utils17unroll_for_helperIjLj0ELj1ELj1ELj1EE7executeIZNS0_3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEEUlT_E_EEvOSC_", scope: !1015, file: !914, line: 539, type: !915, scopeLine: 539, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized, templateParams: !959)
!1019 = !{!1020}
!1020 = !DILocalVariable(name: "fn", arg: 1, scope: !1014, file: !914, line: 539, type: !917)
!1021 = !DILocation(line: 0, scope: !1014)
!1022 = !DILocation(line: 560, column: 5, scope: !1014)
!1023 = distinct !DISubprogram(name: "get_op", linkageName: "_ZN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE6get_opEv", scope: !883, file: !271, line: 82, type: !1024, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !1027, retainedNodes: !193)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!1026}
!1026 = distinct !DICompositeType(tag: DW_TAG_class_type, file: !271, line: 85, size: 8, flags: DIFlagTypePassByValue, elements: !193, identifier: "_ZTSZN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE6get_opEvEUlDpOT_E_")
!1027 = !DISubprogram(name: "get_op", linkageName: "_ZN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE6get_opEv", scope: !883, file: !271, line: 82, type: !1024, scopeLine: 82, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1028 = !DILocation(line: 85, column: 67, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1030, file: !271, line: 85, column: 28)
!1030 = distinct !DILexicalBlock(scope: !1023, file: !271, line: 84, column: 28)
!1031 = distinct !DISubprogram(name: "operator()<input_stream<float> *&>", linkageName: "_ZZN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE6get_opEvENKUlDpOT_E_clIJRP12input_streamIfEEEEDaS7_", scope: !1026, file: !271, line: 85, type: !1032, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !1037, declaration: !1036, retainedNodes: !1041)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!161, !1034, !921}
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!1035 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1026)
!1036 = !DISubprogram(name: "operator()<input_stream<float> *&>", scope: !1026, file: !271, line: 85, type: !1032, scopeLine: 85, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !1037)
!1037 = !{!1038}
!1038 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "args:auto", value: !1039)
!1039 = !{!1040}
!1040 = !DITemplateTypeParameter(type: !921)
!1041 = !{!1042, !1044}
!1042 = !DILocalVariable(name: "this", arg: 1, scope: !1031, type: !1043, flags: DIFlagArtificial | DIFlagObjectPointer)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 32)
!1044 = !DILocalVariable(name: "args", arg: 2, scope: !1031, file: !271, line: 85, type: !921)
!1045 = !DILocation(line: 0, scope: !1031)
!1046 = !DILocation(line: 85, column: 141, scope: !1031)
!1047 = !DILocation(line: 85, column: 115, scope: !1031)
!1048 = !DILocation(line: 85, column: 108, scope: !1031)
!1049 = distinct !DISubprogram(name: "vector", linkageName: "_ZN3aie6vectorIfLj4EEC2E7v4float", scope: !143, file: !144, line: 184, type: !230, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !229, retainedNodes: !1050)
!1050 = !{!1051, !1052}
!1051 = !DILocalVariable(name: "this", arg: 1, scope: !1049, type: !908, flags: DIFlagArtificial | DIFlagObjectPointer)
!1052 = !DILocalVariable(name: "v", arg: 2, scope: !1049, file: !144, line: 184, type: !232)
!1053 = !DILocation(line: 0, scope: !1049)
!1054 = !DILocation(line: 186, column: 5, scope: !1049)
!1055 = !DILocation(line: 185, column: 9, scope: !1049)
!1056 = !DILocation(line: 188, column: 5, scope: !1049)
!1057 = distinct !DISubprogram(name: "insert<4U>", linkageName: "_ZN3aie6vectorIfLj4EE6insertILj4EEERS1_jRKNS0_IfXT_EEE", scope: !143, file: !144, line: 393, type: !1058, scopeLine: 394, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !1061, declaration: !1060, retainedNodes: !1063)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!248, !214, !15, !869}
!1060 = !DISubprogram(name: "insert<4U>", linkageName: "_ZN3aie6vectorIfLj4EE6insertILj4EEERS1_jRKNS0_IfXT_EEE", scope: !143, file: !144, line: 393, type: !1058, scopeLine: 393, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !1061)
!1061 = !{!1062}
!1062 = !DITemplateValueParameter(name: "ElemsIn", type: !15, value: i32 4)
!1063 = !{!1064, !1065, !1066}
!1064 = !DILocalVariable(name: "this", arg: 1, scope: !1057, type: !908, flags: DIFlagArtificial | DIFlagObjectPointer)
!1065 = !DILocalVariable(name: "idx", arg: 2, scope: !1057, file: !144, line: 393, type: !15)
!1066 = !DILocalVariable(name: "v", arg: 3, scope: !1057, file: !144, line: 393, type: !869)
!1067 = !DILocation(line: 0, scope: !1057)
!1068 = !DILocation(line: 395, column: 29, scope: !1057)
!1069 = !DILocation(line: 395, column: 50, scope: !1057)
!1070 = !DILocation(line: 396, column: 9, scope: !1057)
!1071 = distinct !DISubprogram(name: "operator unsigned int", linkageName: "_ZNK3aie6detail5utils14unroll_contextIjLj0ELj1ELj0EEcvjEv", scope: !966, file: !914, line: 511, type: !969, scopeLine: 512, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !968, retainedNodes: !1072)
!1072 = !{!1073}
!1073 = !DILocalVariable(name: "this", arg: 1, scope: !1071, type: !1074, flags: DIFlagArtificial | DIFlagObjectPointer)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 32)
!1075 = !DILocation(line: 0, scope: !1071)
!1076 = !DILocation(line: 513, column: 16, scope: !1071)
!1077 = !DILocation(line: 513, column: 9, scope: !1071)
!1078 = distinct !DISubprogram(name: "readincr_v4<(aie_stream_resource_in)0>", linkageName: "_ZL11readincr_v4IL22aie_stream_resource_in0EE7v4floatP12input_streamIfE", scope: !1079, file: !1079, line: 340, type: !1080, scopeLine: 340, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !1085, retainedNodes: !1083)
!1079 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/adf/stream/me/accessors.h", directory: "/home/lxy")
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!161, !1082}
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 32)
!1083 = !{!1084}
!1084 = !DILocalVariable(name: "str", arg: 1, scope: !1078, file: !1079, line: 340, type: !1082)
!1085 = !{!862}
!1086 = !DILocation(line: 0, scope: !1078)
!1087 = !DILocation(line: 340, column: 1, scope: !1078)
!1088 = distinct !DISubprogram(name: "readincr_v8<(aie_stream_resource_in)0>", linkageName: "_ZL11readincr_v8IL22aie_stream_resource_in0EE7v8int16P12input_streamIsE", scope: !1079, file: !1079, line: 309, type: !1089, scopeLine: 310, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !1094, retainedNodes: !1092)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!1091, !139}
!1091 = !DIDerivedType(tag: DW_TAG_typedef, name: "v8int16", file: !39, line: 496, baseType: !269)
!1092 = !{!1093}
!1093 = !DILocalVariable(name: "ss", arg: 1, scope: !1088, file: !1079, line: 309, type: !139)
!1094 = !{!1095}
!1095 = !DITemplateValueParameter(name: "resource", type: !31, value: i32 0)
!1096 = !DILocation(line: 0, scope: !1088)
!1097 = !DILocation(line: 312, column: 12, scope: !1088)
!1098 = !DILocation(line: 312, column: 5, scope: !1088)
!1099 = distinct !DISubprogram(name: "v4float", linkageName: "_ZN7v4floatC2E17chessllvmInternal7v16int8", scope: !1100, file: !39, line: 2705, type: !1109, scopeLine: 2705, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !1108, retainedNodes: !1111)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4float", file: !39, line: 2702, size: 128, flags: DIFlagTypePassByValue, elements: !1101, identifier: "_ZTS7v4float")
!1101 = !{!1102, !1104, !1108}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "mw", scope: !1100, file: !39, line: 2708, baseType: !1103, size: 128)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "v16int8", file: !39, line: 494, baseType: !268)
!1104 = !DISubprogram(name: "v4float", scope: !1100, file: !39, line: 2704, type: !1105, scopeLine: 2704, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{null, !1107}
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!1108 = !DISubprogram(name: "v4float", scope: !1100, file: !39, line: 2705, type: !1109, scopeLine: 2705, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{null, !1107, !38, !1103}
!1111 = !{!1112, !1114, !1115}
!1112 = !DILocalVariable(name: "this", arg: 1, scope: !1099, type: !1113, flags: DIFlagArtificial | DIFlagObjectPointer)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 32)
!1114 = !DILocalVariable(arg: 2, scope: !1099, file: !39, line: 2705, type: !38)
!1115 = !DILocalVariable(name: "aw", arg: 3, scope: !1099, file: !39, line: 2705, type: !1103)
!1116 = !DILocation(line: 0, scope: !1099)
!1117 = !{!1118, !1118, i64 0, i64 4}
!1118 = !{!747, i64 4, !"_ZTS17chessllvmInternal"}
!1119 = !DILocation(line: 2705, column: 42, scope: !1099)
!1120 = !DILocation(line: 2705, column: 52, scope: !1099)
!1121 = !DILocation(line: 2705, column: 58, scope: !1099)
!1122 = !DILocation(line: 2705, column: 61, scope: !1099)
!1123 = !DILocation(line: 2705, column: 66, scope: !1099)
!1124 = distinct !DISubprogram(name: "aie_stream_get_wss<short>", linkageName: "_ZN12stream_utilsL18aie_stream_get_wssIsEE7v8int16P12input_streamIsE", scope: !1126, file: !1125, line: 186, type: !1089, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !1129, retainedNodes: !1127)
!1125 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/adf/stream/me/stream_utils.h", directory: "/home/lxy")
!1126 = !DINamespace(name: "stream_utils", scope: null)
!1127 = !{!1128}
!1128 = !DILocalVariable(name: "ss", arg: 1, scope: !1124, file: !1125, line: 186, type: !139)
!1129 = !{!1130}
!1130 = !DITemplateTypeParameter(name: "T", type: !302)
!1131 = !DILocation(line: 0, scope: !1124)
!1132 = !DILocation(line: 193, column: 28, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1134, file: !1125, line: 190, column: 24)
!1134 = distinct !DILexicalBlock(scope: !1124, file: !1125, line: 188, column: 19)
!1135 = !DILocation(line: 193, column: 16, scope: !1133)
!1136 = !DILocation(line: 193, column: 9, scope: !1133)
!1137 = !{!1138, !1138, i64 0, i64 4}
!1138 = !{!747, i64 4, !"uint1_t"}
!1139 = !{i32 1}
!1140 = distinct !DISubprogram(name: "v8int16", linkageName: "_ZN7v8int16C2E17chessllvmInternal7v16int8", scope: !1141, file: !39, line: 1808, type: !1159, scopeLine: 1808, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !1158, retainedNodes: !1161)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v8int16", file: !39, line: 1800, size: 128, flags: DIFlagTypePassByValue, elements: !1142, identifier: "_ZTS7v8int16")
!1142 = !{!1143, !1144, !1148, !1153, !1154, !1155, !1158}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "mw", scope: !1141, file: !39, line: 1811, baseType: !1103, size: 128)
!1144 = !DISubprogram(name: "operator+=", linkageName: "_ZN7v8int16pLES_", scope: !1141, file: !39, line: 1803, type: !1145, scopeLine: 1803, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!1141, !1147, !1141}
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!1148 = !DISubprogram(name: "operator+=", linkageName: "_ZNV7v8int16pLES_", scope: !1141, file: !39, line: 1804, type: !1149, scopeLine: 1804, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!1141, !1151, !1141}
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!1152 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1141)
!1153 = !DISubprogram(name: "operator-=", linkageName: "_ZN7v8int16mIES_", scope: !1141, file: !39, line: 1805, type: !1145, scopeLine: 1805, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1154 = !DISubprogram(name: "operator-=", linkageName: "_ZNV7v8int16mIES_", scope: !1141, file: !39, line: 1806, type: !1149, scopeLine: 1806, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1155 = !DISubprogram(name: "v8int16", scope: !1141, file: !39, line: 1807, type: !1156, scopeLine: 1807, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{null, !1147}
!1158 = !DISubprogram(name: "v8int16", scope: !1141, file: !39, line: 1808, type: !1159, scopeLine: 1808, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{null, !1147, !38, !1103}
!1161 = !{!1162, !1164, !1165}
!1162 = !DILocalVariable(name: "this", arg: 1, scope: !1140, type: !1163, flags: DIFlagArtificial | DIFlagObjectPointer)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 32)
!1164 = !DILocalVariable(arg: 2, scope: !1140, file: !39, line: 1808, type: !38)
!1165 = !DILocalVariable(name: "aw", arg: 3, scope: !1140, file: !39, line: 1808, type: !1103)
!1166 = !DILocation(line: 0, scope: !1140)
!1167 = !DILocation(line: 1808, column: 42, scope: !1140)
!1168 = !DILocation(line: 1808, column: 52, scope: !1140)
!1169 = !DILocation(line: 1808, column: 58, scope: !1140)
!1170 = !DILocation(line: 1808, column: 61, scope: !1140)
!1171 = !DILocation(line: 1808, column: 66, scope: !1140)
!1172 = !{!1173, !746, i64 16, i64 4}
!1173 = !{!747, i64 20, !"_ZTSN12me_primitive65chessout_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sintE", !880, i64 0, i64 16, !746, i64 16, i64 4}
!1174 = !{!1175, !746, i64 16, i64 4}
!1175 = !{!747, i64 20, !"_ZTSN12me_primitive65chessout_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sintE", !880, i64 0, i64 16, !746, i64 16, i64 4}
!1176 = !{!1177, !746, i64 16, i64 4}
!1177 = !{!747, i64 20, !"_ZTSN12me_primitive62chessout_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sintE", !880, i64 0, i64 16, !746, i64 16, i64 4}
!1178 = distinct !DISubprogram(name: "vector_base", linkageName: "_ZN3aie6detail11vector_baseIfLj4EEC2E7v4float", scope: !147, file: !148, line: 236, type: !181, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !180, retainedNodes: !1179)
!1179 = !{!1180, !1181}
!1180 = !DILocalVariable(name: "this", arg: 1, scope: !1178, type: !935, flags: DIFlagArtificial | DIFlagObjectPointer)
!1181 = !DILocalVariable(name: "v", arg: 2, scope: !1178, file: !148, line: 236, type: !183)
!1182 = !DILocation(line: 0, scope: !1178)
!1183 = !DILocation(line: 237, column: 9, scope: !1178)
!1184 = !DILocation(line: 237, column: 14, scope: !1178)
!1185 = !DILocation(line: 240, column: 5, scope: !1178)
!1186 = distinct !DISubprogram(name: "insert<4U>", linkageName: "_ZN3aie6detail11vector_baseIfLj4EE6insertILj4EEERS2_jRKNS1_IfXT_EEE", scope: !147, file: !148, line: 585, type: !1187, scopeLine: 586, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !1061, declaration: !1190, retainedNodes: !1191)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!203, !179, !15, !1189}
!1189 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !198, size: 32)
!1190 = !DISubprogram(name: "insert<4U>", linkageName: "_ZN3aie6detail11vector_baseIfLj4EE6insertILj4EEERS2_jRKNS1_IfXT_EEE", scope: !147, file: !148, line: 585, type: !1187, scopeLine: 585, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !1061)
!1191 = !{!1192, !1193, !1194, !1195}
!1192 = !DILocalVariable(name: "this", arg: 1, scope: !1186, type: !935, flags: DIFlagArtificial | DIFlagObjectPointer)
!1193 = !DILocalVariable(name: "idx", arg: 2, scope: !1186, file: !148, line: 585, type: !15)
!1194 = !DILocalVariable(name: "v", arg: 3, scope: !1186, file: !148, line: 585, type: !1189)
!1195 = !DILocalVariable(name: "input_bits", scope: !1186, file: !148, line: 589, type: !275)
!1196 = !DILocation(line: 0, scope: !1186)
!1197 = !DILocation(line: 587, column: 9, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !148, line: 587, column: 9)
!1199 = distinct !DILexicalBlock(scope: !1186, file: !148, line: 587, column: 9)
!1200 = !DILocation(line: 587, column: 9, scope: !1199)
!1201 = !DILocation(line: 587, column: 9, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1203, file: !148, line: 587, column: 9)
!1203 = distinct !DILexicalBlock(scope: !1204, file: !148, line: 587, column: 9)
!1204 = distinct !DILexicalBlock(scope: !1198, file: !148, line: 587, column: 9)
!1205 = !DILocation(line: 587, column: 9, scope: !1203)
!1206 = !{!"idx needs to be a valid subvector index"}
!1207 = !DILocation(line: 587, column: 9, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1198, file: !148, line: 587, column: 9)
!1209 = !DILocation(line: 595, column: 13, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1211, file: !148, line: 594, column: 45)
!1211 = distinct !DILexicalBlock(scope: !1186, file: !148, line: 594, column: 23)
!1212 = !DILocation(line: 595, column: 22, scope: !1210)
!1213 = !DILocation(line: 689, column: 9, scope: !1186)
!1214 = distinct !DISubprogram(name: "current", linkageName: "_ZNK3aie6detail5utils14unroll_contextIjLj0ELj1ELj0EE7currentEv", scope: !966, file: !914, line: 526, type: !969, scopeLine: 527, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !974, retainedNodes: !1215)
!1215 = !{!1216}
!1216 = !DILocalVariable(name: "this", arg: 1, scope: !1214, type: !1074, flags: DIFlagArtificial | DIFlagObjectPointer)
!1217 = !DILocation(line: 0, scope: !1214)
!1218 = !DILocation(line: 528, column: 9, scope: !1214)
!1219 = distinct !DISubprogram(name: "writeincr", linkageName: "_ZN3aie6detail3adf17stream_out_helperILj4EfL23aie_stream_resource_out0EE9writeincrEP13output_streamIfENS_6vectorIfLj4EEE", scope: !1220, file: !271, line: 148, type: !1224, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !1223, retainedNodes: !1231)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stream_out_helper<4U, float, (aie_stream_resource_out)0>", scope: !272, file: !271, line: 143, size: 8, flags: DIFlagTypePassByValue, elements: !1221, templateParams: !1230, identifier: "_ZTSN3aie6detail3adf17stream_out_helperILj4EfL23aie_stream_resource_out0EEE")
!1221 = !{!1222, !1223, !1227}
!1222 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1220, baseType: !270, extraData: i32 0)
!1223 = !DISubprogram(name: "writeincr", linkageName: "_ZN3aie6detail3adf17stream_out_helperILj4EfL23aie_stream_resource_out0EE9writeincrEP13output_streamIfENS_6vectorIfLj4EEE", scope: !1220, file: !271, line: 148, type: !1224, scopeLine: 148, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{null, !804, !1226}
!1226 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1220, file: !271, line: 145, baseType: !890)
!1227 = !DISubprogram(name: "writeincr", linkageName: "_ZN3aie6detail3adf17stream_out_helperILj4EfL23aie_stream_resource_out0EE9writeincrEP13output_streamIfENS_6vectorIfLj4EEEb", scope: !1220, file: !271, line: 156, type: !1228, scopeLine: 156, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{null, !804, !1226, !171}
!1230 = !{!279, !102, !874}
!1231 = !{!1232, !1233, !1234}
!1232 = !DILocalVariable(name: "w", arg: 1, scope: !1219, file: !271, line: 148, type: !804)
!1233 = !DILocalVariable(name: "value", arg: 2, scope: !1219, file: !271, line: 148, type: !1226)
!1234 = !DILocalVariable(name: "i", scope: !1235, file: !271, line: 151, type: !15)
!1235 = distinct !DILexicalBlock(scope: !1219, file: !271, line: 151, column: 9)
!1236 = !DILocation(line: 0, scope: !1219)
!1237 = !DILocation(line: 148, column: 53, scope: !1219)
!1238 = !DILocation(line: 0, scope: !1235)
!1239 = !DILocation(line: 151, column: 9, scope: !1235)
!1240 = !DILocation(line: 152, column: 38, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1235, file: !271, line: 151, column: 9)
!1242 = !DILocation(line: 152, column: 53, scope: !1241)
!1243 = !DILocation(line: 152, column: 13, scope: !1241)
!1244 = !DILocation(line: 151, column: 62, scope: !1241)
!1245 = !DILocation(line: 151, column: 32, scope: !1241)
!1246 = distinct !{!1246, !1239, !1247, !787, !1248, !1249, !1250, !1251}
!1247 = !DILocation(line: 152, column: 96, scope: !1235)
!1248 = !{!"llvm.loop.unroll.enable"}
!1249 = !{!"llvm.loop.chess.min_loop_count", i32 1}
!1250 = !{!"llvm.loop.chess.max_loop_count", i32 1}
!1251 = !{!"llvm.loop.chess.flatten_loop"}
!1252 = !DILocation(line: 153, column: 5, scope: !1219)
!1253 = distinct !DISubprogram(name: "writeincr<(aie_stream_resource_out)0>", linkageName: "_ZL9writeincrIL23aie_stream_resource_out0EEvP13output_streamIfE7v4floatb", scope: !1079, file: !1079, line: 380, type: !1254, scopeLine: 380, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !1261, retainedNodes: !1257)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{null, !1256, !161, !171}
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 32)
!1257 = !{!1258, !1259, !1260}
!1258 = !DILocalVariable(name: "str", arg: 1, scope: !1253, file: !1079, line: 380, type: !1256)
!1259 = !DILocalVariable(name: "value", arg: 2, scope: !1253, file: !1079, line: 380, type: !161)
!1260 = !DILocalVariable(name: "tlast", arg: 3, scope: !1253, file: !1079, line: 380, type: !171)
!1261 = !{!874}
!1262 = !DILocation(line: 0, scope: !1253)
!1263 = !DILocation(line: 380, column: 1, scope: !1253)
!1264 = distinct !DISubprogram(name: "extract<4U>", linkageName: "_ZNK3aie6vectorIfLj4EE7extractILj4EEENS0_IfXT_EEEj", scope: !143, file: !144, line: 427, type: !1265, scopeLine: 428, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !1268, declaration: !1267, retainedNodes: !1270)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!143, !242, !15}
!1267 = !DISubprogram(name: "extract<4U>", linkageName: "_ZNK3aie6vectorIfLj4EE7extractILj4EEENS0_IfXT_EEEj", scope: !143, file: !144, line: 427, type: !1265, scopeLine: 427, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !1268)
!1268 = !{!1269}
!1269 = !DITemplateValueParameter(name: "ElemsOut", type: !15, value: i32 4)
!1270 = !{!1271, !1273}
!1271 = !DILocalVariable(name: "this", arg: 1, scope: !1264, type: !1272, flags: DIFlagArtificial | DIFlagObjectPointer)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 32)
!1273 = !DILocalVariable(name: "idx", arg: 2, scope: !1264, file: !144, line: 427, type: !15)
!1274 = !DILocation(line: 0, scope: !1264)
!1275 = !DILocation(line: 429, column: 16, scope: !1264)
!1276 = !DILocation(line: 429, column: 36, scope: !1264)
!1277 = !DILocation(line: 429, column: 9, scope: !1264)
!1278 = distinct !DISubprogram(name: "operator v4float", linkageName: "_ZNK3aie6vectorIfLj4EEcv7v4floatEv", scope: !143, file: !144, line: 230, type: !240, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !244, retainedNodes: !1279)
!1279 = !{!1280}
!1280 = !DILocalVariable(name: "this", arg: 1, scope: !1278, type: !1272, flags: DIFlagArtificial | DIFlagObjectPointer)
!1281 = !DILocation(line: 0, scope: !1278)
!1282 = !DILocation(line: 232, column: 16, scope: !1278)
!1283 = !DILocation(line: 232, column: 9, scope: !1278)
!1284 = distinct !DISubprogram(name: "writeincr<(aie_stream_resource_out)0>", linkageName: "_ZL9writeincrIL23aie_stream_resource_out0EEvP13output_streamIsE7v8int16b", scope: !1079, file: !1079, line: 355, type: !1285, scopeLine: 356, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !1291, retainedNodes: !1287)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{null, !141, !1091, !171}
!1287 = !{!1288, !1289, !1290}
!1288 = !DILocalVariable(name: "ss", arg: 1, scope: !1284, file: !1079, line: 355, type: !141)
!1289 = !DILocalVariable(name: "value", arg: 2, scope: !1284, file: !1079, line: 355, type: !1091)
!1290 = !DILocalVariable(name: "tlast", arg: 3, scope: !1284, file: !1079, line: 355, type: !171)
!1291 = !{!1292}
!1292 = !DITemplateValueParameter(name: "resource", type: !37, value: i32 0)
!1293 = !DILocation(line: 0, scope: !1284)
!1294 = !{!1295, !1295, i64 0, i64 1}
!1295 = !{!747, i64 1, !"bool"}
!1296 = !DILocation(line: 355, column: 57, scope: !1284)
!1297 = !DILocation(line: 358, column: 12, scope: !1284)
!1298 = !DILocation(line: 358, column: 5, scope: !1284)
!1299 = distinct !DISubprogram(name: "aie_stream_put_wms<short>", linkageName: "_ZN12stream_utilsL18aie_stream_put_wmsIsEEvP13output_streamIsE7v8int16Rb", scope: !1126, file: !1125, line: 219, type: !1300, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !1129, retainedNodes: !1302)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{null, !141, !1091, !894}
!1302 = !{!1303, !1304, !1305}
!1303 = !DILocalVariable(name: "ss", arg: 1, scope: !1299, file: !1125, line: 219, type: !141)
!1304 = !DILocalVariable(name: "value", arg: 2, scope: !1299, file: !1125, line: 219, type: !1091)
!1305 = !DILocalVariable(name: "tlast", arg: 3, scope: !1299, file: !1125, line: 219, type: !894)
!1306 = !DILocation(line: 0, scope: !1299)
!1307 = !DILocation(line: 226, column: 21, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !1125, line: 223, column: 24)
!1309 = distinct !DILexicalBlock(scope: !1299, file: !1125, line: 221, column: 19)
!1310 = !DILocation(line: 226, column: 37, scope: !1308)
!1311 = !{i8 0, i8 2}
!1312 = !DILocation(line: 226, column: 9, scope: !1308)
!1313 = !DILocation(line: 227, column: 1, scope: !1299)
!1314 = distinct !DISubprogram(name: "v4int32", linkageName: "_ZN7v4int32C2E17chessllvmInternal7v16int8", scope: !280, file: !39, line: 1830, type: !1315, scopeLine: 1830, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !1334, retainedNodes: !1335)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{null, !1317, !38, !1103}
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4int32", file: !39, line: 1822, size: 128, flags: DIFlagTypePassByValue, elements: !1319, identifier: "_ZTS7v4int32")
!1319 = !{!1320, !1321, !1324, !1329, !1330, !1331, !1334}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "mw", scope: !1318, file: !39, line: 1833, baseType: !1103, size: 128)
!1321 = !DISubprogram(name: "operator+=", linkageName: "_ZN7v4int32pLES_", scope: !1318, file: !39, line: 1825, type: !1322, scopeLine: 1825, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{!1318, !1317, !1318}
!1324 = !DISubprogram(name: "operator+=", linkageName: "_ZNV7v4int32pLES_", scope: !1318, file: !39, line: 1826, type: !1325, scopeLine: 1826, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!1318, !1327, !1318}
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!1328 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1318)
!1329 = !DISubprogram(name: "operator-=", linkageName: "_ZN7v4int32mIES_", scope: !1318, file: !39, line: 1827, type: !1322, scopeLine: 1827, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1330 = !DISubprogram(name: "operator-=", linkageName: "_ZNV7v4int32mIES_", scope: !1318, file: !39, line: 1828, type: !1325, scopeLine: 1828, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1331 = !DISubprogram(name: "v4int32", scope: !1318, file: !39, line: 1829, type: !1332, scopeLine: 1829, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{null, !1317}
!1334 = !DISubprogram(name: "v4int32", scope: !1318, file: !39, line: 1830, type: !1315, scopeLine: 1830, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1335 = !{!1336, !1338, !1339}
!1336 = !DILocalVariable(name: "this", arg: 1, scope: !1314, type: !1337, flags: DIFlagArtificial | DIFlagObjectPointer)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 32)
!1338 = !DILocalVariable(arg: 2, scope: !1314, file: !39, line: 1830, type: !38)
!1339 = !DILocalVariable(name: "aw", arg: 3, scope: !1314, file: !39, line: 1830, type: !1103)
!1340 = !DILocation(line: 0, scope: !1314)
!1341 = !DILocation(line: 1830, column: 42, scope: !1314)
!1342 = !DILocation(line: 1830, column: 52, scope: !1314)
!1343 = !DILocation(line: 1830, column: 58, scope: !1314)
!1344 = !DILocation(line: 1830, column: 61, scope: !1314)
!1345 = !DILocation(line: 1830, column: 66, scope: !1314)
!1346 = distinct !DISubprogram(name: "extract<4U>", linkageName: "_ZNK3aie6detail11vector_baseIfLj4EE7extractILj4EEENS1_IfXT_EEEj", scope: !147, file: !148, line: 705, type: !1347, scopeLine: 706, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !1268, declaration: !1349, retainedNodes: !1350)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!147, !197, !15}
!1349 = !DISubprogram(name: "extract<4U>", linkageName: "_ZNK3aie6detail11vector_baseIfLj4EE7extractILj4EEENS1_IfXT_EEEj", scope: !147, file: !148, line: 705, type: !1347, scopeLine: 705, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !1268)
!1350 = !{!1351, !1353, !1354}
!1351 = !DILocalVariable(name: "this", arg: 1, scope: !1346, type: !1352, flags: DIFlagArtificial | DIFlagObjectPointer)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 32)
!1353 = !DILocalVariable(name: "idx", arg: 2, scope: !1346, file: !148, line: 705, type: !15)
!1354 = !DILocalVariable(name: "output_bits", scope: !1346, file: !148, line: 709, type: !275)
!1355 = !DILocation(line: 0, scope: !1346)
!1356 = !DILocation(line: 707, column: 9, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1358, file: !148, line: 707, column: 9)
!1358 = distinct !DILexicalBlock(scope: !1346, file: !148, line: 707, column: 9)
!1359 = !DILocation(line: 707, column: 9, scope: !1358)
!1360 = !DILocation(line: 707, column: 9, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1362, file: !148, line: 707, column: 9)
!1362 = distinct !DILexicalBlock(scope: !1363, file: !148, line: 707, column: 9)
!1363 = distinct !DILexicalBlock(scope: !1357, file: !148, line: 707, column: 9)
!1364 = !DILocation(line: 707, column: 9, scope: !1362)
!1365 = !DILocation(line: 707, column: 9, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1357, file: !148, line: 707, column: 9)
!1367 = !DILocation(line: 715, column: 20, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1369, file: !148, line: 714, column: 46)
!1369 = distinct !DILexicalBlock(scope: !1346, file: !148, line: 714, column: 23)
!1370 = !{!879, !879, i64 0, i64 16}
!1371 = distinct !DISubprogram(name: "vector", linkageName: "_ZN3aie6vectorIfLj4EEC2ERKNS_6detail11vector_baseIfLj4EEE", scope: !143, file: !144, line: 117, type: !212, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !211, retainedNodes: !1372)
!1372 = !{!1373, !1374}
!1373 = !DILocalVariable(name: "this", arg: 1, scope: !1371, type: !908, flags: DIFlagArtificial | DIFlagObjectPointer)
!1374 = !DILocalVariable(name: "v", arg: 2, scope: !1371, file: !144, line: 117, type: !215)
!1375 = !DILocation(line: 0, scope: !1371)
!1376 = !DILocation(line: 117, column: 47, scope: !1371)
!1377 = !DILocation(line: 117, column: 34, scope: !1371)
!1378 = !DILocation(line: 117, column: 48, scope: !1371)
!1379 = distinct !DISubprogram(name: "to_native", linkageName: "_ZNK3aie6vectorIfLj4EE9to_nativeEv", scope: !143, file: !144, line: 221, type: !240, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !239, retainedNodes: !1380)
!1380 = !{!1381}
!1381 = !DILocalVariable(name: "this", arg: 1, scope: !1379, type: !1272, flags: DIFlagArtificial | DIFlagObjectPointer)
!1382 = !DILocation(line: 0, scope: !1379)
!1383 = !DILocation(line: 223, column: 27, scope: !1379)
!1384 = !DILocation(line: 223, column: 9, scope: !1379)
!1385 = distinct !DISubprogram(name: "to_native", linkageName: "_ZNK3aie6detail11vector_baseIfLj4EE9to_nativeEv", scope: !147, file: !148, line: 292, type: !195, scopeLine: 293, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !194, retainedNodes: !1386)
!1386 = !{!1387}
!1387 = !DILocalVariable(name: "this", arg: 1, scope: !1385, type: !1352, flags: DIFlagArtificial | DIFlagObjectPointer)
!1388 = !DILocation(line: 0, scope: !1385)
!1389 = !DILocation(line: 300, column: 20, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1385, file: !148, line: 297, column: 23)
