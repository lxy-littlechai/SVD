; ModuleID = 'i0_wrap_Orthogonalize.ll'
source_filename = "/home/lxy/Projects/SVD/Jacobi_AIE_Scalar/Work/aie/ir/i0_wrap_Orthogonalize.cpp"
target datalayout = "e-i8:8:8-i16:16:16-i32:32:32-i64:32:32-f32:32:32-f64:32:32-p:32:32:32:32:8-s0:256:256-a0:8:8-S256-n32:64-P1-p0:20:32:32:32:8-p1:20:32:32:32:8-p2:20:32:32:32:8-p3:20:32:32:32:8-p4:20:32:32:32:8-p5:20:32:32:32:8-p6:20:32:32:32:8-p7:20:32:32:32:8-p8:20:32:32:32:8-p9:20:32:32:32:8-p10:20:32:32:32:8-p11:20:32:32:32:8-p12:20:32:32:32:8-p13:20:32:32:32:8-p14:20:32:32:32:8-p15:1:32:32:32:32-p16:1:32:32:32:32-p17:1:32:32:32:32-p18:1:32:32:32:32-p19:1:32:32:32:32-p20:1:32:32:32:32-p21:1:32:32:32:32-p22:1:32:32:32:32-p23:1:32:32:32:32-p24:1:32:32:32:32-p25:1:32:32:32:32-p26:1:32:32:32:32-p27:1:32:32:32:32-p28:1:32:32:32:32-p29:1:32:32:32:32-p30:1:32:32:32:32"
target triple = "pdarch-unknown-unknown-elf"

%struct.input_stream = type { %union.anon }
%union.anon = type { i32 }
%struct.output_stream = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.ipd.custom_type.uint1_t.uint1_t = type { i1 }
%"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint" = type { i32, i32 }
%"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint" = type { i32, i32 }
%"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint" = type { i32, i32 }

$_Z13orthogonalizeILi8EEvP12input_streamIfES2_P13output_streamIfES5_ = comdat any

$_ZN3aie3absIfEENS_17operand_base_typeINS_6detail5utils10remove_allIT_E4typeEE4typeERKS5_ = comdat any

$_ZN3aie4sqrtIfEEDaT_ = comdat any

$_ZNSt3__23absEf = comdat any

$_ZN3aie6detail15elementary_bitsILNS0_12ElementaryOpE0ELj32EffE3runERKfi = comdat any

$_ZN3aie6detail20elementary_bits_implILNS0_12ElementaryOpE0ELj32EffE3runERKfi = comdat any

$_Z6_sqrtff = comdat any

$_Z8as_floati = comdat any

$_Z6get_ssi = comdat any

$_ZN12me_primitive11stream_readIiEEN13chessEnableIfIXsr17chessIsCompatibleIN15chessRemoveQualIT_E4typeEiEE5valueEiE4typeEPU4AS23U16__protect_accessi7uint1_tRS3_ = comdat any

$_ZN7uint1_tC2Ei = comdat any

$_ZN12me_primitive11stream_readIiEEN13chessEnableIfIXsr17chessIsCompatibleIN15chessRemoveQualIT_E4typeEiEE5valueEiE4typeEPU4AS24U16__protect_accessi7uint1_tRS3_ = comdat any

$_ZN12me_primitive11stream_readIiEEN13chessEnableIfIXsr17chessIsCompatibleIN15chessRemoveQualIT_E4typeEiEE5valueEiE4typeEPU4AS15U16__protect_accessi7uint1_tRS3_ = comdat any

$_Z8as_int32f = comdat any

$_Z6put_msiii = comdat any

$_ZN12me_primitive12stream_writeEPU4AS27U16__protect_accessii7uint1_tS2_ = comdat any

$_ZN12me_primitive12stream_writeEPU4AS28U16__protect_accessii7uint1_tS2_ = comdat any

$_ZN12me_primitive12stream_writeEPU4AS16U16__protect_accessii7uint1_tS2_ = comdat any

@_ZN12me_primitive3ss0E = external dso_local addrspace(25) global i32, align 1 #0
@_ZN12me_primitive4sst0E = external dso_local addrspace(19) global i32, align 1 #0
@_ZN12me_primitive3ss1E = external dso_local addrspace(26) global i32, align 1 #1
@_ZN12me_primitive4sst1E = external dso_local addrspace(19) global i32, align 1 #1
@_ZN12me_primitive3ms0E = external dso_local addrspace(29) global i32, align 1 #0
@_ZN12me_primitive3ms1E = external dso_local addrspace(30) global i32, align 1 #1

; Function Attrs: mustprogress nounwind
define dso_local float @_Z4signd(double %x) addrspace(1) #2 !dbg !526 {
entry:
  %retval = alloca float, align 4
  %x.addr = alloca double, align 4
  store double %x, double* %x.addr, align 4, !tbaa !532
  call addrspace(1) void @llvm.dbg.declare(metadata double* %x.addr, metadata !531, metadata !DIExpression()), !dbg !536
  %0 = load double, double* %x.addr, align 4, !dbg !537, !tbaa !532
  %cmp = fcmp ogt double %0, 0.000000e+00, !dbg !539
  br i1 %cmp, label %if.then, label %if.else, !dbg !540

if.then:                                          ; preds = %entry
  store float 1.000000e+00, float* %retval, align 4, !dbg !541
  br label %return, !dbg !541

if.else:                                          ; preds = %entry
  %1 = load double, double* %x.addr, align 4, !dbg !542, !tbaa !532
  %cmp1 = fcmp oeq double %1, 0.000000e+00, !dbg !544
  br i1 %cmp1, label %if.then2, label %if.else3, !dbg !545

if.then2:                                         ; preds = %if.else
  store float 0.000000e+00, float* %retval, align 4, !dbg !546
  br label %return, !dbg !546

if.else3:                                         ; preds = %if.else
  store float -1.000000e+00, float* %retval, align 4, !dbg !547
  br label %return, !dbg !547

return:                                           ; preds = %if.else3, %if.then2, %if.then
  %2 = load float, float* %retval, align 4, !dbg !548
  ret float %2, !dbg !548
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) addrspace(1) #3

; Function Attrs: mustprogress nounwind
define weak_odr dso_local void @_Z13orthogonalizeILi8EEvP12input_streamIfES2_P13output_streamIfES5_(%struct.input_stream* chesscopy noalias %in0, %struct.input_stream* chesscopy noalias %in1, %struct.output_stream* chesscopy noalias %out0, %struct.output_stream* chesscopy noalias %out1) addrspace(1) #2 comdat !dbg !549 {
entry:
  %in0.addr = alloca %struct.input_stream*, align 4
  %in1.addr = alloca %struct.input_stream*, align 4
  %out0.addr = alloca %struct.output_stream*, align 4
  %out1.addr = alloca %struct.output_stream*, align 4
  %VECSIZE = alloca i32, align 4
  %Ap = alloca [8 x float], align 4
  %Aq = alloca [8 x float], align 4
  %Bp = alloca [8 x float], align 4
  %Bq = alloca [8 x float], align 4
  %i = alloca i32, align 4
  %tmp1 = alloca float, align 4
  %tmp2 = alloca float, align 4
  %i3 = alloca i32, align 4
  %tau = alloca float, align 4
  %t = alloca float, align 4
  %c = alloca float, align 4
  %s = alloca float, align 4
  %i29 = alloca i32, align 4
  %0 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0p0s_struct.input_streams.i32(%struct.input_stream** %in0.addr, i32 0, metadata !587), !noalias !590
  store %struct.input_stream* %in0, %struct.input_stream** %in0.addr, align 4, !tbaa !594, !noalias !590
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.input_stream** %in0.addr, metadata !560, metadata !DIExpression()), !dbg !596
  %1 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0p0s_struct.input_streams.i32(%struct.input_stream** %in1.addr, i32 0, metadata !597), !noalias !590
  store %struct.input_stream* %in1, %struct.input_stream** %in1.addr, align 4, !tbaa !594, !noalias !590
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.input_stream** %in1.addr, metadata !561, metadata !DIExpression()), !dbg !598
  %2 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0p0s_struct.output_streams.i32(%struct.output_stream** %out0.addr, i32 0, metadata !599), !noalias !590
  store %struct.output_stream* %out0, %struct.output_stream** %out0.addr, align 4, !tbaa !594, !noalias !590
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.output_stream** %out0.addr, metadata !562, metadata !DIExpression()), !dbg !600
  %3 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0p0s_struct.output_streams.i32(%struct.output_stream** %out1.addr, i32 0, metadata !601), !noalias !590
  store %struct.output_stream* %out1, %struct.output_stream** %out1.addr, align 4, !tbaa !594, !noalias !590
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.output_stream** %out1.addr, metadata !563, metadata !DIExpression()), !dbg !602
  store i32 undef, i32* %VECSIZE, align 4, !dbg !603, !noalias !590
  %4 = bitcast i32* %VECSIZE to i8*, !dbg !603
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #15, !dbg !603, !noalias !590
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %VECSIZE, metadata !564, metadata !DIExpression()), !dbg !604
  store i32 4, i32* %VECSIZE, align 4, !dbg !604, !tbaa !605, !noalias !590
  store [8 x float] undef, [8 x float]* %Ap, align 4, !dbg !607, !noalias !590
  %5 = bitcast [8 x float]* %Ap to i8*, !dbg !607
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 32, i8* %5) #15, !dbg !607, !noalias !590
  call addrspace(1) void @llvm.dbg.declare(metadata [8 x float]* %Ap, metadata !566, metadata !DIExpression()), !dbg !608
  store [8 x float] undef, [8 x float]* %Aq, align 4, !dbg !607, !noalias !590
  %6 = bitcast [8 x float]* %Aq to i8*, !dbg !607
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 32, i8* %6) #15, !dbg !607, !noalias !590
  call addrspace(1) void @llvm.dbg.declare(metadata [8 x float]* %Aq, metadata !570, metadata !DIExpression()), !dbg !609
  store [8 x float] undef, [8 x float]* %Bp, align 4, !dbg !607, !noalias !590
  %7 = bitcast [8 x float]* %Bp to i8*, !dbg !607
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 32, i8* %7) #15, !dbg !607, !noalias !590
  call addrspace(1) void @llvm.dbg.declare(metadata [8 x float]* %Bp, metadata !571, metadata !DIExpression()), !dbg !610
  store [8 x float] undef, [8 x float]* %Bq, align 4, !dbg !607, !noalias !590
  %8 = bitcast [8 x float]* %Bq to i8*, !dbg !607
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 32, i8* %8) #15, !dbg !607, !noalias !590
  call addrspace(1) void @llvm.dbg.declare(metadata [8 x float]* %Bq, metadata !572, metadata !DIExpression()), !dbg !611
  store i32 undef, i32* %i, align 4, !dbg !612, !noalias !590
  %9 = bitcast i32* %i to i8*, !dbg !612
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #15, !dbg !612, !noalias !590
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %i, metadata !573, metadata !DIExpression()), !dbg !613
  store i32 0, i32* %i, align 4, !dbg !613, !tbaa !605, !noalias !590
  br label %for.cond, !dbg !612

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %i, align 4, !dbg !614, !tbaa !605, !noalias !590
  %cmp = icmp slt i32 %10, 8, !dbg !616
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !617

for.cond.cleanup:                                 ; preds = %for.cond
  %11 = bitcast i32* %i to i8*, !dbg !618
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #15, !dbg !618, !noalias !590
  br label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.input_stream*, %struct.input_stream** %in0.addr, align 4, !dbg !619, !tbaa !594, !noalias !590
  %13 = call addrspace(1) %struct.input_stream* @llvm.noalias.p0s_struct.input_streams.p0i8.p0p0s_struct.input_streams.i32(%struct.input_stream* %12, i8* %0, %struct.input_stream** %in0.addr, i32 0, metadata !587), !dbg !619, !tbaa !594, !noalias !590
  %call = call addrspace(1) float @_ZL8readincrIL22aie_stream_resource_in0EfET0_P12input_streamIS1_E(%struct.input_stream* %13) #16, !dbg !621, !noalias !590
  %14 = load i32, i32* %i, align 4, !dbg !622, !tbaa !605, !noalias !590
  %arrayidx = getelementptr inbounds [8 x float], [8 x float]* %Ap, i32 0, i32 %14, !dbg !623
  store float %call, float* %arrayidx, align 4, !dbg !624, !tbaa !625, !noalias !590
  %15 = load %struct.input_stream*, %struct.input_stream** %in1.addr, align 4, !dbg !627, !tbaa !594, !noalias !590
  %16 = call addrspace(1) %struct.input_stream* @llvm.noalias.p0s_struct.input_streams.p0i8.p0p0s_struct.input_streams.i32(%struct.input_stream* %15, i8* %1, %struct.input_stream** %in1.addr, i32 0, metadata !597), !dbg !627, !tbaa !594, !noalias !590
  %call1 = call addrspace(1) float @_ZL8readincrIL22aie_stream_resource_in0EfET0_P12input_streamIS1_E(%struct.input_stream* %16) #16, !dbg !628, !noalias !590
  %17 = load i32, i32* %i, align 4, !dbg !629, !tbaa !605, !noalias !590
  %arrayidx2 = getelementptr inbounds [8 x float], [8 x float]* %Aq, i32 0, i32 %17, !dbg !630
  store float %call1, float* %arrayidx2, align 4, !dbg !631, !tbaa !625, !noalias !590
  br label %for.inc, !dbg !632

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !dbg !633, !tbaa !605, !noalias !590
  %inc = add nsw i32 %18, 1, !dbg !633
  store i32 %inc, i32* %i, align 4, !dbg !633, !tbaa !605, !noalias !590
  br label %for.cond, !dbg !618, !llvm.loop !634

for.end:                                          ; preds = %for.cond.cleanup
  store float undef, float* %tmp1, align 4, !dbg !637, !noalias !590
  %19 = bitcast float* %tmp1 to i8*, !dbg !637
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #15, !dbg !637, !noalias !590
  call addrspace(1) void @llvm.dbg.declare(metadata float* %tmp1, metadata !575, metadata !DIExpression()), !dbg !638
  store float 0.000000e+00, float* %tmp1, align 4, !dbg !638, !tbaa !625, !noalias !590
  store float undef, float* %tmp2, align 4, !dbg !639, !noalias !590
  %20 = bitcast float* %tmp2 to i8*, !dbg !639
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #15, !dbg !639, !noalias !590
  call addrspace(1) void @llvm.dbg.declare(metadata float* %tmp2, metadata !576, metadata !DIExpression()), !dbg !640
  store float 0.000000e+00, float* %tmp2, align 4, !dbg !640, !tbaa !625, !noalias !590
  store i32 undef, i32* %i3, align 4, !dbg !641, !noalias !590
  %21 = bitcast i32* %i3 to i8*, !dbg !641
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %21) #15, !dbg !641, !noalias !590
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %i3, metadata !577, metadata !DIExpression()), !dbg !642
  store i32 0, i32* %i3, align 4, !dbg !642, !tbaa !605, !noalias !590
  br label %for.cond4, !dbg !641

for.cond4:                                        ; preds = %for.inc16, %for.end
  %22 = load i32, i32* %i3, align 4, !dbg !643, !tbaa !605, !noalias !590
  %cmp5 = icmp slt i32 %22, 8, !dbg !645
  br i1 %cmp5, label %for.body7, label %for.cond.cleanup6, !dbg !646

for.cond.cleanup6:                                ; preds = %for.cond4
  %23 = bitcast i32* %i3 to i8*, !dbg !647
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #15, !dbg !647, !noalias !590
  br label %for.end18

for.body7:                                        ; preds = %for.cond4
  %24 = load i32, i32* %i3, align 4, !dbg !648, !tbaa !605, !noalias !590
  %arrayidx8 = getelementptr inbounds [8 x float], [8 x float]* %Ap, i32 0, i32 %24, !dbg !650
  %25 = load float, float* %arrayidx8, align 4, !dbg !650, !tbaa !625, !noalias !590
  %26 = load i32, i32* %i3, align 4, !dbg !651, !tbaa !605, !noalias !590
  %arrayidx9 = getelementptr inbounds [8 x float], [8 x float]* %Ap, i32 0, i32 %26, !dbg !652
  %27 = load float, float* %arrayidx9, align 4, !dbg !652, !tbaa !625, !noalias !590
  %28 = load i32, i32* %i3, align 4, !dbg !653, !tbaa !605, !noalias !590
  %arrayidx10 = getelementptr inbounds [8 x float], [8 x float]* %Aq, i32 0, i32 %28, !dbg !654
  %29 = load float, float* %arrayidx10, align 4, !dbg !654, !tbaa !625, !noalias !590
  %30 = load i32, i32* %i3, align 4, !dbg !655, !tbaa !605, !noalias !590
  %arrayidx11 = getelementptr inbounds [8 x float], [8 x float]* %Aq, i32 0, i32 %30, !dbg !656
  %31 = load float, float* %arrayidx11, align 4, !dbg !656, !tbaa !625, !noalias !590
  %mul12 = fmul float %29, %31, !dbg !657
  %neg = fneg float %mul12, !dbg !658
  %32 = call addrspace(1) float @llvm.fmuladd.f32(float %25, float %27, float %neg), !dbg !658
  %33 = load float, float* %tmp1, align 4, !dbg !659, !tbaa !625, !noalias !590
  %add = fadd float %33, %32, !dbg !659
  store float %add, float* %tmp1, align 4, !dbg !659, !tbaa !625, !noalias !590
  %34 = load i32, i32* %i3, align 4, !dbg !660, !tbaa !605, !noalias !590
  %arrayidx13 = getelementptr inbounds [8 x float], [8 x float]* %Ap, i32 0, i32 %34, !dbg !661
  %35 = load float, float* %arrayidx13, align 4, !dbg !661, !tbaa !625, !noalias !590
  %mul = fmul float 2.000000e+00, %35, !dbg !662
  %36 = load i32, i32* %i3, align 4, !dbg !663, !tbaa !605, !noalias !590
  %arrayidx14 = getelementptr inbounds [8 x float], [8 x float]* %Aq, i32 0, i32 %36, !dbg !664
  %37 = load float, float* %arrayidx14, align 4, !dbg !664, !tbaa !625, !noalias !590
  %38 = load float, float* %tmp2, align 4, !dbg !665, !tbaa !625, !noalias !590
  %39 = call addrspace(1) float @llvm.fmuladd.f32(float %mul, float %37, float %38), !dbg !665
  store float %39, float* %tmp2, align 4, !dbg !665, !tbaa !625, !noalias !590
  br label %for.inc16, !dbg !666

for.inc16:                                        ; preds = %for.body7
  %40 = load i32, i32* %i3, align 4, !dbg !667, !tbaa !605, !noalias !590
  %inc17 = add nsw i32 %40, 1, !dbg !667
  store i32 %inc17, i32* %i3, align 4, !dbg !667, !tbaa !605, !noalias !590
  br label %for.cond4, !dbg !647, !llvm.loop !668

for.end18:                                        ; preds = %for.cond.cleanup6
  store float undef, float* %tau, align 4, !dbg !670, !noalias !590
  %41 = bitcast float* %tau to i8*, !dbg !670
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %41) #15, !dbg !670, !noalias !590
  call addrspace(1) void @llvm.dbg.declare(metadata float* %tau, metadata !579, metadata !DIExpression()), !dbg !671
  %42 = load float, float* %tmp1, align 4, !dbg !672, !tbaa !625, !noalias !590
  %43 = load float, float* %tmp2, align 4, !dbg !673, !tbaa !625, !noalias !590
  %div = fdiv float %42, %43, !dbg !674
  store float %div, float* %tau, align 4, !dbg !671, !tbaa !625, !noalias !590
  store float undef, float* %t, align 4, !dbg !675, !noalias !590
  %44 = bitcast float* %t to i8*, !dbg !675
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %44) #15, !dbg !675, !noalias !590
  call addrspace(1) void @llvm.dbg.declare(metadata float* %t, metadata !580, metadata !DIExpression()), !dbg !676
  %45 = load float, float* %tau, align 4, !dbg !677, !tbaa !625, !noalias !590
  %conv = fpext float %45 to double, !dbg !677
  %call19 = call addrspace(1) float @_Z4signd(double %conv) #16, !dbg !678, !noalias !590
  %call20 = call addrspace(1) float @_ZN3aie3absIfEENS_17operand_base_typeINS_6detail5utils10remove_allIT_E4typeEE4typeERKS5_(float* nonnull align 4 dereferenceable(4) %tau) #16, !dbg !679, !noalias !590
  %46 = load float, float* %tau, align 4, !dbg !680, !tbaa !625, !noalias !590
  %47 = load float, float* %tau, align 4, !dbg !681, !tbaa !625, !noalias !590
  %48 = call addrspace(1) float @llvm.fmuladd.f32(float %46, float %47, float 1.000000e+00), !dbg !682
  %call22 = call addrspace(1) float @_ZN3aie4sqrtIfEEDaT_(float %48) #16, !dbg !683, !noalias !590
  %add23 = fadd float %call20, %call22, !dbg !684
  %div24 = fdiv float %call19, %add23, !dbg !685
  store float %div24, float* %t, align 4, !dbg !676, !tbaa !625, !noalias !590
  store float undef, float* %c, align 4, !dbg !686, !noalias !590
  %49 = bitcast float* %c to i8*, !dbg !686
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %49) #15, !dbg !686, !noalias !590
  call addrspace(1) void @llvm.dbg.declare(metadata float* %c, metadata !581, metadata !DIExpression()), !dbg !687
  %50 = load float, float* %t, align 4, !dbg !688, !tbaa !625, !noalias !590
  %51 = load float, float* %t, align 4, !dbg !689, !tbaa !625, !noalias !590
  %52 = call addrspace(1) float @llvm.fmuladd.f32(float %50, float %51, float 1.000000e+00), !dbg !690
  %call26 = call addrspace(1) float @_ZN3aie4sqrtIfEEDaT_(float %52) #16, !dbg !691, !noalias !590
  %div27 = fdiv float 1.000000e+00, %call26, !dbg !692
  store float %div27, float* %c, align 4, !dbg !687, !tbaa !625, !noalias !590
  store float undef, float* %s, align 4, !dbg !693, !noalias !590
  %53 = bitcast float* %s to i8*, !dbg !693
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %53) #15, !dbg !693, !noalias !590
  call addrspace(1) void @llvm.dbg.declare(metadata float* %s, metadata !582, metadata !DIExpression()), !dbg !694
  %54 = load float, float* %t, align 4, !dbg !695, !tbaa !625, !noalias !590
  %55 = load float, float* %c, align 4, !dbg !696, !tbaa !625, !noalias !590
  %mul28 = fmul float %54, %55, !dbg !697
  store float %mul28, float* %s, align 4, !dbg !694, !tbaa !625, !noalias !590
  store i32 undef, i32* %i29, align 4, !dbg !698, !noalias !590
  %56 = bitcast i32* %i29 to i8*, !dbg !698
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %56) #15, !dbg !698, !noalias !590
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %i29, metadata !583, metadata !DIExpression()), !dbg !699
  store i32 0, i32* %i29, align 4, !dbg !699, !tbaa !605, !noalias !590
  br label %for.cond30, !dbg !698

for.cond30:                                       ; preds = %for.inc42, %for.end18
  %57 = load i32, i32* %i29, align 4, !dbg !700, !tbaa !605, !noalias !590
  %cmp31 = icmp slt i32 %57, 8, !dbg !702
  br i1 %cmp31, label %for.body33, label %for.cond.cleanup32, !dbg !703

for.cond.cleanup32:                               ; preds = %for.cond30
  %58 = bitcast i32* %i29 to i8*, !dbg !704
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %58) #15, !dbg !704, !noalias !590
  br label %for.end44

for.body33:                                       ; preds = %for.cond30
  %59 = load %struct.output_stream*, %struct.output_stream** %out0.addr, align 4, !dbg !705, !tbaa !594, !noalias !590
  %60 = call addrspace(1) %struct.output_stream* @llvm.noalias.p0s_struct.output_streams.p0i8.p0p0s_struct.output_streams.i32(%struct.output_stream* %59, i8* %2, %struct.output_stream** %out0.addr, i32 0, metadata !599), !dbg !705, !tbaa !594, !noalias !590
  %61 = load i32, i32* %i29, align 4, !dbg !707, !tbaa !605, !noalias !590
  %arrayidx34 = getelementptr inbounds [8 x float], [8 x float]* %Ap, i32 0, i32 %61, !dbg !708
  %62 = load float, float* %arrayidx34, align 4, !dbg !708, !tbaa !625, !noalias !590
  %63 = load float, float* %c, align 4, !dbg !709, !tbaa !625, !noalias !590
  %64 = load i32, i32* %i29, align 4, !dbg !710, !tbaa !605, !noalias !590
  %arrayidx36 = getelementptr inbounds [8 x float], [8 x float]* %Aq, i32 0, i32 %64, !dbg !711
  %65 = load float, float* %arrayidx36, align 4, !dbg !711, !tbaa !625, !noalias !590
  %66 = load float, float* %s, align 4, !dbg !712, !tbaa !625, !noalias !590
  %mul37 = fmul float %65, %66, !dbg !713
  %67 = call addrspace(1) float @llvm.fmuladd.f32(float %62, float %63, float %mul37), !dbg !714
  call addrspace(1) void @_ZL9writeincrIL23aie_stream_resource_out0EfEvP13output_streamIT0_ENSt3__213type_identityIS2_E4typeEb(%struct.output_stream* %60, float %67, i1 zeroext false) #16, !dbg !715, !noalias !590
  %68 = load %struct.output_stream*, %struct.output_stream** %out1.addr, align 4, !dbg !716, !tbaa !594, !noalias !590
  %69 = call addrspace(1) %struct.output_stream* @llvm.noalias.p0s_struct.output_streams.p0i8.p0p0s_struct.output_streams.i32(%struct.output_stream* %68, i8* %3, %struct.output_stream** %out1.addr, i32 0, metadata !601), !dbg !716, !tbaa !594, !noalias !590
  %70 = load i32, i32* %i29, align 4, !dbg !717, !tbaa !605, !noalias !590
  %arrayidx38 = getelementptr inbounds [8 x float], [8 x float]* %Ap, i32 0, i32 %70, !dbg !718
  %71 = load float, float* %arrayidx38, align 4, !dbg !718, !tbaa !625, !noalias !590
  %fneg = fneg float %71, !dbg !719
  %72 = load float, float* %s, align 4, !dbg !720, !tbaa !625, !noalias !590
  %73 = load i32, i32* %i29, align 4, !dbg !721, !tbaa !605, !noalias !590
  %arrayidx40 = getelementptr inbounds [8 x float], [8 x float]* %Aq, i32 0, i32 %73, !dbg !722
  %74 = load float, float* %arrayidx40, align 4, !dbg !722, !tbaa !625, !noalias !590
  %75 = load float, float* %c, align 4, !dbg !723, !tbaa !625, !noalias !590
  %mul41 = fmul float %74, %75, !dbg !724
  %76 = call addrspace(1) float @llvm.fmuladd.f32(float %fneg, float %72, float %mul41), !dbg !725
  call addrspace(1) void @_ZL9writeincrIL23aie_stream_resource_out0EfEvP13output_streamIT0_ENSt3__213type_identityIS2_E4typeEb(%struct.output_stream* %69, float %76, i1 zeroext false) #16, !dbg !726, !noalias !590
  br label %for.inc42, !dbg !727

for.inc42:                                        ; preds = %for.body33
  %77 = load i32, i32* %i29, align 4, !dbg !728, !tbaa !605, !noalias !590
  %inc43 = add nsw i32 %77, 1, !dbg !728
  store i32 %inc43, i32* %i29, align 4, !dbg !728, !tbaa !605, !noalias !590
  br label %for.cond30, !dbg !704, !llvm.loop !729

for.end44:                                        ; preds = %for.cond.cleanup32
  %78 = bitcast float* %s to i8*, !dbg !731
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %78) #15, !dbg !731
  %79 = bitcast float* %c to i8*, !dbg !731
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %79) #15, !dbg !731
  %80 = bitcast float* %t to i8*, !dbg !731
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %80) #15, !dbg !731
  %81 = bitcast float* %tau to i8*, !dbg !731
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %81) #15, !dbg !731
  %82 = bitcast float* %tmp2 to i8*, !dbg !731
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %82) #15, !dbg !731
  %83 = bitcast float* %tmp1 to i8*, !dbg !731
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %83) #15, !dbg !731
  %84 = bitcast [8 x float]* %Bq to i8*, !dbg !731
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 32, i8* %84) #15, !dbg !731
  %85 = bitcast [8 x float]* %Bp to i8*, !dbg !731
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 32, i8* %85) #15, !dbg !731
  %86 = bitcast [8 x float]* %Aq to i8*, !dbg !731
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 32, i8* %86) #15, !dbg !731
  %87 = bitcast [8 x float]* %Ap to i8*, !dbg !731
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 32, i8* %87) #15, !dbg !731
  %88 = bitcast i32* %VECSIZE to i8*, !dbg !731
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %88) #15, !dbg !731
  ret void, !dbg !731
}

; Function Attrs: inaccessiblememonly nounwind willreturn
declare i8* @llvm.noalias.decl.p0i8.p0p0s_struct.input_streams.i32(%struct.input_stream**, i32, metadata) addrspace(1) #4

; Function Attrs: inaccessiblememonly nounwind willreturn
declare i8* @llvm.noalias.decl.p0i8.p0p0s_struct.output_streams.i32(%struct.output_stream**, i32, metadata) addrspace(1) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) addrspace(1) #5

; Function Attrs: inlinehint mustprogress nounwind
define internal float @_ZL8readincrIL22aie_stream_resource_in0EfET0_P12input_streamIS1_E(%struct.input_stream* %ss) addrspace(1) #6 !dbg !732 {
entry:
  %ss.addr = alloca %struct.input_stream*, align 4
  %origVal = alloca i32, align 4
  %value = alloca float, align 4
  store %struct.input_stream* %ss, %struct.input_stream** %ss.addr, align 4, !tbaa !594
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.input_stream** %ss.addr, metadata !737, metadata !DIExpression()), !dbg !745
  store i32 undef, i32* %origVal, align 4, !dbg !746
  %0 = bitcast i32* %origVal to i8*, !dbg !746
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #15, !dbg !746
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %origVal, metadata !738, metadata !DIExpression()), !dbg !747
  %1 = load %struct.input_stream*, %struct.input_stream** %ss.addr, align 4, !dbg !748, !tbaa !594
  %call = call addrspace(1) i32 @_ZN12stream_utilsL17aie_stream_get_ssIffEEiP12input_streamIT0_E(%struct.input_stream* %1) #16, !dbg !749
  store i32 %call, i32* %origVal, align 4, !dbg !747, !tbaa !605
  store float undef, float* %value, align 4, !dbg !750
  %2 = bitcast float* %value to i8*, !dbg !750
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #15, !dbg !750
  call addrspace(1) void @llvm.dbg.declare(metadata float* %value, metadata !741, metadata !DIExpression()), !dbg !751
  %3 = load i32, i32* %origVal, align 4, !dbg !752, !tbaa !605
  %call1 = call addrspace(1) float @_Z8as_floati(i32 %3) #16, !dbg !760
  store float %call1, float* %value, align 4, !dbg !761, !tbaa !625
  %4 = load float, float* %value, align 4, !dbg !762, !tbaa !625
  %5 = bitcast float* %value to i8*, !dbg !763
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %5) #15, !dbg !763
  %6 = bitcast i32* %origVal to i8*, !dbg !763
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %6) #15, !dbg !763
  ret float %4, !dbg !764
}

; Function Attrs: argmemonly nounwind speculatable willreturn
declare %struct.input_stream* @llvm.noalias.p0s_struct.input_streams.p0i8.p0p0s_struct.input_streams.i32(%struct.input_stream*, i8*, %struct.input_stream**, i32, metadata) addrspace(1) #7

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) addrspace(1) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) addrspace(1) #3

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local float @_ZN3aie3absIfEENS_17operand_base_typeINS_6detail5utils10remove_allIT_E4typeEE4typeERKS5_(float* nonnull align 4 dereferenceable(4) %a) addrspace(1) #8 comdat !dbg !53 {
entry:
  %a.addr = alloca float*, align 4
  %_a = alloca float, align 4
  store float* %a, float** %a.addr, align 4, !tbaa !594
  call addrspace(1) void @llvm.dbg.declare(metadata float** %a.addr, metadata !70, metadata !DIExpression()), !dbg !765
  store float undef, float* %_a, align 4, !dbg !766
  %0 = bitcast float* %_a to i8*, !dbg !766
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #15, !dbg !766
  call addrspace(1) void @llvm.dbg.declare(metadata float* %_a, metadata !71, metadata !DIExpression()), !dbg !767
  %1 = load float*, float** %a.addr, align 4, !dbg !768, !tbaa !594
  %2 = load float, float* %1, align 4, !dbg !768, !tbaa !625
  store float %2, float* %_a, align 4, !dbg !767, !tbaa !625
  %3 = load float, float* %_a, align 4, !dbg !769, !tbaa !625
  %call = call addrspace(1) float @_ZNSt3__23absEf(float %3) #17, !dbg !771
  %4 = bitcast float* %_a to i8*, !dbg !772
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %4) #15, !dbg !772
  ret float %call, !dbg !773
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local float @_ZN3aie4sqrtIfEEDaT_(float %a) addrspace(1) #8 comdat !dbg !774 {
entry:
  %a.addr = alloca float, align 4
  store float %a, float* %a.addr, align 4, !tbaa !625
  call addrspace(1) void @llvm.dbg.declare(metadata float* %a.addr, metadata !776, metadata !DIExpression()), !dbg !777
  %call = call addrspace(1) float @_ZN3aie6detail15elementary_bitsILNS0_12ElementaryOpE0ELj32EffE3runERKfi(float* nonnull align 4 dereferenceable(4) %a.addr, i32 0) #16, !dbg !778
  ret float %call, !dbg !779
}

; Function Attrs: inlinehint mustprogress nounwind
define internal void @_ZL9writeincrIL23aie_stream_resource_out0EfEvP13output_streamIT0_ENSt3__213type_identityIS2_E4typeEb(%struct.output_stream* %str, float %value, i1 zeroext %tlast) addrspace(1) #6 !dbg !780 {
entry:
  %str.addr = alloca %struct.output_stream*, align 4
  %value.addr = alloca float, align 4
  %tlast.addr = alloca i8, align 1
  %value32 = alloca i32, align 4
  store %struct.output_stream* %str, %struct.output_stream** %str.addr, align 4, !tbaa !594
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.output_stream** %str.addr, metadata !791, metadata !DIExpression()), !dbg !797
  store float %value, float* %value.addr, align 4, !tbaa !625
  call addrspace(1) void @llvm.dbg.declare(metadata float* %value.addr, metadata !792, metadata !DIExpression()), !dbg !798
  %frombool = zext i1 %tlast to i8
  store i8 %frombool, i8* %tlast.addr, align 1, !tbaa !799
  call addrspace(1) void @llvm.dbg.declare(metadata i8* %tlast.addr, metadata !793, metadata !DIExpression()), !dbg !801
  store i32 undef, i32* %value32, align 4, !dbg !802
  %0 = bitcast i32* %value32 to i8*, !dbg !802
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #15, !dbg !802
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %value32, metadata !794, metadata !DIExpression()), !dbg !803
  %1 = load float, float* %value.addr, align 4, !dbg !804, !tbaa !625
  %call = call addrspace(1) i32 @_Z8as_int32f(float %1) #16, !dbg !812
  store i32 %call, i32* %value32, align 4, !dbg !813, !tbaa !605
  %2 = load %struct.output_stream*, %struct.output_stream** %str.addr, align 4, !dbg !814, !tbaa !594
  %3 = load i32, i32* %value32, align 4, !dbg !815, !tbaa !605
  %4 = load i8, i8* %tlast.addr, align 1, !dbg !816, !tbaa !799, !range !817
  %tobool = trunc i8 %4 to i1, !dbg !816
  call addrspace(1) void @_ZN12stream_utilsL17aie_stream_put_msIffEEvP13output_streamIT0_Eib(%struct.output_stream* %2, i32 %3, i1 zeroext %tobool) #16, !dbg !818
  %5 = bitcast i32* %value32 to i8*, !dbg !819
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %5) #15, !dbg !819
  ret void, !dbg !819
}

; Function Attrs: argmemonly nounwind speculatable willreturn
declare %struct.output_stream* @llvm.noalias.p0s_struct.output_streams.p0i8.p0p0s_struct.output_streams.i32(%struct.output_stream*, i8*, %struct.output_stream**, i32, metadata) addrspace(1) #7

; Function Attrs: inlinehint mustprogress nounwind
define linkonce_odr hidden float @_ZNSt3__23absEf(float %x) addrspace(1) #6 comdat !dbg !820 {
entry:
  %x.addr = alloca float, align 4
  store float %x, float* %x.addr, align 4, !tbaa !625
  call addrspace(1) void @llvm.dbg.declare(metadata float* %x.addr, metadata !822, metadata !DIExpression()), !dbg !823
  %0 = load float, float* %x.addr, align 4, !dbg !824, !tbaa !625
  %1 = call addrspace(1) float @llvm.fabs.f32(float %0), !dbg !825
  ret float %1, !dbg !826
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) addrspace(1) #3

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local float @_ZN3aie6detail15elementary_bitsILNS0_12ElementaryOpE0ELj32EffE3runERKfi(float* nonnull align 4 dereferenceable(4) %a, i32 %shift) addrspace(1) #8 comdat align 2 !dbg !827 {
entry:
  %a.addr = alloca float*, align 4
  %shift.addr = alloca i32, align 4
  store float* %a, float** %a.addr, align 4, !tbaa !594
  call addrspace(1) void @llvm.dbg.declare(metadata float** %a.addr, metadata !837, metadata !DIExpression()), !dbg !839
  store i32 %shift, i32* %shift.addr, align 4, !tbaa !605
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %shift.addr, metadata !838, metadata !DIExpression()), !dbg !840
  %0 = load float*, float** %a.addr, align 4, !dbg !841, !tbaa !594
  %1 = load i32, i32* %shift.addr, align 4, !dbg !842, !tbaa !605
  %call = call addrspace(1) float @_ZN3aie6detail20elementary_bits_implILNS0_12ElementaryOpE0ELj32EffE3runERKfi(float* nonnull align 4 dereferenceable(4) %0, i32 %1) #16, !dbg !843
  ret float %call, !dbg !844
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local float @_ZN3aie6detail20elementary_bits_implILNS0_12ElementaryOpE0ELj32EffE3runERKfi(float* nonnull align 4 dereferenceable(4) %a, i32 %shift) addrspace(1) #2 comdat align 2 !dbg !845 {
entry:
  %a.addr = alloca float*, align 4
  %shift.addr = alloca i32, align 4
  store float* %a, float** %a.addr, align 4, !tbaa !594
  call addrspace(1) void @llvm.dbg.declare(metadata float** %a.addr, metadata !850, metadata !DIExpression()), !dbg !852
  store i32 %shift, i32* %shift.addr, align 4, !tbaa !605
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %shift.addr, metadata !851, metadata !DIExpression()), !dbg !853
  %0 = load float*, float** %a.addr, align 4, !dbg !854, !tbaa !594
  %1 = load float, float* %0, align 4, !dbg !854, !tbaa !625
  %call = call addrspace(1) float @_Z6_sqrtff(float %1) #16, !dbg !857
  ret float %call, !dbg !858
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local float @_Z6_sqrtff(float %a0) addrspace(1) #8 comdat {
entry:
  %a0.addr = alloca float, align 4
  store float %a0, float* %a0.addr, align 4, !tbaa !625
  %0 = load float, float* %a0.addr, align 4, !tbaa !625
  %call = call x86_regcallcc addrspace(1) float @__regcall3__chessintr___ffloat__sqrtf___ffloat(float %0) #18
  ret float %call
}

; Function Attrs: nounwind readnone willreturn
declare dso_local x86_regcallcc float @__regcall3__chessintr___ffloat__sqrtf___ffloat(float) addrspace(1) #9

; Function Attrs: inlinehint mustprogress nounwind
define internal i32 @_ZN12stream_utilsL17aie_stream_get_ssIffEEiP12input_streamIT0_E(%struct.input_stream* %ss) addrspace(1) #6 !dbg !859 {
entry:
  %ss.addr = alloca %struct.input_stream*, align 4
  store %struct.input_stream* %ss, %struct.input_stream** %ss.addr, align 4, !tbaa !594
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.input_stream** %ss.addr, metadata !865, metadata !DIExpression()), !dbg !867
  %0 = load %struct.input_stream*, %struct.input_stream** %ss.addr, align 4, !dbg !868, !tbaa !594
  %1 = getelementptr inbounds %struct.input_stream, %struct.input_stream* %0, i32 0, i32 0, !dbg !871
  %channel = bitcast %union.anon* %1 to i32*, !dbg !871
  %2 = load i32, i32* %channel, align 4, !dbg !871, !tbaa !872
  %call = call addrspace(1) i32 @_Z6get_ssi(i32 %2) #19, !dbg !873
  ret i32 %call, !dbg !874
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local float @_Z8as_floati(i32 %a0) addrspace(1) #8 comdat {
entry:
  %a0.addr = alloca i32, align 4
  store i32 %a0, i32* %a0.addr, align 4, !tbaa !605
  %0 = load i32, i32* %a0.addr, align 4, !tbaa !605
  %call = call x86_regcallcc addrspace(1) float @__regcall3__chessintr___ffloat_as_float___sint(i32 signext %0) #18
  ret float %call
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local i32 @_Z6get_ssi(i32 %idx_ss) addrspace(1) #10 comdat {
entry:
  %retval = alloca i32, align 4
  %idx_ss.addr = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  %agg.tmp = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %custom_type.tmp = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %tmp13 = alloca i32, align 4
  %tmp24 = alloca i32, align 4
  %agg.tmp5 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %custom_type.tmp6 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %tmp19 = alloca i32, align 4
  %tmp210 = alloca i32, align 4
  %agg.tmp11 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %custom_type.tmp12 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  store i32 %idx_ss, i32* %idx_ss.addr, align 4, !tbaa !605
  %0 = load i32, i32* %idx_ss.addr, align 4, !tbaa !605
  %cmp = icmp eq i32 %0, 0
  %1 = call addrspace(1) i1 @llvm.chess_manifest(i1 %cmp)
  br i1 %1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 undef, i32* %tmp1, align 4
  %2 = bitcast i32* %tmp1 to i8*
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #15
  store i32 undef, i32* %tmp2, align 4
  %3 = bitcast i32* %tmp2 to i8*
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #15
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp, i32 0) #16
  %4 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp, align 4, !tbaa !875
  store %struct.ipd.custom_type.uint1_t.uint1_t %4, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp, align 4, !tbaa !875
  %5 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp, align 4, !tbaa !875
  %call = call addrspace(1) i32 @_ZN12me_primitive11stream_readIiEEN13chessEnableIfIXsr17chessIsCompatibleIN15chessRemoveQualIT_E4typeEiEE5valueEiE4typeEPU4AS23U16__protect_accessi7uint1_tRS3_(i32 addrspace(23)* addrspacecast (i32 addrspace(25)* @_ZN12me_primitive3ss0E to i32 addrspace(23)*), %struct.ipd.custom_type.uint1_t.uint1_t %5, i32* nonnull align 4 dereferenceable(4) %tmp1) #20
  store i32 %call, i32* %tmp2, align 4, !tbaa !605
  %6 = load i32, i32* %tmp1, align 4, !tbaa !605
  store volatile i32 %6, i32 addrspace(19)* @_ZN12me_primitive4sst0E, align 1, !tbaa !605, !chess_protect_access !877
  %7 = load i32, i32* %tmp2, align 4, !tbaa !605
  store i32 %7, i32* %retval, align 4
  %8 = bitcast i32* %tmp2 to i8*
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #15
  %9 = bitcast i32* %tmp1 to i8*
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #15
  br label %return

if.else:                                          ; preds = %entry
  %10 = load i32, i32* %idx_ss.addr, align 4, !tbaa !605
  %cmp1 = icmp eq i32 %10, 1
  %11 = call addrspace(1) i1 @llvm.chess_manifest(i1 %cmp1)
  br i1 %11, label %if.then2, label %if.else8

if.then2:                                         ; preds = %if.else
  store i32 undef, i32* %tmp13, align 4
  %12 = bitcast i32* %tmp13 to i8*
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #15
  store i32 undef, i32* %tmp24, align 4
  %13 = bitcast i32* %tmp24 to i8*
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #15
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp6, i32 0) #16
  %14 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp6, align 4, !tbaa !875
  store %struct.ipd.custom_type.uint1_t.uint1_t %14, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp5, align 4, !tbaa !875
  %15 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp5, align 4, !tbaa !875
  %call7 = call addrspace(1) i32 @_ZN12me_primitive11stream_readIiEEN13chessEnableIfIXsr17chessIsCompatibleIN15chessRemoveQualIT_E4typeEiEE5valueEiE4typeEPU4AS24U16__protect_accessi7uint1_tRS3_(i32 addrspace(24)* addrspacecast (i32 addrspace(26)* @_ZN12me_primitive3ss1E to i32 addrspace(24)*), %struct.ipd.custom_type.uint1_t.uint1_t %15, i32* nonnull align 4 dereferenceable(4) %tmp13) #20
  store i32 %call7, i32* %tmp24, align 4, !tbaa !605
  %16 = load i32, i32* %tmp13, align 4, !tbaa !605
  store volatile i32 %16, i32 addrspace(19)* @_ZN12me_primitive4sst1E, align 1, !tbaa !605, !chess_protect_access !877
  %17 = load i32, i32* %tmp24, align 4, !tbaa !605
  store i32 %17, i32* %retval, align 4
  %18 = bitcast i32* %tmp24 to i8*
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #15
  %19 = bitcast i32* %tmp13 to i8*
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #15
  br label %return

if.else8:                                         ; preds = %if.else
  store i32 undef, i32* %tmp19, align 4
  %20 = bitcast i32* %tmp19 to i8*
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #15
  store i32 undef, i32* %tmp210, align 4
  %21 = bitcast i32* %tmp210 to i8*
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %21) #15
  %22 = load i32, i32* %idx_ss.addr, align 4, !tbaa !605
  %conv = trunc i32 %22 to i1
  %23 = inttoptr i1 %conv to i32 addrspace(15)*
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp12, i32 0) #16
  %24 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp12, align 4, !tbaa !875
  store %struct.ipd.custom_type.uint1_t.uint1_t %24, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp11, align 4, !tbaa !875
  %25 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp11, align 4, !tbaa !875
  %call13 = call addrspace(1) i32 @_ZN12me_primitive11stream_readIiEEN13chessEnableIfIXsr17chessIsCompatibleIN15chessRemoveQualIT_E4typeEiEE5valueEiE4typeEPU4AS15U16__protect_accessi7uint1_tRS3_(i32 addrspace(15)* %23, %struct.ipd.custom_type.uint1_t.uint1_t %25, i32* nonnull align 4 dereferenceable(4) %tmp19) #20
  store i32 %call13, i32* %tmp210, align 4, !tbaa !605
  %26 = load i32, i32* %tmp19, align 4, !tbaa !605
  %27 = load i32, i32* %idx_ss.addr, align 4, !tbaa !605
  %conv14 = trunc i32 %27 to i1
  %28 = inttoptr i1 %conv14 to i32 addrspace(19)*
  store volatile i32 %26, i32 addrspace(19)* %28, align 1, !tbaa !605, !chess_protect_access !877
  %29 = load i32, i32* %tmp210, align 4, !tbaa !605
  store i32 %29, i32* %retval, align 4
  %30 = bitcast i32* %tmp210 to i8*
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #15
  %31 = bitcast i32* %tmp19 to i8*
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #15
  br label %return

return:                                           ; preds = %if.else8, %if.then2, %if.then
  %32 = load i32, i32* %retval, align 4
  ret i32 %32
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.chess_manifest(i1) addrspace(1) #11

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local i32 @_ZN12me_primitive11stream_readIiEEN13chessEnableIfIXsr17chessIsCompatibleIN15chessRemoveQualIT_E4typeEiEE5valueEiE4typeEPU4AS23U16__protect_accessi7uint1_tRS3_(i32 addrspace(23)* %a0, %struct.ipd.custom_type.uint1_t.uint1_t %a1.coerce, i32* nonnull align 4 dereferenceable(4) %a2) addrspace(1) #12 comdat {
entry:
  %a1 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %a0.addr = alloca i32 addrspace(23)*, align 4
  %a2.addr = alloca i32*, align 4
  %out = alloca %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint", align 1
  store %struct.ipd.custom_type.uint1_t.uint1_t %a1.coerce, %struct.ipd.custom_type.uint1_t.uint1_t* %a1, align 4
  store i32 addrspace(23)* %a0, i32 addrspace(23)** %a0.addr, align 4, !tbaa !594
  store i32* %a2, i32** %a2.addr, align 4, !tbaa !594
  store %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint" undef, %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint"* %out, align 1
  %0 = bitcast %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint"* %out to i8*
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #15
  %1 = load i32 addrspace(23)*, i32 addrspace(23)** %a0.addr, align 4, !tbaa !594
  %2 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a1, align 4, !tbaa !875
  %call = call x86_regcallcc addrspace(1) %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint" @__regcall3__chessintr___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint(i32 addrspace(23)* "ipd_load"="0,4" %1, %struct.ipd.custom_type.uint1_t.uint1_t %2) #21
  %3 = getelementptr inbounds %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint", %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint"* %out, i32 0, i32 0
  %4 = extractvalue %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint" %call, 0
  store i32 %4, i32* %3, align 1
  %5 = getelementptr inbounds %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint", %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint"* %out, i32 0, i32 1
  %6 = extractvalue %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint" %call, 1
  store i32 %6, i32* %5, align 1
  %o1 = getelementptr inbounds %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint", %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint"* %out, i32 0, i32 1
  %7 = load i32, i32* %o1, align 1, !tbaa !878
  %8 = load i32*, i32** %a2.addr, align 4, !tbaa !594
  store i32 %7, i32* %8, align 4, !tbaa !605
  %o0 = getelementptr inbounds %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint", %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint"* %out, i32 0, i32 0
  %9 = load i32, i32* %o0, align 1, !tbaa !880
  %10 = bitcast %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint"* %out to i8*
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #15
  ret i32 %9
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dso_local void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %this, i32 %a) unnamed_addr addrspace(1) #13 comdat align 2 {
entry:
  %this.addr = alloca %struct.ipd.custom_type.uint1_t.uint1_t*, align 4
  %a.addr = alloca i32, align 4
  store %struct.ipd.custom_type.uint1_t.uint1_t* %this, %struct.ipd.custom_type.uint1_t.uint1_t** %this.addr, align 4, !tbaa !594
  store i32 %a, i32* %a.addr, align 4, !tbaa !605
  %this1 = load %struct.ipd.custom_type.uint1_t.uint1_t*, %struct.ipd.custom_type.uint1_t.uint1_t** %this.addr, align 4
  %0 = bitcast %struct.ipd.custom_type.uint1_t.uint1_t* %this1 to i1*
  store i1 false, i1* %0, align 4
  %1 = load i32, i32* %a.addr, align 4, !tbaa !605
  %2 = call addrspace(1) %struct.ipd.custom_type.uint1_t.uint1_t @llvm.chess.init.customint.s_struct.ipd.custom_type.uint1_t.uint1_ts.i32.p1f_s_struct.ipd.custom_type.uint1_t.uint1_tsi32f(%struct.ipd.custom_type.uint1_t.uint1_t undef, i32 %1, i32 1, i32 32, i1 true, i32 0, %struct.ipd.custom_type.uint1_t.uint1_t (i32) addrspace(1)* @__regcall3__chessintr_uint1_t_uint1_t___sint)
  store %struct.ipd.custom_type.uint1_t.uint1_t %2, %struct.ipd.custom_type.uint1_t.uint1_t* %this1, align 4
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local i32 @_ZN12me_primitive11stream_readIiEEN13chessEnableIfIXsr17chessIsCompatibleIN15chessRemoveQualIT_E4typeEiEE5valueEiE4typeEPU4AS24U16__protect_accessi7uint1_tRS3_(i32 addrspace(24)* %a0, %struct.ipd.custom_type.uint1_t.uint1_t %a1.coerce, i32* nonnull align 4 dereferenceable(4) %a2) addrspace(1) #12 comdat {
entry:
  %a1 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %a0.addr = alloca i32 addrspace(24)*, align 4
  %a2.addr = alloca i32*, align 4
  %out = alloca %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint", align 1
  store %struct.ipd.custom_type.uint1_t.uint1_t %a1.coerce, %struct.ipd.custom_type.uint1_t.uint1_t* %a1, align 4
  store i32 addrspace(24)* %a0, i32 addrspace(24)** %a0.addr, align 4, !tbaa !594
  store i32* %a2, i32** %a2.addr, align 4, !tbaa !594
  store %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint" undef, %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint"* %out, align 1
  %0 = bitcast %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint"* %out to i8*
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #15
  %1 = load i32 addrspace(24)*, i32 addrspace(24)** %a0.addr, align 4, !tbaa !594
  %2 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a1, align 4, !tbaa !875
  %call = call x86_regcallcc addrspace(1) %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint" @__regcall3__chessintr___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint(i32 addrspace(24)* "ipd_load"="0,4" %1, %struct.ipd.custom_type.uint1_t.uint1_t %2) #21
  %3 = getelementptr inbounds %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint", %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint"* %out, i32 0, i32 0
  %4 = extractvalue %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint" %call, 0
  store i32 %4, i32* %3, align 1
  %5 = getelementptr inbounds %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint", %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint"* %out, i32 0, i32 1
  %6 = extractvalue %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint" %call, 1
  store i32 %6, i32* %5, align 1
  %o1 = getelementptr inbounds %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint", %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint"* %out, i32 0, i32 1
  %7 = load i32, i32* %o1, align 1, !tbaa !881
  %8 = load i32*, i32** %a2.addr, align 4, !tbaa !594
  store i32 %7, i32* %8, align 4, !tbaa !605
  %o0 = getelementptr inbounds %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint", %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint"* %out, i32 0, i32 0
  %9 = load i32, i32* %o0, align 1, !tbaa !883
  %10 = bitcast %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint"* %out to i8*
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #15
  ret i32 %9
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local i32 @_ZN12me_primitive11stream_readIiEEN13chessEnableIfIXsr17chessIsCompatibleIN15chessRemoveQualIT_E4typeEiEE5valueEiE4typeEPU4AS15U16__protect_accessi7uint1_tRS3_(i32 addrspace(15)* %a0, %struct.ipd.custom_type.uint1_t.uint1_t %a1.coerce, i32* nonnull align 4 dereferenceable(4) %a2) addrspace(1) #12 comdat {
entry:
  %a1 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %a0.addr = alloca i32 addrspace(15)*, align 4
  %a2.addr = alloca i32*, align 4
  %out = alloca %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint", align 1
  store %struct.ipd.custom_type.uint1_t.uint1_t %a1.coerce, %struct.ipd.custom_type.uint1_t.uint1_t* %a1, align 4
  store i32 addrspace(15)* %a0, i32 addrspace(15)** %a0.addr, align 4, !tbaa !594
  store i32* %a2, i32** %a2.addr, align 4, !tbaa !594
  store %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint" undef, %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint"* %out, align 1
  %0 = bitcast %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint"* %out to i8*
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #15
  %1 = load i32 addrspace(15)*, i32 addrspace(15)** %a0.addr, align 4, !tbaa !594
  %2 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a1, align 4, !tbaa !875
  %call = call x86_regcallcc addrspace(1) %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint" @__regcall3__chessintr___sint_stream_read___PSSMEM__sint_uint1_t___sint(i32 addrspace(15)* "ipd_load"="0,4" %1, %struct.ipd.custom_type.uint1_t.uint1_t %2) #21
  %3 = getelementptr inbounds %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint", %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint"* %out, i32 0, i32 0
  %4 = extractvalue %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint" %call, 0
  store i32 %4, i32* %3, align 1
  %5 = getelementptr inbounds %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint", %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint"* %out, i32 0, i32 1
  %6 = extractvalue %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint" %call, 1
  store i32 %6, i32* %5, align 1
  %o1 = getelementptr inbounds %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint", %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint"* %out, i32 0, i32 1
  %7 = load i32, i32* %o1, align 1, !tbaa !884
  %8 = load i32*, i32** %a2.addr, align 4, !tbaa !594
  store i32 %7, i32* %8, align 4, !tbaa !605
  %o0 = getelementptr inbounds %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint", %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint"* %out, i32 0, i32 0
  %9 = load i32, i32* %o0, align 1, !tbaa !886
  %10 = bitcast %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint"* %out to i8*
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #15
  ret i32 %9
}

; Function Attrs: argmemonly nounwind
declare dso_local x86_regcallcc %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint" @__regcall3__chessintr___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint(i32 addrspace(23)* "ipd_load"="0,4", %struct.ipd.custom_type.uint1_t.uint1_t) addrspace(1) #14

; Function Attrs: nounwind readnone willreturn
declare dso_local x86_regcallcc %struct.ipd.custom_type.uint1_t.uint1_t @__regcall3__chessintr_uint1_t_uint1_t___sint(i32 signext) addrspace(1) #9

; Function Attrs: nounwind readnone willreturn
declare %struct.ipd.custom_type.uint1_t.uint1_t @llvm.chess.init.customint.s_struct.ipd.custom_type.uint1_t.uint1_ts.i32.p1f_s_struct.ipd.custom_type.uint1_t.uint1_tsi32f(%struct.ipd.custom_type.uint1_t.uint1_t, i32, i32, i32, i1, i32, %struct.ipd.custom_type.uint1_t.uint1_t (i32) addrspace(1)*) addrspace(1) #11

; Function Attrs: argmemonly nounwind
declare dso_local x86_regcallcc %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint" @__regcall3__chessintr___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint(i32 addrspace(24)* "ipd_load"="0,4", %struct.ipd.custom_type.uint1_t.uint1_t) addrspace(1) #14

; Function Attrs: argmemonly nounwind
declare dso_local x86_regcallcc %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint" @__regcall3__chessintr___sint_stream_read___PSSMEM__sint_uint1_t___sint(i32 addrspace(15)* "ipd_load"="0,4", %struct.ipd.custom_type.uint1_t.uint1_t) addrspace(1) #14

; Function Attrs: nounwind readnone willreturn
declare dso_local x86_regcallcc float @__regcall3__chessintr___ffloat_as_float___sint(i32 signext) addrspace(1) #9

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local i32 @_Z8as_int32f(float %a0) addrspace(1) #8 comdat {
entry:
  %a0.addr = alloca float, align 4
  store float %a0, float* %a0.addr, align 4, !tbaa !625
  %0 = load float, float* %a0.addr, align 4, !tbaa !625
  %call = call x86_regcallcc signext addrspace(1) i32 @__regcall3__chessintr___sint_as_int32___ffloat(float %0) #18
  ret i32 %call
}

; Function Attrs: inlinehint mustprogress nounwind
define internal void @_ZN12stream_utilsL17aie_stream_put_msIffEEvP13output_streamIT0_Eib(%struct.output_stream* %ss, i32 %value, i1 zeroext %tlast) addrspace(1) #6 !dbg !887 {
entry:
  %ss.addr = alloca %struct.output_stream*, align 4
  %value.addr = alloca i32, align 4
  %tlast.addr = alloca i8, align 1
  store %struct.output_stream* %ss, %struct.output_stream** %ss.addr, align 4, !tbaa !594
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.output_stream** %ss.addr, metadata !891, metadata !DIExpression()), !dbg !894
  store i32 %value, i32* %value.addr, align 4, !tbaa !605
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %value.addr, metadata !892, metadata !DIExpression()), !dbg !895
  %frombool = zext i1 %tlast to i8
  store i8 %frombool, i8* %tlast.addr, align 1, !tbaa !799
  call addrspace(1) void @llvm.dbg.declare(metadata i8* %tlast.addr, metadata !893, metadata !DIExpression()), !dbg !896
  %0 = load %struct.output_stream*, %struct.output_stream** %ss.addr, align 4, !dbg !897, !tbaa !594
  %1 = getelementptr inbounds %struct.output_stream, %struct.output_stream* %0, i32 0, i32 0, !dbg !900
  %channel = bitcast %union.anon.0* %1 to i32*, !dbg !900
  %2 = load i32, i32* %channel, align 4, !dbg !900, !tbaa !872
  %3 = load i32, i32* %value.addr, align 4, !dbg !901, !tbaa !605
  %4 = load i8, i8* %tlast.addr, align 1, !dbg !902, !tbaa !799, !range !817
  %tobool = trunc i8 %4 to i1, !dbg !902
  %conv = zext i1 %tobool to i32, !dbg !902
  call addrspace(1) void @_Z6put_msiii(i32 %2, i32 %3, i32 %conv) #19, !dbg !903
  ret void, !dbg !904
}

; Function Attrs: nounwind readnone willreturn
declare dso_local x86_regcallcc signext i32 @__regcall3__chessintr___sint_as_int32___ffloat(float) addrspace(1) #9

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local void @_Z6put_msiii(i32 %idx_ms, i32 %val, i32 %tlast) addrspace(1) #10 comdat {
entry:
  %idx_ms.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
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
  store i32 %idx_ms, i32* %idx_ms.addr, align 4, !tbaa !605
  store i32 %val, i32* %val.addr, align 4, !tbaa !605
  store i32 %tlast, i32* %tlast.addr, align 4, !tbaa !605
  %0 = load i32, i32* %idx_ms.addr, align 4, !tbaa !605
  %cmp = icmp eq i32 %0, 0
  %1 = call addrspace(1) i1 @llvm.chess_manifest(i1 %cmp)
  br i1 %1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %val.addr, align 4, !tbaa !605
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp, i32 0) #16
  %3 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp, align 4, !tbaa !875
  store %struct.ipd.custom_type.uint1_t.uint1_t %3, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp, align 4, !tbaa !875
  %4 = load i32, i32* %tlast.addr, align 4, !tbaa !605
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp2, i32 %4) #16
  %5 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp2, align 4, !tbaa !875
  store %struct.ipd.custom_type.uint1_t.uint1_t %5, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp1, align 4, !tbaa !875
  %6 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp, align 4, !tbaa !875
  %7 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp1, align 4, !tbaa !875
  call addrspace(1) void @_ZN12me_primitive12stream_writeEPU4AS27U16__protect_accessii7uint1_tS2_(i32 addrspace(27)* addrspacecast (i32 addrspace(29)* @_ZN12me_primitive3ms0E to i32 addrspace(27)*), i32 %2, %struct.ipd.custom_type.uint1_t.uint1_t %6, %struct.ipd.custom_type.uint1_t.uint1_t %7) #20
  br label %if.end14

if.else:                                          ; preds = %entry
  %8 = load i32, i32* %idx_ms.addr, align 4, !tbaa !605
  %cmp3 = icmp eq i32 %8, 1
  %9 = call addrspace(1) i1 @llvm.chess_manifest(i1 %cmp3)
  br i1 %9, label %if.then4, label %if.else9

if.then4:                                         ; preds = %if.else
  %10 = load i32, i32* %val.addr, align 4, !tbaa !605
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp6, i32 0) #16
  %11 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp6, align 4, !tbaa !875
  store %struct.ipd.custom_type.uint1_t.uint1_t %11, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp5, align 4, !tbaa !875
  %12 = load i32, i32* %tlast.addr, align 4, !tbaa !605
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp8, i32 %12) #16
  %13 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp8, align 4, !tbaa !875
  store %struct.ipd.custom_type.uint1_t.uint1_t %13, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp7, align 4, !tbaa !875
  %14 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp5, align 4, !tbaa !875
  %15 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp7, align 4, !tbaa !875
  call addrspace(1) void @_ZN12me_primitive12stream_writeEPU4AS28U16__protect_accessii7uint1_tS2_(i32 addrspace(28)* addrspacecast (i32 addrspace(30)* @_ZN12me_primitive3ms1E to i32 addrspace(28)*), i32 %10, %struct.ipd.custom_type.uint1_t.uint1_t %14, %struct.ipd.custom_type.uint1_t.uint1_t %15) #20
  br label %if.end

if.else9:                                         ; preds = %if.else
  %16 = load i32, i32* %idx_ms.addr, align 4, !tbaa !605
  %conv = trunc i32 %16 to i1
  %17 = inttoptr i1 %conv to i32 addrspace(16)*
  %18 = load i32, i32* %val.addr, align 4, !tbaa !605
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp11, i32 0) #16
  %19 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp11, align 4, !tbaa !875
  store %struct.ipd.custom_type.uint1_t.uint1_t %19, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp10, align 4, !tbaa !875
  %20 = load i32, i32* %tlast.addr, align 4, !tbaa !605
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp13, i32 %20) #16
  %21 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp13, align 4, !tbaa !875
  store %struct.ipd.custom_type.uint1_t.uint1_t %21, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp12, align 4, !tbaa !875
  %22 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp10, align 4, !tbaa !875
  %23 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp12, align 4, !tbaa !875
  call addrspace(1) void @_ZN12me_primitive12stream_writeEPU4AS16U16__protect_accessii7uint1_tS2_(i32 addrspace(16)* %17, i32 %18, %struct.ipd.custom_type.uint1_t.uint1_t %22, %struct.ipd.custom_type.uint1_t.uint1_t %23) #20
  br label %if.end

if.end:                                           ; preds = %if.else9, %if.then4
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local void @_ZN12me_primitive12stream_writeEPU4AS27U16__protect_accessii7uint1_tS2_(i32 addrspace(27)* %a0, i32 %a1, %struct.ipd.custom_type.uint1_t.uint1_t %a2.coerce, %struct.ipd.custom_type.uint1_t.uint1_t %a3.coerce) addrspace(1) #12 comdat {
entry:
  %a2 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %a3 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %a0.addr = alloca i32 addrspace(27)*, align 4
  %a1.addr = alloca i32, align 4
  store %struct.ipd.custom_type.uint1_t.uint1_t %a2.coerce, %struct.ipd.custom_type.uint1_t.uint1_t* %a2, align 4
  store %struct.ipd.custom_type.uint1_t.uint1_t %a3.coerce, %struct.ipd.custom_type.uint1_t.uint1_t* %a3, align 4
  store i32 addrspace(27)* %a0, i32 addrspace(27)** %a0.addr, align 4, !tbaa !594
  store i32 %a1, i32* %a1.addr, align 4, !tbaa !605
  %0 = load i32 addrspace(27)*, i32 addrspace(27)** %a0.addr, align 4, !tbaa !594
  %1 = load i32, i32* %a1.addr, align 4, !tbaa !605
  %2 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a2, align 4, !tbaa !875
  %3 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a3, align 4, !tbaa !875
  call x86_regcallcc addrspace(1) void @__regcall3__chessintr_void_stream_write___PMS_rsrc1__sint___sint_uint1_t_uint1_t(i32 addrspace(27)* "ipd_store"="0,4" %0, i32 signext %1, %struct.ipd.custom_type.uint1_t.uint1_t %2, %struct.ipd.custom_type.uint1_t.uint1_t %3) #21
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local void @_ZN12me_primitive12stream_writeEPU4AS28U16__protect_accessii7uint1_tS2_(i32 addrspace(28)* %a0, i32 %a1, %struct.ipd.custom_type.uint1_t.uint1_t %a2.coerce, %struct.ipd.custom_type.uint1_t.uint1_t %a3.coerce) addrspace(1) #12 comdat {
entry:
  %a2 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %a3 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %a0.addr = alloca i32 addrspace(28)*, align 4
  %a1.addr = alloca i32, align 4
  store %struct.ipd.custom_type.uint1_t.uint1_t %a2.coerce, %struct.ipd.custom_type.uint1_t.uint1_t* %a2, align 4
  store %struct.ipd.custom_type.uint1_t.uint1_t %a3.coerce, %struct.ipd.custom_type.uint1_t.uint1_t* %a3, align 4
  store i32 addrspace(28)* %a0, i32 addrspace(28)** %a0.addr, align 4, !tbaa !594
  store i32 %a1, i32* %a1.addr, align 4, !tbaa !605
  %0 = load i32 addrspace(28)*, i32 addrspace(28)** %a0.addr, align 4, !tbaa !594
  %1 = load i32, i32* %a1.addr, align 4, !tbaa !605
  %2 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a2, align 4, !tbaa !875
  %3 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a3, align 4, !tbaa !875
  call x86_regcallcc addrspace(1) void @__regcall3__chessintr_void_stream_write___PMS_rsrc2__sint___sint_uint1_t_uint1_t(i32 addrspace(28)* "ipd_store"="0,4" %0, i32 signext %1, %struct.ipd.custom_type.uint1_t.uint1_t %2, %struct.ipd.custom_type.uint1_t.uint1_t %3) #21
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local void @_ZN12me_primitive12stream_writeEPU4AS16U16__protect_accessii7uint1_tS2_(i32 addrspace(16)* %a0, i32 %a1, %struct.ipd.custom_type.uint1_t.uint1_t %a2.coerce, %struct.ipd.custom_type.uint1_t.uint1_t %a3.coerce) addrspace(1) #12 comdat {
entry:
  %a2 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %a3 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %a0.addr = alloca i32 addrspace(16)*, align 4
  %a1.addr = alloca i32, align 4
  store %struct.ipd.custom_type.uint1_t.uint1_t %a2.coerce, %struct.ipd.custom_type.uint1_t.uint1_t* %a2, align 4
  store %struct.ipd.custom_type.uint1_t.uint1_t %a3.coerce, %struct.ipd.custom_type.uint1_t.uint1_t* %a3, align 4
  store i32 addrspace(16)* %a0, i32 addrspace(16)** %a0.addr, align 4, !tbaa !594
  store i32 %a1, i32* %a1.addr, align 4, !tbaa !605
  %0 = load i32 addrspace(16)*, i32 addrspace(16)** %a0.addr, align 4, !tbaa !594
  %1 = load i32, i32* %a1.addr, align 4, !tbaa !605
  %2 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a2, align 4, !tbaa !875
  %3 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a3, align 4, !tbaa !875
  call x86_regcallcc addrspace(1) void @__regcall3__chessintr_void_stream_write___PMSMEM__sint___sint_uint1_t_uint1_t(i32 addrspace(16)* "ipd_store"="0,4" %0, i32 signext %1, %struct.ipd.custom_type.uint1_t.uint1_t %2, %struct.ipd.custom_type.uint1_t.uint1_t %3) #21
  ret void
}

; Function Attrs: argmemonly nounwind
declare dso_local x86_regcallcc void @__regcall3__chessintr_void_stream_write___PMS_rsrc1__sint___sint_uint1_t_uint1_t(i32 addrspace(27)* "ipd_store"="0,4", i32 signext, %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t) addrspace(1) #14

; Function Attrs: argmemonly nounwind
declare dso_local x86_regcallcc void @__regcall3__chessintr_void_stream_write___PMS_rsrc2__sint___sint_uint1_t_uint1_t(i32 addrspace(28)* "ipd_store"="0,4", i32 signext, %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t) addrspace(1) #14

; Function Attrs: argmemonly nounwind
declare dso_local x86_regcallcc void @__regcall3__chessintr_void_stream_write___PMSMEM__sint___sint_uint1_t_uint1_t(i32 addrspace(16)* "ipd_store"="0,4", i32 signext, %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t) addrspace(1) #14

attributes #0 = { "chess_storage:addr"="0" }
attributes #1 = { "chess_storage:addr"="1" }
attributes #2 = { mustprogress nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-memcpy" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inaccessiblememonly nounwind willreturn }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { inlinehint mustprogress nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-memcpy" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #7 = { argmemonly nounwind speculatable willreturn }
attributes #8 = { alwaysinline mustprogress nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-memcpy" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #9 = { nounwind readnone willreturn "frame-pointer"="all" "no-builtin-memcpy" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #10 = { alwaysinline mustprogress nounwind "chessFP:property"="do_generate_llvm" "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-memcpy" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #11 = { nounwind readnone willreturn }
attributes #12 = { alwaysinline mustprogress nounwind "chessFP:llvm_local_block_replace_operand_with_variable" "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-memcpy" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #13 = { alwaysinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-memcpy" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #14 = { argmemonly nounwind "frame-pointer"="all" "no-builtin-memcpy" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #15 = { nounwind }
attributes #16 = { "no-builtin-memcpy" }
attributes #17 = { nounwind "no-builtin-memcpy" }
attributes #18 = { nounwind readnone willreturn "no-builtin-memcpy" }
attributes #19 = { "chessFP:property"="do_generate_llvm" "no-builtin-memcpy" }
attributes #20 = { memop_protect_access "chessFP:llvm_local_block_replace_operand_with_variable" "no-builtin-memcpy" }
attributes #21 = { argmemonly nounwind "no-builtin-memcpy" }

!llvm.dbg.cu = !{!0}
!llvm.linker.options = !{}
!llvm.module.flags = !{!521, !522, !523, !524}
!llvm.ident = !{!525}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !1, producer: "clang version 15.0.5 (/u/sgasip/ipd/repositories/llvm_ipd 3a25925e0239306412dac02da5e4c8c51ae722e8)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !50, imports: !91, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/lxy/Projects/SVD/Jacobi_AIE_Scalar/Work/aie/ir/i0_wrap_Orthogonalize.cpp", directory: "/home/lxy/Projects/SVD/Jacobi_AIE_Scalar/Work/aie/ir")
!2 = !{!3, !11, !19, !29, !43, !49}
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
!29 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "ElementaryOp", scope: !5, file: !30, line: 58, baseType: !7, size: 32, flags: DIFlagEnumClass, elements: !31, identifier: "_ZTSN3aie6detail12ElementaryOpE")
!30 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/aie_api/detail/elementary.hpp", directory: "/home/lxy")
!31 = !{!32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42}
!32 = !DIEnumerator(name: "Sqrt", value: 0)
!33 = !DIEnumerator(name: "Inv", value: 1)
!34 = !DIEnumerator(name: "InvSqrt", value: 2)
!35 = !DIEnumerator(name: "SinCos", value: 3)
!36 = !DIEnumerator(name: "SinCosComplex", value: 4)
!37 = !DIEnumerator(name: "Sin", value: 5)
!38 = !DIEnumerator(name: "Cos", value: 6)
!39 = !DIEnumerator(name: "Fix2Float", value: 7)
!40 = !DIEnumerator(name: "Float2Fix", value: 8)
!41 = !DIEnumerator(name: "Tanh", value: 9)
!42 = !DIEnumerator(name: "Exp2", value: 10)
!43 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "aie_stream_resource_in", file: !44, line: 396, baseType: !7, size: 32, flags: DIFlagEnumClass, elements: !45, identifier: "_ZTS22aie_stream_resource_in")
!44 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/me_defines.h", directory: "/home/lxy")
!45 = !{!46, !47, !48}
!46 = !DIEnumerator(name: "none", value: 0)
!47 = !DIEnumerator(name: "a", value: 1)
!48 = !DIEnumerator(name: "b", value: 2)
!49 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "aie_stream_resource_out", file: !44, line: 402, baseType: !7, size: 32, flags: DIFlagEnumClass, elements: !45, identifier: "_ZTS23aie_stream_resource_out")
!50 = !{!51, !75, !79, !81, !83, !85, !87, !89}
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "base_t", scope: !53, file: !52, line: 3397, baseType: !56)
!52 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/aie_api/adf/../aie.hpp", directory: "/home/lxy")
!53 = distinct !DISubprogram(name: "abs<float>", linkageName: "_ZN3aie3absIfEENS_17operand_base_typeINS_6detail5utils10remove_allIT_E4typeEE4typeERKS5_", scope: !6, file: !52, line: 3395, type: !54, scopeLine: 3396, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !73, retainedNodes: !69)
!54 = !DISubroutineType(types: !55)
!55 = !{!56, !67}
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "operand_base_type_t<float>", scope: !6, file: !52, line: 152, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !58, file: !52, line: 124, baseType: !63)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "operand_base_type<float>", scope: !6, file: !52, line: 122, size: 8, flags: DIFlagTypePassByValue, elements: !59, templateParams: !60, identifier: "_ZTSN3aie17operand_base_typeIfEE")
!59 = !{}
!60 = !{!61}
!61 = !DITemplateTypeParameter(name: "T", type: !62)
!62 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "aie_dm_resource_remove_t<float>", file: !64, line: 262, baseType: !65)
!64 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/aie_core.h", directory: "/home/lxy")
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !66, file: !64, line: 239, baseType: !62)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aie_dm_resource_remove<float>", file: !64, line: 237, size: 8, flags: DIFlagTypePassByValue, elements: !59, templateParams: !60, identifier: "_ZTS22aie_dm_resource_removeIfE")
!67 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !68, size: 32)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!69 = !{!70, !71}
!70 = !DILocalVariable(name: "a", arg: 1, scope: !53, file: !52, line: 3395, type: !67)
!71 = !DILocalVariable(name: "_a", scope: !53, file: !52, line: 3398, type: !72)
!72 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!73 = !{!74}
!74 = !DITemplateTypeParameter(name: "E", type: !62)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "ss0_idx_t", scope: !77, file: !76, line: 559, baseType: !78)
!76 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/isg/me_chess_llvm.h", directory: "/home/lxy")
!77 = !DINamespace(name: "me_primitive", scope: null)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 32, dwarfAddressSpace: 70)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "ss1_idx_t", scope: !77, file: !76, line: 607, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 32, dwarfAddressSpace: 71)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "ss_idx_t", scope: !77, file: !76, line: 655, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 32, dwarfAddressSpace: 67)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "ss_tlast_idx_t", scope: !77, file: !76, line: 679, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 32, dwarfAddressSpace: 69)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "ms0_idx_t", scope: !77, file: !76, line: 571, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 32, dwarfAddressSpace: 63)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "ms1_idx_t", scope: !77, file: !76, line: 619, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 32, dwarfAddressSpace: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "ms_idx_t", scope: !77, file: !76, line: 667, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 32, dwarfAddressSpace: 61)
!91 = !{!92, !98, !100, !104, !109, !112, !114, !117, !120, !123, !125, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !180, !184, !194, !198, !200, !202, !206, !210, !214, !216, !220, !225, !229, !233, !237, !239, !241, !243, !245, !247, !251, !257, !259, !261, !265, !267, !269, !271, !273, !275, !280, !285, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !312, !317, !323, !328, !332, !336, !341, !345, !349, !353, !357, !362, !366, !368, !375, !380, !381, !386, !388, !392, !394, !398, !402, !406, !414, !416, !420, !424, !428, !430, !434, !438, !442, !444, !446, !448, !453, !458, !462, !466, !470, !472, !474, !476, !480, !484, !488, !490, !492, !496, !498, !502, !506, !508, !512, !514, !516, !518, !519, !520}
!92 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !95, file: !97, line: 57)
!93 = !DINamespace(name: "__2", scope: !94, exportSymbols: true)
!94 = !DINamespace(name: "std", scope: null)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !96, line: 35, baseType: !7)
!96 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/tps/lnx64/target/bin/LNa64bin/../../chessdir/clangdir/15.0.5/include/stddef.h", directory: "/home/lxy")
!97 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime_cxx/libs/libcxx-9.0.0/include-lite/../include/cstddef", directory: "/home/lxy")
!98 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !99, file: !97, line: 58)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !96, line: 46, baseType: !13)
!100 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !101, file: !97, line: 63)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "max_align_t", file: !102, line: 24, baseType: !103)
!102 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/tps/lnx64/target/bin/LNa64bin/../../chessdir/clangdir/15.0.5/include/__stddef_max_align_t.h", directory: "/home/lxy")
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !102, line: 19, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS11max_align_t")
!104 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !105, file: !108, line: 161)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !106, line: 23, baseType: !107)
!106 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime/include/stdint.h", directory: "/home/lxy")
!107 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!108 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime_cxx/libs/libcxx-9.0.0/include-lite/../include/cstdint", directory: "/home/lxy")
!109 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !110, file: !108, line: 163)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !106, line: 24, baseType: !111)
!111 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!112 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !113, file: !108, line: 164)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !106, line: 25, baseType: !7)
!114 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !115, file: !108, line: 166)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !106, line: 26, baseType: !116)
!116 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!117 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !118, file: !108, line: 170)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !106, line: 28, baseType: !119)
!119 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!120 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !121, file: !108, line: 172)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !106, line: 29, baseType: !122)
!122 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!123 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !124, file: !108, line: 173)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !106, line: 30, baseType: !13)
!125 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !126, file: !108, line: 175)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !106, line: 31, baseType: !127)
!127 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!128 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !129, file: !108, line: 178)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !106, line: 34, baseType: !107)
!130 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !131, file: !108, line: 179)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !106, line: 35, baseType: !111)
!132 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !133, file: !108, line: 180)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !106, line: 36, baseType: !7)
!134 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !135, file: !108, line: 182)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !106, line: 37, baseType: !116)
!136 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !137, file: !108, line: 185)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !106, line: 39, baseType: !119)
!138 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !139, file: !108, line: 186)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !106, line: 40, baseType: !122)
!140 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !141, file: !108, line: 187)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !106, line: 41, baseType: !13)
!142 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !143, file: !108, line: 189)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !106, line: 42, baseType: !127)
!144 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !145, file: !108, line: 192)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !106, line: 45, baseType: !7)
!146 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !147, file: !108, line: 193)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !106, line: 46, baseType: !7)
!148 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !149, file: !108, line: 194)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !106, line: 47, baseType: !7)
!150 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !151, file: !108, line: 196)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !106, line: 48, baseType: !116)
!152 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !153, file: !108, line: 199)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !106, line: 50, baseType: !13)
!154 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !155, file: !108, line: 200)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !106, line: 51, baseType: !13)
!156 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !157, file: !108, line: 201)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !106, line: 52, baseType: !13)
!158 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !159, file: !108, line: 203)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !106, line: 53, baseType: !127)
!160 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !161, file: !108, line: 206)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !106, line: 56, baseType: !7)
!162 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !163, file: !108, line: 207)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !106, line: 57, baseType: !13)
!164 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !165, file: !108, line: 209)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !106, line: 60, baseType: !7)
!166 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !167, file: !108, line: 210)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !106, line: 61, baseType: !13)
!168 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !99, file: !169, line: 76)
!169 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime_cxx/libs/libcxx-9.0.0/include-lite/../include/cstring", directory: "/home/lxy")
!170 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !171, file: !169, line: 77)
!171 = !DISubprogram(name: "memcpy", scope: !172, file: !172, line: 27, type: !173, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!172 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime/include/string.h", directory: "/home/lxy")
!173 = !DISubroutineType(types: !174)
!174 = !{!175, !176, !177, !99}
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!176 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !175)
!177 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !178)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 32)
!179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!180 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !181, file: !169, line: 78)
!181 = !DISubprogram(name: "memmove", scope: !172, file: !172, line: 28, type: !182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!182 = !DISubroutineType(types: !183)
!183 = !{!175, !175, !178, !99}
!184 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !185, file: !169, line: 79)
!185 = !DISubprogram(name: "strcpy", scope: !172, file: !172, line: 29, type: !186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!186 = !DISubroutineType(types: !187)
!187 = !{!188, !190, !191}
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 32)
!189 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!190 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !188)
!191 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !192)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 32)
!193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !189)
!194 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !195, file: !169, line: 80)
!195 = !DISubprogram(name: "strncpy", scope: !172, file: !172, line: 30, type: !196, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!196 = !DISubroutineType(types: !197)
!197 = !{!188, !190, !191, !99}
!198 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !199, file: !169, line: 81)
!199 = !DISubprogram(name: "strcat", scope: !172, file: !172, line: 33, type: !186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!200 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !201, file: !169, line: 82)
!201 = !DISubprogram(name: "strncat", scope: !172, file: !172, line: 34, type: !196, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!202 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !203, file: !169, line: 83)
!203 = !DISubprogram(name: "memcmp", scope: !172, file: !172, line: 37, type: !204, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!204 = !DISubroutineType(types: !205)
!205 = !{!7, !178, !178, !99}
!206 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !207, file: !169, line: 84)
!207 = !DISubprogram(name: "strcmp", scope: !172, file: !172, line: 38, type: !208, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!208 = !DISubroutineType(types: !209)
!209 = !{!7, !192, !192}
!210 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !211, file: !169, line: 85)
!211 = !DISubprogram(name: "strncmp", scope: !172, file: !172, line: 40, type: !212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!212 = !DISubroutineType(types: !213)
!213 = !{!7, !192, !192, !99}
!214 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !215, file: !169, line: 86)
!215 = !DISubprogram(name: "strcoll", scope: !172, file: !172, line: 39, type: !208, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!216 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !217, file: !169, line: 87)
!217 = !DISubprogram(name: "strxfrm", scope: !172, file: !172, line: 41, type: !218, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!218 = !DISubroutineType(types: !219)
!219 = !{!99, !190, !191, !99}
!220 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !221, file: !169, line: 88)
!221 = !DISubprogram(name: "memchr", linkageName: "_Z6memchrUa9enable_ifILb1EEPvij", scope: !222, file: !222, line: 106, type: !223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!222 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime_cxx/libs/libcxx-9.0.0/include-lite/../include/string.h", directory: "/home/lxy")
!223 = !DISubroutineType(types: !224)
!224 = !{!175, !175, !7, !99}
!225 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !226, file: !169, line: 89)
!226 = !DISubprogram(name: "strchr", linkageName: "_Z6strchrUa9enable_ifILb1EEPci", scope: !222, file: !222, line: 85, type: !227, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!227 = !DISubroutineType(types: !228)
!228 = !{!188, !188, !7}
!229 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !230, file: !169, line: 90)
!230 = !DISubprogram(name: "strcspn", scope: !172, file: !172, line: 46, type: !231, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!231 = !DISubroutineType(types: !232)
!232 = !{!99, !192, !192}
!233 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !234, file: !169, line: 91)
!234 = !DISubprogram(name: "strpbrk", linkageName: "_Z7strpbrkUa9enable_ifILb1EEPcPKc", scope: !222, file: !222, line: 92, type: !235, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!235 = !DISubroutineType(types: !236)
!236 = !{!188, !188, !192}
!237 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !238, file: !169, line: 92)
!238 = !DISubprogram(name: "strrchr", linkageName: "_Z7strrchrUa9enable_ifILb1EEPci", scope: !222, file: !222, line: 99, type: !227, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!239 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !240, file: !169, line: 93)
!240 = !DISubprogram(name: "strspn", scope: !172, file: !172, line: 49, type: !231, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !242, file: !169, line: 94)
!242 = !DISubprogram(name: "strstr", linkageName: "_Z6strstrUa9enable_ifILb1EEPcPKc", scope: !222, file: !222, line: 113, type: !235, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!243 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !244, file: !169, line: 96)
!244 = !DISubprogram(name: "strtok", scope: !172, file: !172, line: 51, type: !186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !246, file: !169, line: 98)
!246 = !DISubprogram(name: "memset", scope: !172, file: !172, line: 54, type: !223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!247 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !248, file: !169, line: 102)
!248 = !DISubprogram(name: "strlen", scope: !172, file: !172, line: 56, type: !249, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!249 = !DISubroutineType(types: !250)
!250 = !{!99, !192}
!251 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !252, file: !256, line: 351)
!252 = !DISubprogram(name: "acosf", scope: !253, file: !253, line: 91, type: !254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!253 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime/include/math.h", directory: "/home/lxy")
!254 = !DISubroutineType(types: !255)
!255 = !{!62, !62}
!256 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime_cxx/libs/libcxx-9.0.0/include-lite/../include/cmath", directory: "/home/lxy")
!257 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !258, file: !256, line: 353)
!258 = !DISubprogram(name: "asinf", scope: !253, file: !253, line: 93, type: !254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!259 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !260, file: !256, line: 355)
!260 = !DISubprogram(name: "atanf", scope: !253, file: !253, line: 99, type: !254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!261 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !262, file: !256, line: 357)
!262 = !DISubprogram(name: "atan2f", scope: !253, file: !253, line: 96, type: !263, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!263 = !DISubroutineType(types: !264)
!264 = !{!62, !62, !62}
!265 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !266, file: !256, line: 359)
!266 = !DISubprogram(name: "ceilf", scope: !253, file: !253, line: 67, type: !254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!267 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !268, file: !256, line: 361)
!268 = !DISubprogram(name: "cosf", scope: !253, file: !253, line: 75, type: !254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!269 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !270, file: !256, line: 368)
!270 = !DISubprogram(name: "expf", scope: !253, file: !253, line: 79, type: !254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!271 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !272, file: !256, line: 371)
!272 = !DISubprogram(name: "fabsf", scope: !253, file: !253, line: 30, type: !254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!273 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !274, file: !256, line: 373)
!274 = !DISubprogram(name: "floorf", scope: !253, file: !253, line: 69, type: !254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!275 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !276, file: !256, line: 375)
!276 = !DISubprogram(name: "fmod", scope: !253, file: !253, line: 90, type: !277, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!277 = !DISubroutineType(types: !278)
!278 = !{!279, !279, !279}
!279 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!280 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !281, file: !256, line: 381)
!281 = !DISubprogram(name: "frexpf", scope: !253, file: !253, line: 106, type: !282, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!282 = !DISubroutineType(types: !283)
!283 = !{!62, !62, !284}
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 32)
!285 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !286, file: !256, line: 383)
!286 = !DISubprogram(name: "ldexpf", scope: !253, file: !253, line: 65, type: !287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!287 = !DISubroutineType(types: !288)
!288 = !{!62, !62, !7}
!289 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !290, file: !256, line: 386)
!290 = !DISubprogram(name: "logf", scope: !253, file: !253, line: 81, type: !254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!291 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !292, file: !256, line: 389)
!292 = !DISubprogram(name: "log10f", scope: !253, file: !253, line: 83, type: !254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!293 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !294, file: !256, line: 396)
!294 = !DISubprogram(name: "powf", scope: !253, file: !253, line: 88, type: !263, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!295 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !296, file: !256, line: 399)
!296 = !DISubprogram(name: "sinf", scope: !253, file: !253, line: 76, type: !254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!297 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !298, file: !256, line: 406)
!298 = !DISubprogram(name: "sqrtf", scope: !253, file: !253, line: 86, type: !254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!299 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !300, file: !256, line: 427)
!300 = !DISubprogram(name: "copysignf", scope: !253, file: !253, line: 35, type: !263, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!301 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !302, file: !256, line: 484)
!302 = !DISubprogram(name: "roundf", scope: !253, file: !253, line: 71, type: !254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!303 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !304, file: !256, line: 494)
!304 = !DISubprogram(name: "truncf", scope: !253, file: !253, line: 102, type: !254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!305 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !99, file: !306, line: 107)
!306 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime_cxx/libs/libcxx-9.0.0/include-lite/../include/cstdlib", directory: "/home/lxy")
!307 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !308, file: !306, line: 118)
!308 = !DISubprogram(name: "atoi", scope: !309, file: !309, line: 37, type: !310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!309 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime/include/stdlib.h", directory: "/home/lxy")
!310 = !DISubroutineType(types: !311)
!311 = !{!7, !192}
!312 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !313, file: !306, line: 119)
!313 = !DISubprogram(name: "atol", scope: !309, file: !309, line: 42, type: !314, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!314 = !DISubroutineType(types: !315)
!315 = !{!316, !192}
!316 = !DIBasicType(name: "long", size: 32, encoding: DW_ATE_signed)
!317 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !318, file: !306, line: 128)
!318 = !DISubprogram(name: "strtol", scope: !309, file: !309, line: 29, type: !319, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!319 = !DISubroutineType(types: !320)
!320 = !{!316, !191, !321, !7}
!321 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !322)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 32)
!323 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !324, file: !306, line: 134)
!324 = !DISubprogram(name: "strtoul", scope: !309, file: !309, line: 33, type: !325, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!325 = !DISubroutineType(types: !326)
!326 = !{!327, !191, !321, !7}
!327 = !DIBasicType(name: "unsigned long", size: 32, encoding: DW_ATE_unsigned)
!328 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !329, file: !306, line: 140)
!329 = !DISubprogram(name: "rand", scope: !309, file: !309, line: 51, type: !330, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!330 = !DISubroutineType(types: !331)
!331 = !{!7}
!332 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !333, file: !306, line: 141)
!333 = !DISubprogram(name: "srand", scope: !309, file: !309, line: 52, type: !334, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!334 = !DISubroutineType(types: !335)
!335 = !{null, !13}
!336 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !337, file: !306, line: 142)
!337 = !DISubprogram(name: "calloc", scope: !338, file: !338, line: 32, type: !339, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!338 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime/include/malloc.h", directory: "/home/lxy")
!339 = !DISubroutineType(types: !340)
!340 = !{!175, !99, !99}
!341 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !342, file: !306, line: 143)
!342 = !DISubprogram(name: "free", scope: !338, file: !338, line: 30, type: !343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!343 = !DISubroutineType(types: !344)
!344 = !{null, !175}
!345 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !346, file: !306, line: 144)
!346 = !DISubprogram(name: "malloc", scope: !338, file: !338, line: 28, type: !347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!347 = !DISubroutineType(types: !348)
!348 = !{!175, !99}
!349 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !350, file: !306, line: 145)
!350 = !DISubprogram(name: "realloc", scope: !338, file: !338, line: 34, type: !351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!351 = !DISubroutineType(types: !352)
!352 = !{!175, !175, !99}
!353 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !354, file: !306, line: 146)
!354 = !DISubprogram(name: "abort", scope: !309, file: !309, line: 83, type: !355, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!355 = !DISubroutineType(types: !356)
!356 = !{null}
!357 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !358, file: !306, line: 147)
!358 = !DISubprogram(name: "atexit", scope: !309, file: !309, line: 90, type: !359, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!359 = !DISubroutineType(types: !360)
!360 = !{!7, !361}
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 32, dwarfAddressSpace: 65)
!362 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !363, file: !306, line: 148)
!363 = !DISubprogram(name: "exit", scope: !309, file: !309, line: 75, type: !364, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!364 = !DISubroutineType(types: !365)
!365 = !{null, !7}
!366 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !367, file: !306, line: 149)
!367 = !DISubprogram(name: "_Exit", scope: !309, file: !309, line: 88, type: !364, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!368 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !369, file: !306, line: 157)
!369 = !DISubprogram(name: "qsort", scope: !309, file: !309, line: 96, type: !370, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!370 = !DISubroutineType(types: !371)
!371 = !{null, !175, !99, !99, !372}
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 32, dwarfAddressSpace: 65)
!373 = !DISubroutineType(types: !374)
!374 = !{!7, !178, !178}
!375 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !376, file: !379, line: 115)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !377, line: 30, baseType: !378)
!377 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime/include/stdio.h", directory: "/home/lxy")
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FILE", file: !377, line: 29, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS4FILE")
!379 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime_cxx/libs/libcxx-9.0.0/include-lite/../include/cstdio", directory: "/home/lxy")
!380 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !99, file: !379, line: 119)
!381 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !382, file: !379, line: 121)
!382 = !DISubprogram(name: "fclose", scope: !377, file: !377, line: 77, type: !383, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!383 = !DISubroutineType(types: !384)
!384 = !{!7, !385}
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 32)
!386 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !387, file: !379, line: 122)
!387 = !DISubprogram(name: "fflush", scope: !377, file: !377, line: 78, type: !383, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!388 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !389, file: !379, line: 127)
!389 = !DISubprogram(name: "fprintf", scope: !377, file: !377, line: 87, type: !390, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!390 = !DISubroutineType(types: !391)
!391 = !{!7, !385, !192, null}
!392 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !393, file: !379, line: 128)
!393 = !DISubprogram(name: "fscanf", scope: !377, file: !377, line: 92, type: !390, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!394 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !395, file: !379, line: 129)
!395 = !DISubprogram(name: "snprintf", scope: !377, file: !377, line: 96, type: !396, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!396 = !DISubroutineType(types: !397)
!397 = !{!7, !188, !99, !192, null}
!398 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !399, file: !379, line: 130)
!399 = !DISubprogram(name: "sprintf", scope: !377, file: !377, line: 95, type: !400, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!400 = !DISubroutineType(types: !401)
!401 = !{!7, !188, !192, null}
!402 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !403, file: !379, line: 131)
!403 = !DISubprogram(name: "sscanf", scope: !377, file: !377, line: 100, type: !404, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!404 = !DISubroutineType(types: !405)
!405 = !{!7, !192, !192, null}
!406 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !407, file: !379, line: 132)
!407 = !DISubprogram(name: "vfprintf", scope: !377, file: !377, line: 85, type: !408, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!408 = !DISubroutineType(types: !409)
!409 = !{!7, !385, !192, !410}
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !411, line: 14, baseType: !412)
!411 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/tps/lnx64/target/bin/LNa64bin/../../chessdir/clangdir/15.0.5/include/stdarg.h", directory: "/home/lxy")
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !413, baseType: !188)
!413 = !DIFile(filename: "i0_wrap_Orthogonalize.cpp", directory: "/home/lxy/Projects/SVD/Jacobi_AIE_Scalar/Work/aie/ir")
!414 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !415, file: !379, line: 133)
!415 = !DISubprogram(name: "vfscanf", scope: !377, file: !377, line: 90, type: !408, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!416 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !417, file: !379, line: 134)
!417 = !DISubprogram(name: "vsscanf", scope: !377, file: !377, line: 101, type: !418, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!418 = !DISubroutineType(types: !419)
!419 = !{!7, !192, !192, !410}
!420 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !421, file: !379, line: 135)
!421 = !DISubprogram(name: "vsnprintf", scope: !377, file: !377, line: 98, type: !422, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!422 = !DISubroutineType(types: !423)
!423 = !{!7, !188, !99, !192, !410}
!424 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !425, file: !379, line: 136)
!425 = !DISubprogram(name: "vsprintf", scope: !377, file: !377, line: 97, type: !426, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!426 = !DISubroutineType(types: !427)
!427 = !{!7, !188, !192, !410}
!428 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !429, file: !379, line: 137)
!429 = !DISubprogram(name: "fgetc", scope: !377, file: !377, line: 112, type: !383, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!430 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !431, file: !379, line: 138)
!431 = !DISubprogram(name: "fgets", scope: !377, file: !377, line: 115, type: !432, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!432 = !DISubroutineType(types: !433)
!433 = !{!188, !188, !7, !385}
!434 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !435, file: !379, line: 139)
!435 = !DISubprogram(name: "fputc", scope: !377, file: !377, line: 106, type: !436, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!436 = !DISubroutineType(types: !437)
!437 = !{!7, !7, !385}
!438 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !439, file: !379, line: 140)
!439 = !DISubprogram(name: "fputs", scope: !377, file: !377, line: 109, type: !440, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!440 = !DISubroutineType(types: !441)
!441 = !{!7, !192, !385}
!442 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !443, file: !379, line: 141)
!443 = !DISubprogram(name: "getc", scope: !377, file: !377, line: 186, type: !383, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!444 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !445, file: !379, line: 142)
!445 = !DISubprogram(name: "putc", scope: !377, file: !377, line: 168, type: !436, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!446 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !447, file: !379, line: 143)
!447 = !DISubprogram(name: "ungetc", scope: !377, file: !377, line: 118, type: !436, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!448 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !449, file: !379, line: 144)
!449 = !DISubprogram(name: "fread", scope: !377, file: !377, line: 125, type: !450, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!450 = !DISubroutineType(types: !451)
!451 = !{!99, !452, !99, !99, !385}
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32, dwarfAddressSpace: 12)
!453 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !454, file: !379, line: 145)
!454 = !DISubprogram(name: "fwrite", scope: !377, file: !377, line: 123, type: !455, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!455 = !DISubroutineType(types: !456)
!456 = !{!99, !457, !99, !99, !385}
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 32, dwarfAddressSpace: 12)
!458 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !459, file: !379, line: 149)
!459 = !DISubprogram(name: "fseek", scope: !377, file: !377, line: 138, type: !460, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!460 = !DISubroutineType(types: !461)
!461 = !{!7, !385, !316, !7}
!462 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !463, file: !379, line: 153)
!463 = !DISubprogram(name: "ftell", scope: !377, file: !377, line: 140, type: !464, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!464 = !DISubroutineType(types: !465)
!465 = !{!316, !385}
!466 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !467, file: !379, line: 154)
!467 = !DISubprogram(name: "rewind", scope: !377, file: !377, line: 163, type: !468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!468 = !DISubroutineType(types: !469)
!469 = !{null, !385}
!470 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !471, file: !379, line: 155)
!471 = !DISubprogram(name: "clearerr", scope: !377, file: !377, line: 147, type: !468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!472 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !473, file: !379, line: 156)
!473 = !DISubprogram(name: "feof", scope: !377, file: !377, line: 145, type: !383, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!474 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !475, file: !379, line: 157)
!475 = !DISubprogram(name: "ferror", scope: !377, file: !377, line: 146, type: !383, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!476 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !477, file: !379, line: 158)
!477 = !DISubprogram(name: "perror", scope: !377, file: !377, line: 148, type: !478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!478 = !DISubroutineType(types: !479)
!479 = !{null, !192}
!480 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !481, file: !379, line: 161)
!481 = !DISubprogram(name: "fopen", scope: !377, file: !377, line: 76, type: !482, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!482 = !DISubroutineType(types: !483)
!483 = !{!385, !192, !192}
!484 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !485, file: !379, line: 162)
!485 = !DISubprogram(name: "freopen", scope: !377, file: !377, line: 80, type: !486, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!486 = !DISubroutineType(types: !487)
!487 = !{!385, !192, !192, !385}
!488 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !489, file: !379, line: 163)
!489 = !DISubprogram(name: "remove", scope: !377, file: !377, line: 66, type: !310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!490 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !491, file: !379, line: 164)
!491 = !DISubprogram(name: "rename", scope: !377, file: !377, line: 67, type: !208, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!492 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !493, file: !379, line: 165)
!493 = !DISubprogram(name: "tmpfile", scope: !377, file: !377, line: 68, type: !494, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!494 = !DISubroutineType(types: !495)
!495 = !{!385}
!496 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !497, file: !379, line: 172)
!497 = !DISubprogram(name: "getchar", scope: !377, file: !377, line: 191, type: !330, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!498 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !499, file: !379, line: 176)
!499 = !DISubprogram(name: "scanf", scope: !377, file: !377, line: 93, type: !500, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!500 = !DISubroutineType(types: !501)
!501 = !{!7, !192, null}
!502 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !503, file: !379, line: 177)
!503 = !DISubprogram(name: "vscanf", scope: !377, file: !377, line: 158, type: !504, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!504 = !DISubroutineType(types: !505)
!505 = !{!7, !192, !410}
!506 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !507, file: !379, line: 181)
!507 = !DISubprogram(name: "printf", scope: !377, file: !377, line: 88, type: !500, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!508 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !509, file: !379, line: 182)
!509 = !DISubprogram(name: "putchar", scope: !377, file: !377, line: 173, type: !510, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!510 = !DISubroutineType(types: !511)
!511 = !{!7, !7}
!512 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !513, file: !379, line: 183)
!513 = !DISubprogram(name: "puts", scope: !377, file: !377, line: 178, type: !310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!514 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !93, entity: !515, file: !379, line: 184)
!515 = !DISubprogram(name: "vprintf", scope: !377, file: !377, line: 153, type: !504, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!516 = !DIImportedEntity(tag: DW_TAG_imported_declaration, name: "Utils", scope: !6, entity: !517, file: !52, line: 119)
!517 = !DINamespace(name: "utils", scope: !5)
!518 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !3, file: !52, line: 7686)
!519 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !11, file: !52, line: 10079)
!520 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !6, entity: !19, file: !52, line: 10080)
!521 = !{i32 7, !"Dwarf Version", i32 4}
!522 = !{i32 2, !"Debug Info Version", i32 3}
!523 = !{i32 1, !"wchar_size", i32 4}
!524 = !{i32 7, !"frame-pointer", i32 2}
!525 = !{!"clang version 15.0.5 (/u/sgasip/ipd/repositories/llvm_ipd 3a25925e0239306412dac02da5e4c8c51ae722e8)"}
!526 = distinct !DISubprogram(name: "sign", linkageName: "_Z4signd", scope: !527, file: !527, line: 7, type: !528, scopeLine: 7, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !530)
!527 = !DIFile(filename: "aie/src/ProcessUnit/Orthogonalize.cpp", directory: "/home/lxy/Projects/SVD/Jacobi_AIE_Scalar")
!528 = !DISubroutineType(types: !529)
!529 = !{!62, !279}
!530 = !{!531}
!531 = !DILocalVariable(name: "x", arg: 1, scope: !526, file: !527, line: 7, type: !279)
!532 = !{!533, !533, i64 0, i64 8}
!533 = !{!534, i64 8, !"double"}
!534 = !{!535, i64 1, !"omnipotent char"}
!535 = !{!"Simple C++ TBAA"}
!536 = !DILocation(line: 7, column: 19, scope: !526)
!537 = !DILocation(line: 8, column: 8, scope: !538)
!538 = distinct !DILexicalBlock(scope: !526, file: !527, line: 8, column: 8)
!539 = !DILocation(line: 8, column: 10, scope: !538)
!540 = !DILocation(line: 8, column: 8, scope: !526)
!541 = !DILocation(line: 8, column: 15, scope: !538)
!542 = !DILocation(line: 9, column: 13, scope: !543)
!543 = distinct !DILexicalBlock(scope: !538, file: !527, line: 9, column: 13)
!544 = !DILocation(line: 9, column: 15, scope: !543)
!545 = !DILocation(line: 9, column: 13, scope: !538)
!546 = !DILocation(line: 9, column: 21, scope: !543)
!547 = !DILocation(line: 10, column: 10, scope: !543)
!548 = !DILocation(line: 11, column: 1, scope: !526)
!549 = distinct !DISubprogram(name: "orthogonalize<8>", linkageName: "_Z13orthogonalizeILi8EEvP12input_streamIfES2_P13output_streamIfES5_", scope: !527, file: !527, line: 14, type: !550, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !585, retainedNodes: !559)
!550 = !DISubroutineType(types: !551)
!551 = !{null, !552, !552, !556, !556}
!552 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !553)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 32)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_stream<float>", file: !555, line: 50, size: 32, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS12input_streamIfE")
!555 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/adf/stream/me/structs.h", directory: "/home/lxy")
!556 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !557)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 32)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "output_stream<float>", file: !555, line: 60, size: 32, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS13output_streamIfE")
!559 = !{!560, !561, !562, !563, !564, !566, !570, !571, !572, !573, !575, !576, !577, !579, !580, !581, !582, !583}
!560 = !DILocalVariable(name: "in0", arg: 1, scope: !549, file: !527, line: 14, type: !552)
!561 = !DILocalVariable(name: "in1", arg: 2, scope: !549, file: !527, line: 15, type: !552)
!562 = !DILocalVariable(name: "out0", arg: 3, scope: !549, file: !527, line: 16, type: !556)
!563 = !DILocalVariable(name: "out1", arg: 4, scope: !549, file: !527, line: 17, type: !556)
!564 = !DILocalVariable(name: "VECSIZE", scope: !549, file: !527, line: 18, type: !565)
!565 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!566 = !DILocalVariable(name: "Ap", scope: !549, file: !527, line: 20, type: !567)
!567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 256, elements: !568)
!568 = !{!569}
!569 = !DISubrange(count: 8)
!570 = !DILocalVariable(name: "Aq", scope: !549, file: !527, line: 20, type: !567)
!571 = !DILocalVariable(name: "Bp", scope: !549, file: !527, line: 20, type: !567)
!572 = !DILocalVariable(name: "Bq", scope: !549, file: !527, line: 20, type: !567)
!573 = !DILocalVariable(name: "i", scope: !574, file: !527, line: 22, type: !7)
!574 = distinct !DILexicalBlock(scope: !549, file: !527, line: 22, column: 5)
!575 = !DILocalVariable(name: "tmp1", scope: !549, file: !527, line: 27, type: !62)
!576 = !DILocalVariable(name: "tmp2", scope: !549, file: !527, line: 28, type: !62)
!577 = !DILocalVariable(name: "i", scope: !578, file: !527, line: 29, type: !7)
!578 = distinct !DILexicalBlock(scope: !549, file: !527, line: 29, column: 5)
!579 = !DILocalVariable(name: "tau", scope: !549, file: !527, line: 37, type: !62)
!580 = !DILocalVariable(name: "t", scope: !549, file: !527, line: 38, type: !62)
!581 = !DILocalVariable(name: "c", scope: !549, file: !527, line: 39, type: !62)
!582 = !DILocalVariable(name: "s", scope: !549, file: !527, line: 40, type: !62)
!583 = !DILocalVariable(name: "i", scope: !584, file: !527, line: 41, type: !7)
!584 = distinct !DILexicalBlock(scope: !549, file: !527, line: 41, column: 5)
!585 = !{!586}
!586 = !DITemplateValueParameter(name: "ROW", type: !7, value: i32 8)
!587 = !{!588}
!588 = distinct !{!588, !589, !"_Z13orthogonalizeILi8EEvP12input_streamIfES2_P13output_streamIfES5_: in0"}
!589 = distinct !{!589, !"_Z13orthogonalizeILi8EEvP12input_streamIfES2_P13output_streamIfES5_"}
!590 = !{!588, !591, !592, !593}
!591 = distinct !{!591, !589, !"_Z13orthogonalizeILi8EEvP12input_streamIfES2_P13output_streamIfES5_: in1"}
!592 = distinct !{!592, !589, !"_Z13orthogonalizeILi8EEvP12input_streamIfES2_P13output_streamIfES5_: out0"}
!593 = distinct !{!593, !589, !"_Z13orthogonalizeILi8EEvP12input_streamIfES2_P13output_streamIfES5_: out1"}
!594 = !{!595, !595, i64 0, i64 4}
!595 = !{!534, i64 4, !"any pointer"}
!596 = !DILocation(line: 14, column: 53, scope: !549)
!597 = !{!591}
!598 = !DILocation(line: 15, column: 53, scope: !549)
!599 = !{!592}
!600 = !DILocation(line: 16, column: 54, scope: !549)
!601 = !{!593}
!602 = !DILocation(line: 17, column: 54, scope: !549)
!603 = !DILocation(line: 18, column: 5, scope: !549)
!604 = !DILocation(line: 18, column: 15, scope: !549)
!605 = !{!606, !606, i64 0, i64 4}
!606 = !{!534, i64 4, !"int"}
!607 = !DILocation(line: 20, column: 5, scope: !549)
!608 = !DILocation(line: 20, column: 11, scope: !549)
!609 = !DILocation(line: 20, column: 20, scope: !549)
!610 = !DILocation(line: 20, column: 29, scope: !549)
!611 = !DILocation(line: 20, column: 38, scope: !549)
!612 = !DILocation(line: 22, column: 9, scope: !574)
!613 = !DILocation(line: 22, column: 13, scope: !574)
!614 = !DILocation(line: 22, column: 19, scope: !615)
!615 = distinct !DILexicalBlock(scope: !574, file: !527, line: 22, column: 5)
!616 = !DILocation(line: 22, column: 21, scope: !615)
!617 = !DILocation(line: 22, column: 5, scope: !574)
!618 = !DILocation(line: 22, column: 5, scope: !615)
!619 = !DILocation(line: 23, column: 26, scope: !620)
!620 = distinct !DILexicalBlock(scope: !615, file: !527, line: 22, column: 33)
!621 = !DILocation(line: 23, column: 17, scope: !620)
!622 = !DILocation(line: 23, column: 12, scope: !620)
!623 = !DILocation(line: 23, column: 9, scope: !620)
!624 = !DILocation(line: 23, column: 15, scope: !620)
!625 = !{!626, !626, i64 0, i64 4}
!626 = !{!534, i64 4, !"float"}
!627 = !DILocation(line: 24, column: 26, scope: !620)
!628 = !DILocation(line: 24, column: 17, scope: !620)
!629 = !DILocation(line: 24, column: 12, scope: !620)
!630 = !DILocation(line: 24, column: 9, scope: !620)
!631 = !DILocation(line: 24, column: 15, scope: !620)
!632 = !DILocation(line: 25, column: 5, scope: !620)
!633 = !DILocation(line: 22, column: 29, scope: !615)
!634 = distinct !{!634, !617, !635, !636}
!635 = !DILocation(line: 25, column: 5, scope: !574)
!636 = !{!"llvm.loop.mustprogress"}
!637 = !DILocation(line: 27, column: 5, scope: !549)
!638 = !DILocation(line: 27, column: 11, scope: !549)
!639 = !DILocation(line: 28, column: 5, scope: !549)
!640 = !DILocation(line: 28, column: 11, scope: !549)
!641 = !DILocation(line: 29, column: 9, scope: !578)
!642 = !DILocation(line: 29, column: 13, scope: !578)
!643 = !DILocation(line: 29, column: 19, scope: !644)
!644 = distinct !DILexicalBlock(scope: !578, file: !527, line: 29, column: 5)
!645 = !DILocation(line: 29, column: 21, scope: !644)
!646 = !DILocation(line: 29, column: 5, scope: !578)
!647 = !DILocation(line: 29, column: 5, scope: !644)
!648 = !DILocation(line: 32, column: 20, scope: !649)
!649 = distinct !DILexicalBlock(scope: !644, file: !527, line: 31, column: 5)
!650 = !DILocation(line: 32, column: 17, scope: !649)
!651 = !DILocation(line: 32, column: 28, scope: !649)
!652 = !DILocation(line: 32, column: 25, scope: !649)
!653 = !DILocation(line: 32, column: 36, scope: !649)
!654 = !DILocation(line: 32, column: 33, scope: !649)
!655 = !DILocation(line: 32, column: 44, scope: !649)
!656 = !DILocation(line: 32, column: 41, scope: !649)
!657 = !DILocation(line: 32, column: 39, scope: !649)
!658 = !DILocation(line: 32, column: 31, scope: !649)
!659 = !DILocation(line: 32, column: 14, scope: !649)
!660 = !DILocation(line: 33, column: 24, scope: !649)
!661 = !DILocation(line: 33, column: 21, scope: !649)
!662 = !DILocation(line: 33, column: 19, scope: !649)
!663 = !DILocation(line: 33, column: 32, scope: !649)
!664 = !DILocation(line: 33, column: 29, scope: !649)
!665 = !DILocation(line: 33, column: 14, scope: !649)
!666 = !DILocation(line: 35, column: 5, scope: !649)
!667 = !DILocation(line: 29, column: 29, scope: !644)
!668 = distinct !{!668, !646, !669, !636}
!669 = !DILocation(line: 35, column: 5, scope: !578)
!670 = !DILocation(line: 37, column: 5, scope: !549)
!671 = !DILocation(line: 37, column: 10, scope: !549)
!672 = !DILocation(line: 37, column: 16, scope: !549)
!673 = !DILocation(line: 37, column: 23, scope: !549)
!674 = !DILocation(line: 37, column: 21, scope: !549)
!675 = !DILocation(line: 38, column: 5, scope: !549)
!676 = !DILocation(line: 38, column: 10, scope: !549)
!677 = !DILocation(line: 38, column: 19, scope: !549)
!678 = !DILocation(line: 38, column: 14, scope: !549)
!679 = !DILocation(line: 38, column: 27, scope: !549)
!680 = !DILocation(line: 38, column: 57, scope: !549)
!681 = !DILocation(line: 38, column: 63, scope: !549)
!682 = !DILocation(line: 38, column: 55, scope: !549)
!683 = !DILocation(line: 38, column: 43, scope: !549)
!684 = !DILocation(line: 38, column: 41, scope: !549)
!685 = !DILocation(line: 38, column: 24, scope: !549)
!686 = !DILocation(line: 39, column: 5, scope: !549)
!687 = !DILocation(line: 39, column: 10, scope: !549)
!688 = !DILocation(line: 39, column: 33, scope: !549)
!689 = !DILocation(line: 39, column: 37, scope: !549)
!690 = !DILocation(line: 39, column: 31, scope: !549)
!691 = !DILocation(line: 39, column: 19, scope: !549)
!692 = !DILocation(line: 39, column: 16, scope: !549)
!693 = !DILocation(line: 40, column: 5, scope: !549)
!694 = !DILocation(line: 40, column: 10, scope: !549)
!695 = !DILocation(line: 40, column: 14, scope: !549)
!696 = !DILocation(line: 40, column: 18, scope: !549)
!697 = !DILocation(line: 40, column: 16, scope: !549)
!698 = !DILocation(line: 41, column: 10, scope: !584)
!699 = !DILocation(line: 41, column: 14, scope: !584)
!700 = !DILocation(line: 41, column: 21, scope: !701)
!701 = distinct !DILexicalBlock(scope: !584, file: !527, line: 41, column: 5)
!702 = !DILocation(line: 41, column: 23, scope: !701)
!703 = !DILocation(line: 41, column: 5, scope: !584)
!704 = !DILocation(line: 41, column: 5, scope: !701)
!705 = !DILocation(line: 42, column: 19, scope: !706)
!706 = distinct !DILexicalBlock(scope: !701, file: !527, line: 41, column: 35)
!707 = !DILocation(line: 42, column: 28, scope: !706)
!708 = !DILocation(line: 42, column: 25, scope: !706)
!709 = !DILocation(line: 42, column: 33, scope: !706)
!710 = !DILocation(line: 42, column: 40, scope: !706)
!711 = !DILocation(line: 42, column: 37, scope: !706)
!712 = !DILocation(line: 42, column: 45, scope: !706)
!713 = !DILocation(line: 42, column: 43, scope: !706)
!714 = !DILocation(line: 42, column: 35, scope: !706)
!715 = !DILocation(line: 42, column: 9, scope: !706)
!716 = !DILocation(line: 43, column: 19, scope: !706)
!717 = !DILocation(line: 43, column: 29, scope: !706)
!718 = !DILocation(line: 43, column: 26, scope: !706)
!719 = !DILocation(line: 43, column: 25, scope: !706)
!720 = !DILocation(line: 43, column: 34, scope: !706)
!721 = !DILocation(line: 43, column: 41, scope: !706)
!722 = !DILocation(line: 43, column: 38, scope: !706)
!723 = !DILocation(line: 43, column: 46, scope: !706)
!724 = !DILocation(line: 43, column: 44, scope: !706)
!725 = !DILocation(line: 43, column: 36, scope: !706)
!726 = !DILocation(line: 43, column: 9, scope: !706)
!727 = !DILocation(line: 46, column: 5, scope: !706)
!728 = !DILocation(line: 41, column: 31, scope: !701)
!729 = distinct !{!729, !703, !730, !636}
!730 = !DILocation(line: 46, column: 5, scope: !584)
!731 = !DILocation(line: 50, column: 1, scope: !549)
!732 = distinct !DISubprogram(name: "readincr<(aie_stream_resource_in)0, float>", linkageName: "_ZL8readincrIL22aie_stream_resource_in0EfET0_P12input_streamIS1_E", scope: !733, file: !733, line: 126, type: !734, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !742, retainedNodes: !736)
!733 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/adf/stream/me/accessors.h", directory: "/home/lxy")
!734 = !DISubroutineType(types: !735)
!735 = !{!62, !553}
!736 = !{!737, !738, !741}
!737 = !DILocalVariable(name: "ss", arg: 1, scope: !732, file: !733, line: 126, type: !553)
!738 = !DILocalVariable(name: "origVal", scope: !732, file: !733, line: 129, type: !739)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32", file: !740, line: 28, baseType: !113)
!740 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/adf/window/types.h", directory: "/home/lxy")
!741 = !DILocalVariable(name: "value", scope: !732, file: !733, line: 130, type: !62)
!742 = !{!743, !744}
!743 = !DITemplateValueParameter(name: "resource", type: !43, value: i32 0)
!744 = !DITemplateTypeParameter(name: "streamTy", type: !62)
!745 = !DILocation(line: 126, column: 34, scope: !732)
!746 = !DILocation(line: 129, column: 5, scope: !732)
!747 = !DILocation(line: 129, column: 11, scope: !732)
!748 = !DILocation(line: 129, column: 71, scope: !732)
!749 = !DILocation(line: 129, column: 21, scope: !732)
!750 = !DILocation(line: 130, column: 5, scope: !732)
!751 = !DILocation(line: 130, column: 14, scope: !732)
!752 = !DILocation(line: 178, column: 30, scope: !753)
!753 = distinct !DILexicalBlock(scope: !754, file: !733, line: 177, column: 28)
!754 = distinct !DILexicalBlock(scope: !755, file: !733, line: 170, column: 28)
!755 = distinct !DILexicalBlock(scope: !756, file: !733, line: 168, column: 28)
!756 = distinct !DILexicalBlock(scope: !757, file: !733, line: 158, column: 28)
!757 = distinct !DILexicalBlock(scope: !758, file: !733, line: 156, column: 23)
!758 = distinct !DILexicalBlock(scope: !759, file: !733, line: 155, column: 5)
!759 = distinct !DILexicalBlock(scope: !732, file: !733, line: 132, column: 19)
!760 = !DILocation(line: 178, column: 21, scope: !753)
!761 = !DILocation(line: 178, column: 19, scope: !753)
!762 = !DILocation(line: 182, column: 12, scope: !732)
!763 = !DILocation(line: 183, column: 1, scope: !732)
!764 = !DILocation(line: 182, column: 5, scope: !732)
!765 = !DILocation(line: 3395, column: 29, scope: !53)
!766 = !DILocation(line: 3398, column: 5, scope: !53)
!767 = !DILocation(line: 3398, column: 18, scope: !53)
!768 = !DILocation(line: 3398, column: 23, scope: !53)
!769 = !DILocation(line: 3401, column: 33, scope: !770)
!770 = distinct !DILexicalBlock(scope: !53, file: !52, line: 3400, column: 19)
!771 = !DILocation(line: 3401, column: 24, scope: !770)
!772 = !DILocation(line: 3404, column: 1, scope: !53)
!773 = !DILocation(line: 3401, column: 9, scope: !770)
!774 = distinct !DISubprogram(name: "sqrt<float>", linkageName: "_ZN3aie4sqrtIfEEDaT_", scope: !6, file: !52, line: 9199, type: !254, scopeLine: 9200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !73, retainedNodes: !775)
!775 = !{!776}
!776 = !DILocalVariable(name: "a", arg: 1, scope: !774, file: !52, line: 9199, type: !62)
!777 = !DILocation(line: 9199, column: 13, scope: !774)
!778 = !DILocation(line: 9202, column: 12, scope: !774)
!779 = !DILocation(line: 9202, column: 5, scope: !774)
!780 = distinct !DISubprogram(name: "writeincr<(aie_stream_resource_out)0, float>", linkageName: "_ZL9writeincrIL23aie_stream_resource_out0EfEvP13output_streamIT0_ENSt3__213type_identityIS2_E4typeEb", scope: !733, file: !733, line: 252, type: !781, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !795, retainedNodes: !790)
!781 = !DISubroutineType(types: !782)
!782 = !{null, !557, !783, !789}
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "type_identity_t<float>", scope: !93, file: !784, line: 1240, baseType: !785)
!784 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime_cxx/libs/libcxx-9.0.0/include-lite/../include/type_traits", directory: "/home/lxy")
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !786, file: !784, line: 1239, baseType: !62)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "type_identity<float>", scope: !93, file: !784, line: 1239, size: 8, flags: DIFlagTypePassByValue, elements: !59, templateParams: !787, identifier: "_ZTSNSt3__213type_identityIfEE")
!787 = !{!788}
!788 = !DITemplateTypeParameter(name: "_Tp", type: !62)
!789 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!790 = !{!791, !792, !793, !794}
!791 = !DILocalVariable(name: "str", arg: 1, scope: !780, file: !733, line: 252, type: !557)
!792 = !DILocalVariable(name: "value", arg: 2, scope: !780, file: !733, line: 252, type: !783)
!793 = !DILocalVariable(name: "tlast", arg: 3, scope: !780, file: !733, line: 252, type: !789)
!794 = !DILocalVariable(name: "value32", scope: !780, file: !733, line: 254, type: !739)
!795 = !{!796, !744}
!796 = !DITemplateValueParameter(name: "resource", type: !49, value: i32 0)
!797 = !DILocation(line: 252, column: 36, scope: !780)
!798 = !DILocation(line: 252, column: 72, scope: !780)
!799 = !{!800, !800, i64 0, i64 1}
!800 = !{!534, i64 1, !"bool"}
!801 = !DILocation(line: 252, column: 84, scope: !780)
!802 = !DILocation(line: 254, column: 5, scope: !780)
!803 = !DILocation(line: 254, column: 11, scope: !780)
!804 = !DILocation(line: 298, column: 32, scope: !805)
!805 = distinct !DILexicalBlock(scope: !806, file: !733, line: 297, column: 28)
!806 = distinct !DILexicalBlock(scope: !807, file: !733, line: 290, column: 28)
!807 = distinct !DILexicalBlock(scope: !808, file: !733, line: 288, column: 28)
!808 = distinct !DILexicalBlock(scope: !809, file: !733, line: 281, column: 28)
!809 = distinct !DILexicalBlock(scope: !810, file: !733, line: 279, column: 23)
!810 = distinct !DILexicalBlock(scope: !811, file: !733, line: 278, column: 5)
!811 = distinct !DILexicalBlock(scope: !780, file: !733, line: 257, column: 19)
!812 = !DILocation(line: 298, column: 23, scope: !805)
!813 = !DILocation(line: 298, column: 21, scope: !805)
!814 = !DILocation(line: 302, column: 55, scope: !780)
!815 = !DILocation(line: 302, column: 60, scope: !780)
!816 = !DILocation(line: 302, column: 69, scope: !780)
!817 = !{i8 0, i8 2}
!818 = !DILocation(line: 302, column: 5, scope: !780)
!819 = !DILocation(line: 303, column: 1, scope: !780)
!820 = distinct !DISubprogram(name: "abs", linkageName: "_ZNSt3__23absEf", scope: !93, file: !256, line: 325, type: !254, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !821)
!821 = !{!822}
!822 = !DILocalVariable(name: "x", arg: 1, scope: !820, file: !256, line: 325, type: !62)
!823 = !DILocation(line: 325, column: 51, scope: !820)
!824 = !DILocation(line: 325, column: 81, scope: !820)
!825 = !DILocation(line: 325, column: 73, scope: !820)
!826 = !DILocation(line: 325, column: 66, scope: !820)
!827 = distinct !DISubprogram(name: "run", linkageName: "_ZN3aie6detail15elementary_bitsILNS0_12ElementaryOpE0ELj32EffE3runERKfi", scope: !828, file: !30, line: 134, type: !833, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !835, retainedNodes: !836)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elementary_bits<(aie::detail::ElementaryOp)0, 32U, float, float>", scope: !5, file: !30, line: 131, size: 8, flags: DIFlagTypePassByValue, elements: !59, templateParams: !829, identifier: "_ZTSN3aie6detail15elementary_bitsILNS0_12ElementaryOpE0ELj32EffEE")
!829 = !{!830, !831, !832, !61}
!830 = !DITemplateValueParameter(name: "Op", type: !29, value: i32 0)
!831 = !DITemplateValueParameter(name: "TypeBits", type: !13, value: i32 32)
!832 = !DITemplateTypeParameter(name: "TR", type: !62)
!833 = !DISubroutineType(types: !834)
!834 = !{!62, !67, !7}
!835 = !DISubprogram(name: "run", linkageName: "_ZN3aie6detail15elementary_bitsILNS0_12ElementaryOpE0ELj32EffE3runERKfi", scope: !828, file: !30, line: 134, type: !833, scopeLine: 134, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!836 = !{!837, !838}
!837 = !DILocalVariable(name: "a", arg: 1, scope: !827, file: !30, line: 134, type: !67)
!838 = !DILocalVariable(name: "shift", arg: 2, scope: !827, file: !30, line: 134, type: !7)
!839 = !DILocation(line: 134, column: 30, scope: !827)
!840 = !DILocation(line: 134, column: 37, scope: !827)
!841 = !DILocation(line: 136, column: 63, scope: !827)
!842 = !DILocation(line: 136, column: 66, scope: !827)
!843 = !DILocation(line: 136, column: 16, scope: !827)
!844 = !DILocation(line: 136, column: 9, scope: !827)
!845 = distinct !DISubprogram(name: "run", linkageName: "_ZN3aie6detail20elementary_bits_implILNS0_12ElementaryOpE0ELj32EffE3runERKfi", scope: !847, file: !846, line: 81, type: !833, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, declaration: !848, retainedNodes: !849)
!846 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/aie_api/detail/aie1/elementary.hpp", directory: "/home/lxy")
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elementary_bits_impl<(aie::detail::ElementaryOp)0, 32U, float, float>", scope: !5, file: !846, line: 79, size: 8, flags: DIFlagTypePassByValue, elements: !59, templateParams: !829, identifier: "_ZTSN3aie6detail20elementary_bits_implILNS0_12ElementaryOpE0ELj32EffEE")
!848 = !DISubprogram(name: "run", linkageName: "_ZN3aie6detail20elementary_bits_implILNS0_12ElementaryOpE0ELj32EffE3runERKfi", scope: !847, file: !846, line: 81, type: !833, scopeLine: 81, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!849 = !{!850, !851}
!850 = !DILocalVariable(name: "a", arg: 1, scope: !845, file: !846, line: 81, type: !67)
!851 = !DILocalVariable(name: "shift", arg: 2, scope: !845, file: !846, line: 81, type: !7)
!852 = !DILocation(line: 81, column: 34, scope: !845)
!853 = !DILocation(line: 81, column: 41, scope: !845)
!854 = !DILocation(line: 84, column: 29, scope: !855)
!855 = distinct !DILexicalBlock(scope: !856, file: !846, line: 83, column: 54)
!856 = distinct !DILexicalBlock(scope: !845, file: !846, line: 83, column: 28)
!857 = !DILocation(line: 84, column: 20, scope: !855)
!858 = !DILocation(line: 84, column: 13, scope: !855)
!859 = distinct !DISubprogram(name: "aie_stream_get_ss<float, float>", linkageName: "_ZN12stream_utilsL17aie_stream_get_ssIffEEiP12input_streamIT0_E", scope: !861, file: !860, line: 127, type: !862, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !866, retainedNodes: !864)
!860 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/adf/stream/me/stream_utils.h", directory: "/home/lxy")
!861 = !DINamespace(name: "stream_utils", scope: null)
!862 = !DISubroutineType(types: !863)
!863 = !{!739, !553}
!864 = !{!865}
!865 = !DILocalVariable(name: "ss", arg: 1, scope: !859, file: !860, line: 127, type: !553)
!866 = !{!61, !744}
!867 = !DILocation(line: 127, column: 44, scope: !859)
!868 = !DILocation(line: 135, column: 23, scope: !869)
!869 = distinct !DILexicalBlock(scope: !870, file: !860, line: 132, column: 24)
!870 = distinct !DILexicalBlock(scope: !859, file: !860, line: 130, column: 19)
!871 = !DILocation(line: 135, column: 27, scope: !869)
!872 = !{!534, !534, i64 0, i64 0}
!873 = !DILocation(line: 135, column: 16, scope: !869)
!874 = !DILocation(line: 135, column: 9, scope: !869)
!875 = !{!876, !876, i64 0, i64 4}
!876 = !{!534, i64 4, !"uint1_t"}
!877 = !{i32 1}
!878 = !{!879, !606, i64 4, i64 4}
!879 = !{!534, i64 8, !"_ZTSN12me_primitive60chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sintE", !606, i64 0, i64 4, !606, i64 4, i64 4}
!880 = !{!879, !606, i64 0, i64 4}
!881 = !{!882, !606, i64 4, i64 4}
!882 = !{!534, i64 8, !"_ZTSN12me_primitive60chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sintE", !606, i64 0, i64 4, !606, i64 4, i64 4}
!883 = !{!882, !606, i64 0, i64 4}
!884 = !{!885, !606, i64 4, i64 4}
!885 = !{!534, i64 8, !"_ZTSN12me_primitive57chessout___sint_stream_read___PSSMEM__sint_uint1_t___sintE", !606, i64 0, i64 4, !606, i64 4, i64 4}
!886 = !{!885, !606, i64 0, i64 4}
!887 = distinct !DISubprogram(name: "aie_stream_put_ms<float, float>", linkageName: "_ZN12stream_utilsL17aie_stream_put_msIffEEvP13output_streamIT0_Eib", scope: !861, file: !860, line: 168, type: !888, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !866, retainedNodes: !890)
!888 = !DISubroutineType(types: !889)
!889 = !{null, !557, !739, !789}
!890 = !{!891, !892, !893}
!891 = !DILocalVariable(name: "ss", arg: 1, scope: !887, file: !860, line: 168, type: !557)
!892 = !DILocalVariable(name: "value", arg: 2, scope: !887, file: !860, line: 168, type: !739)
!893 = !DILocalVariable(name: "tlast", arg: 3, scope: !887, file: !860, line: 168, type: !789)
!894 = !DILocation(line: 168, column: 45, scope: !887)
!895 = !DILocation(line: 168, column: 55, scope: !887)
!896 = !DILocation(line: 168, column: 67, scope: !887)
!897 = !DILocation(line: 176, column: 16, scope: !898)
!898 = distinct !DILexicalBlock(scope: !899, file: !860, line: 173, column: 24)
!899 = distinct !DILexicalBlock(scope: !887, file: !860, line: 171, column: 19)
!900 = !DILocation(line: 176, column: 20, scope: !898)
!901 = !DILocation(line: 176, column: 29, scope: !898)
!902 = !DILocation(line: 176, column: 35, scope: !898)
!903 = !DILocation(line: 176, column: 9, scope: !898)
!904 = !DILocation(line: 180, column: 1, scope: !887)
