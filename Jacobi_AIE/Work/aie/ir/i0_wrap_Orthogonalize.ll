; ModuleID = 'i0_wrap_Orthogonalize.ll'
source_filename = "/home/lxy/Projects/SVD/Jacobi_AIE/Work/aie/ir/i0_wrap_Orthogonalize.cpp"
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

$_Z13orthogonalizeILi4EEvP12input_streamIfES2_P13output_streamIfES5_ = comdat any

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

@__const._ZN3aie6detail5utils17unroll_for_helperIjLj0ELj1ELj0ELj1EE7executeIZNS0_3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEEUlT_E_EEvOSC_.ctx = private unnamed_addr constant %"struct.aie::detail::utils::unroll_context" undef, align 1
@_ZN12me_primitive3ss0E = external dso_local addrspace(25) global i32, align 1 #0
@_ZN12me_primitive5wsst0E = external dso_local addrspace(20) global i32, align 1 #0
@_ZN12me_primitive3ss1E = external dso_local addrspace(26) global i32, align 1 #1
@_ZN12me_primitive5wsst1E = external dso_local addrspace(20) global i32, align 1 #1
@_ZN12me_primitive3ms0E = external dso_local addrspace(29) global i32, align 1 #0
@_ZN12me_primitive3ms1E = external dso_local addrspace(30) global i32, align 1 #1

; Function Attrs: mustprogress nounwind
define dso_local float @_Z4signd(double %x) addrspace(1) #2 !dbg !637 {
entry:
  %retval = alloca float, align 4
  %x.addr = alloca double, align 4
  store double %x, double* %x.addr, align 4, !tbaa !643
  call addrspace(1) void @llvm.dbg.declare(metadata double* %x.addr, metadata !642, metadata !DIExpression()), !dbg !647
  %0 = load double, double* %x.addr, align 4, !dbg !648, !tbaa !643
  %cmp = fcmp ogt double %0, 0.000000e+00, !dbg !650
  br i1 %cmp, label %if.then, label %if.else, !dbg !651

if.then:                                          ; preds = %entry
  %1 = load double, double* %x.addr, align 4, !dbg !652, !tbaa !643
  %conv = fptrunc double %1 to float, !dbg !652
  store float %conv, float* %retval, align 4, !dbg !653
  br label %return, !dbg !653

if.else:                                          ; preds = %entry
  %2 = load double, double* %x.addr, align 4, !dbg !654, !tbaa !643
  %cmp1 = fcmp oeq double %2, 0.000000e+00, !dbg !656
  br i1 %cmp1, label %if.then2, label %if.else3, !dbg !657

if.then2:                                         ; preds = %if.else
  store float 0.000000e+00, float* %retval, align 4, !dbg !658
  br label %return, !dbg !658

if.else3:                                         ; preds = %if.else
  store float -1.000000e+00, float* %retval, align 4, !dbg !659
  br label %return, !dbg !659

return:                                           ; preds = %if.else3, %if.then2, %if.then
  %3 = load float, float* %retval, align 4, !dbg !660
  ret float %3, !dbg !660
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) addrspace(1) #3

; Function Attrs: mustprogress nounwind
define weak_odr dso_local void @_Z13orthogonalizeILi4EEvP12input_streamIfES2_P13output_streamIfES5_(%struct.input_stream* chesscopy noalias %Ap, %struct.input_stream* chesscopy noalias %Aq, %struct.output_stream* chesscopy noalias %Bp, %struct.output_stream* chesscopy noalias %Bq) addrspace(1) #2 comdat !dbg !661 {
entry:
  %Ap.addr = alloca %struct.input_stream*, align 4
  %Aq.addr = alloca %struct.input_stream*, align 4
  %Bp.addr = alloca %struct.output_stream*, align 4
  %Bq.addr = alloca %struct.output_stream*, align 4
  %VECSIZE = alloca i32, align 4
  %tmpAp = alloca %"class.aie::vector", align 16
  %tmpAq = alloca %"class.aie::vector", align 16
  %0 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0p0s_struct.input_streams.i32(%struct.input_stream** %Ap.addr, i32 0, metadata !681), !noalias !684
  store %struct.input_stream* %Ap, %struct.input_stream** %Ap.addr, align 4, !tbaa !688, !noalias !684
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.input_stream** %Ap.addr, metadata !671, metadata !DIExpression()), !dbg !690
  %1 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0p0s_struct.input_streams.i32(%struct.input_stream** %Aq.addr, i32 0, metadata !691), !noalias !684
  store %struct.input_stream* %Aq, %struct.input_stream** %Aq.addr, align 4, !tbaa !688, !noalias !684
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.input_stream** %Aq.addr, metadata !672, metadata !DIExpression()), !dbg !692
  %2 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0p0s_struct.output_streams.i32(%struct.output_stream** %Bp.addr, i32 0, metadata !693), !noalias !684
  store %struct.output_stream* %Bp, %struct.output_stream** %Bp.addr, align 4, !tbaa !688, !noalias !684
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.output_stream** %Bp.addr, metadata !673, metadata !DIExpression()), !dbg !694
  %3 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0p0s_struct.output_streams.i32(%struct.output_stream** %Bq.addr, i32 0, metadata !695), !noalias !684
  store %struct.output_stream* %Bq, %struct.output_stream** %Bq.addr, align 4, !tbaa !688, !noalias !684
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.output_stream** %Bq.addr, metadata !674, metadata !DIExpression()), !dbg !696
  store i32 undef, i32* %VECSIZE, align 4, !dbg !697, !noalias !684
  %4 = bitcast i32* %VECSIZE to i8*, !dbg !697
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #21, !dbg !697, !noalias !684
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %VECSIZE, metadata !675, metadata !DIExpression()), !dbg !698
  store i32 4, i32* %VECSIZE, align 4, !dbg !698, !tbaa !699, !noalias !684
  store %"class.aie::vector" undef, %"class.aie::vector"* %tmpAp, align 16, !dbg !701, !noalias !684
  %5 = bitcast %"class.aie::vector"* %tmpAp to i8*, !dbg !701
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 16, i8* %5) #21, !dbg !701, !noalias !684
  call addrspace(1) void @llvm.dbg.declare(metadata %"class.aie::vector"* %tmpAp, metadata !677, metadata !DIExpression()), !dbg !702
  %6 = load %struct.input_stream*, %struct.input_stream** %Ap.addr, align 4, !dbg !703, !tbaa !688, !noalias !684
  %7 = call addrspace(1) %struct.input_stream* @llvm.noalias.p0s_struct.input_streams.p0i8.p0p0s_struct.input_streams.i32(%struct.input_stream* %6, i8* %0, %struct.input_stream** %Ap.addr, i32 0, metadata !681), !dbg !703, !tbaa !688, !noalias !684
  %call = call addrspace(1) %"class.aie::vector" @_Z10readincr_vILj4EL22aie_stream_resource_in0EfEN3aie6vectorIT1_XT_EEEP12input_streamIS3_E(%struct.input_stream* %7) #22, !dbg !704, !noalias !684
  %8 = getelementptr inbounds %"class.aie::vector", %"class.aie::vector"* %tmpAp, i32 0, i32 0, !dbg !704
  %9 = extractvalue %"class.aie::vector" %call, 0, !dbg !704
  store %"class.aie::detail::vector_base" %9, %"class.aie::detail::vector_base"* %8, align 16, !dbg !704, !noalias !684
  store %"class.aie::vector" undef, %"class.aie::vector"* %tmpAq, align 16, !dbg !705, !noalias !684
  %10 = bitcast %"class.aie::vector"* %tmpAq to i8*, !dbg !705
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 16, i8* %10) #21, !dbg !705, !noalias !684
  call addrspace(1) void @llvm.dbg.declare(metadata %"class.aie::vector"* %tmpAq, metadata !678, metadata !DIExpression()), !dbg !706
  %11 = load %struct.input_stream*, %struct.input_stream** %Aq.addr, align 4, !dbg !707, !tbaa !688, !noalias !684
  %12 = call addrspace(1) %struct.input_stream* @llvm.noalias.p0s_struct.input_streams.p0i8.p0p0s_struct.input_streams.i32(%struct.input_stream* %11, i8* %1, %struct.input_stream** %Aq.addr, i32 0, metadata !691), !dbg !707, !tbaa !688, !noalias !684
  %call1 = call addrspace(1) %"class.aie::vector" @_Z10readincr_vILj4EL22aie_stream_resource_in0EfEN3aie6vectorIT1_XT_EEEP12input_streamIS3_E(%struct.input_stream* %12) #22, !dbg !708, !noalias !684
  %13 = getelementptr inbounds %"class.aie::vector", %"class.aie::vector"* %tmpAq, i32 0, i32 0, !dbg !708
  %14 = extractvalue %"class.aie::vector" %call1, 0, !dbg !708
  store %"class.aie::detail::vector_base" %14, %"class.aie::detail::vector_base"* %13, align 16, !dbg !708, !noalias !684
  %15 = load %struct.output_stream*, %struct.output_stream** %Bp.addr, align 4, !dbg !709, !tbaa !688, !noalias !684
  %16 = call addrspace(1) %struct.output_stream* @llvm.noalias.p0s_struct.output_streams.p0i8.p0p0s_struct.output_streams.i32(%struct.output_stream* %15, i8* %2, %struct.output_stream** %Bp.addr, i32 0, metadata !693), !dbg !709, !tbaa !688, !noalias !684
  call addrspace(1) void @_Z9writeincrIL23aie_stream_resource_out0EfLj4EEvP13output_streamIT0_ERKN3aie6vectorIS2_XT1_EEE(%struct.output_stream* %16, %"class.aie::vector"* nonnull align 16 dereferenceable(16) %tmpAp) #22, !dbg !710, !noalias !684
  %17 = load %struct.output_stream*, %struct.output_stream** %Bq.addr, align 4, !dbg !711, !tbaa !688, !noalias !684
  %18 = call addrspace(1) %struct.output_stream* @llvm.noalias.p0s_struct.output_streams.p0i8.p0p0s_struct.output_streams.i32(%struct.output_stream* %17, i8* %3, %struct.output_stream** %Bq.addr, i32 0, metadata !695), !dbg !711, !tbaa !688, !noalias !684
  call addrspace(1) void @_Z9writeincrIL23aie_stream_resource_out0EfLj4EEvP13output_streamIT0_ERKN3aie6vectorIS2_XT1_EEE(%struct.output_stream* %18, %"class.aie::vector"* nonnull align 16 dereferenceable(16) %tmpAq) #22, !dbg !712, !noalias !684
  %19 = bitcast %"class.aie::vector"* %tmpAq to i8*, !dbg !713
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 16, i8* %19) #21, !dbg !713
  %20 = bitcast %"class.aie::vector"* %tmpAp to i8*, !dbg !713
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 16, i8* %20) #21, !dbg !713
  %21 = bitcast i32* %VECSIZE to i8*, !dbg !713
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #21, !dbg !713
  ret void, !dbg !713
}

; Function Attrs: inaccessiblememonly nounwind willreturn
declare i8* @llvm.noalias.decl.p0i8.p0p0s_struct.input_streams.i32(%struct.input_stream**, i32, metadata) addrspace(1) #4

; Function Attrs: inaccessiblememonly nounwind willreturn
declare i8* @llvm.noalias.decl.p0i8.p0p0s_struct.output_streams.i32(%struct.output_stream**, i32, metadata) addrspace(1) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) addrspace(1) #5

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local %"class.aie::vector" @_Z10readincr_vILj4EL22aie_stream_resource_in0EfEN3aie6vectorIT1_XT_EEEP12input_streamIS3_E(%struct.input_stream* %w) addrspace(1) #6 comdat !dbg !714 {
entry:
  %retval = alloca %"class.aie::vector", align 16
  %w.addr = alloca %struct.input_stream*, align 4
  store %struct.input_stream* %w, %struct.input_stream** %w.addr, align 4, !tbaa !688
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.input_stream** %w.addr, metadata !718, metadata !DIExpression()), !dbg !721
  %0 = load %struct.input_stream*, %struct.input_stream** %w.addr, align 4, !dbg !722, !tbaa !688
  %call = call addrspace(1) %"class.aie::vector" @_ZN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfE(%struct.input_stream* %0) #22, !dbg !723
  %1 = getelementptr inbounds %"class.aie::vector", %"class.aie::vector"* %retval, i32 0, i32 0, !dbg !723
  %2 = extractvalue %"class.aie::vector" %call, 0, !dbg !723
  store %"class.aie::detail::vector_base" %2, %"class.aie::detail::vector_base"* %1, align 16, !dbg !723
  %3 = load %"class.aie::vector", %"class.aie::vector"* %retval, align 16, !dbg !724
  ret %"class.aie::vector" %3, !dbg !724
}

; Function Attrs: argmemonly nounwind speculatable willreturn
declare %struct.input_stream* @llvm.noalias.p0s_struct.input_streams.p0i8.p0p0s_struct.input_streams.i32(%struct.input_stream*, i8*, %struct.input_stream**, i32, metadata) addrspace(1) #7

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local void @_Z9writeincrIL23aie_stream_resource_out0EfLj4EEvP13output_streamIT0_ERKN3aie6vectorIS2_XT1_EEE(%struct.output_stream* %w, %"class.aie::vector"* nonnull align 16 dereferenceable(16) %value) addrspace(1) #6 comdat !dbg !725 {
entry:
  %w.addr = alloca %struct.output_stream*, align 4
  %value.addr = alloca %"class.aie::vector"*, align 4
  store %struct.output_stream* %w, %struct.output_stream** %w.addr, align 4, !tbaa !688
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.output_stream** %w.addr, metadata !730, metadata !DIExpression()), !dbg !734
  store %"class.aie::vector"* %value, %"class.aie::vector"** %value.addr, align 4, !tbaa !688
  call addrspace(1) void @llvm.dbg.declare(metadata %"class.aie::vector"** %value.addr, metadata !731, metadata !DIExpression()), !dbg !735
  %0 = load %struct.output_stream*, %struct.output_stream** %w.addr, align 4, !dbg !736, !tbaa !688
  %1 = load %"class.aie::vector"*, %"class.aie::vector"** %value.addr, align 4, !dbg !737, !tbaa !688
  %2 = load %"class.aie::vector", %"class.aie::vector"* %1, align 16, !dbg !738, !tbaa !739
  call addrspace(1) void @_ZN3aie6detail3adf17stream_out_helperILj4EfL23aie_stream_resource_out0EE9writeincrEP13output_streamIfENS_6vectorIfLj4EEE(%struct.output_stream* %0, %"class.aie::vector" %2) #22, !dbg !738
  ret void, !dbg !743
}

; Function Attrs: argmemonly nounwind speculatable willreturn
declare %struct.output_stream* @llvm.noalias.p0s_struct.output_streams.p0i8.p0p0s_struct.output_streams.i32(%struct.output_stream*, i8*, %struct.output_stream**, i32, metadata) addrspace(1) #7

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) addrspace(1) #5

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local %"class.aie::vector" @_ZN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfE(%struct.input_stream* %w) addrspace(1) #6 comdat align 2 !dbg !744 {
entry:
  %retval = alloca %"class.aie::vector", align 16
  %w.addr = alloca %struct.input_stream*, align 4
  %custom_type.tmp = alloca %"class.aie::vector", align 16
  %ref.tmp = alloca %class.anon, align 4
  store %struct.input_stream* %w, %struct.input_stream** %w.addr, align 4, !tbaa !688
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.input_stream** %w.addr, metadata !759, metadata !DIExpression()), !dbg !761
  call addrspace(1) void @llvm.dbg.declare(metadata %"class.aie::vector"* %retval, metadata !760, metadata !DIExpression()), !dbg !762
  call addrspace(1) void @_ZN3aie6vectorIfLj4EEC2Ev(%"class.aie::vector"* nonnull align 16 dereferenceable(16) %custom_type.tmp) #22, !dbg !762
  %0 = load %"class.aie::vector", %"class.aie::vector"* %custom_type.tmp, align 16, !dbg !762, !tbaa !739
  store %"class.aie::vector" %0, %"class.aie::vector"* %retval, align 16, !dbg !762, !tbaa !739
  %1 = bitcast %class.anon* %ref.tmp to i8*, !dbg !763
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #21, !dbg !763
  %2 = getelementptr inbounds %class.anon, %class.anon* %ref.tmp, i32 0, i32 0, !dbg !763
  store %struct.input_stream** %w.addr, %struct.input_stream*** %2, align 4, !dbg !763, !tbaa !688
  %3 = getelementptr inbounds %class.anon, %class.anon* %ref.tmp, i32 0, i32 1, !dbg !763
  store %"class.aie::vector"* %retval, %"class.aie::vector"** %3, align 4, !dbg !763, !tbaa !688
  call addrspace(1) void @_ZN3aie6detail5utils12unroll_timesILj1EZNS0_3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEEUlT_E_EEvOT0_(%class.anon* nonnull align 4 dereferenceable(8) %ref.tmp) #22, !dbg !765
  %4 = bitcast %class.anon* %ref.tmp to i8*, !dbg !765
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 8, i8* %4) #21, !dbg !765
  %5 = load %"class.aie::vector", %"class.aie::vector"* %retval, align 16, !dbg !766
  ret %"class.aie::vector" %5, !dbg !766
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dso_local void @_ZN3aie6vectorIfLj4EEC2Ev(%"class.aie::vector"* nonnull align 16 dereferenceable(16) %this) unnamed_addr addrspace(1) #8 comdat align 2 !dbg !767 {
entry:
  %this.addr = alloca %"class.aie::vector"*, align 4
  store %"class.aie::vector"* %this, %"class.aie::vector"** %this.addr, align 4, !tbaa !688
  call addrspace(1) void @llvm.dbg.declare(metadata %"class.aie::vector"** %this.addr, metadata !769, metadata !DIExpression()), !dbg !771
  %this1 = load %"class.aie::vector"*, %"class.aie::vector"** %this.addr, align 4
  %0 = bitcast %"class.aie::vector"* %this1 to %"class.aie::detail::vector_base"*, !dbg !772
  call addrspace(1) void @_ZN3aie6detail11vector_baseIfLj4EEC2Ev(%"class.aie::detail::vector_base"* nonnull align 16 dereferenceable(16) %0) #22, !dbg !773
  ret void, !dbg !774
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local void @_ZN3aie6detail5utils12unroll_timesILj1EZNS0_3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEEUlT_E_EEvOT0_(%class.anon* nonnull align 4 dereferenceable(8) %fn) addrspace(1) #6 comdat !dbg !775 {
entry:
  %fn.addr = alloca %class.anon*, align 4
  store %class.anon* %fn, %class.anon** %fn.addr, align 4, !tbaa !688
  call addrspace(1) void @llvm.dbg.declare(metadata %class.anon** %fn.addr, metadata !787, metadata !DIExpression()), !dbg !791
  %0 = load %class.anon*, %class.anon** %fn.addr, align 4, !dbg !792, !tbaa !688
  call addrspace(1) void @_ZN3aie6detail5utils10unroll_forIjLj0ELj1ELj1EZNS0_3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEEUlT_E_EEvOT3_(%class.anon* nonnull align 4 dereferenceable(8) %0) #22, !dbg !793
  ret void, !dbg !794
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dso_local void @_ZN3aie6detail11vector_baseIfLj4EEC2Ev(%"class.aie::detail::vector_base"* nonnull align 16 dereferenceable(16) %this) unnamed_addr addrspace(1) #8 comdat align 2 !dbg !795 {
entry:
  %this.addr = alloca %"class.aie::detail::vector_base"*, align 4
  store %"class.aie::detail::vector_base"* %this, %"class.aie::detail::vector_base"** %this.addr, align 4, !tbaa !688
  call addrspace(1) void @llvm.dbg.declare(metadata %"class.aie::detail::vector_base"** %this.addr, metadata !797, metadata !DIExpression()), !dbg !799
  %this1 = load %"class.aie::detail::vector_base"*, %"class.aie::detail::vector_base"** %this.addr, align 4
  %data = getelementptr inbounds %"class.aie::detail::vector_base", %"class.aie::detail::vector_base"* %this1, i32 0, i32 0, !dbg !800
  %call = call addrspace(1) %struct.v4float @_ZN3aie6detail14vector_storageIfLj4EE5undefEv() #22, !dbg !801
  %0 = getelementptr inbounds %struct.v4float, %struct.v4float* %data, i32 0, i32 0, !dbg !801
  %1 = extractvalue %struct.v4float %call, 0, !dbg !801
  store %struct.ipd.custom_type.v16int8.v16int8 %1, %struct.ipd.custom_type.v16int8.v16int8* %0, align 16, !dbg !801
  ret void, !dbg !802
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local %struct.v4float @_ZN3aie6detail14vector_storageIfLj4EE5undefEv() addrspace(1) #2 comdat align 2 !dbg !803 {
entry:
  %retval = alloca %struct.v4float, align 16
  %call = call addrspace(1) %struct.v4float @_Z13undef_v4floatv() #22, !dbg !804
  %0 = getelementptr inbounds %struct.v4float, %struct.v4float* %retval, i32 0, i32 0, !dbg !804
  %1 = extractvalue %struct.v4float %call, 0, !dbg !804
  store %struct.ipd.custom_type.v16int8.v16int8 %1, %struct.ipd.custom_type.v16int8.v16int8* %0, align 16, !dbg !804
  %2 = load %struct.v4float, %struct.v4float* %retval, align 16, !dbg !805
  ret %struct.v4float %2, !dbg !805
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local %struct.v4float @_Z13undef_v4floatv() addrspace(1) #6 comdat {
entry:
  %retval = alloca %struct.v4float, align 16
  %call = call x86_regcallcc addrspace(1) %struct.v4float @__regcall3__chessintr_v4float_undef_v4float() #23
  %0 = getelementptr inbounds %struct.v4float, %struct.v4float* %retval, i32 0, i32 0
  %1 = extractvalue %struct.v4float %call, 0
  store %struct.ipd.custom_type.v16int8.v16int8 %1, %struct.ipd.custom_type.v16int8.v16int8* %0, align 16
  %2 = load %struct.v4float, %struct.v4float* %retval, align 16
  ret %struct.v4float %2
}

; Function Attrs: nounwind readnone willreturn
declare dso_local x86_regcallcc %struct.v4float @__regcall3__chessintr_v4float_undef_v4float() addrspace(1) #9

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local void @_ZN3aie6detail5utils10unroll_forIjLj0ELj1ELj1EZNS0_3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEEUlT_E_EEvOT3_(%class.anon* nonnull align 4 dereferenceable(8) %fn) addrspace(1) #6 comdat !dbg !806 {
entry:
  %fn.addr = alloca %class.anon*, align 4
  store %class.anon* %fn, %class.anon** %fn.addr, align 4, !tbaa !688
  call addrspace(1) void @llvm.dbg.declare(metadata %class.anon** %fn.addr, metadata !808, metadata !DIExpression()), !dbg !814
  %0 = load %class.anon*, %class.anon** %fn.addr, align 4, !dbg !815, !tbaa !688
  call addrspace(1) void @_ZN3aie6detail5utils17unroll_for_helperIjLj0ELj1ELj0ELj1EE7executeIZNS0_3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEEUlT_E_EEvOSC_(%class.anon* nonnull align 4 dereferenceable(8) %0) #22, !dbg !816
  ret void, !dbg !817
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local void @_ZN3aie6detail5utils17unroll_for_helperIjLj0ELj1ELj0ELj1EE7executeIZNS0_3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEEUlT_E_EEvOSC_(%class.anon* nonnull align 4 dereferenceable(8) %fn) addrspace(1) #6 comdat align 2 !dbg !818 {
entry:
  %fn.addr = alloca %class.anon*, align 4
  %ctx = alloca %"struct.aie::detail::utils::unroll_context", align 1
  %agg.tmp = alloca %"struct.aie::detail::utils::unroll_context", align 1
  %next_it = alloca i32, align 4
  store %class.anon* %fn, %class.anon** %fn.addr, align 4, !tbaa !688
  call addrspace(1) void @llvm.dbg.declare(metadata %class.anon** %fn.addr, metadata !825, metadata !DIExpression()), !dbg !841
  store %"struct.aie::detail::utils::unroll_context" undef, %"struct.aie::detail::utils::unroll_context"* %ctx, align 1, !dbg !842
  %0 = bitcast %"struct.aie::detail::utils::unroll_context"* %ctx to i8*, !dbg !842
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 1, i8* %0) #21, !dbg !842
  call addrspace(1) void @llvm.dbg.declare(metadata %"struct.aie::detail::utils::unroll_context"* %ctx, metadata !826, metadata !DIExpression()), !dbg !843
  %1 = bitcast %"struct.aie::detail::utils::unroll_context"* %ctx to i8*, !dbg !843
  call addrspace(1) void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %1, i8* align 1 getelementptr inbounds (%"struct.aie::detail::utils::unroll_context", %"struct.aie::detail::utils::unroll_context"* @__const._ZN3aie6detail5utils17unroll_for_helperIjLj0ELj1ELj0ELj1EE7executeIZNS0_3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEEUlT_E_EEvOSC_.ctx, i32 0, i32 0), i32 1, i1 false), !dbg !843
  %2 = load %class.anon*, %class.anon** %fn.addr, align 4, !dbg !844, !tbaa !688
  call addrspace(1) void @_ZZN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEENKUlT_E_clINS0_5utils14unroll_contextIjLj0ELj1ELj0EEEEEDaS8_(%class.anon* nonnull align 4 dereferenceable(8) %2) #22, !dbg !844
  store i32 undef, i32* %next_it, align 4, !dbg !846
  %3 = bitcast i32* %next_it to i8*, !dbg !846
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #21, !dbg !846
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %next_it, metadata !840, metadata !DIExpression()), !dbg !847
  store i32 1, i32* %next_it, align 4, !dbg !847, !tbaa !699
  %4 = load %class.anon*, %class.anon** %fn.addr, align 4, !dbg !848, !tbaa !688
  call addrspace(1) void @_ZN3aie6detail5utils17unroll_for_helperIjLj0ELj1ELj1ELj1EE7executeIZNS0_3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEEUlT_E_EEvOSC_(%class.anon* nonnull align 4 dereferenceable(8) %4) #22, !dbg !849
  %5 = bitcast i32* %next_it to i8*, !dbg !850
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %5) #21, !dbg !850
  %6 = bitcast %"struct.aie::detail::utils::unroll_context"* %ctx to i8*, !dbg !850
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 1, i8* %6) #21, !dbg !850
  ret void, !dbg !851
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) addrspace(1) #10

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local void @_ZZN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEENKUlT_E_clINS0_5utils14unroll_contextIjLj0ELj1ELj0EEEEEDaS8_(%class.anon* nonnull align 4 dereferenceable(8) %this) addrspace(1) #6 comdat align 2 !dbg !852 {
entry:
  %idx = alloca %"struct.aie::detail::utils::unroll_context", align 1
  %this.addr = alloca %class.anon*, align 4
  %tmp = alloca %"class.aie::vector", align 16
  %custom_type.tmp = alloca %"class.aie::vector", align 16
  %custom_type.tmp2 = alloca %"class.aie::vector", align 16
  %agg.tmp = alloca %struct.v4float, align 16
  %ref.tmp = alloca %class.anon.1, align 1
  %undef.agg.tmp = alloca %class.anon.1, align 1
  store %class.anon* %this, %class.anon** %this.addr, align 4, !tbaa !688
  call addrspace(1) void @llvm.dbg.declare(metadata %class.anon** %this.addr, metadata !861, metadata !DIExpression()), !dbg !865
  call addrspace(1) void @llvm.dbg.declare(metadata %"struct.aie::detail::utils::unroll_context"* %idx, metadata !863, metadata !DIExpression()), !dbg !866
  %this1 = load %class.anon*, %class.anon** %this.addr, align 4
  store %"class.aie::vector" undef, %"class.aie::vector"* %tmp, align 16, !dbg !867
  %0 = bitcast %"class.aie::vector"* %tmp to i8*, !dbg !867
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 16, i8* %0) #21, !dbg !867
  call addrspace(1) void @llvm.dbg.declare(metadata %"class.aie::vector"* %tmp, metadata !864, metadata !DIExpression()), !dbg !868
  call addrspace(1) void @_ZN3aie6vectorIfLj4EEC2Ev(%"class.aie::vector"* nonnull align 16 dereferenceable(16) %custom_type.tmp) #22, !dbg !868
  %1 = load %"class.aie::vector", %"class.aie::vector"* %custom_type.tmp, align 16, !dbg !868, !tbaa !739
  store %"class.aie::vector" %1, %"class.aie::vector"* %tmp, align 16, !dbg !868, !tbaa !739
  %2 = bitcast %class.anon.1* %ref.tmp to i8*, !dbg !869
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 1, i8* %2) #21, !dbg !869
  call addrspace(1) void @_ZN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE6get_opEv() #22, !dbg !869
  %3 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 0, !dbg !870
  %4 = load %struct.input_stream**, %struct.input_stream*** %3, align 4, !dbg !870, !tbaa !871
  %call = call addrspace(1) %struct.v4float @_ZZN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE6get_opEvENKUlDpOT_E_clIJRP12input_streamIfEEEEDaS7_(%class.anon.1* nonnull align 1 dereferenceable(1) %ref.tmp, %struct.input_stream** nonnull align 4 dereferenceable(4) %4) #22, !dbg !869
  %5 = getelementptr inbounds %struct.v4float, %struct.v4float* %agg.tmp, i32 0, i32 0, !dbg !869
  %6 = extractvalue %struct.v4float %call, 0, !dbg !869
  store %struct.ipd.custom_type.v16int8.v16int8 %6, %struct.ipd.custom_type.v16int8.v16int8* %5, align 16, !dbg !869
  %7 = load %struct.v4float, %struct.v4float* %agg.tmp, align 16, !dbg !869, !tbaa !873
  call addrspace(1) void @_ZN3aie6vectorIfLj4EEC2E7v4float(%"class.aie::vector"* nonnull align 16 dereferenceable(16) %custom_type.tmp2, %struct.v4float %7) #22, !dbg !869
  %8 = load %"class.aie::vector", %"class.aie::vector"* %custom_type.tmp2, align 16, !dbg !869, !tbaa !739
  store %"class.aie::vector" %8, %"class.aie::vector"* %tmp, align 16, !dbg !869, !tbaa !739
  %9 = bitcast %class.anon.1* %ref.tmp to i8*, !dbg !874
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 1, i8* %9) #21, !dbg !874
  %10 = getelementptr inbounds %class.anon, %class.anon* %this1, i32 0, i32 1, !dbg !875
  %11 = load %"class.aie::vector"*, %"class.aie::vector"** %10, align 4, !dbg !875, !tbaa !876
  %call3 = call addrspace(1) i32 @_ZNK3aie6detail5utils14unroll_contextIjLj0ELj1ELj0EEcvjEv(%"struct.aie::detail::utils::unroll_context"* nonnull align 1 dereferenceable(1) %idx) #22, !dbg !877
  %call4 = call nonnull align 16 dereferenceable(16) addrspace(1) %"class.aie::vector"* @_ZN3aie6vectorIfLj4EE6insertILj4EEERS1_jRKNS0_IfXT_EEE(%"class.aie::vector"* nonnull align 16 dereferenceable(16) %11, i32 %call3, %"class.aie::vector"* nonnull align 16 dereferenceable(16) %tmp) #22, !dbg !878
  %12 = bitcast %"class.aie::vector"* %tmp to i8*, !dbg !879
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 16, i8* %12) #21, !dbg !879
  ret void, !dbg !879
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local void @_ZN3aie6detail5utils17unroll_for_helperIjLj0ELj1ELj1ELj1EE7executeIZNS0_3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEEUlT_E_EEvOSC_(%class.anon* nonnull align 4 dereferenceable(8) %fn) addrspace(1) #6 comdat align 2 !dbg !880 {
entry:
  %fn.addr = alloca %class.anon*, align 4
  store %class.anon* %fn, %class.anon** %fn.addr, align 4, !tbaa !688
  call addrspace(1) void @llvm.dbg.declare(metadata %class.anon** %fn.addr, metadata !886, metadata !DIExpression()), !dbg !887
  ret void, !dbg !888
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE6get_opEv() addrspace(1) #2 comdat align 2 !dbg !889 {
entry:
  ret void, !dbg !894
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local %struct.v4float @_ZZN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE6get_opEvENKUlDpOT_E_clIJRP12input_streamIfEEEEDaS7_(%class.anon.1* nonnull align 1 dereferenceable(1) %this, %struct.input_stream** nonnull align 4 dereferenceable(4) %args) addrspace(1) #6 comdat align 2 !dbg !897 {
entry:
  %retval = alloca %struct.v4float, align 16
  %this.addr = alloca %class.anon.1*, align 4
  %args.addr = alloca %struct.input_stream**, align 4
  store %class.anon.1* %this, %class.anon.1** %this.addr, align 4, !tbaa !688
  call addrspace(1) void @llvm.dbg.declare(metadata %class.anon.1** %this.addr, metadata !908, metadata !DIExpression()), !dbg !911
  store %struct.input_stream** %args, %struct.input_stream*** %args.addr, align 4, !tbaa !688
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.input_stream*** %args.addr, metadata !910, metadata !DIExpression()), !dbg !912
  %this1 = load %class.anon.1*, %class.anon.1** %this.addr, align 4
  %0 = load %struct.input_stream**, %struct.input_stream*** %args.addr, align 4, !dbg !913, !tbaa !688
  %1 = load %struct.input_stream*, %struct.input_stream** %0, align 4, !dbg !914, !tbaa !688
  %call = call addrspace(1) %struct.v4float @_ZL11readincr_v4IL22aie_stream_resource_in0EE7v4floatP12input_streamIfE(%struct.input_stream* %1) #22, !dbg !915
  %2 = getelementptr inbounds %struct.v4float, %struct.v4float* %retval, i32 0, i32 0, !dbg !915
  %3 = extractvalue %struct.v4float %call, 0, !dbg !915
  store %struct.ipd.custom_type.v16int8.v16int8 %3, %struct.ipd.custom_type.v16int8.v16int8* %2, align 16, !dbg !915
  %4 = load %struct.v4float, %struct.v4float* %retval, align 16, !dbg !916
  ret %struct.v4float %4, !dbg !916
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dso_local void @_ZN3aie6vectorIfLj4EEC2E7v4float(%"class.aie::vector"* nonnull align 16 dereferenceable(16) %this, %struct.v4float %v.coerce) unnamed_addr addrspace(1) #8 comdat align 2 !dbg !917 {
entry:
  %v = alloca %struct.v4float, align 16
  %this.addr = alloca %"class.aie::vector"*, align 4
  store %struct.v4float %v.coerce, %struct.v4float* %v, align 16
  store %"class.aie::vector"* %this, %"class.aie::vector"** %this.addr, align 4, !tbaa !688
  call addrspace(1) void @llvm.dbg.declare(metadata %"class.aie::vector"** %this.addr, metadata !919, metadata !DIExpression()), !dbg !921
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.v4float* %v, metadata !920, metadata !DIExpression()), !dbg !922
  %this1 = load %"class.aie::vector"*, %"class.aie::vector"** %this.addr, align 4
  %0 = bitcast %"class.aie::vector"* %this1 to %"class.aie::detail::vector_base"*, !dbg !923
  %1 = load %struct.v4float, %struct.v4float* %v, align 16, !dbg !924, !tbaa !873
  call addrspace(1) void @_ZN3aie6detail11vector_baseIfLj4EEC2E7v4float(%"class.aie::detail::vector_base"* nonnull align 16 dereferenceable(16) %0, %struct.v4float %1) #22, !dbg !924
  ret void, !dbg !925
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local nonnull align 16 dereferenceable(16) %"class.aie::vector"* @_ZN3aie6vectorIfLj4EE6insertILj4EEERS1_jRKNS0_IfXT_EEE(%"class.aie::vector"* nonnull align 16 dereferenceable(16) %this, i32 %idx, %"class.aie::vector"* nonnull align 16 dereferenceable(16) %v) addrspace(1) #6 comdat align 2 !dbg !926 {
entry:
  %this.addr = alloca %"class.aie::vector"*, align 4
  %idx.addr = alloca i32, align 4
  %v.addr = alloca %"class.aie::vector"*, align 4
  store %"class.aie::vector"* %this, %"class.aie::vector"** %this.addr, align 4, !tbaa !688
  call addrspace(1) void @llvm.dbg.declare(metadata %"class.aie::vector"** %this.addr, metadata !933, metadata !DIExpression()), !dbg !936
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !699
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %idx.addr, metadata !934, metadata !DIExpression()), !dbg !937
  store %"class.aie::vector"* %v, %"class.aie::vector"** %v.addr, align 4, !tbaa !688
  call addrspace(1) void @llvm.dbg.declare(metadata %"class.aie::vector"** %v.addr, metadata !935, metadata !DIExpression()), !dbg !938
  %this1 = load %"class.aie::vector"*, %"class.aie::vector"** %this.addr, align 4
  %0 = bitcast %"class.aie::vector"* %this1 to %"class.aie::detail::vector_base"*, !dbg !939
  %1 = load i32, i32* %idx.addr, align 4, !dbg !940, !tbaa !699
  %2 = load %"class.aie::vector"*, %"class.aie::vector"** %v.addr, align 4, !dbg !941, !tbaa !688
  %3 = bitcast %"class.aie::vector"* %2 to %"class.aie::detail::vector_base"*, !dbg !941
  %call = call nonnull align 16 dereferenceable(16) addrspace(1) %"class.aie::detail::vector_base"* @_ZN3aie6detail11vector_baseIfLj4EE6insertILj4EEERS2_jRKNS1_IfXT_EEE(%"class.aie::detail::vector_base"* nonnull align 16 dereferenceable(16) %0, i32 %1, %"class.aie::detail::vector_base"* nonnull align 16 dereferenceable(16) %3) #22, !dbg !939
  ret %"class.aie::vector"* %this1, !dbg !942
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local i32 @_ZNK3aie6detail5utils14unroll_contextIjLj0ELj1ELj0EEcvjEv(%"struct.aie::detail::utils::unroll_context"* nonnull align 1 dereferenceable(1) %this) addrspace(1) #2 comdat align 2 !dbg !943 {
entry:
  %this.addr = alloca %"struct.aie::detail::utils::unroll_context"*, align 4
  store %"struct.aie::detail::utils::unroll_context"* %this, %"struct.aie::detail::utils::unroll_context"** %this.addr, align 4, !tbaa !688
  call addrspace(1) void @llvm.dbg.declare(metadata %"struct.aie::detail::utils::unroll_context"** %this.addr, metadata !945, metadata !DIExpression()), !dbg !947
  %this1 = load %"struct.aie::detail::utils::unroll_context"*, %"struct.aie::detail::utils::unroll_context"** %this.addr, align 4
  %call = call addrspace(1) i32 @_ZNK3aie6detail5utils14unroll_contextIjLj0ELj1ELj0EE7currentEv(%"struct.aie::detail::utils::unroll_context"* nonnull align 1 dereferenceable(1) %this1) #22, !dbg !948
  ret i32 %call, !dbg !949
}

; Function Attrs: inlinehint mustprogress nounwind
define internal %struct.v4float @_ZL11readincr_v4IL22aie_stream_resource_in0EE7v4floatP12input_streamIfE(%struct.input_stream* %str) addrspace(1) #11 !dbg !950 {
entry:
  %retval = alloca %struct.v4float, align 16
  %str.addr = alloca %struct.input_stream*, align 4
  %agg.tmp = alloca %struct.v8int16, align 16
  store %struct.input_stream* %str, %struct.input_stream** %str.addr, align 4, !tbaa !688
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.input_stream** %str.addr, metadata !958, metadata !DIExpression()), !dbg !960
  %0 = load %struct.input_stream*, %struct.input_stream** %str.addr, align 4, !dbg !960, !tbaa !688
  %1 = bitcast %struct.input_stream* %0 to %struct.input_stream.2*, !dbg !960
  %call = call addrspace(1) %struct.v8int16 @_ZL11readincr_v8IL22aie_stream_resource_in0EE7v8int16P12input_streamIsE(%struct.input_stream.2* %1) #22, !dbg !960
  %2 = getelementptr inbounds %struct.v8int16, %struct.v8int16* %agg.tmp, i32 0, i32 0, !dbg !960
  %3 = extractvalue %struct.v8int16 %call, 0, !dbg !960
  store %struct.ipd.custom_type.v16int8.v16int8 %3, %struct.ipd.custom_type.v16int8.v16int8* %2, align 16, !dbg !960
  %4 = load %struct.v8int16, %struct.v8int16* %agg.tmp, align 16, !dbg !960, !tbaa !873
  %call1 = call addrspace(1) %struct.v4float @_Z10as_v4float7v8int16(%struct.v8int16 %4) #22, !dbg !960
  %5 = getelementptr inbounds %struct.v4float, %struct.v4float* %retval, i32 0, i32 0, !dbg !960
  %6 = extractvalue %struct.v4float %call1, 0, !dbg !960
  store %struct.ipd.custom_type.v16int8.v16int8 %6, %struct.ipd.custom_type.v16int8.v16int8* %5, align 16, !dbg !960
  %7 = load %struct.v4float, %struct.v4float* %retval, align 16, !dbg !960
  ret %struct.v4float %7, !dbg !960
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local %struct.v4float @_Z10as_v4float7v8int16(%struct.v8int16 %a.coerce) addrspace(1) #6 comdat {
entry:
  %a = alloca %struct.v8int16, align 16
  %custom_type.tmp = alloca %struct.v4float, align 16
  store %struct.v8int16 %a.coerce, %struct.v8int16* %a, align 16
  %mw = getelementptr inbounds %struct.v8int16, %struct.v8int16* %a, i32 0, i32 0
  %0 = load %struct.ipd.custom_type.v16int8.v16int8, %struct.ipd.custom_type.v16int8.v16int8* %mw, align 16, !tbaa !873
  call addrspace(1) void @_ZN7v4floatC2E17chessllvmInternal7v16int8(%struct.v4float* nonnull align 16 dereferenceable(16) %custom_type.tmp, i32 0, %struct.ipd.custom_type.v16int8.v16int8 %0) #22
  %1 = load %struct.v4float, %struct.v4float* %custom_type.tmp, align 16, !tbaa !873
  ret %struct.v4float %1
}

; Function Attrs: inlinehint mustprogress nounwind
define internal %struct.v8int16 @_ZL11readincr_v8IL22aie_stream_resource_in0EE7v8int16P12input_streamIsE(%struct.input_stream.2* %ss) addrspace(1) #11 !dbg !961 {
entry:
  %retval = alloca %struct.v8int16, align 16
  %ss.addr = alloca %struct.input_stream.2*, align 4
  store %struct.input_stream.2* %ss, %struct.input_stream.2** %ss.addr, align 4, !tbaa !688
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.input_stream.2** %ss.addr, metadata !966, metadata !DIExpression()), !dbg !969
  %0 = load %struct.input_stream.2*, %struct.input_stream.2** %ss.addr, align 4, !dbg !970, !tbaa !688
  %call = call addrspace(1) %struct.v8int16 @_ZN12stream_utilsL18aie_stream_get_wssIsEE7v8int16P12input_streamIsE(%struct.input_stream.2* %0) #22, !dbg !971
  %1 = getelementptr inbounds %struct.v8int16, %struct.v8int16* %retval, i32 0, i32 0, !dbg !971
  %2 = extractvalue %struct.v8int16 %call, 0, !dbg !971
  store %struct.ipd.custom_type.v16int8.v16int8 %2, %struct.ipd.custom_type.v16int8.v16int8* %1, align 16, !dbg !971
  %3 = load %struct.v8int16, %struct.v8int16* %retval, align 16, !dbg !972
  ret %struct.v8int16 %3, !dbg !972
}

; Function Attrs: nounwind
define linkonce_odr dso_local void @_ZN7v4floatC2E17chessllvmInternal7v16int8(%struct.v4float* nonnull align 16 dereferenceable(16) %this, i32 %0, %struct.ipd.custom_type.v16int8.v16int8 %aw.coerce) unnamed_addr addrspace(1) #12 comdat align 2 !dbg !973 {
entry:
  %aw = alloca %struct.ipd.custom_type.v16int8.v16int8, align 16
  %this.addr = alloca %struct.v4float*, align 4
  %.addr = alloca i32, align 4
  store %struct.ipd.custom_type.v16int8.v16int8 %aw.coerce, %struct.ipd.custom_type.v16int8.v16int8* %aw, align 16
  store %struct.v4float* %this, %struct.v4float** %this.addr, align 4, !tbaa !688
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.v4float** %this.addr, metadata !986, metadata !DIExpression()), !dbg !990
  store i32 %0, i32* %.addr, align 4, !tbaa !991
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %.addr, metadata !988, metadata !DIExpression()), !dbg !993
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.ipd.custom_type.v16int8.v16int8* %aw, metadata !989, metadata !DIExpression()), !dbg !994
  %this1 = load %struct.v4float*, %struct.v4float** %this.addr, align 4
  %mw = getelementptr inbounds %struct.v4float, %struct.v4float* %this1, i32 0, i32 0, !dbg !995
  %1 = load %struct.ipd.custom_type.v16int8.v16int8, %struct.ipd.custom_type.v16int8.v16int8* %aw, align 16, !dbg !996, !tbaa !873
  store %struct.ipd.custom_type.v16int8.v16int8 %1, %struct.ipd.custom_type.v16int8.v16int8* %mw, align 16, !dbg !996, !tbaa !873
  ret void, !dbg !997
}

; Function Attrs: inlinehint mustprogress nounwind
define internal %struct.v8int16 @_ZN12stream_utilsL18aie_stream_get_wssIsEE7v8int16P12input_streamIsE(%struct.input_stream.2* %ss) addrspace(1) #11 !dbg !998 {
entry:
  %retval = alloca %struct.v8int16, align 16
  %ss.addr = alloca %struct.input_stream.2*, align 4
  store %struct.input_stream.2* %ss, %struct.input_stream.2** %ss.addr, align 4, !tbaa !688
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.input_stream.2** %ss.addr, metadata !1002, metadata !DIExpression()), !dbg !1005
  %0 = load %struct.input_stream.2*, %struct.input_stream.2** %ss.addr, align 4, !dbg !1006, !tbaa !688
  %1 = getelementptr inbounds %struct.input_stream.2, %struct.input_stream.2* %0, i32 0, i32 0, !dbg !1009
  %channel = bitcast %union.anon.3* %1 to i32*, !dbg !1009
  %2 = load i32, i32* %channel, align 4, !dbg !1009, !tbaa !1010
  %call = call addrspace(1) %struct.v8int16 @_Z7get_wssi(i32 %2) #24, !dbg !1011
  %3 = getelementptr inbounds %struct.v8int16, %struct.v8int16* %retval, i32 0, i32 0, !dbg !1011
  %4 = extractvalue %struct.v8int16 %call, 0, !dbg !1011
  store %struct.ipd.custom_type.v16int8.v16int8 %4, %struct.ipd.custom_type.v16int8.v16int8* %3, align 16, !dbg !1011
  %5 = load %struct.v8int16, %struct.v8int16* %retval, align 16, !dbg !1012
  ret %struct.v8int16 %5, !dbg !1012
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local %struct.v8int16 @_Z7get_wssi(i32 %idx_ss) addrspace(1) #13 comdat {
entry:
  %retval = alloca %struct.v8int16, align 16
  %idx_ss.addr = alloca i32, align 4
  %agg.tmp = alloca %struct.v4int32, align 16
  store i32 %idx_ss, i32* %idx_ss.addr, align 4, !tbaa !699
  %0 = load i32, i32* %idx_ss.addr, align 4, !tbaa !699
  %call = call addrspace(1) %struct.v4int32 @_Z8getl_wssi(i32 %0) #25
  %1 = getelementptr inbounds %struct.v4int32, %struct.v4int32* %agg.tmp, i32 0, i32 0
  %2 = extractvalue %struct.v4int32 %call, 0
  store %struct.ipd.custom_type.v16int8.v16int8 %2, %struct.ipd.custom_type.v16int8.v16int8* %1, align 16
  %3 = load %struct.v4int32, %struct.v4int32* %agg.tmp, align 16, !tbaa !873
  %call1 = call addrspace(1) %struct.v8int16 @_Z10as_v8int167v4int32(%struct.v4int32 %3) #22
  %4 = getelementptr inbounds %struct.v8int16, %struct.v8int16* %retval, i32 0, i32 0
  %5 = extractvalue %struct.v8int16 %call1, 0
  store %struct.ipd.custom_type.v16int8.v16int8 %5, %struct.ipd.custom_type.v16int8.v16int8* %4, align 16
  %6 = load %struct.v8int16, %struct.v8int16* %retval, align 16
  ret %struct.v8int16 %6
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local %struct.v8int16 @_Z10as_v8int167v4int32(%struct.v4int32 %a.coerce) addrspace(1) #6 comdat {
entry:
  %a = alloca %struct.v4int32, align 16
  %custom_type.tmp = alloca %struct.v8int16, align 16
  store %struct.v4int32 %a.coerce, %struct.v4int32* %a, align 16
  %mw = getelementptr inbounds %struct.v4int32, %struct.v4int32* %a, i32 0, i32 0
  %0 = load %struct.ipd.custom_type.v16int8.v16int8, %struct.ipd.custom_type.v16int8.v16int8* %mw, align 16, !tbaa !873
  call addrspace(1) void @_ZN7v8int16C2E17chessllvmInternal7v16int8(%struct.v8int16* nonnull align 16 dereferenceable(16) %custom_type.tmp, i32 0, %struct.ipd.custom_type.v16int8.v16int8 %0) #22
  %1 = load %struct.v8int16, %struct.v8int16* %custom_type.tmp, align 16, !tbaa !873
  ret %struct.v8int16 %1
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local %struct.v4int32 @_Z8getl_wssi(i32 %idx_ss) addrspace(1) #14 comdat {
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
  store i32 %idx_ss, i32* %idx_ss.addr, align 4, !tbaa !699
  %0 = load i32, i32* %idx_ss.addr, align 4, !tbaa !699
  %cmp = icmp eq i32 %0, 0
  %1 = call addrspace(1) i1 @llvm.chess_manifest(i1 %cmp)
  br i1 %1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 undef, i32* %tmp1, align 4
  %2 = bitcast i32* %tmp1 to i8*
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #21
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp, i32 0) #22
  %3 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp, align 4, !tbaa !1013
  store %struct.ipd.custom_type.uint1_t.uint1_t %3, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp, align 4, !tbaa !1013
  %4 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp, align 4, !tbaa !1013
  %call = call addrspace(1) %struct.v4int32 @_ZN12me_primitive14stream_read128IiEEN13chessEnableIfIXsr17chessIsCompatibleIN15chessRemoveQualIT_E4typeEiEE5valueE7v4int32E4typeEPU4AS25U16__protect_accessi7uint1_tRS3_(i32 addrspace(25)* @_ZN12me_primitive3ss0E, %struct.ipd.custom_type.uint1_t.uint1_t %4, i32* nonnull align 4 dereferenceable(4) %tmp1) #26
  %5 = getelementptr inbounds %struct.v4int32, %struct.v4int32* %retval, i32 0, i32 0
  %6 = extractvalue %struct.v4int32 %call, 0
  store %struct.ipd.custom_type.v16int8.v16int8 %6, %struct.ipd.custom_type.v16int8.v16int8* %5, align 16
  %7 = load i32, i32* %tmp1, align 4, !tbaa !699
  store volatile i32 %7, i32 addrspace(20)* @_ZN12me_primitive5wsst0E, align 1, !tbaa !699, !chess_protect_access !1015
  %8 = bitcast i32* %tmp1 to i8*
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #21
  br label %return

if.else:                                          ; preds = %entry
  %9 = load i32, i32* %idx_ss.addr, align 4, !tbaa !699
  %cmp1 = icmp eq i32 %9, 1
  %10 = call addrspace(1) i1 @llvm.chess_manifest(i1 %cmp1)
  br i1 %10, label %if.then2, label %if.else7

if.then2:                                         ; preds = %if.else
  store i32 undef, i32* %tmp13, align 4
  %11 = bitcast i32* %tmp13 to i8*
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #21
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp5, i32 0) #22
  %12 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp5, align 4, !tbaa !1013
  store %struct.ipd.custom_type.uint1_t.uint1_t %12, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp4, align 4, !tbaa !1013
  %13 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp4, align 4, !tbaa !1013
  %call6 = call addrspace(1) %struct.v4int32 @_ZN12me_primitive14stream_read128IiEEN13chessEnableIfIXsr17chessIsCompatibleIN15chessRemoveQualIT_E4typeEiEE5valueE7v4int32E4typeEPU4AS26U16__protect_accessi7uint1_tRS3_(i32 addrspace(26)* @_ZN12me_primitive3ss1E, %struct.ipd.custom_type.uint1_t.uint1_t %13, i32* nonnull align 4 dereferenceable(4) %tmp13) #26
  %14 = getelementptr inbounds %struct.v4int32, %struct.v4int32* %retval, i32 0, i32 0
  %15 = extractvalue %struct.v4int32 %call6, 0
  store %struct.ipd.custom_type.v16int8.v16int8 %15, %struct.ipd.custom_type.v16int8.v16int8* %14, align 16
  %16 = load i32, i32* %tmp13, align 4, !tbaa !699
  store volatile i32 %16, i32 addrspace(20)* @_ZN12me_primitive5wsst1E, align 1, !tbaa !699, !chess_protect_access !1015
  %17 = bitcast i32* %tmp13 to i8*
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %17) #21
  br label %return

if.else7:                                         ; preds = %if.else
  store i32 undef, i32* %tmp18, align 4
  %18 = bitcast i32* %tmp18 to i8*
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #21
  %19 = load i32, i32* %idx_ss.addr, align 4, !tbaa !699
  %conv = trunc i32 %19 to i1
  %20 = inttoptr i1 %conv to i32 addrspace(17)*
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp10, i32 0) #22
  %21 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp10, align 4, !tbaa !1013
  store %struct.ipd.custom_type.uint1_t.uint1_t %21, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp9, align 4, !tbaa !1013
  %22 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp9, align 4, !tbaa !1013
  %call11 = call addrspace(1) %struct.v4int32 @_ZN12me_primitive14stream_read128IiEEN13chessEnableIfIXsr17chessIsCompatibleIN15chessRemoveQualIT_E4typeEiEE5valueE7v4int32E4typeEPU4AS17U16__protect_accessi7uint1_tRS3_(i32 addrspace(17)* %20, %struct.ipd.custom_type.uint1_t.uint1_t %22, i32* nonnull align 4 dereferenceable(4) %tmp18) #26
  %23 = getelementptr inbounds %struct.v4int32, %struct.v4int32* %retval, i32 0, i32 0
  %24 = extractvalue %struct.v4int32 %call11, 0
  store %struct.ipd.custom_type.v16int8.v16int8 %24, %struct.ipd.custom_type.v16int8.v16int8* %23, align 16
  %25 = load i32, i32* %tmp18, align 4, !tbaa !699
  %26 = load i32, i32* %idx_ss.addr, align 4, !tbaa !699
  %conv12 = trunc i32 %26 to i1
  %27 = inttoptr i1 %conv12 to i32 addrspace(20)*
  store volatile i32 %25, i32 addrspace(20)* %27, align 1, !tbaa !699, !chess_protect_access !1015
  %28 = bitcast i32* %tmp18 to i8*
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #21
  br label %return

return:                                           ; preds = %if.else7, %if.then2, %if.then
  %29 = load %struct.v4int32, %struct.v4int32* %retval, align 16
  ret %struct.v4int32 %29
}

; Function Attrs: nounwind
define linkonce_odr dso_local void @_ZN7v8int16C2E17chessllvmInternal7v16int8(%struct.v8int16* nonnull align 16 dereferenceable(16) %this, i32 %0, %struct.ipd.custom_type.v16int8.v16int8 %aw.coerce) unnamed_addr addrspace(1) #12 comdat align 2 !dbg !1016 {
entry:
  %aw = alloca %struct.ipd.custom_type.v16int8.v16int8, align 16
  %this.addr = alloca %struct.v8int16*, align 4
  %.addr = alloca i32, align 4
  store %struct.ipd.custom_type.v16int8.v16int8 %aw.coerce, %struct.ipd.custom_type.v16int8.v16int8* %aw, align 16
  store %struct.v8int16* %this, %struct.v8int16** %this.addr, align 4, !tbaa !688
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.v8int16** %this.addr, metadata !1038, metadata !DIExpression()), !dbg !1042
  store i32 %0, i32* %.addr, align 4, !tbaa !991
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %.addr, metadata !1040, metadata !DIExpression()), !dbg !1043
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.ipd.custom_type.v16int8.v16int8* %aw, metadata !1041, metadata !DIExpression()), !dbg !1044
  %this1 = load %struct.v8int16*, %struct.v8int16** %this.addr, align 4
  %mw = getelementptr inbounds %struct.v8int16, %struct.v8int16* %this1, i32 0, i32 0, !dbg !1045
  %1 = load %struct.ipd.custom_type.v16int8.v16int8, %struct.ipd.custom_type.v16int8.v16int8* %aw, align 16, !dbg !1046, !tbaa !873
  store %struct.ipd.custom_type.v16int8.v16int8 %1, %struct.ipd.custom_type.v16int8.v16int8* %mw, align 16, !dbg !1046, !tbaa !873
  ret void, !dbg !1047
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.chess_manifest(i1) addrspace(1) #15

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local %struct.v4int32 @_ZN12me_primitive14stream_read128IiEEN13chessEnableIfIXsr17chessIsCompatibleIN15chessRemoveQualIT_E4typeEiEE5valueE7v4int32E4typeEPU4AS25U16__protect_accessi7uint1_tRS3_(i32 addrspace(25)* %a0, %struct.ipd.custom_type.uint1_t.uint1_t %a1.coerce, i32* nonnull align 4 dereferenceable(4) %a2) addrspace(1) #16 comdat {
entry:
  %a1 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %a0.addr = alloca i32 addrspace(25)*, align 4
  %a2.addr = alloca i32*, align 4
  %out = alloca %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sint", align 1
  store %struct.ipd.custom_type.uint1_t.uint1_t %a1.coerce, %struct.ipd.custom_type.uint1_t.uint1_t* %a1, align 4
  store i32 addrspace(25)* %a0, i32 addrspace(25)** %a0.addr, align 4, !tbaa !688
  store i32* %a2, i32** %a2.addr, align 4, !tbaa !688
  store %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sint" undef, %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sint"* %out, align 1
  %0 = bitcast %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sint"* %out to i8*
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 20, i8* %0) #21
  %1 = load i32 addrspace(25)*, i32 addrspace(25)** %a0.addr, align 4, !tbaa !688
  %2 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a1, align 4, !tbaa !1013
  %call = call x86_regcallcc addrspace(1) %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sint" @__regcall3__chessintr_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sint(i32 addrspace(25)* "ipd_load"="0,4" %1, %struct.ipd.custom_type.uint1_t.uint1_t %2) #27
  %3 = getelementptr inbounds %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sint", %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sint"* %out, i32 0, i32 0
  %4 = extractvalue %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sint" %call, 0
  store %struct.v4int32 %4, %struct.v4int32* %3, align 1
  %5 = getelementptr inbounds %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sint", %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sint"* %out, i32 0, i32 1
  %6 = extractvalue %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sint" %call, 1
  store i32 %6, i32* %5, align 1
  %o1 = getelementptr inbounds %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sint", %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sint"* %out, i32 0, i32 1
  %7 = load i32, i32* %o1, align 1, !tbaa !1048
  %8 = load i32*, i32** %a2.addr, align 4, !tbaa !688
  store i32 %7, i32* %8, align 4, !tbaa !699
  %o0 = getelementptr inbounds %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sint", %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sint"* %out, i32 0, i32 0
  %9 = load %struct.v4int32, %struct.v4int32* %o0, align 1, !tbaa !873
  %10 = bitcast %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sint"* %out to i8*
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 20, i8* %10) #21
  ret %struct.v4int32 %9
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dso_local void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %this, i32 %a) unnamed_addr addrspace(1) #8 comdat align 2 {
entry:
  %this.addr = alloca %struct.ipd.custom_type.uint1_t.uint1_t*, align 4
  %a.addr = alloca i32, align 4
  store %struct.ipd.custom_type.uint1_t.uint1_t* %this, %struct.ipd.custom_type.uint1_t.uint1_t** %this.addr, align 4, !tbaa !688
  store i32 %a, i32* %a.addr, align 4, !tbaa !699
  %this1 = load %struct.ipd.custom_type.uint1_t.uint1_t*, %struct.ipd.custom_type.uint1_t.uint1_t** %this.addr, align 4
  %0 = bitcast %struct.ipd.custom_type.uint1_t.uint1_t* %this1 to i1*
  store i1 false, i1* %0, align 4
  %1 = load i32, i32* %a.addr, align 4, !tbaa !699
  %2 = call addrspace(1) %struct.ipd.custom_type.uint1_t.uint1_t @llvm.chess.init.customint.s_struct.ipd.custom_type.uint1_t.uint1_ts.i32.p1f_s_struct.ipd.custom_type.uint1_t.uint1_tsi32f(%struct.ipd.custom_type.uint1_t.uint1_t undef, i32 %1, i32 1, i32 32, i1 true, i32 0, %struct.ipd.custom_type.uint1_t.uint1_t (i32) addrspace(1)* @__regcall3__chessintr_uint1_t_uint1_t___sint)
  store %struct.ipd.custom_type.uint1_t.uint1_t %2, %struct.ipd.custom_type.uint1_t.uint1_t* %this1, align 4
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local %struct.v4int32 @_ZN12me_primitive14stream_read128IiEEN13chessEnableIfIXsr17chessIsCompatibleIN15chessRemoveQualIT_E4typeEiEE5valueE7v4int32E4typeEPU4AS26U16__protect_accessi7uint1_tRS3_(i32 addrspace(26)* %a0, %struct.ipd.custom_type.uint1_t.uint1_t %a1.coerce, i32* nonnull align 4 dereferenceable(4) %a2) addrspace(1) #16 comdat {
entry:
  %a1 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %a0.addr = alloca i32 addrspace(26)*, align 4
  %a2.addr = alloca i32*, align 4
  %out = alloca %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sint", align 1
  store %struct.ipd.custom_type.uint1_t.uint1_t %a1.coerce, %struct.ipd.custom_type.uint1_t.uint1_t* %a1, align 4
  store i32 addrspace(26)* %a0, i32 addrspace(26)** %a0.addr, align 4, !tbaa !688
  store i32* %a2, i32** %a2.addr, align 4, !tbaa !688
  store %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sint" undef, %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sint"* %out, align 1
  %0 = bitcast %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sint"* %out to i8*
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 20, i8* %0) #21
  %1 = load i32 addrspace(26)*, i32 addrspace(26)** %a0.addr, align 4, !tbaa !688
  %2 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a1, align 4, !tbaa !1013
  %call = call x86_regcallcc addrspace(1) %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sint" @__regcall3__chessintr_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sint(i32 addrspace(26)* "ipd_load"="0,4" %1, %struct.ipd.custom_type.uint1_t.uint1_t %2) #27
  %3 = getelementptr inbounds %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sint", %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sint"* %out, i32 0, i32 0
  %4 = extractvalue %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sint" %call, 0
  store %struct.v4int32 %4, %struct.v4int32* %3, align 1
  %5 = getelementptr inbounds %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sint", %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sint"* %out, i32 0, i32 1
  %6 = extractvalue %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sint" %call, 1
  store i32 %6, i32* %5, align 1
  %o1 = getelementptr inbounds %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sint", %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sint"* %out, i32 0, i32 1
  %7 = load i32, i32* %o1, align 1, !tbaa !1050
  %8 = load i32*, i32** %a2.addr, align 4, !tbaa !688
  store i32 %7, i32* %8, align 4, !tbaa !699
  %o0 = getelementptr inbounds %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sint", %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sint"* %out, i32 0, i32 0
  %9 = load %struct.v4int32, %struct.v4int32* %o0, align 1, !tbaa !873
  %10 = bitcast %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sint"* %out to i8*
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 20, i8* %10) #21
  ret %struct.v4int32 %9
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local %struct.v4int32 @_ZN12me_primitive14stream_read128IiEEN13chessEnableIfIXsr17chessIsCompatibleIN15chessRemoveQualIT_E4typeEiEE5valueE7v4int32E4typeEPU4AS17U16__protect_accessi7uint1_tRS3_(i32 addrspace(17)* %a0, %struct.ipd.custom_type.uint1_t.uint1_t %a1.coerce, i32* nonnull align 4 dereferenceable(4) %a2) addrspace(1) #16 comdat {
entry:
  %a1 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %a0.addr = alloca i32 addrspace(17)*, align 4
  %a2.addr = alloca i32*, align 4
  %out = alloca %"struct.me_primitive::chessout_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sint", align 1
  store %struct.ipd.custom_type.uint1_t.uint1_t %a1.coerce, %struct.ipd.custom_type.uint1_t.uint1_t* %a1, align 4
  store i32 addrspace(17)* %a0, i32 addrspace(17)** %a0.addr, align 4, !tbaa !688
  store i32* %a2, i32** %a2.addr, align 4, !tbaa !688
  store %"struct.me_primitive::chessout_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sint" undef, %"struct.me_primitive::chessout_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sint"* %out, align 1
  %0 = bitcast %"struct.me_primitive::chessout_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sint"* %out to i8*
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 20, i8* %0) #21
  %1 = load i32 addrspace(17)*, i32 addrspace(17)** %a0.addr, align 4, !tbaa !688
  %2 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a1, align 4, !tbaa !1013
  %call = call x86_regcallcc addrspace(1) %"struct.me_primitive::chessout_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sint" @__regcall3__chessintr_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sint(i32 addrspace(17)* "ipd_load"="0,4" %1, %struct.ipd.custom_type.uint1_t.uint1_t %2) #27
  %3 = getelementptr inbounds %"struct.me_primitive::chessout_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sint", %"struct.me_primitive::chessout_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sint"* %out, i32 0, i32 0
  %4 = extractvalue %"struct.me_primitive::chessout_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sint" %call, 0
  store %struct.v4int32 %4, %struct.v4int32* %3, align 1
  %5 = getelementptr inbounds %"struct.me_primitive::chessout_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sint", %"struct.me_primitive::chessout_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sint"* %out, i32 0, i32 1
  %6 = extractvalue %"struct.me_primitive::chessout_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sint" %call, 1
  store i32 %6, i32* %5, align 1
  %o1 = getelementptr inbounds %"struct.me_primitive::chessout_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sint", %"struct.me_primitive::chessout_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sint"* %out, i32 0, i32 1
  %7 = load i32, i32* %o1, align 1, !tbaa !1052
  %8 = load i32*, i32** %a2.addr, align 4, !tbaa !688
  store i32 %7, i32* %8, align 4, !tbaa !699
  %o0 = getelementptr inbounds %"struct.me_primitive::chessout_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sint", %"struct.me_primitive::chessout_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sint"* %out, i32 0, i32 0
  %9 = load %struct.v4int32, %struct.v4int32* %o0, align 1, !tbaa !873
  %10 = bitcast %"struct.me_primitive::chessout_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sint"* %out to i8*
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 20, i8* %10) #21
  ret %struct.v4int32 %9
}

; Function Attrs: argmemonly nounwind
declare dso_local x86_regcallcc %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sint" @__regcall3__chessintr_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sint(i32 addrspace(25)* "ipd_load"="0,4", %struct.ipd.custom_type.uint1_t.uint1_t) addrspace(1) #17

; Function Attrs: nounwind readnone willreturn
declare dso_local x86_regcallcc %struct.ipd.custom_type.uint1_t.uint1_t @__regcall3__chessintr_uint1_t_uint1_t___sint(i32 signext) addrspace(1) #9

; Function Attrs: nounwind readnone willreturn
declare %struct.ipd.custom_type.uint1_t.uint1_t @llvm.chess.init.customint.s_struct.ipd.custom_type.uint1_t.uint1_ts.i32.p1f_s_struct.ipd.custom_type.uint1_t.uint1_tsi32f(%struct.ipd.custom_type.uint1_t.uint1_t, i32, i32, i32, i1, i32, %struct.ipd.custom_type.uint1_t.uint1_t (i32) addrspace(1)*) addrspace(1) #15

; Function Attrs: argmemonly nounwind
declare dso_local x86_regcallcc %"struct.me_primitive::chessout_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sint" @__regcall3__chessintr_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sint(i32 addrspace(26)* "ipd_load"="0,4", %struct.ipd.custom_type.uint1_t.uint1_t) addrspace(1) #17

; Function Attrs: argmemonly nounwind
declare dso_local x86_regcallcc %"struct.me_primitive::chessout_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sint" @__regcall3__chessintr_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sint(i32 addrspace(17)* "ipd_load"="0,4", %struct.ipd.custom_type.uint1_t.uint1_t) addrspace(1) #17

; Function Attrs: alwaysinline nounwind
define linkonce_odr dso_local void @_ZN3aie6detail11vector_baseIfLj4EEC2E7v4float(%"class.aie::detail::vector_base"* nonnull align 16 dereferenceable(16) %this, %struct.v4float %v.coerce) unnamed_addr addrspace(1) #8 comdat align 2 !dbg !1054 {
entry:
  %v = alloca %struct.v4float, align 16
  %this.addr = alloca %"class.aie::detail::vector_base"*, align 4
  store %struct.v4float %v.coerce, %struct.v4float* %v, align 16
  store %"class.aie::detail::vector_base"* %this, %"class.aie::detail::vector_base"** %this.addr, align 4, !tbaa !688
  call addrspace(1) void @llvm.dbg.declare(metadata %"class.aie::detail::vector_base"** %this.addr, metadata !1056, metadata !DIExpression()), !dbg !1058
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.v4float* %v, metadata !1057, metadata !DIExpression()), !dbg !1059
  %this1 = load %"class.aie::detail::vector_base"*, %"class.aie::detail::vector_base"** %this.addr, align 4
  %data = getelementptr inbounds %"class.aie::detail::vector_base", %"class.aie::detail::vector_base"* %this1, i32 0, i32 0, !dbg !1060
  %0 = load %struct.v4float, %struct.v4float* %v, align 16, !dbg !1061, !tbaa !873
  store %struct.v4float %0, %struct.v4float* %data, align 16, !dbg !1061, !tbaa !873
  ret void, !dbg !1062
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local nonnull align 16 dereferenceable(16) %"class.aie::detail::vector_base"* @_ZN3aie6detail11vector_baseIfLj4EE6insertILj4EEERS2_jRKNS1_IfXT_EEE(%"class.aie::detail::vector_base"* nonnull align 16 dereferenceable(16) %this, i32 %idx, %"class.aie::detail::vector_base"* nonnull align 16 dereferenceable(16) %v) addrspace(1) #6 comdat align 2 !dbg !1063 {
entry:
  %this.addr = alloca %"class.aie::detail::vector_base"*, align 4
  %idx.addr = alloca i32, align 4
  %v.addr = alloca %"class.aie::detail::vector_base"*, align 4
  %input_bits = alloca i32, align 4
  store %"class.aie::detail::vector_base"* %this, %"class.aie::detail::vector_base"** %this.addr, align 4, !tbaa !688
  call addrspace(1) void @llvm.dbg.declare(metadata %"class.aie::detail::vector_base"** %this.addr, metadata !1069, metadata !DIExpression()), !dbg !1073
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !699
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %idx.addr, metadata !1070, metadata !DIExpression()), !dbg !1074
  store %"class.aie::detail::vector_base"* %v, %"class.aie::detail::vector_base"** %v.addr, align 4, !tbaa !688
  call addrspace(1) void @llvm.dbg.declare(metadata %"class.aie::detail::vector_base"** %v.addr, metadata !1071, metadata !DIExpression()), !dbg !1075
  %this1 = load %"class.aie::detail::vector_base"*, %"class.aie::detail::vector_base"** %this.addr, align 4
  br label %do.body, !dbg !1076

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %idx.addr, align 4, !dbg !1077, !tbaa !699
  %cmp = icmp ult i32 %0, 1, !dbg !1077
  %1 = call addrspace(1) i1 @llvm.is.constant.i1(i1 %cmp), !dbg !1077
  br i1 %1, label %if.then, label %if.else, !dbg !1080

if.then:                                          ; preds = %do.body
  br label %do.body2, !dbg !1081

do.body2:                                         ; preds = %if.then
  %2 = load i32, i32* %idx.addr, align 4, !dbg !1083, !tbaa !699
  %cmp3 = icmp ult i32 %2, 1, !dbg !1083
  %3 = call addrspace(1) i1 @llvm.chess_manifest(i1 %cmp3), !dbg !1083
  br i1 %3, label %if.end, label %if.then4, !dbg !1086

if.then4:                                         ; preds = %do.body2
  call addrspace(1) void @llvm.chess_error(metadata !1087), !dbg !1083
  br label %if.end, !dbg !1083

if.end:                                           ; preds = %if.then4, %do.body2
  br label %do.end, !dbg !1086

do.end:                                           ; preds = %if.end
  br label %if.end6, !dbg !1081

if.else:                                          ; preds = %do.body
  %4 = load i32, i32* %idx.addr, align 4, !dbg !1088, !tbaa !699
  %cmp5 = icmp ult i32 %4, 1, !dbg !1088
  call addrspace(1) void @llvm.assume(i1 %cmp5), !dbg !1088
  br label %if.end6

if.end6:                                          ; preds = %if.else, %do.end
  br label %do.end7, !dbg !1080

do.end7:                                          ; preds = %if.end6
  store i32 undef, i32* %input_bits, align 4, !dbg !1090
  %5 = bitcast i32* %input_bits to i8*, !dbg !1090
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #21, !dbg !1090
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %input_bits, metadata !1072, metadata !DIExpression()), !dbg !1091
  store i32 128, i32* %input_bits, align 4, !dbg !1091, !tbaa !699
  %data = getelementptr inbounds %"class.aie::detail::vector_base", %"class.aie::detail::vector_base"* %this1, i32 0, i32 0, !dbg !1092
  %6 = load %"class.aie::detail::vector_base"*, %"class.aie::detail::vector_base"** %v.addr, align 4, !dbg !1095, !tbaa !688
  %data8 = getelementptr inbounds %"class.aie::detail::vector_base", %"class.aie::detail::vector_base"* %6, i32 0, i32 0, !dbg !1096
  %7 = load %struct.v4float, %struct.v4float* %data8, align 16, !dbg !1096, !tbaa !873
  store %struct.v4float %7, %struct.v4float* %data, align 16, !dbg !1096, !tbaa !873
  %8 = bitcast i32* %input_bits to i8*, !dbg !1097
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #21, !dbg !1097
  ret %"class.aie::detail::vector_base"* %this1, !dbg !1098
}

; Function Attrs: convergent nocallback nofree nosync nounwind readnone willreturn
declare i1 @llvm.is.constant.i1(i1) addrspace(1) #18

; Function Attrs: nounwind willreturn
declare void @llvm.chess_error(metadata) addrspace(1) #19

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) addrspace(1) #20

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local i32 @_ZNK3aie6detail5utils14unroll_contextIjLj0ELj1ELj0EE7currentEv(%"struct.aie::detail::utils::unroll_context"* nonnull align 1 dereferenceable(1) %this) addrspace(1) #2 comdat align 2 !dbg !1099 {
entry:
  %this.addr = alloca %"struct.aie::detail::utils::unroll_context"*, align 4
  store %"struct.aie::detail::utils::unroll_context"* %this, %"struct.aie::detail::utils::unroll_context"** %this.addr, align 4, !tbaa !688
  call addrspace(1) void @llvm.dbg.declare(metadata %"struct.aie::detail::utils::unroll_context"** %this.addr, metadata !1101, metadata !DIExpression()), !dbg !1102
  %this1 = load %"struct.aie::detail::utils::unroll_context"*, %"struct.aie::detail::utils::unroll_context"** %this.addr, align 4
  ret i32 0, !dbg !1103
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local void @_ZN3aie6detail3adf17stream_out_helperILj4EfL23aie_stream_resource_out0EE9writeincrEP13output_streamIfENS_6vectorIfLj4EEE(%struct.output_stream* %w, %"class.aie::vector" %value.coerce) addrspace(1) #6 comdat align 2 !dbg !1104 {
entry:
  %value = alloca %"class.aie::vector", align 16
  %w.addr = alloca %struct.output_stream*, align 4
  %i = alloca i32, align 4
  %agg.tmp = alloca %struct.v4float, align 16
  %ref.tmp = alloca %"class.aie::vector", align 16
  store %"class.aie::vector" %value.coerce, %"class.aie::vector"* %value, align 16
  store %struct.output_stream* %w, %struct.output_stream** %w.addr, align 4, !tbaa !688
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.output_stream** %w.addr, metadata !1117, metadata !DIExpression()), !dbg !1121
  call addrspace(1) void @llvm.dbg.declare(metadata %"class.aie::vector"* %value, metadata !1118, metadata !DIExpression()), !dbg !1122
  store i32 undef, i32* %i, align 4, !dbg !1123
  %0 = bitcast i32* %i to i8*, !dbg !1123
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #21, !dbg !1123
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %i, metadata !1119, metadata !DIExpression()), !dbg !1124
  store i32 0, i32* %i, align 4, !dbg !1124, !tbaa !699
  br label %for.cond, !dbg !1123

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !1125, !tbaa !699
  %cmp = icmp ult i32 %1, 1, !dbg !1127
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !1128

for.cond.cleanup:                                 ; preds = %for.cond
  %2 = bitcast i32* %i to i8*, !dbg !1129
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %2) #21, !dbg !1129
  br label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.output_stream*, %struct.output_stream** %w.addr, align 4, !dbg !1130, !tbaa !688
  %4 = bitcast %"class.aie::vector"* %ref.tmp to i8*, !dbg !1131
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 16, i8* %4) #21, !dbg !1131
  %5 = load i32, i32* %i, align 4, !dbg !1132, !tbaa !699
  %call = call addrspace(1) %"class.aie::vector" @_ZNK3aie6vectorIfLj4EE7extractILj4EEENS0_IfXT_EEEj(%"class.aie::vector"* nonnull align 16 dereferenceable(16) %value, i32 %5) #22, !dbg !1133
  %6 = getelementptr inbounds %"class.aie::vector", %"class.aie::vector"* %ref.tmp, i32 0, i32 0, !dbg !1133
  %7 = extractvalue %"class.aie::vector" %call, 0, !dbg !1133
  store %"class.aie::detail::vector_base" %7, %"class.aie::detail::vector_base"* %6, align 16, !dbg !1133
  %call1 = call addrspace(1) %struct.v4float @_ZNK3aie6vectorIfLj4EEcv7v4floatEv(%"class.aie::vector"* nonnull align 16 dereferenceable(16) %ref.tmp) #22, !dbg !1131
  %8 = getelementptr inbounds %struct.v4float, %struct.v4float* %agg.tmp, i32 0, i32 0, !dbg !1131
  %9 = extractvalue %struct.v4float %call1, 0, !dbg !1131
  store %struct.ipd.custom_type.v16int8.v16int8 %9, %struct.ipd.custom_type.v16int8.v16int8* %8, align 16, !dbg !1131
  %10 = load %struct.v4float, %struct.v4float* %agg.tmp, align 16, !dbg !1134, !tbaa !873
  call addrspace(1) void @_ZL9writeincrIL23aie_stream_resource_out0EEvP13output_streamIfE7v4floatb(%struct.output_stream* %3, %struct.v4float %10, i1 zeroext false) #22, !dbg !1134
  %11 = bitcast %"class.aie::vector"* %ref.tmp to i8*, !dbg !1134
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 16, i8* %11) #21, !dbg !1134
  br label %for.inc, !dbg !1134

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !dbg !1135, !tbaa !699
  %inc = add i32 %12, 1, !dbg !1135
  store i32 %inc, i32* %i, align 4, !dbg !1135, !tbaa !699
  br label %for.cond, !dbg !1129, !llvm.loop !1136

for.end:                                          ; preds = %for.cond.cleanup
  ret void, !dbg !1140
}

; Function Attrs: inlinehint mustprogress nounwind
define internal void @_ZL9writeincrIL23aie_stream_resource_out0EEvP13output_streamIfE7v4floatb(%struct.output_stream* %str, %struct.v4float %value.coerce, i1 zeroext %tlast) addrspace(1) #11 !dbg !1141 {
entry:
  %value = alloca %struct.v4float, align 16
  %str.addr = alloca %struct.output_stream*, align 4
  %tlast.addr = alloca i8, align 1
  %agg.tmp = alloca %struct.v8int16, align 16
  store %struct.v4float %value.coerce, %struct.v4float* %value, align 16
  store %struct.output_stream* %str, %struct.output_stream** %str.addr, align 4, !tbaa !688
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.output_stream** %str.addr, metadata !1147, metadata !DIExpression()), !dbg !1151
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.v4float* %value, metadata !1148, metadata !DIExpression()), !dbg !1151
  %frombool = zext i1 %tlast to i8
  store i8 %frombool, i8* %tlast.addr, align 1, !tbaa !1152
  call addrspace(1) void @llvm.dbg.declare(metadata i8* %tlast.addr, metadata !1149, metadata !DIExpression()), !dbg !1151
  %0 = load %struct.output_stream*, %struct.output_stream** %str.addr, align 4, !dbg !1151, !tbaa !688
  %1 = bitcast %struct.output_stream* %0 to %struct.output_stream.4*, !dbg !1151
  %2 = load %struct.v4float, %struct.v4float* %value, align 16, !dbg !1151, !tbaa !873
  %call = call addrspace(1) %struct.v8int16 @_Z10as_v8int167v4float(%struct.v4float %2) #22, !dbg !1151
  %3 = getelementptr inbounds %struct.v8int16, %struct.v8int16* %agg.tmp, i32 0, i32 0, !dbg !1151
  %4 = extractvalue %struct.v8int16 %call, 0, !dbg !1151
  store %struct.ipd.custom_type.v16int8.v16int8 %4, %struct.ipd.custom_type.v16int8.v16int8* %3, align 16, !dbg !1151
  %5 = load i8, i8* %tlast.addr, align 1, !dbg !1151, !tbaa !1152, !range !1154
  %tobool = trunc i8 %5 to i1, !dbg !1151
  %6 = load %struct.v8int16, %struct.v8int16* %agg.tmp, align 16, !dbg !1151, !tbaa !873
  call addrspace(1) void @_ZL9writeincrIL23aie_stream_resource_out0EEvP13output_streamIsE7v8int16b(%struct.output_stream.4* %1, %struct.v8int16 %6, i1 zeroext %tobool) #22, !dbg !1151
  ret void, !dbg !1151
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local %"class.aie::vector" @_ZNK3aie6vectorIfLj4EE7extractILj4EEENS0_IfXT_EEEj(%"class.aie::vector"* nonnull align 16 dereferenceable(16) %this, i32 %idx) addrspace(1) #6 comdat align 2 !dbg !1155 {
entry:
  %this.addr = alloca %"class.aie::vector"*, align 4
  %idx.addr = alloca i32, align 4
  %custom_type.tmp = alloca %"class.aie::vector", align 16
  %ref.tmp = alloca %"class.aie::detail::vector_base", align 16
  store %"class.aie::vector"* %this, %"class.aie::vector"** %this.addr, align 4, !tbaa !688
  call addrspace(1) void @llvm.dbg.declare(metadata %"class.aie::vector"** %this.addr, metadata !1162, metadata !DIExpression()), !dbg !1165
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !699
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %idx.addr, metadata !1164, metadata !DIExpression()), !dbg !1166
  %this1 = load %"class.aie::vector"*, %"class.aie::vector"** %this.addr, align 4
  %0 = bitcast %"class.aie::detail::vector_base"* %ref.tmp to i8*, !dbg !1167
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 16, i8* %0) #21, !dbg !1167
  %1 = bitcast %"class.aie::vector"* %this1 to %"class.aie::detail::vector_base"*, !dbg !1168
  %2 = load i32, i32* %idx.addr, align 4, !dbg !1169, !tbaa !699
  %call = call addrspace(1) %"class.aie::detail::vector_base" @_ZNK3aie6detail11vector_baseIfLj4EE7extractILj4EEENS1_IfXT_EEEj(%"class.aie::detail::vector_base"* nonnull align 16 dereferenceable(16) %1, i32 %2) #22, !dbg !1168
  %3 = getelementptr inbounds %"class.aie::detail::vector_base", %"class.aie::detail::vector_base"* %ref.tmp, i32 0, i32 0, !dbg !1168
  %4 = extractvalue %"class.aie::detail::vector_base" %call, 0, !dbg !1168
  store %struct.v4float %4, %struct.v4float* %3, align 16, !dbg !1168
  call addrspace(1) void @_ZN3aie6vectorIfLj4EEC2ERKNS_6detail11vector_baseIfLj4EEE(%"class.aie::vector"* nonnull align 16 dereferenceable(16) %custom_type.tmp, %"class.aie::detail::vector_base"* nonnull align 16 dereferenceable(16) %ref.tmp) #22, !dbg !1167
  %5 = load %"class.aie::vector", %"class.aie::vector"* %custom_type.tmp, align 16, !dbg !1167, !tbaa !739
  %6 = bitcast %"class.aie::detail::vector_base"* %ref.tmp to i8*, !dbg !1170
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 16, i8* %6) #21, !dbg !1170
  ret %"class.aie::vector" %5, !dbg !1167
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local %struct.v4float @_ZNK3aie6vectorIfLj4EEcv7v4floatEv(%"class.aie::vector"* nonnull align 16 dereferenceable(16) %this) addrspace(1) #6 comdat align 2 !dbg !1171 {
entry:
  %retval = alloca %struct.v4float, align 16
  %this.addr = alloca %"class.aie::vector"*, align 4
  store %"class.aie::vector"* %this, %"class.aie::vector"** %this.addr, align 4, !tbaa !688
  call addrspace(1) void @llvm.dbg.declare(metadata %"class.aie::vector"** %this.addr, metadata !1173, metadata !DIExpression()), !dbg !1174
  %this1 = load %"class.aie::vector"*, %"class.aie::vector"** %this.addr, align 4
  %call = call addrspace(1) %struct.v4float @_ZNK3aie6vectorIfLj4EE9to_nativeEv(%"class.aie::vector"* nonnull align 16 dereferenceable(16) %this1) #22, !dbg !1175
  %0 = getelementptr inbounds %struct.v4float, %struct.v4float* %retval, i32 0, i32 0, !dbg !1175
  %1 = extractvalue %struct.v4float %call, 0, !dbg !1175
  store %struct.ipd.custom_type.v16int8.v16int8 %1, %struct.ipd.custom_type.v16int8.v16int8* %0, align 16, !dbg !1175
  %2 = load %struct.v4float, %struct.v4float* %retval, align 16, !dbg !1176
  ret %struct.v4float %2, !dbg !1176
}

; Function Attrs: inlinehint mustprogress nounwind
define internal void @_ZL9writeincrIL23aie_stream_resource_out0EEvP13output_streamIsE7v8int16b(%struct.output_stream.4* %ss, %struct.v8int16 %value.coerce, i1 zeroext %tlast) addrspace(1) #11 !dbg !1177 {
entry:
  %value = alloca %struct.v8int16, align 16
  %ss.addr = alloca %struct.output_stream.4*, align 4
  %tlast.addr = alloca i8, align 1
  store %struct.v8int16 %value.coerce, %struct.v8int16* %value, align 16
  store %struct.output_stream.4* %ss, %struct.output_stream.4** %ss.addr, align 4, !tbaa !688
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.output_stream.4** %ss.addr, metadata !1181, metadata !DIExpression()), !dbg !1186
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.v8int16* %value, metadata !1182, metadata !DIExpression()), !dbg !1187
  %frombool = zext i1 %tlast to i8
  store i8 %frombool, i8* %tlast.addr, align 1, !tbaa !1152
  call addrspace(1) void @llvm.dbg.declare(metadata i8* %tlast.addr, metadata !1183, metadata !DIExpression()), !dbg !1188
  %0 = load %struct.output_stream.4*, %struct.output_stream.4** %ss.addr, align 4, !dbg !1189, !tbaa !688
  %1 = load %struct.v8int16, %struct.v8int16* %value, align 16, !dbg !1190, !tbaa !873
  call addrspace(1) void @_ZN12stream_utilsL18aie_stream_put_wmsIsEEvP13output_streamIsE7v8int16Rb(%struct.output_stream.4* %0, %struct.v8int16 %1, i8* nonnull align 1 dereferenceable(1) %tlast.addr) #22, !dbg !1190
  ret void, !dbg !1191
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local %struct.v8int16 @_Z10as_v8int167v4float(%struct.v4float %a.coerce) addrspace(1) #6 comdat {
entry:
  %a = alloca %struct.v4float, align 16
  %custom_type.tmp = alloca %struct.v8int16, align 16
  store %struct.v4float %a.coerce, %struct.v4float* %a, align 16
  %mw = getelementptr inbounds %struct.v4float, %struct.v4float* %a, i32 0, i32 0
  %0 = load %struct.ipd.custom_type.v16int8.v16int8, %struct.ipd.custom_type.v16int8.v16int8* %mw, align 16, !tbaa !873
  call addrspace(1) void @_ZN7v8int16C2E17chessllvmInternal7v16int8(%struct.v8int16* nonnull align 16 dereferenceable(16) %custom_type.tmp, i32 0, %struct.ipd.custom_type.v16int8.v16int8 %0) #22
  %1 = load %struct.v8int16, %struct.v8int16* %custom_type.tmp, align 16, !tbaa !873
  ret %struct.v8int16 %1
}

; Function Attrs: inlinehint mustprogress nounwind
define internal void @_ZN12stream_utilsL18aie_stream_put_wmsIsEEvP13output_streamIsE7v8int16Rb(%struct.output_stream.4* %ss, %struct.v8int16 %value.coerce, i8* nonnull align 1 dereferenceable(1) %tlast) addrspace(1) #11 !dbg !1192 {
entry:
  %value = alloca %struct.v8int16, align 16
  %ss.addr = alloca %struct.output_stream.4*, align 4
  %tlast.addr = alloca i8*, align 4
  store %struct.v8int16 %value.coerce, %struct.v8int16* %value, align 16
  store %struct.output_stream.4* %ss, %struct.output_stream.4** %ss.addr, align 4, !tbaa !688
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.output_stream.4** %ss.addr, metadata !1196, metadata !DIExpression()), !dbg !1199
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.v8int16* %value, metadata !1197, metadata !DIExpression()), !dbg !1200
  store i8* %tlast, i8** %tlast.addr, align 4, !tbaa !688
  call addrspace(1) void @llvm.dbg.declare(metadata i8** %tlast.addr, metadata !1198, metadata !DIExpression()), !dbg !1201
  %0 = load %struct.output_stream.4*, %struct.output_stream.4** %ss.addr, align 4, !dbg !1202, !tbaa !688
  %1 = getelementptr inbounds %struct.output_stream.4, %struct.output_stream.4* %0, i32 0, i32 0, !dbg !1205
  %channel = bitcast %union.anon.5* %1 to i32*, !dbg !1205
  %2 = load i32, i32* %channel, align 4, !dbg !1205, !tbaa !1010
  %3 = load i8*, i8** %tlast.addr, align 4, !dbg !1206, !tbaa !688
  %4 = load i8, i8* %3, align 1, !dbg !1206, !tbaa !1152, !range !1154
  %tobool = trunc i8 %4 to i1, !dbg !1206
  %conv = zext i1 %tobool to i32, !dbg !1206
  %5 = load %struct.v8int16, %struct.v8int16* %value, align 16, !dbg !1207, !tbaa !873
  call addrspace(1) void @_Z7put_wmsi7v8int16i(i32 %2, %struct.v8int16 %5, i32 %conv) #24, !dbg !1207
  ret void, !dbg !1208
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local void @_Z7put_wmsi7v8int16i(i32 %idx_ms, %struct.v8int16 %a.coerce, i32 %tlast) addrspace(1) #13 comdat {
entry:
  %a = alloca %struct.v8int16, align 16
  %idx_ms.addr = alloca i32, align 4
  %tlast.addr = alloca i32, align 4
  %agg.tmp = alloca %struct.v4int32, align 16
  store %struct.v8int16 %a.coerce, %struct.v8int16* %a, align 16
  store i32 %idx_ms, i32* %idx_ms.addr, align 4, !tbaa !699
  store i32 %tlast, i32* %tlast.addr, align 4, !tbaa !699
  %0 = load i32, i32* %idx_ms.addr, align 4, !tbaa !699
  %1 = load %struct.v8int16, %struct.v8int16* %a, align 16, !tbaa !873
  %call = call addrspace(1) %struct.v4int32 @_Z10as_v4int327v8int16(%struct.v8int16 %1) #22
  %2 = getelementptr inbounds %struct.v4int32, %struct.v4int32* %agg.tmp, i32 0, i32 0
  %3 = extractvalue %struct.v4int32 %call, 0
  store %struct.ipd.custom_type.v16int8.v16int8 %3, %struct.ipd.custom_type.v16int8.v16int8* %2, align 16
  %4 = load i32, i32* %tlast.addr, align 4, !tbaa !699
  %5 = load %struct.v4int32, %struct.v4int32* %agg.tmp, align 16, !tbaa !873
  call addrspace(1) void @_Z7put_wmsi7v4int32i(i32 %0, %struct.v4int32 %5, i32 %4) #25
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local void @_Z7put_wmsi7v4int32i(i32 %idx_ms, %struct.v4int32 %val.coerce, i32 %tlast) addrspace(1) #14 comdat {
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
  store i32 %idx_ms, i32* %idx_ms.addr, align 4, !tbaa !699
  store i32 %tlast, i32* %tlast.addr, align 4, !tbaa !699
  %0 = load i32, i32* %idx_ms.addr, align 4, !tbaa !699
  %cmp = icmp eq i32 %0, 0
  %1 = call addrspace(1) i1 @llvm.chess_manifest(i1 %cmp)
  br i1 %1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp, i32 0) #22
  %2 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp, align 4, !tbaa !1013
  store %struct.ipd.custom_type.uint1_t.uint1_t %2, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp, align 4, !tbaa !1013
  %3 = load i32, i32* %tlast.addr, align 4, !tbaa !699
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp2, i32 %3) #22
  %4 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp2, align 4, !tbaa !1013
  store %struct.ipd.custom_type.uint1_t.uint1_t %4, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp1, align 4, !tbaa !1013
  %5 = load %struct.v4int32, %struct.v4int32* %val, align 16, !tbaa !873
  %6 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp, align 4, !tbaa !1013
  %7 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp1, align 4, !tbaa !1013
  call addrspace(1) void @_ZN12me_primitive15stream_write128EPU4AS29U16__protect_accessi7v4int327uint1_tS3_(i32 addrspace(29)* @_ZN12me_primitive3ms0E, %struct.v4int32 %5, %struct.ipd.custom_type.uint1_t.uint1_t %6, %struct.ipd.custom_type.uint1_t.uint1_t %7) #26
  br label %if.end14

if.else:                                          ; preds = %entry
  %8 = load i32, i32* %idx_ms.addr, align 4, !tbaa !699
  %cmp3 = icmp eq i32 %8, 1
  %9 = call addrspace(1) i1 @llvm.chess_manifest(i1 %cmp3)
  br i1 %9, label %if.then4, label %if.else9

if.then4:                                         ; preds = %if.else
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp6, i32 0) #22
  %10 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp6, align 4, !tbaa !1013
  store %struct.ipd.custom_type.uint1_t.uint1_t %10, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp5, align 4, !tbaa !1013
  %11 = load i32, i32* %tlast.addr, align 4, !tbaa !699
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp8, i32 %11) #22
  %12 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp8, align 4, !tbaa !1013
  store %struct.ipd.custom_type.uint1_t.uint1_t %12, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp7, align 4, !tbaa !1013
  %13 = load %struct.v4int32, %struct.v4int32* %val, align 16, !tbaa !873
  %14 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp5, align 4, !tbaa !1013
  %15 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp7, align 4, !tbaa !1013
  call addrspace(1) void @_ZN12me_primitive15stream_write128EPU4AS30U16__protect_accessi7v4int327uint1_tS3_(i32 addrspace(30)* @_ZN12me_primitive3ms1E, %struct.v4int32 %13, %struct.ipd.custom_type.uint1_t.uint1_t %14, %struct.ipd.custom_type.uint1_t.uint1_t %15) #26
  br label %if.end

if.else9:                                         ; preds = %if.else
  %16 = load i32, i32* %idx_ms.addr, align 4, !tbaa !699
  %conv = trunc i32 %16 to i1
  %17 = inttoptr i1 %conv to i32 addrspace(18)*
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp11, i32 0) #22
  %18 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp11, align 4, !tbaa !1013
  store %struct.ipd.custom_type.uint1_t.uint1_t %18, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp10, align 4, !tbaa !1013
  %19 = load i32, i32* %tlast.addr, align 4, !tbaa !699
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp13, i32 %19) #22
  %20 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp13, align 4, !tbaa !1013
  store %struct.ipd.custom_type.uint1_t.uint1_t %20, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp12, align 4, !tbaa !1013
  %21 = load %struct.v4int32, %struct.v4int32* %val, align 16, !tbaa !873
  %22 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp10, align 4, !tbaa !1013
  %23 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp12, align 4, !tbaa !1013
  call addrspace(1) void @_ZN12me_primitive15stream_write128EPU4AS18U16__protect_accessi7v4int327uint1_tS3_(i32 addrspace(18)* %17, %struct.v4int32 %21, %struct.ipd.custom_type.uint1_t.uint1_t %22, %struct.ipd.custom_type.uint1_t.uint1_t %23) #26
  br label %if.end

if.end:                                           ; preds = %if.else9, %if.then4
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local %struct.v4int32 @_Z10as_v4int327v8int16(%struct.v8int16 %a.coerce) addrspace(1) #6 comdat {
entry:
  %a = alloca %struct.v8int16, align 16
  %custom_type.tmp = alloca %struct.v4int32, align 16
  store %struct.v8int16 %a.coerce, %struct.v8int16* %a, align 16
  %mw = getelementptr inbounds %struct.v8int16, %struct.v8int16* %a, i32 0, i32 0
  %0 = load %struct.ipd.custom_type.v16int8.v16int8, %struct.ipd.custom_type.v16int8.v16int8* %mw, align 16, !tbaa !873
  call addrspace(1) void @_ZN7v4int32C2E17chessllvmInternal7v16int8(%struct.v4int32* nonnull align 16 dereferenceable(16) %custom_type.tmp, i32 0, %struct.ipd.custom_type.v16int8.v16int8 %0) #22
  %1 = load %struct.v4int32, %struct.v4int32* %custom_type.tmp, align 16, !tbaa !873
  ret %struct.v4int32 %1
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local void @_ZN12me_primitive15stream_write128EPU4AS29U16__protect_accessi7v4int327uint1_tS3_(i32 addrspace(29)* %a0, %struct.v4int32 %a1.coerce, %struct.ipd.custom_type.uint1_t.uint1_t %a2.coerce, %struct.ipd.custom_type.uint1_t.uint1_t %a3.coerce) addrspace(1) #16 comdat {
entry:
  %a1 = alloca %struct.v4int32, align 16
  %a2 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %a3 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %a0.addr = alloca i32 addrspace(29)*, align 4
  store %struct.v4int32 %a1.coerce, %struct.v4int32* %a1, align 16
  store %struct.ipd.custom_type.uint1_t.uint1_t %a2.coerce, %struct.ipd.custom_type.uint1_t.uint1_t* %a2, align 4
  store %struct.ipd.custom_type.uint1_t.uint1_t %a3.coerce, %struct.ipd.custom_type.uint1_t.uint1_t* %a3, align 4
  store i32 addrspace(29)* %a0, i32 addrspace(29)** %a0.addr, align 4, !tbaa !688
  %0 = load i32 addrspace(29)*, i32 addrspace(29)** %a0.addr, align 4, !tbaa !688
  %1 = load %struct.v4int32, %struct.v4int32* %a1, align 16, !tbaa !873
  %2 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a2, align 4, !tbaa !1013
  %3 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a3, align 4, !tbaa !1013
  call x86_regcallcc addrspace(1) void @__regcall3__chessintr_void_stream_write128___PWMS_rsrc1__sint_v4int32_uint1_t_uint1_t(i32 addrspace(29)* "ipd_store"="0,4" %0, %struct.v4int32 %1, %struct.ipd.custom_type.uint1_t.uint1_t %2, %struct.ipd.custom_type.uint1_t.uint1_t %3) #27
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local void @_ZN12me_primitive15stream_write128EPU4AS30U16__protect_accessi7v4int327uint1_tS3_(i32 addrspace(30)* %a0, %struct.v4int32 %a1.coerce, %struct.ipd.custom_type.uint1_t.uint1_t %a2.coerce, %struct.ipd.custom_type.uint1_t.uint1_t %a3.coerce) addrspace(1) #16 comdat {
entry:
  %a1 = alloca %struct.v4int32, align 16
  %a2 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %a3 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %a0.addr = alloca i32 addrspace(30)*, align 4
  store %struct.v4int32 %a1.coerce, %struct.v4int32* %a1, align 16
  store %struct.ipd.custom_type.uint1_t.uint1_t %a2.coerce, %struct.ipd.custom_type.uint1_t.uint1_t* %a2, align 4
  store %struct.ipd.custom_type.uint1_t.uint1_t %a3.coerce, %struct.ipd.custom_type.uint1_t.uint1_t* %a3, align 4
  store i32 addrspace(30)* %a0, i32 addrspace(30)** %a0.addr, align 4, !tbaa !688
  %0 = load i32 addrspace(30)*, i32 addrspace(30)** %a0.addr, align 4, !tbaa !688
  %1 = load %struct.v4int32, %struct.v4int32* %a1, align 16, !tbaa !873
  %2 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a2, align 4, !tbaa !1013
  %3 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a3, align 4, !tbaa !1013
  call x86_regcallcc addrspace(1) void @__regcall3__chessintr_void_stream_write128___PWMS_rsrc2__sint_v4int32_uint1_t_uint1_t(i32 addrspace(30)* "ipd_store"="0,4" %0, %struct.v4int32 %1, %struct.ipd.custom_type.uint1_t.uint1_t %2, %struct.ipd.custom_type.uint1_t.uint1_t %3) #27
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local void @_ZN12me_primitive15stream_write128EPU4AS18U16__protect_accessi7v4int327uint1_tS3_(i32 addrspace(18)* %a0, %struct.v4int32 %a1.coerce, %struct.ipd.custom_type.uint1_t.uint1_t %a2.coerce, %struct.ipd.custom_type.uint1_t.uint1_t %a3.coerce) addrspace(1) #16 comdat {
entry:
  %a1 = alloca %struct.v4int32, align 16
  %a2 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %a3 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %a0.addr = alloca i32 addrspace(18)*, align 4
  store %struct.v4int32 %a1.coerce, %struct.v4int32* %a1, align 16
  store %struct.ipd.custom_type.uint1_t.uint1_t %a2.coerce, %struct.ipd.custom_type.uint1_t.uint1_t* %a2, align 4
  store %struct.ipd.custom_type.uint1_t.uint1_t %a3.coerce, %struct.ipd.custom_type.uint1_t.uint1_t* %a3, align 4
  store i32 addrspace(18)* %a0, i32 addrspace(18)** %a0.addr, align 4, !tbaa !688
  %0 = load i32 addrspace(18)*, i32 addrspace(18)** %a0.addr, align 4, !tbaa !688
  %1 = load %struct.v4int32, %struct.v4int32* %a1, align 16, !tbaa !873
  %2 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a2, align 4, !tbaa !1013
  %3 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a3, align 4, !tbaa !1013
  call x86_regcallcc addrspace(1) void @__regcall3__chessintr_void_stream_write128___PWMSMEM__sint_v4int32_uint1_t_uint1_t(i32 addrspace(18)* "ipd_store"="0,4" %0, %struct.v4int32 %1, %struct.ipd.custom_type.uint1_t.uint1_t %2, %struct.ipd.custom_type.uint1_t.uint1_t %3) #27
  ret void
}

; Function Attrs: argmemonly nounwind
declare dso_local x86_regcallcc void @__regcall3__chessintr_void_stream_write128___PWMS_rsrc1__sint_v4int32_uint1_t_uint1_t(i32 addrspace(29)* "ipd_store"="0,4", %struct.v4int32, %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t) addrspace(1) #17

; Function Attrs: argmemonly nounwind
declare dso_local x86_regcallcc void @__regcall3__chessintr_void_stream_write128___PWMS_rsrc2__sint_v4int32_uint1_t_uint1_t(i32 addrspace(30)* "ipd_store"="0,4", %struct.v4int32, %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t) addrspace(1) #17

; Function Attrs: argmemonly nounwind
declare dso_local x86_regcallcc void @__regcall3__chessintr_void_stream_write128___PWMSMEM__sint_v4int32_uint1_t_uint1_t(i32 addrspace(18)* "ipd_store"="0,4", %struct.v4int32, %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t) addrspace(1) #17

; Function Attrs: nounwind
define linkonce_odr dso_local void @_ZN7v4int32C2E17chessllvmInternal7v16int8(%struct.v4int32* nonnull align 16 dereferenceable(16) %this, i32 %0, %struct.ipd.custom_type.v16int8.v16int8 %aw.coerce) unnamed_addr addrspace(1) #12 comdat align 2 !dbg !1209 {
entry:
  %aw = alloca %struct.ipd.custom_type.v16int8.v16int8, align 16
  %this.addr = alloca %struct.v4int32*, align 4
  %.addr = alloca i32, align 4
  store %struct.ipd.custom_type.v16int8.v16int8 %aw.coerce, %struct.ipd.custom_type.v16int8.v16int8* %aw, align 16
  store %struct.v4int32* %this, %struct.v4int32** %this.addr, align 4, !tbaa !688
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.v4int32** %this.addr, metadata !1231, metadata !DIExpression()), !dbg !1235
  store i32 %0, i32* %.addr, align 4, !tbaa !991
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %.addr, metadata !1233, metadata !DIExpression()), !dbg !1236
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.ipd.custom_type.v16int8.v16int8* %aw, metadata !1234, metadata !DIExpression()), !dbg !1237
  %this1 = load %struct.v4int32*, %struct.v4int32** %this.addr, align 4
  %mw = getelementptr inbounds %struct.v4int32, %struct.v4int32* %this1, i32 0, i32 0, !dbg !1238
  %1 = load %struct.ipd.custom_type.v16int8.v16int8, %struct.ipd.custom_type.v16int8.v16int8* %aw, align 16, !dbg !1239, !tbaa !873
  store %struct.ipd.custom_type.v16int8.v16int8 %1, %struct.ipd.custom_type.v16int8.v16int8* %mw, align 16, !dbg !1239, !tbaa !873
  ret void, !dbg !1240
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local %"class.aie::detail::vector_base" @_ZNK3aie6detail11vector_baseIfLj4EE7extractILj4EEENS1_IfXT_EEEj(%"class.aie::detail::vector_base"* nonnull align 16 dereferenceable(16) %this, i32 %idx) addrspace(1) #6 comdat align 2 !dbg !1241 {
entry:
  %this.addr = alloca %"class.aie::detail::vector_base"*, align 4
  %idx.addr = alloca i32, align 4
  %output_bits = alloca i32, align 4
  store %"class.aie::detail::vector_base"* %this, %"class.aie::detail::vector_base"** %this.addr, align 4, !tbaa !688
  call addrspace(1) void @llvm.dbg.declare(metadata %"class.aie::detail::vector_base"** %this.addr, metadata !1246, metadata !DIExpression()), !dbg !1250
  store i32 %idx, i32* %idx.addr, align 4, !tbaa !699
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %idx.addr, metadata !1248, metadata !DIExpression()), !dbg !1251
  %this1 = load %"class.aie::detail::vector_base"*, %"class.aie::detail::vector_base"** %this.addr, align 4
  br label %do.body, !dbg !1252

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %idx.addr, align 4, !dbg !1253, !tbaa !699
  %cmp = icmp ult i32 %0, 1, !dbg !1253
  %1 = call addrspace(1) i1 @llvm.is.constant.i1(i1 %cmp), !dbg !1253
  br i1 %1, label %if.then, label %if.else, !dbg !1256

if.then:                                          ; preds = %do.body
  br label %do.body2, !dbg !1257

do.body2:                                         ; preds = %if.then
  %2 = load i32, i32* %idx.addr, align 4, !dbg !1259, !tbaa !699
  %cmp3 = icmp ult i32 %2, 1, !dbg !1259
  %3 = call addrspace(1) i1 @llvm.chess_manifest(i1 %cmp3), !dbg !1259
  br i1 %3, label %if.end, label %if.then4, !dbg !1262

if.then4:                                         ; preds = %do.body2
  call addrspace(1) void @llvm.chess_error(metadata !1087), !dbg !1259
  br label %if.end, !dbg !1259

if.end:                                           ; preds = %if.then4, %do.body2
  br label %do.end, !dbg !1262

do.end:                                           ; preds = %if.end
  br label %if.end6, !dbg !1257

if.else:                                          ; preds = %do.body
  %4 = load i32, i32* %idx.addr, align 4, !dbg !1263, !tbaa !699
  %cmp5 = icmp ult i32 %4, 1, !dbg !1263
  call addrspace(1) void @llvm.assume(i1 %cmp5), !dbg !1263
  br label %if.end6

if.end6:                                          ; preds = %if.else, %do.end
  br label %do.end7, !dbg !1256

do.end7:                                          ; preds = %if.end6
  store i32 undef, i32* %output_bits, align 4, !dbg !1265
  %5 = bitcast i32* %output_bits to i8*, !dbg !1265
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #21, !dbg !1265
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %output_bits, metadata !1249, metadata !DIExpression()), !dbg !1266
  store i32 128, i32* %output_bits, align 4, !dbg !1266, !tbaa !699
  %6 = load %"class.aie::detail::vector_base", %"class.aie::detail::vector_base"* %this1, align 16, !dbg !1267, !tbaa !1270
  %7 = bitcast i32* %output_bits to i8*, !dbg !1271
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %7) #21, !dbg !1271
  ret %"class.aie::detail::vector_base" %6, !dbg !1267
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dso_local void @_ZN3aie6vectorIfLj4EEC2ERKNS_6detail11vector_baseIfLj4EEE(%"class.aie::vector"* nonnull align 16 dereferenceable(16) %this, %"class.aie::detail::vector_base"* nonnull align 16 dereferenceable(16) %v) unnamed_addr addrspace(1) #8 comdat align 2 !dbg !1272 {
entry:
  %this.addr = alloca %"class.aie::vector"*, align 4
  %v.addr = alloca %"class.aie::detail::vector_base"*, align 4
  store %"class.aie::vector"* %this, %"class.aie::vector"** %this.addr, align 4, !tbaa !688
  call addrspace(1) void @llvm.dbg.declare(metadata %"class.aie::vector"** %this.addr, metadata !1274, metadata !DIExpression()), !dbg !1276
  store %"class.aie::detail::vector_base"* %v, %"class.aie::detail::vector_base"** %v.addr, align 4, !tbaa !688
  call addrspace(1) void @llvm.dbg.declare(metadata %"class.aie::detail::vector_base"** %v.addr, metadata !1275, metadata !DIExpression()), !dbg !1277
  %this1 = load %"class.aie::vector"*, %"class.aie::vector"** %this.addr, align 4
  %0 = bitcast %"class.aie::vector"* %this1 to %"class.aie::detail::vector_base"*, !dbg !1278
  %1 = load %"class.aie::detail::vector_base"*, %"class.aie::detail::vector_base"** %v.addr, align 4, !dbg !1279, !tbaa !688
  %2 = load %"class.aie::detail::vector_base", %"class.aie::detail::vector_base"* %1, align 16, !dbg !1280, !tbaa !1270
  store %"class.aie::detail::vector_base" %2, %"class.aie::detail::vector_base"* %0, align 16, !dbg !1280, !tbaa !1270
  ret void, !dbg !1281
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local %struct.v4float @_ZNK3aie6vectorIfLj4EE9to_nativeEv(%"class.aie::vector"* nonnull align 16 dereferenceable(16) %this) addrspace(1) #6 comdat align 2 !dbg !1282 {
entry:
  %retval = alloca %struct.v4float, align 16
  %this.addr = alloca %"class.aie::vector"*, align 4
  store %"class.aie::vector"* %this, %"class.aie::vector"** %this.addr, align 4, !tbaa !688
  call addrspace(1) void @llvm.dbg.declare(metadata %"class.aie::vector"** %this.addr, metadata !1284, metadata !DIExpression()), !dbg !1285
  %this1 = load %"class.aie::vector"*, %"class.aie::vector"** %this.addr, align 4
  %0 = bitcast %"class.aie::vector"* %this1 to %"class.aie::detail::vector_base"*, !dbg !1286
  %call = call addrspace(1) %struct.v4float @_ZNK3aie6detail11vector_baseIfLj4EE9to_nativeEv(%"class.aie::detail::vector_base"* nonnull align 16 dereferenceable(16) %0) #22, !dbg !1286
  %1 = getelementptr inbounds %struct.v4float, %struct.v4float* %retval, i32 0, i32 0, !dbg !1286
  %2 = extractvalue %struct.v4float %call, 0, !dbg !1286
  store %struct.ipd.custom_type.v16int8.v16int8 %2, %struct.ipd.custom_type.v16int8.v16int8* %1, align 16, !dbg !1286
  %3 = load %struct.v4float, %struct.v4float* %retval, align 16, !dbg !1287
  ret %struct.v4float %3, !dbg !1287
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local %struct.v4float @_ZNK3aie6detail11vector_baseIfLj4EE9to_nativeEv(%"class.aie::detail::vector_base"* nonnull align 16 dereferenceable(16) %this) addrspace(1) #6 comdat align 2 !dbg !1288 {
entry:
  %this.addr = alloca %"class.aie::detail::vector_base"*, align 4
  store %"class.aie::detail::vector_base"* %this, %"class.aie::detail::vector_base"** %this.addr, align 4, !tbaa !688
  call addrspace(1) void @llvm.dbg.declare(metadata %"class.aie::detail::vector_base"** %this.addr, metadata !1290, metadata !DIExpression()), !dbg !1291
  %this1 = load %"class.aie::detail::vector_base"*, %"class.aie::detail::vector_base"** %this.addr, align 4
  %data = getelementptr inbounds %"class.aie::detail::vector_base", %"class.aie::detail::vector_base"* %this1, i32 0, i32 0, !dbg !1292
  %0 = load %struct.v4float, %struct.v4float* %data, align 16, !dbg !1292, !tbaa !873
  ret %struct.v4float %0, !dbg !1292
}

attributes #0 = { "chess_storage:addr"="0" }
attributes #1 = { "chess_storage:addr"="1" }
attributes #2 = { mustprogress nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-memcpy" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inaccessiblememonly nounwind willreturn }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { alwaysinline mustprogress nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-memcpy" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #7 = { argmemonly nounwind speculatable willreturn }
attributes #8 = { alwaysinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-memcpy" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #9 = { nounwind readnone willreturn "frame-pointer"="all" "no-builtin-memcpy" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #10 = { argmemonly nocallback nofree nounwind willreturn }
attributes #11 = { inlinehint mustprogress nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-memcpy" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #12 = { nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-memcpy" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #13 = { alwaysinline mustprogress nounwind "chessFP:property"="do_generate" "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-memcpy" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #14 = { alwaysinline mustprogress nounwind "chessFP:property"="do_generate_llvm" "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-memcpy" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #15 = { nounwind readnone willreturn }
attributes #16 = { alwaysinline mustprogress nounwind "chessFP:llvm_local_block_replace_operand_with_variable" "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-memcpy" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #17 = { argmemonly nounwind "frame-pointer"="all" "no-builtin-memcpy" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #18 = { convergent nocallback nofree nosync nounwind readnone willreturn }
attributes #19 = { nounwind willreturn }
attributes #20 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #21 = { nounwind }
attributes #22 = { "no-builtin-memcpy" }
attributes #23 = { nounwind readnone willreturn "no-builtin-memcpy" }
attributes #24 = { "chessFP:property"="do_generate" "no-builtin-memcpy" }
attributes #25 = { "chessFP:property"="do_generate_llvm" "no-builtin-memcpy" }
attributes #26 = { memop_protect_access "chessFP:llvm_local_block_replace_operand_with_variable" "no-builtin-memcpy" }
attributes #27 = { argmemonly nounwind "no-builtin-memcpy" }

!llvm.dbg.cu = !{!0}
!llvm.linker.options = !{}
!llvm.module.flags = !{!632, !633, !634, !635}
!llvm.ident = !{!636}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 15.0.5 (/u/sgasip/ipd/repositories/llvm_ipd 3a25925e0239306412dac02da5e4c8c51ae722e8)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !40, imports: !201, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/lxy/Projects/SVD/Jacobi_AIE/Work/aie/ir/i0_wrap_Orthogonalize.cpp", directory: "/home/lxy/Projects/SVD/Jacobi_AIE/Work/aie/ir")
!2 = !{!3, !11, !19, !29, !35, !36}
!3 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "lut_oor_policy", scope: !5, file: !4, line: 57, baseType: !7, size: 32, flags: DIFlagEnumClass, elements: !8, identifier: "_ZTSN3aie6detail14lut_oor_policyE")
!4 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/aie_api/detail/lut.hpp", directory: "/home/lxy")
!5 = !DINamespace(name: "detail", scope: !6)
!6 = !DINamespace(name: "aie", scope: null)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "saturate", value: 0)
!10 = !DIEnumerator(name: "truncate", value: 1)
!11 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "saturation_mode", scope: !5, file: !12, line: 58, baseType: !13, size: 32, flags: DIFlagEnumClass, elements: !14, identifier: "_ZTSN3aie6detail15saturation_modeE")
!12 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/aie_api/detail/aie1/../tile.hpp", directory: "/home/lxy")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17, !18}
!15 = !DIEnumerator(name: "none", value: 0, isUnsigned: true)
!16 = !DIEnumerator(name: "truncate", value: 1, isUnsigned: true)
!17 = !DIEnumerator(name: "saturate", value: 1, isUnsigned: true)
!18 = !DIEnumerator(name: "symmetric", value: 3, isUnsigned: true)
!19 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "rounding_mode", scope: !5, file: !12, line: 66, baseType: !13, size: 32, flags: DIFlagEnumClass, elements: !20, identifier: "_ZTSN3aie6detail13rounding_modeE")
!20 = !{!21, !22, !23, !24, !25, !26, !27, !28}
!21 = !DIEnumerator(name: "floor", value: 0, isUnsigned: true)
!22 = !DIEnumerator(name: "ceil", value: 1, isUnsigned: true)
!23 = !DIEnumerator(name: "positive_inf", value: 2, isUnsigned: true)
!24 = !DIEnumerator(name: "negative_inf", value: 3, isUnsigned: true)
!25 = !DIEnumerator(name: "symmetric_inf", value: 4, isUnsigned: true)
!26 = !DIEnumerator(name: "symmetric_zero", value: 5, isUnsigned: true)
!27 = !DIEnumerator(name: "conv_even", value: 6, isUnsigned: true)
!28 = !DIEnumerator(name: "conv_odd", value: 7, isUnsigned: true)
!29 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "aie_stream_resource_in", file: !30, line: 396, baseType: !7, size: 32, flags: DIFlagEnumClass, elements: !31, identifier: "_ZTS22aie_stream_resource_in")
!30 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/me_defines.h", directory: "/home/lxy")
!31 = !{!32, !33, !34}
!32 = !DIEnumerator(name: "none", value: 0)
!33 = !DIEnumerator(name: "a", value: 1)
!34 = !DIEnumerator(name: "b", value: 2)
!35 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "aie_stream_resource_out", file: !30, line: 402, baseType: !7, size: 32, flags: DIFlagEnumClass, elements: !31, identifier: "_ZTS23aie_stream_resource_out")
!36 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "chessllvmInternal", file: !37, line: 21, baseType: !13, size: 32, elements: !38, identifier: "_ZTS17chessllvmInternal")
!37 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/isg/me_chess_llvm.h", directory: "/home/lxy")
!38 = !{!39}
!39 = !DIEnumerator(name: "chessllvm_reinterpret", value: 0, isUnsigned: true)
!40 = !{!41, !44, !47, !49, !51, !53, !55, !57, !59, !61, !188, !82, !65, !189, !190, !200}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 32)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_stream<short>", file: !43, line: 43, size: 32, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS12input_streamIsE")
!43 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/adf/stream/me/structs.h", directory: "/home/lxy")
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "wss0_idx_t", scope: !45, file: !37, line: 565, baseType: !46)
!45 = !DINamespace(name: "me_primitive", scope: null)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 32, dwarfAddressSpace: 77)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "wss1_idx_t", scope: !45, file: !37, line: 613, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 32, dwarfAddressSpace: 78)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "wss_idx_t", scope: !45, file: !37, line: 661, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 32, dwarfAddressSpace: 75)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "wss_tlast_idx_t", scope: !45, file: !37, line: 691, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 32, dwarfAddressSpace: 76)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 32)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "output_stream<short>", file: !43, line: 53, size: 32, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS13output_streamIsE")
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "wms0_idx_t", scope: !45, file: !37, line: 577, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 32, dwarfAddressSpace: 73)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "wms1_idx_t", scope: !45, file: !37, line: 625, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 32, dwarfAddressSpace: 74)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "wms_idx_t", scope: !45, file: !37, line: 673, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 32, dwarfAddressSpace: 72)
!61 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "vector<float, 4U>", scope: !6, file: !62, line: 107, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !63, templateParams: !77, identifier: "_ZTSN3aie6vectorIfLj4EEE")
!62 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/aie_api/detail/aie1/../../vector.hpp", directory: "/home/lxy")
!63 = !{!64, !131, !138, !139, !140, !141, !142, !143, !144, !145, !146, !149, !153, !159, !164, !165, !170, !173, !176, !181, !185, !186, !187}
!64 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !61, baseType: !65, extraData: i32 0)
!65 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "vector_base<float, 4U>", scope: !5, file: !66, line: 177, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !67, templateParams: !77, identifier: "_ZTSN3aie6detail11vector_baseIfLj4EEE")
!66 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/aie_api/detail/aie1/vector.hpp", directory: "/home/lxy")
!67 = !{!68, !83, !86, !87, !88, !92, !93, !94, !95, !96, !100, !104, !114, !119, !120, !125, !128}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !65, file: !66, line: 1119, baseType: !69, size: 128)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "vector_storage_t<float, 4U>", scope: !5, file: !70, line: 59, baseType: !71)
!70 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/aie_api/detail/aie1/vector_native_types.hpp", directory: "/home/lxy")
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !72, file: !70, line: 97, baseType: !81)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vector_storage<float, 4U>", scope: !5, file: !70, line: 97, size: 8, flags: DIFlagTypePassByValue, elements: !73, templateParams: !77, identifier: "_ZTSN3aie6detail14vector_storageIfLj4EEE")
!73 = !{!74}
!74 = !DISubprogram(name: "undef", linkageName: "_ZN3aie6detail14vector_storageIfLj4EE5undefEv", scope: !72, file: !70, line: 97, type: !75, scopeLine: 97, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!75 = !DISubroutineType(types: !76)
!76 = !{!71}
!77 = !{!78, !80}
!78 = !DITemplateTypeParameter(name: "T", type: !79)
!79 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!80 = !DITemplateValueParameter(name: "Elems", type: !13, value: i32 4)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "v4float", file: !37, line: 535, baseType: !82)
!82 = !DIBasicType(name: "v4float", size: 128, encoding: DW_ATE_unsigned)
!83 = !DISubprogram(name: "type_bits", linkageName: "_ZN3aie6detail11vector_baseIfLj4EE9type_bitsEv", scope: !65, file: !66, line: 189, type: !84, scopeLine: 189, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!84 = !DISubroutineType(types: !85)
!85 = !{!13}
!86 = !DISubprogram(name: "size", linkageName: "_ZN3aie6detail11vector_baseIfLj4EE4sizeEv", scope: !65, file: !66, line: 194, type: !84, scopeLine: 194, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!87 = !DISubprogram(name: "bits", linkageName: "_ZN3aie6detail11vector_baseIfLj4EE4bitsEv", scope: !65, file: !66, line: 199, type: !84, scopeLine: 199, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!88 = !DISubprogram(name: "is_signed", linkageName: "_ZN3aie6detail11vector_baseIfLj4EE9is_signedEv", scope: !65, file: !66, line: 204, type: !89, scopeLine: 204, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!89 = !DISubroutineType(types: !90)
!90 = !{!91}
!91 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!92 = !DISubprogram(name: "is_complex", linkageName: "_ZN3aie6detail11vector_baseIfLj4EE10is_complexEv", scope: !65, file: !66, line: 209, type: !89, scopeLine: 209, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!93 = !DISubprogram(name: "is_real", linkageName: "_ZN3aie6detail11vector_baseIfLj4EE7is_realEv", scope: !65, file: !66, line: 214, type: !89, scopeLine: 214, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!94 = !DISubprogram(name: "is_integral", linkageName: "_ZN3aie6detail11vector_baseIfLj4EE11is_integralEv", scope: !65, file: !66, line: 219, type: !89, scopeLine: 219, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!95 = !DISubprogram(name: "is_floating_point", linkageName: "_ZN3aie6detail11vector_baseIfLj4EE17is_floating_pointEv", scope: !65, file: !66, line: 224, type: !89, scopeLine: 224, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!96 = !DISubprogram(name: "vector_base", scope: !65, file: !66, line: 230, type: !97, scopeLine: 230, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!97 = !DISubroutineType(types: !98)
!98 = !{null, !99}
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!100 = !DISubprogram(name: "vector_base", scope: !65, file: !66, line: 236, type: !101, scopeLine: 236, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!101 = !DISubroutineType(types: !102)
!102 = !{null, !99, !103}
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "storage_t", scope: !65, file: !66, line: 187, baseType: !71)
!104 = !DISubprogram(name: "vector_base", scope: !65, file: !66, line: 250, type: !105, scopeLine: 250, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!105 = !DISubroutineType(types: !106)
!106 = !{null, !99, !107}
!107 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !108, size: 32)
!108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "native_type", scope: !65, file: !66, line: 185, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "native_vector_type_t<float, 4U>", scope: !5, file: !70, line: 265, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !112, file: !70, line: 244, baseType: !81)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "native_vector_type<float, 4U>", scope: !5, file: !70, line: 244, size: 8, flags: DIFlagTypePassByValue, elements: !113, templateParams: !77, identifier: "_ZTSN3aie6detail18native_vector_typeIfLj4EEE")
!113 = !{}
!114 = !DISubprogram(name: "to_native", linkageName: "_ZNK3aie6detail11vector_baseIfLj4EE9to_nativeEv", scope: !65, file: !66, line: 292, type: !115, scopeLine: 292, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!115 = !DISubroutineType(types: !116)
!116 = !{!109, !117}
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!119 = !DISubprogram(name: "operator v4float", linkageName: "_ZNK3aie6detail11vector_baseIfLj4EEcv7v4floatEv", scope: !65, file: !66, line: 305, type: !115, scopeLine: 305, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!120 = !DISubprogram(name: "push", linkageName: "_ZN3aie6detail11vector_baseIfLj4EE4pushEf", scope: !65, file: !66, line: 323, type: !121, scopeLine: 323, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!121 = !DISubroutineType(types: !122)
!122 = !{!123, !99, !124}
!123 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !65, size: 32)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !65, file: !66, line: 186, baseType: !79)
!125 = !DISubprogram(name: "set", linkageName: "_ZN3aie6detail11vector_baseIfLj4EE3setEfj", scope: !65, file: !66, line: 442, type: !126, scopeLine: 442, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!126 = !DISubroutineType(types: !127)
!127 = !{null, !99, !124, !13}
!128 = !DISubprogram(name: "get", linkageName: "_ZNK3aie6detail11vector_baseIfLj4EE3getEj", scope: !65, file: !66, line: 498, type: !129, scopeLine: 498, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!129 = !DISubroutineType(types: !130)
!130 = !{!124, !117, !13}
!131 = !DISubprogram(name: "vector", scope: !61, file: !62, line: 117, type: !132, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!132 = !DISubroutineType(types: !133)
!133 = !{null, !134, !135}
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!135 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !136, size: 32)
!136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "base_type", scope: !61, file: !62, line: 110, baseType: !65)
!138 = !DISubprogram(name: "type_bits", linkageName: "_ZN3aie6vectorIfLj4EE9type_bitsEv", scope: !61, file: !62, line: 132, type: !84, scopeLine: 132, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!139 = !DISubprogram(name: "size", linkageName: "_ZN3aie6vectorIfLj4EE4sizeEv", scope: !61, file: !62, line: 137, type: !84, scopeLine: 137, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!140 = !DISubprogram(name: "bits", linkageName: "_ZN3aie6vectorIfLj4EE4bitsEv", scope: !61, file: !62, line: 142, type: !84, scopeLine: 142, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!141 = !DISubprogram(name: "is_signed", linkageName: "_ZN3aie6vectorIfLj4EE9is_signedEv", scope: !61, file: !62, line: 147, type: !89, scopeLine: 147, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!142 = !DISubprogram(name: "is_complex", linkageName: "_ZN3aie6vectorIfLj4EE10is_complexEv", scope: !61, file: !62, line: 152, type: !89, scopeLine: 152, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!143 = !DISubprogram(name: "is_real", linkageName: "_ZN3aie6vectorIfLj4EE7is_realEv", scope: !61, file: !62, line: 157, type: !89, scopeLine: 157, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!144 = !DISubprogram(name: "is_integral", linkageName: "_ZN3aie6vectorIfLj4EE11is_integralEv", scope: !61, file: !62, line: 162, type: !89, scopeLine: 162, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!145 = !DISubprogram(name: "is_floating_point", linkageName: "_ZN3aie6vectorIfLj4EE17is_floating_pointEv", scope: !61, file: !62, line: 167, type: !89, scopeLine: 167, flags: DIFlagPublic | DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!146 = !DISubprogram(name: "vector", scope: !61, file: !62, line: 173, type: !147, scopeLine: 173, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!147 = !DISubroutineType(types: !148)
!148 = !{null, !134}
!149 = !DISubprogram(name: "vector", scope: !61, file: !62, line: 184, type: !150, scopeLine: 184, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!150 = !DISubroutineType(types: !151)
!151 = !{null, !134, !152}
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "storage_t", scope: !61, file: !62, line: 127, baseType: !103)
!153 = !DISubprogram(name: "vector", scope: !61, file: !62, line: 198, type: !154, scopeLine: 198, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!154 = !DISubroutineType(types: !155)
!155 = !{null, !134, !156}
!156 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !157, size: 32)
!157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !158)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "native_type", scope: !61, file: !62, line: 121, baseType: !109)
!159 = !DISubprogram(name: "to_native", linkageName: "_ZNK3aie6vectorIfLj4EE9to_nativeEv", scope: !61, file: !62, line: 221, type: !160, scopeLine: 221, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!160 = !DISubroutineType(types: !161)
!161 = !{!158, !162}
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!164 = !DISubprogram(name: "operator v4float", linkageName: "_ZNK3aie6vectorIfLj4EEcv7v4floatEv", scope: !61, file: !62, line: 230, type: !160, scopeLine: 230, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!165 = !DISubprogram(name: "push", linkageName: "_ZN3aie6vectorIfLj4EE4pushEf", scope: !61, file: !62, line: 258, type: !166, scopeLine: 258, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!166 = !DISubroutineType(types: !167)
!167 = !{!168, !134, !169}
!168 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !61, size: 32)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "value_type", scope: !61, file: !62, line: 124, baseType: !124)
!170 = !DISubprogram(name: "set", linkageName: "_ZN3aie6vectorIfLj4EE3setEfj", scope: !61, file: !62, line: 296, type: !171, scopeLine: 296, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!171 = !DISubroutineType(types: !172)
!172 = !{null, !134, !169, !13}
!173 = !DISubprogram(name: "get", linkageName: "_ZNK3aie6vectorIfLj4EE3getEj", scope: !61, file: !62, line: 307, type: !174, scopeLine: 307, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!174 = !DISubroutineType(types: !175)
!175 = !{!169, !162, !13}
!176 = !DISubprogram(name: "operator[]", linkageName: "_ZNK3aie6vectorIfLj4EEixEj", scope: !61, file: !62, line: 317, type: !177, scopeLine: 317, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!177 = !DISubroutineType(types: !178)
!178 = !{!179, !162, !13}
!179 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "vector_elem_const_ref<float, 4U>", scope: !6, file: !180, line: 188, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN3aie21vector_elem_const_refIfLj4EEE")
!180 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/aie_api/aie_types.hpp", directory: "/home/lxy")
!181 = !DISubprogram(name: "operator[]", linkageName: "_ZN3aie6vectorIfLj4EEixEj", scope: !61, file: !62, line: 328, type: !182, scopeLine: 328, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!182 = !DISubroutineType(types: !183)
!183 = !{!184, !134, !13}
!184 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "vector_elem_ref<float, 4U>", scope: !6, file: !180, line: 177, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN3aie15vector_elem_refIfLj4EEE")
!185 = !DISubprogram(name: "elem_const_ref", linkageName: "_ZNK3aie6vectorIfLj4EE14elem_const_refEj", scope: !61, file: !62, line: 339, type: !177, scopeLine: 339, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!186 = !DISubprogram(name: "elem_ref", linkageName: "_ZNK3aie6vectorIfLj4EE8elem_refEj", scope: !61, file: !62, line: 350, type: !177, scopeLine: 350, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!187 = !DISubprogram(name: "elem_ref", linkageName: "_ZN3aie6vectorIfLj4EE8elem_refEj", scope: !61, file: !62, line: 361, type: !182, scopeLine: 361, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!188 = !DIBasicType(name: "v16int8", size: 128, encoding: DW_ATE_unsigned)
!189 = !DIBasicType(name: "v8int16", size: 128, encoding: DW_ATE_unsigned)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stream_helper_common<4U, float>", scope: !192, file: !191, line: 60, size: 8, flags: DIFlagTypePassByValue, elements: !193, templateParams: !198, identifier: "_ZTSN3aie6detail3adf20stream_helper_commonILj4EfEE")
!191 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/aie_api/adf/stream.hpp", directory: "/home/lxy")
!192 = !DINamespace(name: "adf", scope: !5)
!193 = !{!194, !196, !197}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "stream_width", scope: !190, file: !191, line: 65, baseType: !195, flags: DIFlagStaticMember, extraData: i32 128)
!195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !190, file: !191, line: 73, baseType: !195, flags: DIFlagStaticMember, extraData: i32 1)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "elems_per_op", scope: !190, file: !191, line: 74, baseType: !195, flags: DIFlagStaticMember, extraData: i32 4)
!198 = !{!199, !78}
!199 = !DITemplateValueParameter(name: "N", type: !13, value: i32 4)
!200 = !DIBasicType(name: "v4int32", size: 128, encoding: DW_ATE_unsigned)
!201 = !{!202, !208, !210, !214, !219, !222, !224, !227, !230, !233, !235, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !290, !294, !304, !308, !310, !312, !316, !320, !324, !326, !330, !335, !339, !343, !347, !349, !351, !353, !355, !357, !361, !367, !369, !371, !375, !377, !379, !381, !383, !385, !390, !395, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !422, !427, !433, !438, !442, !446, !451, !455, !459, !463, !467, !472, !476, !478, !485, !490, !491, !496, !498, !502, !504, !508, !512, !516, !524, !526, !530, !534, !538, !540, !544, !548, !552, !554, !556, !558, !563, !568, !572, !576, !580, !582, !584, !586, !590, !594, !598, !600, !602, !606, !608, !612, !616, !618, !622, !624, !626, !629, !630, !631}
!202 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !205, file: !207, line: 57)
!203 = !DINamespace(name: "__2", scope: !204, exportSymbols: true)
!204 = !DINamespace(name: "std", scope: null)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !206, line: 35, baseType: !7)
!206 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/tps/lnx64/target/bin/LNa64bin/../../chessdir/clangdir/15.0.5/include/stddef.h", directory: "/home/lxy")
!207 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime_cxx/libs/libcxx-9.0.0/include-lite/../include/cstddef", directory: "/home/lxy")
!208 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !209, file: !207, line: 58)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !206, line: 46, baseType: !13)
!210 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !211, file: !207, line: 63)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "max_align_t", file: !212, line: 24, baseType: !213)
!212 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/tps/lnx64/target/bin/LNa64bin/../../chessdir/clangdir/15.0.5/include/__stddef_max_align_t.h", directory: "/home/lxy")
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !212, line: 19, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS11max_align_t")
!214 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !215, file: !218, line: 161)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !216, line: 23, baseType: !217)
!216 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime/include/stdint.h", directory: "/home/lxy")
!217 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!218 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime_cxx/libs/libcxx-9.0.0/include-lite/../include/cstdint", directory: "/home/lxy")
!219 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !220, file: !218, line: 163)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !216, line: 24, baseType: !221)
!221 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!222 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !223, file: !218, line: 164)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !216, line: 25, baseType: !7)
!224 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !225, file: !218, line: 166)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !216, line: 26, baseType: !226)
!226 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !228, file: !218, line: 170)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !216, line: 28, baseType: !229)
!229 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!230 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !231, file: !218, line: 172)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !216, line: 29, baseType: !232)
!232 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!233 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !234, file: !218, line: 173)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !216, line: 30, baseType: !13)
!235 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !236, file: !218, line: 175)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !216, line: 31, baseType: !237)
!237 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!238 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !239, file: !218, line: 178)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !216, line: 34, baseType: !217)
!240 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !241, file: !218, line: 179)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !216, line: 35, baseType: !221)
!242 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !243, file: !218, line: 180)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !216, line: 36, baseType: !7)
!244 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !245, file: !218, line: 182)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !216, line: 37, baseType: !226)
!246 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !247, file: !218, line: 185)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !216, line: 39, baseType: !229)
!248 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !249, file: !218, line: 186)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !216, line: 40, baseType: !232)
!250 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !251, file: !218, line: 187)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !216, line: 41, baseType: !13)
!252 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !253, file: !218, line: 189)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !216, line: 42, baseType: !237)
!254 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !255, file: !218, line: 192)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !216, line: 45, baseType: !7)
!256 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !257, file: !218, line: 193)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !216, line: 46, baseType: !7)
!258 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !259, file: !218, line: 194)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !216, line: 47, baseType: !7)
!260 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !261, file: !218, line: 196)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !216, line: 48, baseType: !226)
!262 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !263, file: !218, line: 199)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !216, line: 50, baseType: !13)
!264 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !265, file: !218, line: 200)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !216, line: 51, baseType: !13)
!266 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !267, file: !218, line: 201)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !216, line: 52, baseType: !13)
!268 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !269, file: !218, line: 203)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !216, line: 53, baseType: !237)
!270 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !271, file: !218, line: 206)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !216, line: 56, baseType: !7)
!272 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !273, file: !218, line: 207)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !216, line: 57, baseType: !13)
!274 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !275, file: !218, line: 209)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !216, line: 60, baseType: !7)
!276 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !277, file: !218, line: 210)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !216, line: 61, baseType: !13)
!278 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !209, file: !279, line: 76)
!279 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime_cxx/libs/libcxx-9.0.0/include-lite/../include/cstring", directory: "/home/lxy")
!280 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !281, file: !279, line: 77)
!281 = !DISubprogram(name: "memcpy", scope: !282, file: !282, line: 27, type: !283, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!282 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime/include/string.h", directory: "/home/lxy")
!283 = !DISubroutineType(types: !284)
!284 = !{!285, !286, !287, !209}
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!286 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !285)
!287 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !288)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 32)
!289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!290 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !291, file: !279, line: 78)
!291 = !DISubprogram(name: "memmove", scope: !282, file: !282, line: 28, type: !292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!292 = !DISubroutineType(types: !293)
!293 = !{!285, !285, !288, !209}
!294 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !295, file: !279, line: 79)
!295 = !DISubprogram(name: "strcpy", scope: !282, file: !282, line: 29, type: !296, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!296 = !DISubroutineType(types: !297)
!297 = !{!298, !300, !301}
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 32)
!299 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!300 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !298)
!301 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !302)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 32)
!303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !299)
!304 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !305, file: !279, line: 80)
!305 = !DISubprogram(name: "strncpy", scope: !282, file: !282, line: 30, type: !306, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!306 = !DISubroutineType(types: !307)
!307 = !{!298, !300, !301, !209}
!308 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !309, file: !279, line: 81)
!309 = !DISubprogram(name: "strcat", scope: !282, file: !282, line: 33, type: !296, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!310 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !311, file: !279, line: 82)
!311 = !DISubprogram(name: "strncat", scope: !282, file: !282, line: 34, type: !306, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!312 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !313, file: !279, line: 83)
!313 = !DISubprogram(name: "memcmp", scope: !282, file: !282, line: 37, type: !314, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!314 = !DISubroutineType(types: !315)
!315 = !{!7, !288, !288, !209}
!316 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !317, file: !279, line: 84)
!317 = !DISubprogram(name: "strcmp", scope: !282, file: !282, line: 38, type: !318, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!318 = !DISubroutineType(types: !319)
!319 = !{!7, !302, !302}
!320 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !321, file: !279, line: 85)
!321 = !DISubprogram(name: "strncmp", scope: !282, file: !282, line: 40, type: !322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!322 = !DISubroutineType(types: !323)
!323 = !{!7, !302, !302, !209}
!324 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !325, file: !279, line: 86)
!325 = !DISubprogram(name: "strcoll", scope: !282, file: !282, line: 39, type: !318, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!326 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !327, file: !279, line: 87)
!327 = !DISubprogram(name: "strxfrm", scope: !282, file: !282, line: 41, type: !328, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!328 = !DISubroutineType(types: !329)
!329 = !{!209, !300, !301, !209}
!330 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !331, file: !279, line: 88)
!331 = !DISubprogram(name: "memchr", linkageName: "_Z6memchrUa9enable_ifILb1EEPvij", scope: !332, file: !332, line: 106, type: !333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!332 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime_cxx/libs/libcxx-9.0.0/include-lite/../include/string.h", directory: "/home/lxy")
!333 = !DISubroutineType(types: !334)
!334 = !{!285, !285, !7, !209}
!335 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !336, file: !279, line: 89)
!336 = !DISubprogram(name: "strchr", linkageName: "_Z6strchrUa9enable_ifILb1EEPci", scope: !332, file: !332, line: 85, type: !337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!337 = !DISubroutineType(types: !338)
!338 = !{!298, !298, !7}
!339 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !340, file: !279, line: 90)
!340 = !DISubprogram(name: "strcspn", scope: !282, file: !282, line: 46, type: !341, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!341 = !DISubroutineType(types: !342)
!342 = !{!209, !302, !302}
!343 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !344, file: !279, line: 91)
!344 = !DISubprogram(name: "strpbrk", linkageName: "_Z7strpbrkUa9enable_ifILb1EEPcPKc", scope: !332, file: !332, line: 92, type: !345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!345 = !DISubroutineType(types: !346)
!346 = !{!298, !298, !302}
!347 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !348, file: !279, line: 92)
!348 = !DISubprogram(name: "strrchr", linkageName: "_Z7strrchrUa9enable_ifILb1EEPci", scope: !332, file: !332, line: 99, type: !337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!349 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !350, file: !279, line: 93)
!350 = !DISubprogram(name: "strspn", scope: !282, file: !282, line: 49, type: !341, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!351 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !352, file: !279, line: 94)
!352 = !DISubprogram(name: "strstr", linkageName: "_Z6strstrUa9enable_ifILb1EEPcPKc", scope: !332, file: !332, line: 113, type: !345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!353 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !354, file: !279, line: 96)
!354 = !DISubprogram(name: "strtok", scope: !282, file: !282, line: 51, type: !296, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!355 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !356, file: !279, line: 98)
!356 = !DISubprogram(name: "memset", scope: !282, file: !282, line: 54, type: !333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!357 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !358, file: !279, line: 102)
!358 = !DISubprogram(name: "strlen", scope: !282, file: !282, line: 56, type: !359, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!359 = !DISubroutineType(types: !360)
!360 = !{!209, !302}
!361 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !362, file: !366, line: 351)
!362 = !DISubprogram(name: "acosf", scope: !363, file: !363, line: 91, type: !364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!363 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime/include/math.h", directory: "/home/lxy")
!364 = !DISubroutineType(types: !365)
!365 = !{!79, !79}
!366 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime_cxx/libs/libcxx-9.0.0/include-lite/../include/cmath", directory: "/home/lxy")
!367 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !368, file: !366, line: 353)
!368 = !DISubprogram(name: "asinf", scope: !363, file: !363, line: 93, type: !364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!369 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !370, file: !366, line: 355)
!370 = !DISubprogram(name: "atanf", scope: !363, file: !363, line: 99, type: !364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!371 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !372, file: !366, line: 357)
!372 = !DISubprogram(name: "atan2f", scope: !363, file: !363, line: 96, type: !373, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!373 = !DISubroutineType(types: !374)
!374 = !{!79, !79, !79}
!375 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !376, file: !366, line: 359)
!376 = !DISubprogram(name: "ceilf", scope: !363, file: !363, line: 67, type: !364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!377 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !378, file: !366, line: 361)
!378 = !DISubprogram(name: "cosf", scope: !363, file: !363, line: 75, type: !364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!379 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !380, file: !366, line: 368)
!380 = !DISubprogram(name: "expf", scope: !363, file: !363, line: 79, type: !364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!381 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !382, file: !366, line: 371)
!382 = !DISubprogram(name: "fabsf", scope: !363, file: !363, line: 30, type: !364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!383 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !384, file: !366, line: 373)
!384 = !DISubprogram(name: "floorf", scope: !363, file: !363, line: 69, type: !364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!385 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !386, file: !366, line: 375)
!386 = !DISubprogram(name: "fmod", scope: !363, file: !363, line: 90, type: !387, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!387 = !DISubroutineType(types: !388)
!388 = !{!389, !389, !389}
!389 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!390 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !391, file: !366, line: 381)
!391 = !DISubprogram(name: "frexpf", scope: !363, file: !363, line: 106, type: !392, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!392 = !DISubroutineType(types: !393)
!393 = !{!79, !79, !394}
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 32)
!395 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !396, file: !366, line: 383)
!396 = !DISubprogram(name: "ldexpf", scope: !363, file: !363, line: 65, type: !397, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!397 = !DISubroutineType(types: !398)
!398 = !{!79, !79, !7}
!399 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !400, file: !366, line: 386)
!400 = !DISubprogram(name: "logf", scope: !363, file: !363, line: 81, type: !364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!401 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !402, file: !366, line: 389)
!402 = !DISubprogram(name: "log10f", scope: !363, file: !363, line: 83, type: !364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!403 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !404, file: !366, line: 396)
!404 = !DISubprogram(name: "powf", scope: !363, file: !363, line: 88, type: !373, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!405 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !406, file: !366, line: 399)
!406 = !DISubprogram(name: "sinf", scope: !363, file: !363, line: 76, type: !364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!407 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !408, file: !366, line: 406)
!408 = !DISubprogram(name: "sqrtf", scope: !363, file: !363, line: 86, type: !364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!409 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !410, file: !366, line: 427)
!410 = !DISubprogram(name: "copysignf", scope: !363, file: !363, line: 35, type: !373, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!411 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !412, file: !366, line: 484)
!412 = !DISubprogram(name: "roundf", scope: !363, file: !363, line: 71, type: !364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!413 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !414, file: !366, line: 494)
!414 = !DISubprogram(name: "truncf", scope: !363, file: !363, line: 102, type: !364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!415 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !209, file: !416, line: 107)
!416 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime_cxx/libs/libcxx-9.0.0/include-lite/../include/cstdlib", directory: "/home/lxy")
!417 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !418, file: !416, line: 118)
!418 = !DISubprogram(name: "atoi", scope: !419, file: !419, line: 37, type: !420, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!419 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime/include/stdlib.h", directory: "/home/lxy")
!420 = !DISubroutineType(types: !421)
!421 = !{!7, !302}
!422 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !423, file: !416, line: 119)
!423 = !DISubprogram(name: "atol", scope: !419, file: !419, line: 42, type: !424, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!424 = !DISubroutineType(types: !425)
!425 = !{!426, !302}
!426 = !DIBasicType(name: "long", size: 32, encoding: DW_ATE_signed)
!427 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !428, file: !416, line: 128)
!428 = !DISubprogram(name: "strtol", scope: !419, file: !419, line: 29, type: !429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!429 = !DISubroutineType(types: !430)
!430 = !{!426, !301, !431, !7}
!431 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !432)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 32)
!433 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !434, file: !416, line: 134)
!434 = !DISubprogram(name: "strtoul", scope: !419, file: !419, line: 33, type: !435, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!435 = !DISubroutineType(types: !436)
!436 = !{!437, !301, !431, !7}
!437 = !DIBasicType(name: "unsigned long", size: 32, encoding: DW_ATE_unsigned)
!438 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !439, file: !416, line: 140)
!439 = !DISubprogram(name: "rand", scope: !419, file: !419, line: 51, type: !440, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!440 = !DISubroutineType(types: !441)
!441 = !{!7}
!442 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !443, file: !416, line: 141)
!443 = !DISubprogram(name: "srand", scope: !419, file: !419, line: 52, type: !444, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!444 = !DISubroutineType(types: !445)
!445 = !{null, !13}
!446 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !447, file: !416, line: 142)
!447 = !DISubprogram(name: "calloc", scope: !448, file: !448, line: 32, type: !449, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!448 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime/include/malloc.h", directory: "/home/lxy")
!449 = !DISubroutineType(types: !450)
!450 = !{!285, !209, !209}
!451 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !452, file: !416, line: 143)
!452 = !DISubprogram(name: "free", scope: !448, file: !448, line: 30, type: !453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!453 = !DISubroutineType(types: !454)
!454 = !{null, !285}
!455 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !456, file: !416, line: 144)
!456 = !DISubprogram(name: "malloc", scope: !448, file: !448, line: 28, type: !457, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!457 = !DISubroutineType(types: !458)
!458 = !{!285, !209}
!459 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !460, file: !416, line: 145)
!460 = !DISubprogram(name: "realloc", scope: !448, file: !448, line: 34, type: !461, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!461 = !DISubroutineType(types: !462)
!462 = !{!285, !285, !209}
!463 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !464, file: !416, line: 146)
!464 = !DISubprogram(name: "abort", scope: !419, file: !419, line: 83, type: !465, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!465 = !DISubroutineType(types: !466)
!466 = !{null}
!467 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !468, file: !416, line: 147)
!468 = !DISubprogram(name: "atexit", scope: !419, file: !419, line: 90, type: !469, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!469 = !DISubroutineType(types: !470)
!470 = !{!7, !471}
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 32, dwarfAddressSpace: 65)
!472 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !473, file: !416, line: 148)
!473 = !DISubprogram(name: "exit", scope: !419, file: !419, line: 75, type: !474, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!474 = !DISubroutineType(types: !475)
!475 = !{null, !7}
!476 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !477, file: !416, line: 149)
!477 = !DISubprogram(name: "_Exit", scope: !419, file: !419, line: 88, type: !474, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!478 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !479, file: !416, line: 157)
!479 = !DISubprogram(name: "qsort", scope: !419, file: !419, line: 96, type: !480, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!480 = !DISubroutineType(types: !481)
!481 = !{null, !285, !209, !209, !482}
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 32, dwarfAddressSpace: 65)
!483 = !DISubroutineType(types: !484)
!484 = !{!7, !288, !288}
!485 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !486, file: !489, line: 115)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !487, line: 30, baseType: !488)
!487 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime/include/stdio.h", directory: "/home/lxy")
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FILE", file: !487, line: 29, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS4FILE")
!489 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime_cxx/libs/libcxx-9.0.0/include-lite/../include/cstdio", directory: "/home/lxy")
!490 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !209, file: !489, line: 119)
!491 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !492, file: !489, line: 121)
!492 = !DISubprogram(name: "fclose", scope: !487, file: !487, line: 77, type: !493, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!493 = !DISubroutineType(types: !494)
!494 = !{!7, !495}
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 32)
!496 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !497, file: !489, line: 122)
!497 = !DISubprogram(name: "fflush", scope: !487, file: !487, line: 78, type: !493, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!498 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !499, file: !489, line: 127)
!499 = !DISubprogram(name: "fprintf", scope: !487, file: !487, line: 87, type: !500, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!500 = !DISubroutineType(types: !501)
!501 = !{!7, !495, !302, null}
!502 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !503, file: !489, line: 128)
!503 = !DISubprogram(name: "fscanf", scope: !487, file: !487, line: 92, type: !500, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!504 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !505, file: !489, line: 129)
!505 = !DISubprogram(name: "snprintf", scope: !487, file: !487, line: 96, type: !506, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!506 = !DISubroutineType(types: !507)
!507 = !{!7, !298, !209, !302, null}
!508 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !509, file: !489, line: 130)
!509 = !DISubprogram(name: "sprintf", scope: !487, file: !487, line: 95, type: !510, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!510 = !DISubroutineType(types: !511)
!511 = !{!7, !298, !302, null}
!512 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !513, file: !489, line: 131)
!513 = !DISubprogram(name: "sscanf", scope: !487, file: !487, line: 100, type: !514, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!514 = !DISubroutineType(types: !515)
!515 = !{!7, !302, !302, null}
!516 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !517, file: !489, line: 132)
!517 = !DISubprogram(name: "vfprintf", scope: !487, file: !487, line: 85, type: !518, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!518 = !DISubroutineType(types: !519)
!519 = !{!7, !495, !302, !520}
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !521, line: 14, baseType: !522)
!521 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/tps/lnx64/target/bin/LNa64bin/../../chessdir/clangdir/15.0.5/include/stdarg.h", directory: "/home/lxy")
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !523, baseType: !298)
!523 = !DIFile(filename: "i0_wrap_Orthogonalize.cpp", directory: "/home/lxy/Projects/SVD/Jacobi_AIE/Work/aie/ir")
!524 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !525, file: !489, line: 133)
!525 = !DISubprogram(name: "vfscanf", scope: !487, file: !487, line: 90, type: !518, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!526 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !527, file: !489, line: 134)
!527 = !DISubprogram(name: "vsscanf", scope: !487, file: !487, line: 101, type: !528, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!528 = !DISubroutineType(types: !529)
!529 = !{!7, !302, !302, !520}
!530 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !531, file: !489, line: 135)
!531 = !DISubprogram(name: "vsnprintf", scope: !487, file: !487, line: 98, type: !532, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!532 = !DISubroutineType(types: !533)
!533 = !{!7, !298, !209, !302, !520}
!534 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !535, file: !489, line: 136)
!535 = !DISubprogram(name: "vsprintf", scope: !487, file: !487, line: 97, type: !536, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!536 = !DISubroutineType(types: !537)
!537 = !{!7, !298, !302, !520}
!538 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !539, file: !489, line: 137)
!539 = !DISubprogram(name: "fgetc", scope: !487, file: !487, line: 112, type: !493, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!540 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !541, file: !489, line: 138)
!541 = !DISubprogram(name: "fgets", scope: !487, file: !487, line: 115, type: !542, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!542 = !DISubroutineType(types: !543)
!543 = !{!298, !298, !7, !495}
!544 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !545, file: !489, line: 139)
!545 = !DISubprogram(name: "fputc", scope: !487, file: !487, line: 106, type: !546, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!546 = !DISubroutineType(types: !547)
!547 = !{!7, !7, !495}
!548 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !549, file: !489, line: 140)
!549 = !DISubprogram(name: "fputs", scope: !487, file: !487, line: 109, type: !550, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!550 = !DISubroutineType(types: !551)
!551 = !{!7, !302, !495}
!552 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !553, file: !489, line: 141)
!553 = !DISubprogram(name: "getc", scope: !487, file: !487, line: 186, type: !493, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!554 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !555, file: !489, line: 142)
!555 = !DISubprogram(name: "putc", scope: !487, file: !487, line: 168, type: !546, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!556 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !557, file: !489, line: 143)
!557 = !DISubprogram(name: "ungetc", scope: !487, file: !487, line: 118, type: !546, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!558 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !559, file: !489, line: 144)
!559 = !DISubprogram(name: "fread", scope: !487, file: !487, line: 125, type: !560, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!560 = !DISubroutineType(types: !561)
!561 = !{!209, !562, !209, !209, !495}
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32, dwarfAddressSpace: 12)
!563 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !564, file: !489, line: 145)
!564 = !DISubprogram(name: "fwrite", scope: !487, file: !487, line: 123, type: !565, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!565 = !DISubroutineType(types: !566)
!566 = !{!209, !567, !209, !209, !495}
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 32, dwarfAddressSpace: 12)
!568 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !569, file: !489, line: 149)
!569 = !DISubprogram(name: "fseek", scope: !487, file: !487, line: 138, type: !570, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!570 = !DISubroutineType(types: !571)
!571 = !{!7, !495, !426, !7}
!572 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !573, file: !489, line: 153)
!573 = !DISubprogram(name: "ftell", scope: !487, file: !487, line: 140, type: !574, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!574 = !DISubroutineType(types: !575)
!575 = !{!426, !495}
!576 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !577, file: !489, line: 154)
!577 = !DISubprogram(name: "rewind", scope: !487, file: !487, line: 163, type: !578, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!578 = !DISubroutineType(types: !579)
!579 = !{null, !495}
!580 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !581, file: !489, line: 155)
!581 = !DISubprogram(name: "clearerr", scope: !487, file: !487, line: 147, type: !578, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!582 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !583, file: !489, line: 156)
!583 = !DISubprogram(name: "feof", scope: !487, file: !487, line: 145, type: !493, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!584 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !585, file: !489, line: 157)
!585 = !DISubprogram(name: "ferror", scope: !487, file: !487, line: 146, type: !493, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!586 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !587, file: !489, line: 158)
!587 = !DISubprogram(name: "perror", scope: !487, file: !487, line: 148, type: !588, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!588 = !DISubroutineType(types: !589)
!589 = !{null, !302}
!590 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !591, file: !489, line: 161)
!591 = !DISubprogram(name: "fopen", scope: !487, file: !487, line: 76, type: !592, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!592 = !DISubroutineType(types: !593)
!593 = !{!495, !302, !302}
!594 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !595, file: !489, line: 162)
!595 = !DISubprogram(name: "freopen", scope: !487, file: !487, line: 80, type: !596, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!596 = !DISubroutineType(types: !597)
!597 = !{!495, !302, !302, !495}
!598 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !599, file: !489, line: 163)
!599 = !DISubprogram(name: "remove", scope: !487, file: !487, line: 66, type: !420, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!600 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !601, file: !489, line: 164)
!601 = !DISubprogram(name: "rename", scope: !487, file: !487, line: 67, type: !318, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!602 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !603, file: !489, line: 165)
!603 = !DISubprogram(name: "tmpfile", scope: !487, file: !487, line: 68, type: !604, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!604 = !DISubroutineType(types: !605)
!605 = !{!495}
!606 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !607, file: !489, line: 172)
!607 = !DISubprogram(name: "getchar", scope: !487, file: !487, line: 191, type: !440, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!608 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !609, file: !489, line: 176)
!609 = !DISubprogram(name: "scanf", scope: !487, file: !487, line: 93, type: !610, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!610 = !DISubroutineType(types: !611)
!611 = !{!7, !302, null}
!612 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !613, file: !489, line: 177)
!613 = !DISubprogram(name: "vscanf", scope: !487, file: !487, line: 158, type: !614, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!614 = !DISubroutineType(types: !615)
!615 = !{!7, !302, !520}
!616 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !617, file: !489, line: 181)
!617 = !DISubprogram(name: "printf", scope: !487, file: !487, line: 88, type: !610, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!618 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !619, file: !489, line: 182)
!619 = !DISubprogram(name: "putchar", scope: !487, file: !487, line: 173, type: !620, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!620 = !DISubroutineType(types: !621)
!621 = !{!7, !7}
!622 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !623, file: !489, line: 183)
!623 = !DISubprogram(name: "puts", scope: !487, file: !487, line: 178, type: !420, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!624 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !203, entity: !625, file: !489, line: 184)
!625 = !DISubprogram(name: "vprintf", scope: !487, file: !487, line: 153, type: !614, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!626 = !DIImportedEntity(tag: DW_TAG_imported_declaration, name: "Utils", scope: !6, entity: !627, file: !628, line: 119)
!627 = !DINamespace(name: "utils", scope: !5)
!628 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/aie_api/adf/../aie.hpp", directory: "/home/lxy")
!629 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !3, file: !628, line: 7686)
!630 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !11, file: !628, line: 10079)
!631 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !19, file: !628, line: 10080)
!632 = !{i32 7, !"Dwarf Version", i32 4}
!633 = !{i32 2, !"Debug Info Version", i32 3}
!634 = !{i32 1, !"wchar_size", i32 4}
!635 = !{i32 7, !"frame-pointer", i32 2}
!636 = !{!"clang version 15.0.5 (/u/sgasip/ipd/repositories/llvm_ipd 3a25925e0239306412dac02da5e4c8c51ae722e8)"}
!637 = distinct !DISubprogram(name: "sign", linkageName: "_Z4signd", scope: !638, file: !638, line: 6, type: !639, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !641)
!638 = !DIFile(filename: "aie/src/ProcessUnit/Orthogonalize.cpp", directory: "/home/lxy/Projects/SVD/Jacobi_AIE")
!639 = !DISubroutineType(types: !640)
!640 = !{!79, !389}
!641 = !{!642}
!642 = !DILocalVariable(name: "x", arg: 1, scope: !637, file: !638, line: 6, type: !389)
!643 = !{!644, !644, i64 0, i64 8}
!644 = !{!645, i64 8, !"double"}
!645 = !{!646, i64 1, !"omnipotent char"}
!646 = !{!"Simple C++ TBAA"}
!647 = !DILocation(line: 6, column: 19, scope: !637)
!648 = !DILocation(line: 7, column: 8, scope: !649)
!649 = distinct !DILexicalBlock(scope: !637, file: !638, line: 7, column: 8)
!650 = !DILocation(line: 7, column: 10, scope: !649)
!651 = !DILocation(line: 7, column: 8, scope: !637)
!652 = !DILocation(line: 7, column: 22, scope: !649)
!653 = !DILocation(line: 7, column: 15, scope: !649)
!654 = !DILocation(line: 8, column: 13, scope: !655)
!655 = distinct !DILexicalBlock(scope: !649, file: !638, line: 8, column: 13)
!656 = !DILocation(line: 8, column: 15, scope: !655)
!657 = !DILocation(line: 8, column: 13, scope: !649)
!658 = !DILocation(line: 8, column: 21, scope: !655)
!659 = !DILocation(line: 9, column: 10, scope: !655)
!660 = !DILocation(line: 10, column: 1, scope: !637)
!661 = distinct !DISubprogram(name: "orthogonalize<4>", linkageName: "_Z13orthogonalizeILi4EEvP12input_streamIfES2_P13output_streamIfES5_", scope: !638, file: !638, line: 13, type: !662, scopeLine: 16, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !679, retainedNodes: !670)
!662 = !DISubroutineType(types: !663)
!663 = !{null, !664, !664, !667, !667}
!664 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !665)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 32)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_stream<float>", file: !43, line: 50, size: 32, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS12input_streamIfE")
!667 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !668)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 32)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "output_stream<float>", file: !43, line: 60, size: 32, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS13output_streamIfE")
!670 = !{!671, !672, !673, !674, !675, !677, !678}
!671 = !DILocalVariable(name: "Ap", arg: 1, scope: !661, file: !638, line: 13, type: !664)
!672 = !DILocalVariable(name: "Aq", arg: 2, scope: !661, file: !638, line: 14, type: !664)
!673 = !DILocalVariable(name: "Bp", arg: 3, scope: !661, file: !638, line: 15, type: !667)
!674 = !DILocalVariable(name: "Bq", arg: 4, scope: !661, file: !638, line: 16, type: !667)
!675 = !DILocalVariable(name: "VECSIZE", scope: !661, file: !638, line: 17, type: !676)
!676 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!677 = !DILocalVariable(name: "tmpAp", scope: !661, file: !638, line: 21, type: !61)
!678 = !DILocalVariable(name: "tmpAq", scope: !661, file: !638, line: 22, type: !61)
!679 = !{!680}
!680 = !DITemplateValueParameter(name: "ROW", type: !7, value: i32 4)
!681 = !{!682}
!682 = distinct !{!682, !683, !"_Z13orthogonalizeILi4EEvP12input_streamIfES2_P13output_streamIfES5_: Ap"}
!683 = distinct !{!683, !"_Z13orthogonalizeILi4EEvP12input_streamIfES2_P13output_streamIfES5_"}
!684 = !{!682, !685, !686, !687}
!685 = distinct !{!685, !683, !"_Z13orthogonalizeILi4EEvP12input_streamIfES2_P13output_streamIfES5_: Aq"}
!686 = distinct !{!686, !683, !"_Z13orthogonalizeILi4EEvP12input_streamIfES2_P13output_streamIfES5_: Bp"}
!687 = distinct !{!687, !683, !"_Z13orthogonalizeILi4EEvP12input_streamIfES2_P13output_streamIfES5_: Bq"}
!688 = !{!689, !689, i64 0, i64 4}
!689 = !{!645, i64 4, !"any pointer"}
!690 = !DILocation(line: 13, column: 53, scope: !661)
!691 = !{!685}
!692 = !DILocation(line: 14, column: 53, scope: !661)
!693 = !{!686}
!694 = !DILocation(line: 15, column: 54, scope: !661)
!695 = !{!687}
!696 = !DILocation(line: 16, column: 54, scope: !661)
!697 = !DILocation(line: 17, column: 5, scope: !661)
!698 = !DILocation(line: 17, column: 15, scope: !661)
!699 = !{!700, !700, i64 0, i64 4}
!700 = !{!645, i64 4, !"int"}
!701 = !DILocation(line: 21, column: 5, scope: !661)
!702 = !DILocation(line: 21, column: 29, scope: !661)
!703 = !DILocation(line: 21, column: 53, scope: !661)
!704 = !DILocation(line: 21, column: 37, scope: !661)
!705 = !DILocation(line: 22, column: 5, scope: !661)
!706 = !DILocation(line: 22, column: 29, scope: !661)
!707 = !DILocation(line: 22, column: 53, scope: !661)
!708 = !DILocation(line: 22, column: 37, scope: !661)
!709 = !DILocation(line: 23, column: 15, scope: !661)
!710 = !DILocation(line: 23, column: 5, scope: !661)
!711 = !DILocation(line: 24, column: 15, scope: !661)
!712 = !DILocation(line: 24, column: 5, scope: !661)
!713 = !DILocation(line: 53, column: 1, scope: !661)
!714 = distinct !DISubprogram(name: "readincr_v<4U, (aie_stream_resource_in)0, float>", linkageName: "_Z10readincr_vILj4EL22aie_stream_resource_in0EfEN3aie6vectorIT1_XT_EEEP12input_streamIS3_E", scope: !191, file: !191, line: 458, type: !715, scopeLine: 458, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !719, retainedNodes: !717)
!715 = !DISubroutineType(types: !716)
!716 = !{!61, !665}
!717 = !{!718}
!718 = !DILocalVariable(name: "w", arg: 1, scope: !714, file: !191, line: 458, type: !665)
!719 = !{!199, !720, !78}
!720 = !DITemplateValueParameter(name: "Resource", type: !29, value: i32 0)
!721 = !DILocation(line: 458, column: 48, scope: !714)
!722 = !DILocation(line: 458, column: 165, scope: !714)
!723 = !DILocation(line: 458, column: 104, scope: !714)
!724 = !DILocation(line: 458, column: 97, scope: !714)
!725 = distinct !DISubprogram(name: "writeincr<(aie_stream_resource_out)0, float, 4U>", linkageName: "_Z9writeincrIL23aie_stream_resource_out0EfLj4EEvP13output_streamIT0_ERKN3aie6vectorIS2_XT1_EEE", scope: !191, file: !191, line: 432, type: !726, scopeLine: 432, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !732, retainedNodes: !729)
!726 = !DISubroutineType(types: !727)
!727 = !{null, !668, !728}
!728 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !163, size: 32)
!729 = !{!730, !731}
!730 = !DILocalVariable(name: "w", arg: 1, scope: !725, file: !191, line: 432, type: !668)
!731 = !DILocalVariable(name: "value", arg: 2, scope: !725, file: !191, line: 432, type: !728)
!732 = !{!733, !78, !199}
!733 = !DITemplateValueParameter(name: "Resource", type: !35, value: i32 0)
!734 = !DILocation(line: 432, column: 48, scope: !725)
!735 = !DILocation(line: 432, column: 76, scope: !725)
!736 = !DILocation(line: 432, column: 167, scope: !725)
!737 = !DILocation(line: 432, column: 170, scope: !725)
!738 = !DILocation(line: 432, column: 104, scope: !725)
!739 = !{!740, !740, i64 0, i64 16}
!740 = !{!645, i64 16, !"_ZTSN3aie6vectorIfLj4EEE", !741, i64 0, i64 16}
!741 = !{!645, i64 16, !"_ZTSN3aie6detail11vector_baseIfLj4EEE", !742, i64 0, i64 16}
!742 = !{!645, i64 16, !"v16int8"}
!743 = !DILocation(line: 432, column: 185, scope: !725)
!744 = distinct !DISubprogram(name: "readincr", linkageName: "_ZN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfE", scope: !745, file: !191, line: 97, type: !749, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !748, retainedNodes: !758)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stream_in_helper<4U, float, (aie_stream_resource_in)0>", scope: !192, file: !191, line: 78, size: 8, flags: DIFlagTypePassByValue, elements: !746, templateParams: !757, identifier: "_ZTSN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EEE")
!746 = !{!747, !748, !753}
!747 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !745, baseType: !190, extraData: i32 0)
!748 = !DISubprogram(name: "readincr", linkageName: "_ZN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfE", scope: !745, file: !191, line: 97, type: !749, scopeLine: 97, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!749 = !DISubroutineType(types: !750)
!750 = !{!751, !665}
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !745, file: !191, line: 80, baseType: !752)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !190, file: !191, line: 62, baseType: !61)
!753 = !DISubprogram(name: "readincr", linkageName: "_ZN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfERb", scope: !745, file: !191, line: 123, type: !754, scopeLine: 123, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!754 = !DISubroutineType(types: !755)
!755 = !{!751, !665, !756}
!756 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !91, size: 32)
!757 = !{!199, !78, !720}
!758 = !{!759, !760}
!759 = !DILocalVariable(name: "w", arg: 1, scope: !744, file: !191, line: 97, type: !665)
!760 = !DILocalVariable(name: "ret", scope: !744, file: !191, line: 99, type: !751)
!761 = !DILocation(line: 97, column: 43, scope: !744)
!762 = !DILocation(line: 99, column: 14, scope: !744)
!763 = !DILocation(line: 110, column: 60, scope: !764)
!764 = distinct !DILexicalBlock(scope: !744, file: !191, line: 109, column: 9)
!765 = !DILocation(line: 110, column: 13, scope: !764)
!766 = !DILocation(line: 119, column: 9, scope: !744)
!767 = distinct !DISubprogram(name: "vector", linkageName: "_ZN3aie6vectorIfLj4EEC2Ev", scope: !61, file: !62, line: 173, type: !147, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !146, retainedNodes: !768)
!768 = !{!769}
!769 = !DILocalVariable(name: "this", arg: 1, scope: !767, type: !770, flags: DIFlagArtificial | DIFlagObjectPointer)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 32)
!771 = !DILocation(line: 0, scope: !767)
!772 = !DILocation(line: 175, column: 5, scope: !767)
!773 = !DILocation(line: 174, column: 9, scope: !767)
!774 = !DILocation(line: 176, column: 5, scope: !767)
!775 = distinct !DISubprogram(name: "unroll_times<1U, (lambda at /home/lxy/tools/Xilinx/Vitis/2023.2/aietools/include/aie_api/adf/stream.hpp:110:60)>", linkageName: "_ZN3aie6detail5utils12unroll_timesILj1EZNS0_3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEEUlT_E_EEvOT0_", scope: !627, file: !776, line: 580, type: !777, scopeLine: 581, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !788, retainedNodes: !786)
!776 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/aie_api/detail/aie1/../utils.hpp", directory: "/home/lxy")
!777 = !DISubroutineType(types: !778)
!778 = !{null, !779}
!779 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !780, size: 32)
!780 = distinct !DICompositeType(tag: DW_TAG_class_type, scope: !744, file: !191, line: 110, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !781, identifier: "_ZTSZN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEEUlT_E_")
!781 = !{!782, !784}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !780, file: !191, line: 113, baseType: !783, size: 32)
!783 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !665, size: 32)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "ret", scope: !780, file: !191, line: 115, baseType: !785, size: 32, offset: 32)
!785 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !751, size: 32)
!786 = !{!787}
!787 = !DILocalVariable(name: "fn", arg: 1, scope: !775, file: !776, line: 580, type: !779)
!788 = !{!789, !790}
!789 = !DITemplateValueParameter(name: "Times", type: !13, value: i32 1)
!790 = !DITemplateTypeParameter(name: "Fn", type: !780)
!791 = !DILocation(line: 580, column: 24, scope: !775)
!792 = !DILocation(line: 582, column: 53, scope: !775)
!793 = !DILocation(line: 582, column: 5, scope: !775)
!794 = !DILocation(line: 583, column: 1, scope: !775)
!795 = distinct !DISubprogram(name: "vector_base", linkageName: "_ZN3aie6detail11vector_baseIfLj4EEC2Ev", scope: !65, file: !66, line: 230, type: !97, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !96, retainedNodes: !796)
!796 = !{!797}
!797 = !DILocalVariable(name: "this", arg: 1, scope: !795, type: !798, flags: DIFlagArtificial | DIFlagObjectPointer)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 32)
!799 = !DILocation(line: 0, scope: !795)
!800 = !DILocation(line: 231, column: 9, scope: !795)
!801 = !DILocation(line: 231, column: 14, scope: !795)
!802 = !DILocation(line: 233, column: 5, scope: !795)
!803 = distinct !DISubprogram(name: "undef", linkageName: "_ZN3aie6detail14vector_storageIfLj4EE5undefEv", scope: !72, file: !70, line: 97, type: !75, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !74, retainedNodes: !113)
!804 = !DILocation(line: 97, column: 118, scope: !803)
!805 = !DILocation(line: 97, column: 111, scope: !803)
!806 = distinct !DISubprogram(name: "unroll_for<unsigned int, 0U, 1U, 1U, (lambda at /home/lxy/tools/Xilinx/Vitis/2023.2/aietools/include/aie_api/adf/stream.hpp:110:60)>", linkageName: "_ZN3aie6detail5utils10unroll_forIjLj0ELj1ELj1EZNS0_3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEEUlT_E_EEvOT3_", scope: !627, file: !776, line: 569, type: !777, scopeLine: 570, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !809, retainedNodes: !807)
!807 = !{!808}
!808 = !DILocalVariable(name: "fn", arg: 1, scope: !806, file: !776, line: 569, type: !779)
!809 = !{!810, !811, !812, !813, !790}
!810 = !DITemplateTypeParameter(name: "T", type: !13)
!811 = !DITemplateValueParameter(name: "Start", type: !13, value: i32 0)
!812 = !DITemplateValueParameter(name: "End", type: !13, value: i32 1)
!813 = !DITemplateValueParameter(name: "Step", type: !13, value: i32 1)
!814 = !DILocation(line: 569, column: 22, scope: !806)
!815 = !DILocation(line: 571, column: 77, scope: !806)
!816 = !DILocation(line: 571, column: 5, scope: !806)
!817 = !DILocation(line: 572, column: 1, scope: !806)
!818 = distinct !DISubprogram(name: "execute<(lambda at /home/lxy/tools/Xilinx/Vitis/2023.2/aietools/include/aie_api/adf/stream.hpp:110:60)>", linkageName: "_ZN3aie6detail5utils17unroll_for_helperIjLj0ELj1ELj0ELj1EE7executeIZNS0_3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEEUlT_E_EEvOSC_", scope: !819, file: !776, line: 539, type: !777, scopeLine: 540, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !823, declaration: !822, retainedNodes: !824)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unroll_for_helper<unsigned int, 0U, 1U, 0U, 1U>", scope: !627, file: !776, line: 533, size: 8, flags: DIFlagTypePassByValue, elements: !113, templateParams: !820, identifier: "_ZTSN3aie6detail5utils17unroll_for_helperIjLj0ELj1ELj0ELj1EEE")
!820 = !{!810, !811, !812, !821, !813}
!821 = !DITemplateValueParameter(name: "It", type: !13, value: i32 0)
!822 = !DISubprogram(name: "execute<(lambda at /home/lxy/tools/Xilinx/Vitis/2023.2/aietools/include/aie_api/adf/stream.hpp:110:60)>", linkageName: "_ZN3aie6detail5utils17unroll_for_helperIjLj0ELj1ELj0ELj1EE7executeIZNS0_3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEEUlT_E_EEvOSC_", scope: !819, file: !776, line: 539, type: !777, scopeLine: 539, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized, templateParams: !823)
!823 = !{!790}
!824 = !{!825, !826, !840}
!825 = !DILocalVariable(name: "fn", arg: 1, scope: !818, file: !776, line: 539, type: !779)
!826 = !DILocalVariable(name: "ctx", scope: !827, file: !776, line: 542, type: !829)
!827 = distinct !DILexicalBlock(scope: !828, file: !776, line: 541, column: 73)
!828 = distinct !DILexicalBlock(scope: !818, file: !776, line: 541, column: 23)
!829 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !830)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unroll_context<unsigned int, 0U, 1U, 0U>", scope: !627, file: !776, line: 509, size: 8, flags: DIFlagTypePassByValue, elements: !831, templateParams: !839, identifier: "_ZTSN3aie6detail5utils14unroll_contextIjLj0ELj1ELj0EEE")
!831 = !{!832, !836, !837, !838}
!832 = !DISubprogram(name: "operator unsigned int", linkageName: "_ZNK3aie6detail5utils14unroll_contextIjLj0ELj1ELj0EEcvjEv", scope: !830, file: !776, line: 511, type: !833, scopeLine: 511, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!833 = !DISubroutineType(types: !834)
!834 = !{!13, !835}
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!836 = !DISubprogram(name: "min", linkageName: "_ZNK3aie6detail5utils14unroll_contextIjLj0ELj1ELj0EE3minEv", scope: !830, file: !776, line: 516, type: !833, scopeLine: 516, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!837 = !DISubprogram(name: "max", linkageName: "_ZNK3aie6detail5utils14unroll_contextIjLj0ELj1ELj0EE3maxEv", scope: !830, file: !776, line: 521, type: !833, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!838 = !DISubprogram(name: "current", linkageName: "_ZNK3aie6detail5utils14unroll_contextIjLj0ELj1ELj0EE7currentEv", scope: !830, file: !776, line: 526, type: !833, scopeLine: 526, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!839 = !{!810, !811, !812, !821}
!840 = !DILocalVariable(name: "next_it", scope: !827, file: !776, line: 552, type: !195)
!841 = !DILocation(line: 539, column: 31, scope: !818)
!842 = !DILocation(line: 542, column: 13, scope: !827)
!843 = !DILocation(line: 542, column: 57, scope: !827)
!844 = !DILocation(line: 548, column: 17, scope: !845)
!845 = distinct !DILexicalBlock(scope: !827, file: !776, line: 547, column: 27)
!846 = !DILocation(line: 552, column: 13, scope: !827)
!847 = !DILocation(line: 552, column: 25, scope: !827)
!848 = !DILocation(line: 558, column: 87, scope: !827)
!849 = !DILocation(line: 558, column: 13, scope: !827)
!850 = !DILocation(line: 559, column: 9, scope: !828)
!851 = !DILocation(line: 560, column: 5, scope: !818)
!852 = distinct !DISubprogram(name: "operator()<aie::detail::utils::unroll_context<unsigned int, 0U, 1U, 0U> >", linkageName: "_ZZN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEENKUlT_E_clINS0_5utils14unroll_contextIjLj0ELj1ELj0EEEEEDaS8_", scope: !780, file: !191, line: 110, type: !853, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !858, declaration: !857, retainedNodes: !860)
!853 = !DISubroutineType(types: !854)
!854 = !{null, !855, !830}
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !780)
!857 = !DISubprogram(name: "operator()<aie::detail::utils::unroll_context<unsigned int, 0U, 1U, 0U> >", scope: !780, file: !191, line: 110, type: !853, scopeLine: 110, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !858)
!858 = !{!859}
!859 = !DITemplateTypeParameter(name: "idx:auto", type: !830)
!860 = !{!861, !863, !864}
!861 = !DILocalVariable(name: "this", arg: 1, scope: !852, type: !862, flags: DIFlagArtificial | DIFlagObjectPointer)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 32)
!863 = !DILocalVariable(name: "idx", arg: 2, scope: !852, file: !191, line: 110, type: !830)
!864 = !DILocalVariable(name: "tmp", scope: !852, file: !191, line: 111, type: !61)
!865 = !DILocation(line: 0, scope: !852)
!866 = !DILocation(line: 110, column: 69, scope: !852)
!867 = !DILocation(line: 111, column: 17, scope: !852)
!868 = !DILocation(line: 111, column: 64, scope: !852)
!869 = !DILocation(line: 113, column: 23, scope: !852)
!870 = !DILocation(line: 113, column: 32, scope: !852)
!871 = !{!872, !689, i64 0, i64 4}
!872 = !{!645, i64 8, !"_ZTSZN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEEUlT_E_", !689, i64 0, i64 4, !689, i64 4, i64 4}
!873 = !{!742, !742, i64 0, i64 16}
!874 = !DILocation(line: 113, column: 17, scope: !852)
!875 = !DILocation(line: 115, column: 17, scope: !852)
!876 = !{!872, !689, i64 4, i64 4}
!877 = !DILocation(line: 115, column: 28, scope: !852)
!878 = !DILocation(line: 115, column: 21, scope: !852)
!879 = !DILocation(line: 116, column: 13, scope: !852)
!880 = distinct !DISubprogram(name: "execute<(lambda at /home/lxy/tools/Xilinx/Vitis/2023.2/aietools/include/aie_api/adf/stream.hpp:110:60)>", linkageName: "_ZN3aie6detail5utils17unroll_for_helperIjLj0ELj1ELj1ELj1EE7executeIZNS0_3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEEUlT_E_EEvOSC_", scope: !881, file: !776, line: 539, type: !777, scopeLine: 540, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !823, declaration: !884, retainedNodes: !885)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unroll_for_helper<unsigned int, 0U, 1U, 1U, 1U>", scope: !627, file: !776, line: 533, size: 8, flags: DIFlagTypePassByValue, elements: !113, templateParams: !882, identifier: "_ZTSN3aie6detail5utils17unroll_for_helperIjLj0ELj1ELj1ELj1EEE")
!882 = !{!810, !811, !812, !883, !813}
!883 = !DITemplateValueParameter(name: "It", type: !13, value: i32 1)
!884 = !DISubprogram(name: "execute<(lambda at /home/lxy/tools/Xilinx/Vitis/2023.2/aietools/include/aie_api/adf/stream.hpp:110:60)>", linkageName: "_ZN3aie6detail5utils17unroll_for_helperIjLj0ELj1ELj1ELj1EE7executeIZNS0_3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE8readincrEP12input_streamIfEEUlT_E_EEvOSC_", scope: !881, file: !776, line: 539, type: !777, scopeLine: 539, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized, templateParams: !823)
!885 = !{!886}
!886 = !DILocalVariable(name: "fn", arg: 1, scope: !880, file: !776, line: 539, type: !779)
!887 = !DILocation(line: 539, column: 31, scope: !880)
!888 = !DILocation(line: 560, column: 5, scope: !880)
!889 = distinct !DISubprogram(name: "get_op", linkageName: "_ZN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE6get_opEv", scope: !745, file: !191, line: 82, type: !890, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !893, retainedNodes: !113)
!890 = !DISubroutineType(types: !891)
!891 = !{!892}
!892 = distinct !DICompositeType(tag: DW_TAG_class_type, file: !191, line: 85, size: 8, flags: DIFlagTypePassByValue, elements: !113, identifier: "_ZTSZN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE6get_opEvEUlDpOT_E_")
!893 = !DISubprogram(name: "get_op", linkageName: "_ZN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE6get_opEv", scope: !745, file: !191, line: 82, type: !890, scopeLine: 82, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!894 = !DILocation(line: 85, column: 67, scope: !895)
!895 = distinct !DILexicalBlock(scope: !896, file: !191, line: 85, column: 28)
!896 = distinct !DILexicalBlock(scope: !889, file: !191, line: 84, column: 28)
!897 = distinct !DISubprogram(name: "operator()<input_stream<float> *&>", linkageName: "_ZZN3aie6detail3adf16stream_in_helperILj4EfL22aie_stream_resource_in0EE6get_opEvENKUlDpOT_E_clIJRP12input_streamIfEEEEDaS7_", scope: !892, file: !191, line: 85, type: !898, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !903, declaration: !902, retainedNodes: !907)
!898 = !DISubroutineType(types: !899)
!899 = !{!81, !900, !783}
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!901 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !892)
!902 = !DISubprogram(name: "operator()<input_stream<float> *&>", scope: !892, file: !191, line: 85, type: !898, scopeLine: 85, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !903)
!903 = !{!904}
!904 = !DITemplateValueParameter(tag: DW_TAG_GNU_template_parameter_pack, name: "args:auto", value: !905)
!905 = !{!906}
!906 = !DITemplateTypeParameter(type: !783)
!907 = !{!908, !910}
!908 = !DILocalVariable(name: "this", arg: 1, scope: !897, type: !909, flags: DIFlagArtificial | DIFlagObjectPointer)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 32)
!910 = !DILocalVariable(name: "args", arg: 2, scope: !897, file: !191, line: 85, type: !783)
!911 = !DILocation(line: 0, scope: !897)
!912 = !DILocation(line: 85, column: 87, scope: !897)
!913 = !DILocation(line: 85, column: 170, scope: !897)
!914 = !DILocation(line: 85, column: 141, scope: !897)
!915 = !DILocation(line: 85, column: 115, scope: !897)
!916 = !DILocation(line: 85, column: 108, scope: !897)
!917 = distinct !DISubprogram(name: "vector", linkageName: "_ZN3aie6vectorIfLj4EEC2E7v4float", scope: !61, file: !62, line: 184, type: !150, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !149, retainedNodes: !918)
!918 = !{!919, !920}
!919 = !DILocalVariable(name: "this", arg: 1, scope: !917, type: !770, flags: DIFlagArtificial | DIFlagObjectPointer)
!920 = !DILocalVariable(name: "v", arg: 2, scope: !917, file: !62, line: 184, type: !152)
!921 = !DILocation(line: 0, scope: !917)
!922 = !DILocation(line: 184, column: 22, scope: !917)
!923 = !DILocation(line: 186, column: 5, scope: !917)
!924 = !DILocation(line: 185, column: 9, scope: !917)
!925 = !DILocation(line: 188, column: 5, scope: !917)
!926 = distinct !DISubprogram(name: "insert<4U>", linkageName: "_ZN3aie6vectorIfLj4EE6insertILj4EEERS1_jRKNS0_IfXT_EEE", scope: !61, file: !62, line: 393, type: !927, scopeLine: 394, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !930, declaration: !929, retainedNodes: !932)
!927 = !DISubroutineType(types: !928)
!928 = !{!168, !134, !13, !728}
!929 = !DISubprogram(name: "insert<4U>", linkageName: "_ZN3aie6vectorIfLj4EE6insertILj4EEERS1_jRKNS0_IfXT_EEE", scope: !61, file: !62, line: 393, type: !927, scopeLine: 393, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !930)
!930 = !{!931}
!931 = !DITemplateValueParameter(name: "ElemsIn", type: !13, value: i32 4)
!932 = !{!933, !934, !935}
!933 = !DILocalVariable(name: "this", arg: 1, scope: !926, type: !770, flags: DIFlagArtificial | DIFlagObjectPointer)
!934 = !DILocalVariable(name: "idx", arg: 2, scope: !926, file: !62, line: 393, type: !13)
!935 = !DILocalVariable(name: "v", arg: 3, scope: !926, file: !62, line: 393, type: !728)
!936 = !DILocation(line: 0, scope: !926)
!937 = !DILocation(line: 393, column: 29, scope: !926)
!938 = !DILocation(line: 393, column: 60, scope: !926)
!939 = !DILocation(line: 395, column: 29, scope: !926)
!940 = !DILocation(line: 395, column: 45, scope: !926)
!941 = !DILocation(line: 395, column: 50, scope: !926)
!942 = !DILocation(line: 396, column: 9, scope: !926)
!943 = distinct !DISubprogram(name: "operator unsigned int", linkageName: "_ZNK3aie6detail5utils14unroll_contextIjLj0ELj1ELj0EEcvjEv", scope: !830, file: !776, line: 511, type: !833, scopeLine: 512, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !832, retainedNodes: !944)
!944 = !{!945}
!945 = !DILocalVariable(name: "this", arg: 1, scope: !943, type: !946, flags: DIFlagArtificial | DIFlagObjectPointer)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 32)
!947 = !DILocation(line: 0, scope: !943)
!948 = !DILocation(line: 513, column: 16, scope: !943)
!949 = !DILocation(line: 513, column: 9, scope: !943)
!950 = distinct !DISubprogram(name: "readincr_v4<(aie_stream_resource_in)0>", linkageName: "_ZL11readincr_v4IL22aie_stream_resource_in0EE7v4floatP12input_streamIfE", scope: !951, file: !951, line: 340, type: !952, scopeLine: 340, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !959, retainedNodes: !957)
!951 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/adf/stream/me/accessors.h", directory: "/home/lxy")
!952 = !DISubroutineType(types: !953)
!953 = !{!81, !954}
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 32)
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "input_stream_float", file: !956, line: 18, baseType: !666)
!956 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/adf/stream/types.h", directory: "/home/lxy")
!957 = !{!958}
!958 = !DILocalVariable(name: "str", arg: 1, scope: !950, file: !951, line: 340, type: !954)
!959 = !{!720}
!960 = !DILocation(line: 340, column: 1, scope: !950)
!961 = distinct !DISubprogram(name: "readincr_v8<(aie_stream_resource_in)0>", linkageName: "_ZL11readincr_v8IL22aie_stream_resource_in0EE7v8int16P12input_streamIsE", scope: !951, file: !951, line: 309, type: !962, scopeLine: 310, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !967, retainedNodes: !965)
!962 = !DISubroutineType(types: !963)
!963 = !{!964, !41}
!964 = !DIDerivedType(tag: DW_TAG_typedef, name: "v8int16", file: !37, line: 496, baseType: !189)
!965 = !{!966}
!966 = !DILocalVariable(name: "ss", arg: 1, scope: !961, file: !951, line: 309, type: !41)
!967 = !{!968}
!968 = !DITemplateValueParameter(name: "resource", type: !29, value: i32 0)
!969 = !DILocation(line: 309, column: 34, scope: !961)
!970 = !DILocation(line: 312, column: 53, scope: !961)
!971 = !DILocation(line: 312, column: 12, scope: !961)
!972 = !DILocation(line: 312, column: 5, scope: !961)
!973 = distinct !DISubprogram(name: "v4float", linkageName: "_ZN7v4floatC2E17chessllvmInternal7v16int8", scope: !974, file: !37, line: 2705, type: !983, scopeLine: 2705, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !982, retainedNodes: !985)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4float", file: !37, line: 2702, size: 128, flags: DIFlagTypePassByValue, elements: !975, identifier: "_ZTS7v4float")
!975 = !{!976, !978, !982}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "mw", scope: !974, file: !37, line: 2708, baseType: !977, size: 128)
!977 = !DIDerivedType(tag: DW_TAG_typedef, name: "v16int8", file: !37, line: 494, baseType: !188)
!978 = !DISubprogram(name: "v4float", scope: !974, file: !37, line: 2704, type: !979, scopeLine: 2704, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!979 = !DISubroutineType(types: !980)
!980 = !{null, !981}
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!982 = !DISubprogram(name: "v4float", scope: !974, file: !37, line: 2705, type: !983, scopeLine: 2705, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!983 = !DISubroutineType(types: !984)
!984 = !{null, !981, !36, !977}
!985 = !{!986, !988, !989}
!986 = !DILocalVariable(name: "this", arg: 1, scope: !973, type: !987, flags: DIFlagArtificial | DIFlagObjectPointer)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 32)
!988 = !DILocalVariable(arg: 2, scope: !973, file: !37, line: 2705, type: !36)
!989 = !DILocalVariable(name: "aw", arg: 3, scope: !973, file: !37, line: 2705, type: !977)
!990 = !DILocation(line: 0, scope: !973)
!991 = !{!992, !992, i64 0, i64 4}
!992 = !{!645, i64 4, !"_ZTS17chessllvmInternal"}
!993 = !DILocation(line: 2705, column: 42, scope: !973)
!994 = !DILocation(line: 2705, column: 52, scope: !973)
!995 = !DILocation(line: 2705, column: 58, scope: !973)
!996 = !DILocation(line: 2705, column: 61, scope: !973)
!997 = !DILocation(line: 2705, column: 66, scope: !973)
!998 = distinct !DISubprogram(name: "aie_stream_get_wss<short>", linkageName: "_ZN12stream_utilsL18aie_stream_get_wssIsEE7v8int16P12input_streamIsE", scope: !1000, file: !999, line: 186, type: !962, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1003, retainedNodes: !1001)
!999 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/adf/stream/me/stream_utils.h", directory: "/home/lxy")
!1000 = !DINamespace(name: "stream_utils", scope: null)
!1001 = !{!1002}
!1002 = !DILocalVariable(name: "ss", arg: 1, scope: !998, file: !999, line: 186, type: !41)
!1003 = !{!1004}
!1004 = !DITemplateTypeParameter(name: "T", type: !221)
!1005 = !DILocation(line: 186, column: 42, scope: !998)
!1006 = !DILocation(line: 193, column: 24, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1008, file: !999, line: 190, column: 24)
!1008 = distinct !DILexicalBlock(scope: !998, file: !999, line: 188, column: 19)
!1009 = !DILocation(line: 193, column: 28, scope: !1007)
!1010 = !{!645, !645, i64 0, i64 0}
!1011 = !DILocation(line: 193, column: 16, scope: !1007)
!1012 = !DILocation(line: 193, column: 9, scope: !1007)
!1013 = !{!1014, !1014, i64 0, i64 4}
!1014 = !{!645, i64 4, !"uint1_t"}
!1015 = !{i32 1}
!1016 = distinct !DISubprogram(name: "v8int16", linkageName: "_ZN7v8int16C2E17chessllvmInternal7v16int8", scope: !1017, file: !37, line: 1808, type: !1035, scopeLine: 1808, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !1034, retainedNodes: !1037)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v8int16", file: !37, line: 1800, size: 128, flags: DIFlagTypePassByValue, elements: !1018, identifier: "_ZTS7v8int16")
!1018 = !{!1019, !1020, !1024, !1029, !1030, !1031, !1034}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "mw", scope: !1017, file: !37, line: 1811, baseType: !977, size: 128)
!1020 = !DISubprogram(name: "operator+=", linkageName: "_ZN7v8int16pLES_", scope: !1017, file: !37, line: 1803, type: !1021, scopeLine: 1803, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!1017, !1023, !1017}
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!1024 = !DISubprogram(name: "operator+=", linkageName: "_ZNV7v8int16pLES_", scope: !1017, file: !37, line: 1804, type: !1025, scopeLine: 1804, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!1017, !1027, !1017}
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!1028 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1017)
!1029 = !DISubprogram(name: "operator-=", linkageName: "_ZN7v8int16mIES_", scope: !1017, file: !37, line: 1805, type: !1021, scopeLine: 1805, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1030 = !DISubprogram(name: "operator-=", linkageName: "_ZNV7v8int16mIES_", scope: !1017, file: !37, line: 1806, type: !1025, scopeLine: 1806, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1031 = !DISubprogram(name: "v8int16", scope: !1017, file: !37, line: 1807, type: !1032, scopeLine: 1807, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{null, !1023}
!1034 = !DISubprogram(name: "v8int16", scope: !1017, file: !37, line: 1808, type: !1035, scopeLine: 1808, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{null, !1023, !36, !977}
!1037 = !{!1038, !1040, !1041}
!1038 = !DILocalVariable(name: "this", arg: 1, scope: !1016, type: !1039, flags: DIFlagArtificial | DIFlagObjectPointer)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 32)
!1040 = !DILocalVariable(arg: 2, scope: !1016, file: !37, line: 1808, type: !36)
!1041 = !DILocalVariable(name: "aw", arg: 3, scope: !1016, file: !37, line: 1808, type: !977)
!1042 = !DILocation(line: 0, scope: !1016)
!1043 = !DILocation(line: 1808, column: 42, scope: !1016)
!1044 = !DILocation(line: 1808, column: 52, scope: !1016)
!1045 = !DILocation(line: 1808, column: 58, scope: !1016)
!1046 = !DILocation(line: 1808, column: 61, scope: !1016)
!1047 = !DILocation(line: 1808, column: 66, scope: !1016)
!1048 = !{!1049, !700, i64 16, i64 4}
!1049 = !{!645, i64 20, !"_ZTSN12me_primitive65chessout_v4int32_stream_read128___PWSS_rsrc1__sint_uint1_t___sintE", !742, i64 0, i64 16, !700, i64 16, i64 4}
!1050 = !{!1051, !700, i64 16, i64 4}
!1051 = !{!645, i64 20, !"_ZTSN12me_primitive65chessout_v4int32_stream_read128___PWSS_rsrc2__sint_uint1_t___sintE", !742, i64 0, i64 16, !700, i64 16, i64 4}
!1052 = !{!1053, !700, i64 16, i64 4}
!1053 = !{!645, i64 20, !"_ZTSN12me_primitive62chessout_v4int32_stream_read128___PWSSMEM__sint_uint1_t___sintE", !742, i64 0, i64 16, !700, i64 16, i64 4}
!1054 = distinct !DISubprogram(name: "vector_base", linkageName: "_ZN3aie6detail11vector_baseIfLj4EEC2E7v4float", scope: !65, file: !66, line: 236, type: !101, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !100, retainedNodes: !1055)
!1055 = !{!1056, !1057}
!1056 = !DILocalVariable(name: "this", arg: 1, scope: !1054, type: !798, flags: DIFlagArtificial | DIFlagObjectPointer)
!1057 = !DILocalVariable(name: "v", arg: 2, scope: !1054, file: !66, line: 236, type: !103)
!1058 = !DILocation(line: 0, scope: !1054)
!1059 = !DILocation(line: 236, column: 27, scope: !1054)
!1060 = !DILocation(line: 237, column: 9, scope: !1054)
!1061 = !DILocation(line: 237, column: 14, scope: !1054)
!1062 = !DILocation(line: 240, column: 5, scope: !1054)
!1063 = distinct !DISubprogram(name: "insert<4U>", linkageName: "_ZN3aie6detail11vector_baseIfLj4EE6insertILj4EEERS2_jRKNS1_IfXT_EEE", scope: !65, file: !66, line: 585, type: !1064, scopeLine: 586, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !930, declaration: !1067, retainedNodes: !1068)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!123, !99, !13, !1066}
!1066 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !118, size: 32)
!1067 = !DISubprogram(name: "insert<4U>", linkageName: "_ZN3aie6detail11vector_baseIfLj4EE6insertILj4EEERS2_jRKNS1_IfXT_EEE", scope: !65, file: !66, line: 585, type: !1064, scopeLine: 585, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !930)
!1068 = !{!1069, !1070, !1071, !1072}
!1069 = !DILocalVariable(name: "this", arg: 1, scope: !1063, type: !798, flags: DIFlagArtificial | DIFlagObjectPointer)
!1070 = !DILocalVariable(name: "idx", arg: 2, scope: !1063, file: !66, line: 585, type: !13)
!1071 = !DILocalVariable(name: "v", arg: 3, scope: !1063, file: !66, line: 585, type: !1066)
!1072 = !DILocalVariable(name: "input_bits", scope: !1063, file: !66, line: 589, type: !195)
!1073 = !DILocation(line: 0, scope: !1063)
!1074 = !DILocation(line: 585, column: 34, scope: !1063)
!1075 = !DILocation(line: 585, column: 70, scope: !1063)
!1076 = !DILocation(line: 587, column: 9, scope: !1063)
!1077 = !DILocation(line: 587, column: 9, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1079, file: !66, line: 587, column: 9)
!1079 = distinct !DILexicalBlock(scope: !1063, file: !66, line: 587, column: 9)
!1080 = !DILocation(line: 587, column: 9, scope: !1079)
!1081 = !DILocation(line: 587, column: 9, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1078, file: !66, line: 587, column: 9)
!1083 = !DILocation(line: 587, column: 9, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1085, file: !66, line: 587, column: 9)
!1085 = distinct !DILexicalBlock(scope: !1082, file: !66, line: 587, column: 9)
!1086 = !DILocation(line: 587, column: 9, scope: !1085)
!1087 = !{!"idx needs to be a valid subvector index"}
!1088 = !DILocation(line: 587, column: 9, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1078, file: !66, line: 587, column: 9)
!1090 = !DILocation(line: 589, column: 9, scope: !1063)
!1091 = !DILocation(line: 589, column: 28, scope: !1063)
!1092 = !DILocation(line: 595, column: 13, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1094, file: !66, line: 594, column: 45)
!1094 = distinct !DILexicalBlock(scope: !1063, file: !66, line: 594, column: 23)
!1095 = !DILocation(line: 595, column: 20, scope: !1093)
!1096 = !DILocation(line: 595, column: 22, scope: !1093)
!1097 = !DILocation(line: 690, column: 5, scope: !1063)
!1098 = !DILocation(line: 689, column: 9, scope: !1063)
!1099 = distinct !DISubprogram(name: "current", linkageName: "_ZNK3aie6detail5utils14unroll_contextIjLj0ELj1ELj0EE7currentEv", scope: !830, file: !776, line: 526, type: !833, scopeLine: 527, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !838, retainedNodes: !1100)
!1100 = !{!1101}
!1101 = !DILocalVariable(name: "this", arg: 1, scope: !1099, type: !946, flags: DIFlagArtificial | DIFlagObjectPointer)
!1102 = !DILocation(line: 0, scope: !1099)
!1103 = !DILocation(line: 528, column: 9, scope: !1099)
!1104 = distinct !DISubprogram(name: "writeincr", linkageName: "_ZN3aie6detail3adf17stream_out_helperILj4EfL23aie_stream_resource_out0EE9writeincrEP13output_streamIfENS_6vectorIfLj4EEE", scope: !1105, file: !191, line: 148, type: !1109, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !1108, retainedNodes: !1116)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stream_out_helper<4U, float, (aie_stream_resource_out)0>", scope: !192, file: !191, line: 143, size: 8, flags: DIFlagTypePassByValue, elements: !1106, templateParams: !1115, identifier: "_ZTSN3aie6detail3adf17stream_out_helperILj4EfL23aie_stream_resource_out0EEE")
!1106 = !{!1107, !1108, !1112}
!1107 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1105, baseType: !190, extraData: i32 0)
!1108 = !DISubprogram(name: "writeincr", linkageName: "_ZN3aie6detail3adf17stream_out_helperILj4EfL23aie_stream_resource_out0EE9writeincrEP13output_streamIfENS_6vectorIfLj4EEE", scope: !1105, file: !191, line: 148, type: !1109, scopeLine: 148, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{null, !668, !1111}
!1111 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !1105, file: !191, line: 145, baseType: !752)
!1112 = !DISubprogram(name: "writeincr", linkageName: "_ZN3aie6detail3adf17stream_out_helperILj4EfL23aie_stream_resource_out0EE9writeincrEP13output_streamIfENS_6vectorIfLj4EEEb", scope: !1105, file: !191, line: 156, type: !1113, scopeLine: 156, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{null, !668, !1111, !91}
!1115 = !{!199, !78, !733}
!1116 = !{!1117, !1118, !1119}
!1117 = !DILocalVariable(name: "w", arg: 1, scope: !1104, file: !191, line: 148, type: !668)
!1118 = !DILocalVariable(name: "value", arg: 2, scope: !1104, file: !191, line: 148, type: !1111)
!1119 = !DILocalVariable(name: "i", scope: !1120, file: !191, line: 151, type: !13)
!1120 = distinct !DILexicalBlock(scope: !1104, file: !191, line: 151, column: 9)
!1121 = !DILocation(line: 148, column: 45, scope: !1104)
!1122 = !DILocation(line: 148, column: 53, scope: !1104)
!1123 = !DILocation(line: 151, column: 14, scope: !1120)
!1124 = !DILocation(line: 151, column: 23, scope: !1120)
!1125 = !DILocation(line: 151, column: 30, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1120, file: !191, line: 151, column: 9)
!1127 = !DILocation(line: 151, column: 32, scope: !1126)
!1128 = !DILocation(line: 151, column: 9, scope: !1120)
!1129 = !DILocation(line: 151, column: 9, scope: !1126)
!1130 = !DILocation(line: 152, column: 35, scope: !1126)
!1131 = !DILocation(line: 152, column: 38, scope: !1126)
!1132 = !DILocation(line: 152, column: 94, scope: !1126)
!1133 = !DILocation(line: 152, column: 53, scope: !1126)
!1134 = !DILocation(line: 152, column: 13, scope: !1126)
!1135 = !DILocation(line: 151, column: 62, scope: !1126)
!1136 = distinct !{!1136, !1128, !1137, !1138, !1139}
!1137 = !DILocation(line: 152, column: 96, scope: !1120)
!1138 = !{!"llvm.loop.mustprogress"}
!1139 = !{!"llvm.loop.unroll.enable"}
!1140 = !DILocation(line: 153, column: 5, scope: !1104)
!1141 = distinct !DISubprogram(name: "writeincr<(aie_stream_resource_out)0>", linkageName: "_ZL9writeincrIL23aie_stream_resource_out0EEvP13output_streamIfE7v4floatb", scope: !951, file: !951, line: 380, type: !1142, scopeLine: 380, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1150, retainedNodes: !1146)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{null, !1144, !81, !91}
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 32)
!1145 = !DIDerivedType(tag: DW_TAG_typedef, name: "output_stream_float", file: !956, line: 30, baseType: !669)
!1146 = !{!1147, !1148, !1149}
!1147 = !DILocalVariable(name: "str", arg: 1, scope: !1141, file: !951, line: 380, type: !1144)
!1148 = !DILocalVariable(name: "value", arg: 2, scope: !1141, file: !951, line: 380, type: !81)
!1149 = !DILocalVariable(name: "tlast", arg: 3, scope: !1141, file: !951, line: 380, type: !91)
!1150 = !{!733}
!1151 = !DILocation(line: 380, column: 1, scope: !1141)
!1152 = !{!1153, !1153, i64 0, i64 1}
!1153 = !{!645, i64 1, !"bool"}
!1154 = !{i8 0, i8 2}
!1155 = distinct !DISubprogram(name: "extract<4U>", linkageName: "_ZNK3aie6vectorIfLj4EE7extractILj4EEENS0_IfXT_EEEj", scope: !61, file: !62, line: 427, type: !1156, scopeLine: 428, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1159, declaration: !1158, retainedNodes: !1161)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!61, !162, !13}
!1158 = !DISubprogram(name: "extract<4U>", linkageName: "_ZNK3aie6vectorIfLj4EE7extractILj4EEENS0_IfXT_EEEj", scope: !61, file: !62, line: 427, type: !1156, scopeLine: 427, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !1159)
!1159 = !{!1160}
!1160 = !DITemplateValueParameter(name: "ElemsOut", type: !13, value: i32 4)
!1161 = !{!1162, !1164}
!1162 = !DILocalVariable(name: "this", arg: 1, scope: !1155, type: !1163, flags: DIFlagArtificial | DIFlagObjectPointer)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 32)
!1164 = !DILocalVariable(name: "idx", arg: 2, scope: !1155, file: !62, line: 427, type: !13)
!1165 = !DILocation(line: 0, scope: !1155)
!1166 = !DILocation(line: 427, column: 51, scope: !1155)
!1167 = !DILocation(line: 429, column: 16, scope: !1155)
!1168 = !DILocation(line: 429, column: 36, scope: !1155)
!1169 = !DILocation(line: 429, column: 54, scope: !1155)
!1170 = !DILocation(line: 429, column: 9, scope: !1155)
!1171 = distinct !DISubprogram(name: "operator v4float", linkageName: "_ZNK3aie6vectorIfLj4EEcv7v4floatEv", scope: !61, file: !62, line: 230, type: !160, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !164, retainedNodes: !1172)
!1172 = !{!1173}
!1173 = !DILocalVariable(name: "this", arg: 1, scope: !1171, type: !1163, flags: DIFlagArtificial | DIFlagObjectPointer)
!1174 = !DILocation(line: 0, scope: !1171)
!1175 = !DILocation(line: 232, column: 16, scope: !1171)
!1176 = !DILocation(line: 232, column: 9, scope: !1171)
!1177 = distinct !DISubprogram(name: "writeincr<(aie_stream_resource_out)0>", linkageName: "_ZL9writeincrIL23aie_stream_resource_out0EEvP13output_streamIsE7v8int16b", scope: !951, file: !951, line: 355, type: !1178, scopeLine: 356, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1184, retainedNodes: !1180)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{null, !53, !964, !91}
!1180 = !{!1181, !1182, !1183}
!1181 = !DILocalVariable(name: "ss", arg: 1, scope: !1177, file: !951, line: 355, type: !53)
!1182 = !DILocalVariable(name: "value", arg: 2, scope: !1177, file: !951, line: 355, type: !964)
!1183 = !DILocalVariable(name: "tlast", arg: 3, scope: !1177, file: !951, line: 355, type: !91)
!1184 = !{!1185}
!1185 = !DITemplateValueParameter(name: "resource", type: !35, value: i32 0)
!1186 = !DILocation(line: 355, column: 33, scope: !1177)
!1187 = !DILocation(line: 355, column: 45, scope: !1177)
!1188 = !DILocation(line: 355, column: 57, scope: !1177)
!1189 = !DILocation(line: 358, column: 53, scope: !1177)
!1190 = !DILocation(line: 358, column: 12, scope: !1177)
!1191 = !DILocation(line: 358, column: 5, scope: !1177)
!1192 = distinct !DISubprogram(name: "aie_stream_put_wms<short>", linkageName: "_ZN12stream_utilsL18aie_stream_put_wmsIsEEvP13output_streamIsE7v8int16Rb", scope: !1000, file: !999, line: 219, type: !1193, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1003, retainedNodes: !1195)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{null, !53, !964, !756}
!1195 = !{!1196, !1197, !1198}
!1196 = !DILocalVariable(name: "ss", arg: 1, scope: !1192, file: !999, line: 219, type: !53)
!1197 = !DILocalVariable(name: "value", arg: 2, scope: !1192, file: !999, line: 219, type: !964)
!1198 = !DILocalVariable(name: "tlast", arg: 3, scope: !1192, file: !999, line: 219, type: !756)
!1199 = !DILocation(line: 219, column: 43, scope: !1192)
!1200 = !DILocation(line: 219, column: 55, scope: !1192)
!1201 = !DILocation(line: 219, column: 68, scope: !1192)
!1202 = !DILocation(line: 226, column: 17, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1204, file: !999, line: 223, column: 24)
!1204 = distinct !DILexicalBlock(scope: !1192, file: !999, line: 221, column: 19)
!1205 = !DILocation(line: 226, column: 21, scope: !1203)
!1206 = !DILocation(line: 226, column: 37, scope: !1203)
!1207 = !DILocation(line: 226, column: 9, scope: !1203)
!1208 = !DILocation(line: 227, column: 1, scope: !1192)
!1209 = distinct !DISubprogram(name: "v4int32", linkageName: "_ZN7v4int32C2E17chessllvmInternal7v16int8", scope: !200, file: !37, line: 1830, type: !1210, scopeLine: 1830, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !1229, retainedNodes: !1230)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{null, !1212, !36, !977}
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v4int32", file: !37, line: 1822, size: 128, flags: DIFlagTypePassByValue, elements: !1214, identifier: "_ZTS7v4int32")
!1214 = !{!1215, !1216, !1219, !1224, !1225, !1226, !1229}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "mw", scope: !1213, file: !37, line: 1833, baseType: !977, size: 128)
!1216 = !DISubprogram(name: "operator+=", linkageName: "_ZN7v4int32pLES_", scope: !1213, file: !37, line: 1825, type: !1217, scopeLine: 1825, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!1213, !1212, !1213}
!1219 = !DISubprogram(name: "operator+=", linkageName: "_ZNV7v4int32pLES_", scope: !1213, file: !37, line: 1826, type: !1220, scopeLine: 1826, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!1213, !1222, !1213}
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!1223 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1213)
!1224 = !DISubprogram(name: "operator-=", linkageName: "_ZN7v4int32mIES_", scope: !1213, file: !37, line: 1827, type: !1217, scopeLine: 1827, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1225 = !DISubprogram(name: "operator-=", linkageName: "_ZNV7v4int32mIES_", scope: !1213, file: !37, line: 1828, type: !1220, scopeLine: 1828, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1226 = !DISubprogram(name: "v4int32", scope: !1213, file: !37, line: 1829, type: !1227, scopeLine: 1829, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{null, !1212}
!1229 = !DISubprogram(name: "v4int32", scope: !1213, file: !37, line: 1830, type: !1210, scopeLine: 1830, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1230 = !{!1231, !1233, !1234}
!1231 = !DILocalVariable(name: "this", arg: 1, scope: !1209, type: !1232, flags: DIFlagArtificial | DIFlagObjectPointer)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 32)
!1233 = !DILocalVariable(arg: 2, scope: !1209, file: !37, line: 1830, type: !36)
!1234 = !DILocalVariable(name: "aw", arg: 3, scope: !1209, file: !37, line: 1830, type: !977)
!1235 = !DILocation(line: 0, scope: !1209)
!1236 = !DILocation(line: 1830, column: 42, scope: !1209)
!1237 = !DILocation(line: 1830, column: 52, scope: !1209)
!1238 = !DILocation(line: 1830, column: 58, scope: !1209)
!1239 = !DILocation(line: 1830, column: 61, scope: !1209)
!1240 = !DILocation(line: 1830, column: 66, scope: !1209)
!1241 = distinct !DISubprogram(name: "extract<4U>", linkageName: "_ZNK3aie6detail11vector_baseIfLj4EE7extractILj4EEENS1_IfXT_EEEj", scope: !65, file: !66, line: 705, type: !1242, scopeLine: 706, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1159, declaration: !1244, retainedNodes: !1245)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{!65, !117, !13}
!1244 = !DISubprogram(name: "extract<4U>", linkageName: "_ZNK3aie6detail11vector_baseIfLj4EE7extractILj4EEENS1_IfXT_EEEj", scope: !65, file: !66, line: 705, type: !1242, scopeLine: 705, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !1159)
!1245 = !{!1246, !1248, !1249}
!1246 = !DILocalVariable(name: "this", arg: 1, scope: !1241, type: !1247, flags: DIFlagArtificial | DIFlagObjectPointer)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 32)
!1248 = !DILocalVariable(name: "idx", arg: 2, scope: !1241, file: !66, line: 705, type: !13)
!1249 = !DILocalVariable(name: "output_bits", scope: !1241, file: !66, line: 709, type: !195)
!1250 = !DILocation(line: 0, scope: !1241)
!1251 = !DILocation(line: 705, column: 56, scope: !1241)
!1252 = !DILocation(line: 707, column: 9, scope: !1241)
!1253 = !DILocation(line: 707, column: 9, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1255, file: !66, line: 707, column: 9)
!1255 = distinct !DILexicalBlock(scope: !1241, file: !66, line: 707, column: 9)
!1256 = !DILocation(line: 707, column: 9, scope: !1255)
!1257 = !DILocation(line: 707, column: 9, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1254, file: !66, line: 707, column: 9)
!1259 = !DILocation(line: 707, column: 9, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1261, file: !66, line: 707, column: 9)
!1261 = distinct !DILexicalBlock(scope: !1258, file: !66, line: 707, column: 9)
!1262 = !DILocation(line: 707, column: 9, scope: !1261)
!1263 = !DILocation(line: 707, column: 9, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1254, file: !66, line: 707, column: 9)
!1265 = !DILocation(line: 709, column: 9, scope: !1241)
!1266 = !DILocation(line: 709, column: 28, scope: !1241)
!1267 = !DILocation(line: 715, column: 20, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1269, file: !66, line: 714, column: 46)
!1269 = distinct !DILexicalBlock(scope: !1241, file: !66, line: 714, column: 23)
!1270 = !{!741, !741, i64 0, i64 16}
!1271 = !DILocation(line: 776, column: 5, scope: !1241)
!1272 = distinct !DISubprogram(name: "vector", linkageName: "_ZN3aie6vectorIfLj4EEC2ERKNS_6detail11vector_baseIfLj4EEE", scope: !61, file: !62, line: 117, type: !132, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !131, retainedNodes: !1273)
!1273 = !{!1274, !1275}
!1274 = !DILocalVariable(name: "this", arg: 1, scope: !1272, type: !770, flags: DIFlagArtificial | DIFlagObjectPointer)
!1275 = !DILocalVariable(name: "v", arg: 2, scope: !1272, file: !62, line: 117, type: !135)
!1276 = !DILocation(line: 0, scope: !1272)
!1277 = !DILocation(line: 117, column: 29, scope: !1272)
!1278 = !DILocation(line: 117, column: 47, scope: !1272)
!1279 = !DILocation(line: 117, column: 44, scope: !1272)
!1280 = !DILocation(line: 117, column: 34, scope: !1272)
!1281 = !DILocation(line: 117, column: 48, scope: !1272)
!1282 = distinct !DISubprogram(name: "to_native", linkageName: "_ZNK3aie6vectorIfLj4EE9to_nativeEv", scope: !61, file: !62, line: 221, type: !160, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !159, retainedNodes: !1283)
!1283 = !{!1284}
!1284 = !DILocalVariable(name: "this", arg: 1, scope: !1282, type: !1163, flags: DIFlagArtificial | DIFlagObjectPointer)
!1285 = !DILocation(line: 0, scope: !1282)
!1286 = !DILocation(line: 223, column: 27, scope: !1282)
!1287 = !DILocation(line: 223, column: 9, scope: !1282)
!1288 = distinct !DISubprogram(name: "to_native", linkageName: "_ZNK3aie6detail11vector_baseIfLj4EE9to_nativeEv", scope: !65, file: !66, line: 292, type: !115, scopeLine: 293, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !114, retainedNodes: !1289)
!1289 = !{!1290}
!1290 = !DILocalVariable(name: "this", arg: 1, scope: !1288, type: !1247, flags: DIFlagArtificial | DIFlagObjectPointer)
!1291 = !DILocation(line: 0, scope: !1288)
!1292 = !DILocation(line: 300, column: 20, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1288, file: !66, line: 297, column: 23)
