; ModuleID = 'ir/24_0.ll'
source_filename = "/home/lxy/Projects/SVD/Jacobi_AIE/Work/aie/24_0/src/24_0.cc"
target datalayout = "e-i8:8:8-i16:16:16-i32:32:32-i64:32:32-f32:32:32-f64:32:32-p:32:32:32:32:8-s0:256:256-a0:8:8-S256-n32:64-P1-p0:20:32:32:32:8-p1:20:32:32:32:8-p2:20:32:32:32:8-p3:20:32:32:32:8-p4:20:32:32:32:8-p5:20:32:32:32:8-p6:20:32:32:32:8-p7:20:32:32:32:8-p8:20:32:32:32:8-p9:20:32:32:32:8-p10:20:32:32:32:8-p11:20:32:32:32:8-p12:20:32:32:32:8-p13:20:32:32:32:8-p14:20:32:32:32:8-p15:1:32:32:32:32-p16:1:32:32:32:32-p17:1:32:32:32:32-p18:1:32:32:32:32-p19:1:32:32:32:32-p20:1:32:32:32:32-p21:1:32:32:32:32-p22:1:32:32:32:32-p23:1:32:32:32:32-p24:1:32:32:32:32-p25:1:32:32:32:32-p26:1:32:32:32:32-p27:1:32:32:32:32-p28:1:32:32:32:32-p29:1:32:32:32:32-p30:1:32:32:32:32"
target triple = "pdarch-unknown-unknown-elf"

%struct.input_stream = type { %union.anon }
%union.anon = type { i32 }
%struct.output_stream = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.ipd.custom_type.uint2_t.uint2_t = type { i2 }
%struct.ipd.custom_type.uint1_t.uint1_t = type { i1 }
%"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint" = type { i32, i32 }
%"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint" = type { i32, i32 }
%"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint" = type { i32, i32 }

$_ZN12input_streamIfEC2Ej = comdat any

$_ZN13output_streamIfEC2Ej = comdat any

$_Z13orthogonalizeILi8EEvP12input_streamIfES2_P13output_streamIfES5_ = comdat any

$_Z4donev = comdat any

$_ZN12me_primitive5eventE7uint2_t = comdat any

$_ZN7uint2_tC2Ei = comdat any

$_ZN3aie3absIfEENS_17operand_base_typeINS_6detail5utils10remove_allIT_E4typeEE4typeERKS5_ = comdat any

$_ZN3aie4sqrtIfEEDaT_ = comdat any

$_Z8as_floati = comdat any

$_Z6get_ssi = comdat any

$_ZN12me_primitive11stream_readIiEEN13chessEnableIfIXsr17chessIsCompatibleIN15chessRemoveQualIT_E4typeEiEE5valueEiE4typeEPU4AS23U16__protect_accessi7uint1_tRS3_ = comdat any

$_ZN7uint1_tC2Ei = comdat any

$_ZN12me_primitive11stream_readIiEEN13chessEnableIfIXsr17chessIsCompatibleIN15chessRemoveQualIT_E4typeEiEE5valueEiE4typeEPU4AS24U16__protect_accessi7uint1_tRS3_ = comdat any

$_ZN12me_primitive11stream_readIiEEN13chessEnableIfIXsr17chessIsCompatibleIN15chessRemoveQualIT_E4typeEiEE5valueEiE4typeEPU4AS15U16__protect_accessi7uint1_tRS3_ = comdat any

$_ZNSt3__23absEf = comdat any

$_ZN3aie6detail15elementary_bitsILNS0_12ElementaryOpE0ELj32EffE3runERKfi = comdat any

$_ZN3aie6detail20elementary_bits_implILNS0_12ElementaryOpE0ELj32EffE3runERKfi = comdat any

$_Z6_sqrtff = comdat any

$_Z8as_int32f = comdat any

$_Z6put_msiii = comdat any

$_ZN12me_primitive12stream_writeEPU4AS27U16__protect_accessii7uint1_tS2_ = comdat any

$_ZN12me_primitive12stream_writeEPU4AS28U16__protect_accessii7uint1_tS2_ = comdat any

$_ZN12me_primitive12stream_writeEPU4AS16U16__protect_accessii7uint1_tS2_ = comdat any

@_ZL11sync_buffer = internal global [8 x i32] [i32 0, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16, !dbg !0
@_ZN12me_primitive3ss0E = external dso_local addrspace(25) global i32, align 1 #0
@_ZN12me_primitive4sst0E = external dso_local addrspace(19) global i32, align 1 #0
@_ZN12me_primitive3ss1E = external dso_local addrspace(26) global i32, align 1 #1
@_ZN12me_primitive4sst1E = external dso_local addrspace(19) global i32, align 1 #1
@_ZN12me_primitive3ms0E = external dso_local addrspace(29) global i32, align 1 #0
@_ZN12me_primitive3ms1E = external dso_local addrspace(30) global i32, align 1 #1

; Function Attrs: mustprogress nounwind
define dso_local float @_Z4signf(float %x) addrspace(1) #2 !dbg !611 {
entry:
  call addrspace(1) void @llvm.dbg.value(metadata float %x, metadata !614, metadata !DIExpression()), !dbg !615
  %cmp = fcmp ogt float %x, 0.000000e+00, !dbg !616
  %cmp1 = fcmp oeq float %x, 0.000000e+00, !dbg !618
  %. = select i1 %cmp1, float 0.000000e+00, float -1.000000e+00, !dbg !618
  %retval.0 = select i1 %cmp, float 1.000000e+00, float %., !dbg !618
  ret float %retval.0, !dbg !619
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) addrspace(1) #3

; Function Attrs: mustprogress norecurse nounwind
define dso_local i32 @main() addrspace(1) #4 !dbg !620 {
entry:
  %stream_0 = alloca %struct.input_stream, align 4
  %stream_1 = alloca %struct.input_stream, align 4
  %stream_2 = alloca %struct.output_stream, align 4
  %stream_3 = alloca %struct.output_stream, align 4
  store volatile i32 0, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @_ZL11sync_buffer, i32 0, i32 0), align 4, !dbg !631, !tbaa !632, !noalias !636
  store %struct.input_stream undef, %struct.input_stream* %stream_0, align 4, !dbg !642, !noalias !636
  %0 = bitcast %struct.input_stream* %stream_0 to i8*, !dbg !642
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #21, !dbg !642, !noalias !636
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.input_stream* %stream_0, metadata !622, metadata !DIExpression()), !dbg !643
  %1 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0s_struct.input_streams.i32(%struct.input_stream* %stream_0, i32 0, metadata !644), !dbg !642, !noalias !636
  call addrspace(1) void @_ZN12input_streamIfEC2Ej(%struct.input_stream* nonnull align 4 dereferenceable(4) %stream_0, i32 0) #22, !dbg !645, !noalias !636
  store %struct.input_stream undef, %struct.input_stream* %stream_1, align 4, !dbg !646, !noalias !636
  %2 = bitcast %struct.input_stream* %stream_1 to i8*, !dbg !646
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #21, !dbg !646, !noalias !636
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.input_stream* %stream_1, metadata !623, metadata !DIExpression()), !dbg !647
  %3 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0s_struct.input_streams.i32(%struct.input_stream* %stream_1, i32 0, metadata !648), !dbg !646, !noalias !636
  call addrspace(1) void @_ZN12input_streamIfEC2Ej(%struct.input_stream* nonnull align 4 dereferenceable(4) %stream_1, i32 1) #22, !dbg !649, !noalias !636
  store %struct.output_stream undef, %struct.output_stream* %stream_2, align 4, !dbg !650, !noalias !636
  %4 = bitcast %struct.output_stream* %stream_2 to i8*, !dbg !650
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #21, !dbg !650, !noalias !636
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.output_stream* %stream_2, metadata !624, metadata !DIExpression()), !dbg !651
  %5 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0s_struct.output_streams.i32(%struct.output_stream* %stream_2, i32 0, metadata !652), !dbg !650, !noalias !636
  call addrspace(1) void @_ZN13output_streamIfEC2Ej(%struct.output_stream* nonnull align 4 dereferenceable(4) %stream_2, i32 0) #22, !dbg !653, !noalias !636
  store %struct.output_stream undef, %struct.output_stream* %stream_3, align 4, !dbg !654, !noalias !636
  %6 = bitcast %struct.output_stream* %stream_3 to i8*, !dbg !654
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #21, !dbg !654, !noalias !636
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.output_stream* %stream_3, metadata !625, metadata !DIExpression()), !dbg !655
  %7 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0s_struct.output_streams.i32(%struct.output_stream* %stream_3, i32 0, metadata !656), !dbg !654, !noalias !636
  call addrspace(1) void @_ZN13output_streamIfEC2Ej(%struct.output_stream* nonnull align 4 dereferenceable(4) %stream_3, i32 1) #22, !dbg !657, !noalias !636
  call addrspace(1) void @llvm.dbg.value(metadata i32 undef, metadata !626, metadata !DIExpression()), !dbg !658
  call addrspace(1) void @llvm.dbg.value(metadata i32 1, metadata !626, metadata !DIExpression()), !dbg !658
  br label %while.cond, !dbg !659

while.cond:                                       ; preds = %while.end, %entry
  %index.0 = phi i32 [ 1, %entry ], [ %index.1.lcssa, %while.end ], !dbg !660
  call addrspace(1) void @llvm.dbg.value(metadata i32 %index.0, metadata !626, metadata !DIExpression()), !dbg !658
  call addrspace(1) void @llvm.dbg.value(metadata i32 undef, metadata !629, metadata !DIExpression()), !dbg !661
  %8 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @_ZL11sync_buffer, i32 0, i32 1), align 4, !dbg !662, !tbaa !632, !noalias !636
  call addrspace(1) void @llvm.dbg.value(metadata i32 %8, metadata !629, metadata !DIExpression()), !dbg !661
  call addrspace(1) void @llvm.dbg.value(metadata i32 %index.0, metadata !626, metadata !DIExpression()), !dbg !658
  %tobool1 = icmp ne i32 %8, 0, !dbg !663
  br i1 %tobool1, label %while.body2.lr.ph, label %while.end, !dbg !664

while.body2.lr.ph:                                ; preds = %while.cond
  br label %while.body2, !dbg !664

while.body2:                                      ; preds = %while.body2, %while.body2.lr.ph
  %index.13 = phi i32 [ %index.0, %while.body2.lr.ph ], [ %sub, %while.body2 ]
  %proc_24_0_bounds.02 = phi i32 [ %8, %while.body2.lr.ph ], [ %spec.select, %while.body2 ]
  call addrspace(1) void @llvm.dbg.value(metadata i32 %index.13, metadata !626, metadata !DIExpression()), !dbg !658
  call addrspace(1) void @llvm.dbg.value(metadata i32 %proc_24_0_bounds.02, metadata !629, metadata !DIExpression()), !dbg !661
  call addrspace(1) void @_Z13orthogonalizeILi8EEvP12input_streamIfES2_P13output_streamIfES5_(%struct.input_stream* %stream_0, %struct.input_stream* %stream_1, %struct.output_stream* %stream_2, %struct.output_stream* %stream_3) #22, !dbg !665, !noalias !636
  %sub = sub nsw i32 1, %index.13, !dbg !667
  call addrspace(1) void @llvm.dbg.value(metadata i32 %sub, metadata !626, metadata !DIExpression()), !dbg !658
  call addrspace(1) void @llvm.chess_memory_fence(), !dbg !668, !noalias !636
  %cmp = icmp sgt i32 %proc_24_0_bounds.02, 0, !dbg !669
  %dec = add nsw i32 %proc_24_0_bounds.02, -1
  %spec.select = select i1 %cmp, i32 %dec, i32 %proc_24_0_bounds.02, !dbg !671
  call addrspace(1) void @llvm.dbg.value(metadata i32 %spec.select, metadata !629, metadata !DIExpression()), !dbg !661
  %tobool = icmp ne i32 %spec.select, 0, !dbg !663
  br i1 %tobool, label %while.body2, label %while.cond1.while.end_crit_edge, !dbg !664, !llvm.loop !672

while.cond1.while.end_crit_edge:                  ; preds = %while.body2
  %split = phi i32 [ %sub, %while.body2 ]
  br label %while.end, !dbg !664

while.end:                                        ; preds = %while.cond1.while.end_crit_edge, %while.cond
  %index.1.lcssa = phi i32 [ %split, %while.cond1.while.end_crit_edge ], [ %index.0, %while.cond ], !dbg !658
  call addrspace(1) void @_Z4donev() #23, !dbg !675, !noalias !636
  %9 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @_ZL11sync_buffer, i32 0, i32 0), align 4, !dbg !676, !tbaa !632, !noalias !636
  %cmp3 = icmp sgt i32 %9, 0, !dbg !678
  br i1 %cmp3, label %while.end6, label %while.cond

while.end6:                                       ; preds = %while.end
  %10 = bitcast %struct.output_stream* %stream_3 to i8*, !dbg !679
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #21, !dbg !679
  %11 = bitcast %struct.output_stream* %stream_2 to i8*, !dbg !679
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #21, !dbg !679
  %12 = bitcast %struct.input_stream* %stream_1 to i8*, !dbg !679
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #21, !dbg !679
  %13 = bitcast %struct.input_stream* %stream_0 to i8*, !dbg !679
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %13) #21, !dbg !679
  ret i32 0, !dbg !679
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) addrspace(1) #5

; Function Attrs: inaccessiblememonly nounwind willreturn
declare i8* @llvm.noalias.decl.p0i8.p0s_struct.input_streams.i32(%struct.input_stream*, i32, metadata) addrspace(1) #6

; Function Attrs: nounwind
define linkonce_odr dso_local void @_ZN12input_streamIfEC2Ej(%struct.input_stream* nonnull align 4 dereferenceable(4) %this, i32 %ch) unnamed_addr addrspace(1) #7 comdat align 2 !dbg !680 {
entry:
  call addrspace(1) void @llvm.dbg.value(metadata %struct.input_stream* %this, metadata !682, metadata !DIExpression()), !dbg !685
  call addrspace(1) void @llvm.dbg.value(metadata i32 %ch, metadata !684, metadata !DIExpression()), !dbg !685
  %0 = getelementptr inbounds %struct.input_stream, %struct.input_stream* %this, i32 0, i32 0, !dbg !686
  %channel = bitcast %union.anon* %0 to i32*, !dbg !686
  store i32 %ch, i32* %channel, align 4, !dbg !686, !tbaa !687
  ret void, !dbg !686
}

; Function Attrs: inaccessiblememonly nounwind willreturn
declare i8* @llvm.noalias.decl.p0i8.p0s_struct.output_streams.i32(%struct.output_stream*, i32, metadata) addrspace(1) #6

; Function Attrs: nounwind
define linkonce_odr dso_local void @_ZN13output_streamIfEC2Ej(%struct.output_stream* nonnull align 4 dereferenceable(4) %this, i32 %ch) unnamed_addr addrspace(1) #7 comdat align 2 !dbg !688 {
entry:
  call addrspace(1) void @llvm.dbg.value(metadata %struct.output_stream* %this, metadata !690, metadata !DIExpression()), !dbg !693
  call addrspace(1) void @llvm.dbg.value(metadata i32 %ch, metadata !692, metadata !DIExpression()), !dbg !693
  %0 = getelementptr inbounds %struct.output_stream, %struct.output_stream* %this, i32 0, i32 0, !dbg !694
  %channel = bitcast %union.anon.0* %0 to i32*, !dbg !694
  store i32 %ch, i32* %channel, align 4, !dbg !694, !tbaa !687
  ret void, !dbg !694
}

; Function Attrs: mustprogress noinline nounwind
define linkonce_odr dso_local void @_Z13orthogonalizeILi8EEvP12input_streamIfES2_P13output_streamIfES5_(%struct.input_stream* chesscopy noalias %in0, %struct.input_stream* chesscopy noalias %in1, %struct.output_stream* chesscopy noalias %out0, %struct.output_stream* chesscopy noalias %out1) addrspace(1) #8 comdat !dbg !695 {
entry:
  %in0.addr = alloca %struct.input_stream*, align 4
  %in1.addr = alloca %struct.input_stream*, align 4
  %out0.addr = alloca %struct.output_stream*, align 4
  %out1.addr = alloca %struct.output_stream*, align 4
  %Ap = alloca [8 x float], align 4
  %Aq = alloca [8 x float], align 4
  %tau = alloca float, align 4
  %0 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0p0s_struct.input_streams.i32(%struct.input_stream** %in0.addr, i32 0, metadata !726), !noalias !729
  store %struct.input_stream* %in0, %struct.input_stream** %in0.addr, align 4, !tbaa !733, !noalias !729
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.input_stream** %in0.addr, metadata !701, metadata !DIExpression()), !dbg !735
  %1 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0p0s_struct.input_streams.i32(%struct.input_stream** %in1.addr, i32 0, metadata !736), !noalias !729
  store %struct.input_stream* %in1, %struct.input_stream** %in1.addr, align 4, !tbaa !733, !noalias !729
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.input_stream** %in1.addr, metadata !702, metadata !DIExpression()), !dbg !737
  %2 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0p0s_struct.output_streams.i32(%struct.output_stream** %out0.addr, i32 0, metadata !738), !noalias !729
  store %struct.output_stream* %out0, %struct.output_stream** %out0.addr, align 4, !tbaa !733, !noalias !729
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.output_stream** %out0.addr, metadata !703, metadata !DIExpression()), !dbg !739
  %3 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0p0s_struct.output_streams.i32(%struct.output_stream** %out1.addr, i32 0, metadata !740), !noalias !729
  store %struct.output_stream* %out1, %struct.output_stream** %out1.addr, align 4, !tbaa !733, !noalias !729
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.output_stream** %out1.addr, metadata !704, metadata !DIExpression()), !dbg !741
  call addrspace(1) void @llvm.dbg.value(metadata i32 undef, metadata !705, metadata !DIExpression()), !dbg !742
  call addrspace(1) void @llvm.dbg.value(metadata i32 4, metadata !705, metadata !DIExpression()), !dbg !742
  store [8 x float] undef, [8 x float]* %Ap, align 4, !dbg !743, !noalias !729
  %4 = bitcast [8 x float]* %Ap to i8*, !dbg !743
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 32, i8* %4) #21, !dbg !743, !noalias !729
  call addrspace(1) void @llvm.dbg.declare(metadata [8 x float]* %Ap, metadata !707, metadata !DIExpression()), !dbg !744
  store [8 x float] undef, [8 x float]* %Aq, align 4, !dbg !743, !noalias !729
  %5 = bitcast [8 x float]* %Aq to i8*, !dbg !743
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 32, i8* %5) #21, !dbg !743, !noalias !729
  call addrspace(1) void @llvm.dbg.declare(metadata [8 x float]* %Aq, metadata !709, metadata !DIExpression()), !dbg !745
  call addrspace(1) void @llvm.dbg.value(metadata [8 x float] undef, metadata !710, metadata !DIExpression()), !dbg !742
  call addrspace(1) void @llvm.dbg.value(metadata [8 x float] undef, metadata !711, metadata !DIExpression()), !dbg !742
  call addrspace(1) void @llvm.dbg.value(metadata i32 undef, metadata !712, metadata !DIExpression()), !dbg !746
  call addrspace(1) void @llvm.dbg.value(metadata i32 0, metadata !712, metadata !DIExpression()), !dbg !746
  br label %for.body, !dbg !747

for.cond4.preheader:                              ; preds = %for.body
  call addrspace(1) void @llvm.dbg.value(metadata float 0.000000e+00, metadata !714, metadata !DIExpression()), !dbg !742
  call addrspace(1) void @llvm.dbg.value(metadata float 0.000000e+00, metadata !715, metadata !DIExpression()), !dbg !742
  call addrspace(1) void @llvm.dbg.value(metadata i32 0, metadata !716, metadata !DIExpression()), !dbg !748
  br label %for.body7, !dbg !749

for.body:                                         ; preds = %for.body, %entry
  %i.01 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  call addrspace(1) void @llvm.dbg.value(metadata i32 %i.01, metadata !712, metadata !DIExpression()), !dbg !746
  %6 = load %struct.input_stream*, %struct.input_stream** %in0.addr, align 4, !dbg !750, !tbaa !733, !noalias !729
  %7 = call addrspace(1) %struct.input_stream* @llvm.noalias.p0s_struct.input_streams.p0i8.p0p0s_struct.input_streams.i32(%struct.input_stream* %6, i8* %0, %struct.input_stream** %in0.addr, i32 0, metadata !726), !dbg !750, !tbaa !733, !noalias !729
  %call = call addrspace(1) float @_ZL8readincrIL22aie_stream_resource_in0EfET0_P12input_streamIS1_E(%struct.input_stream* %7) #22, !dbg !753, !noalias !729
  %arrayidx = getelementptr inbounds [8 x float], [8 x float]* %Ap, i32 0, i32 %i.01, !dbg !754
  store float %call, float* %arrayidx, align 4, !dbg !755, !tbaa !756, !noalias !729
  %8 = load %struct.input_stream*, %struct.input_stream** %in1.addr, align 4, !dbg !758, !tbaa !733, !noalias !729
  %9 = call addrspace(1) %struct.input_stream* @llvm.noalias.p0s_struct.input_streams.p0i8.p0p0s_struct.input_streams.i32(%struct.input_stream* %8, i8* %1, %struct.input_stream** %in1.addr, i32 0, metadata !736), !dbg !758, !tbaa !733, !noalias !729
  %call1 = call addrspace(1) float @_ZL8readincrIL22aie_stream_resource_in0EfET0_P12input_streamIS1_E(%struct.input_stream* %9) #22, !dbg !759, !noalias !729
  %arrayidx2 = getelementptr inbounds [8 x float], [8 x float]* %Aq, i32 0, i32 %i.01, !dbg !760
  store float %call1, float* %arrayidx2, align 4, !dbg !761, !tbaa !756, !noalias !729
  %inc = add nsw i32 %i.01, 1, !dbg !762
  call addrspace(1) void @llvm.dbg.value(metadata i32 %inc, metadata !712, metadata !DIExpression()), !dbg !746
  %cmp = icmp slt i32 %inc, 8, !dbg !763
  br i1 %cmp, label %for.body, label %for.cond4.preheader, !dbg !747, !llvm.loop !764

for.body7:                                        ; preds = %for.body7, %for.cond4.preheader
  %tmp1.04 = phi float [ 0.000000e+00, %for.cond4.preheader ], [ %add, %for.body7 ]
  %tmp2.03 = phi float [ 0.000000e+00, %for.cond4.preheader ], [ %17, %for.body7 ]
  %i3.02 = phi i32 [ 0, %for.cond4.preheader ], [ %inc17, %for.body7 ]
  call addrspace(1) void @llvm.dbg.value(metadata float %tmp1.04, metadata !714, metadata !DIExpression()), !dbg !742
  call addrspace(1) void @llvm.dbg.value(metadata float %tmp2.03, metadata !715, metadata !DIExpression()), !dbg !742
  call addrspace(1) void @llvm.dbg.value(metadata i32 %i3.02, metadata !716, metadata !DIExpression()), !dbg !748
  %arrayidx8 = getelementptr inbounds [8 x float], [8 x float]* %Ap, i32 0, i32 %i3.02, !dbg !768
  %10 = load float, float* %arrayidx8, align 4, !dbg !768, !tbaa !756, !noalias !729
  %arrayidx9 = getelementptr inbounds [8 x float], [8 x float]* %Ap, i32 0, i32 %i3.02, !dbg !771
  %11 = load float, float* %arrayidx9, align 4, !dbg !771, !tbaa !756, !noalias !729
  %arrayidx10 = getelementptr inbounds [8 x float], [8 x float]* %Aq, i32 0, i32 %i3.02, !dbg !772
  %12 = load float, float* %arrayidx10, align 4, !dbg !772, !tbaa !756, !noalias !729
  %arrayidx11 = getelementptr inbounds [8 x float], [8 x float]* %Aq, i32 0, i32 %i3.02, !dbg !773
  %13 = load float, float* %arrayidx11, align 4, !dbg !773, !tbaa !756, !noalias !729
  %mul12 = fmul float %12, %13, !dbg !774
  %neg = fneg float %mul12, !dbg !775
  %14 = call addrspace(1) float @llvm.fmuladd.f32(float %10, float %11, float %neg), !dbg !775
  %add = fadd float %tmp1.04, %14, !dbg !776
  call addrspace(1) void @llvm.dbg.value(metadata float %add, metadata !714, metadata !DIExpression()), !dbg !742
  %arrayidx13 = getelementptr inbounds [8 x float], [8 x float]* %Ap, i32 0, i32 %i3.02, !dbg !777
  %15 = load float, float* %arrayidx13, align 4, !dbg !777, !tbaa !756, !noalias !729
  %mul = fmul float 2.000000e+00, %15, !dbg !778
  %arrayidx14 = getelementptr inbounds [8 x float], [8 x float]* %Aq, i32 0, i32 %i3.02, !dbg !779
  %16 = load float, float* %arrayidx14, align 4, !dbg !779, !tbaa !756, !noalias !729
  %17 = call addrspace(1) float @llvm.fmuladd.f32(float %mul, float %16, float %tmp2.03), !dbg !780
  call addrspace(1) void @llvm.dbg.value(metadata float %17, metadata !715, metadata !DIExpression()), !dbg !742
  %inc17 = add nsw i32 %i3.02, 1, !dbg !781
  call addrspace(1) void @llvm.dbg.value(metadata i32 %inc17, metadata !716, metadata !DIExpression()), !dbg !748
  %cmp5 = icmp slt i32 %inc17, 8, !dbg !782
  br i1 %cmp5, label %for.body7, label %for.end18, !dbg !749, !llvm.loop !783

for.end18:                                        ; preds = %for.body7
  %tmp2.0.lcssa = phi float [ %17, %for.body7 ], !dbg !742
  %tmp1.0.lcssa = phi float [ %add, %for.body7 ], !dbg !742
  store float undef, float* %tau, align 4, !dbg !785, !noalias !729
  %18 = bitcast float* %tau to i8*, !dbg !785
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #21, !dbg !785, !noalias !729
  call addrspace(1) void @llvm.dbg.declare(metadata float* %tau, metadata !718, metadata !DIExpression()), !dbg !786
  %div = fdiv float %tmp1.0.lcssa, %tmp2.0.lcssa, !dbg !787
  store float %div, float* %tau, align 4, !dbg !786, !tbaa !756, !noalias !729
  call addrspace(1) void @llvm.dbg.value(metadata float undef, metadata !719, metadata !DIExpression()), !dbg !742
  %19 = load float, float* %tau, align 4, !dbg !788, !tbaa !756, !noalias !729
  %call19 = call addrspace(1) float @_Z4signf(float %19) #22, !dbg !789, !noalias !729
  %call20 = call addrspace(1) float @_ZN3aie3absIfEENS_17operand_base_typeINS_6detail5utils10remove_allIT_E4typeEE4typeERKS5_(float* nonnull align 4 dereferenceable(4) %tau) #22, !dbg !790, !noalias !729
  %20 = load float, float* %tau, align 4, !dbg !791, !tbaa !756, !noalias !729
  %21 = load float, float* %tau, align 4, !dbg !792, !tbaa !756, !noalias !729
  %22 = call addrspace(1) float @llvm.fmuladd.f32(float %20, float %21, float 1.000000e+00), !dbg !793
  %call22 = call addrspace(1) float @_ZN3aie4sqrtIfEEDaT_(float %22) #22, !dbg !794, !noalias !729
  %add23 = fadd float %call20, %call22, !dbg !795
  %div24 = fdiv float %call19, %add23, !dbg !796
  call addrspace(1) void @llvm.dbg.value(metadata float %div24, metadata !719, metadata !DIExpression()), !dbg !742
  call addrspace(1) void @llvm.dbg.value(metadata float undef, metadata !720, metadata !DIExpression()), !dbg !742
  %23 = call addrspace(1) float @llvm.fmuladd.f32(float %div24, float %div24, float 1.000000e+00), !dbg !797
  %call26 = call addrspace(1) float @_ZN3aie4sqrtIfEEDaT_(float %23) #22, !dbg !798, !noalias !729
  %div27 = fdiv float 1.000000e+00, %call26, !dbg !799
  call addrspace(1) void @llvm.dbg.value(metadata float %div27, metadata !720, metadata !DIExpression()), !dbg !742
  call addrspace(1) void @llvm.dbg.value(metadata float undef, metadata !721, metadata !DIExpression()), !dbg !742
  %mul28 = fmul float %div24, %div27, !dbg !800
  call addrspace(1) void @llvm.dbg.value(metadata float %mul28, metadata !721, metadata !DIExpression()), !dbg !742
  call addrspace(1) void @llvm.dbg.value(metadata i32 undef, metadata !722, metadata !DIExpression()), !dbg !801
  call addrspace(1) void @llvm.dbg.value(metadata i32 0, metadata !722, metadata !DIExpression()), !dbg !801
  br label %for.body33, !dbg !802

for.body33:                                       ; preds = %for.body33, %for.end18
  %i29.05 = phi i32 [ 0, %for.end18 ], [ %inc43, %for.body33 ]
  call addrspace(1) void @llvm.dbg.value(metadata i32 %i29.05, metadata !722, metadata !DIExpression()), !dbg !801
  %24 = load %struct.output_stream*, %struct.output_stream** %out0.addr, align 4, !dbg !803, !tbaa !733, !noalias !729
  %25 = call addrspace(1) %struct.output_stream* @llvm.noalias.p0s_struct.output_streams.p0i8.p0p0s_struct.output_streams.i32(%struct.output_stream* %24, i8* %2, %struct.output_stream** %out0.addr, i32 0, metadata !738), !dbg !803, !tbaa !733, !noalias !729
  %arrayidx34 = getelementptr inbounds [8 x float], [8 x float]* %Ap, i32 0, i32 %i29.05, !dbg !806
  %26 = load float, float* %arrayidx34, align 4, !dbg !806, !tbaa !756, !noalias !729
  %arrayidx36 = getelementptr inbounds [8 x float], [8 x float]* %Aq, i32 0, i32 %i29.05, !dbg !807
  %27 = load float, float* %arrayidx36, align 4, !dbg !807, !tbaa !756, !noalias !729
  %mul37 = fmul float %27, %mul28, !dbg !808
  %28 = call addrspace(1) float @llvm.fmuladd.f32(float %26, float %div27, float %mul37), !dbg !809
  call addrspace(1) void @_ZL9writeincrIL23aie_stream_resource_out0EfEvP13output_streamIT0_ENSt3__213type_identityIS2_E4typeEb(%struct.output_stream* %25, float %28, i1 zeroext false) #22, !dbg !810, !noalias !729
  %29 = load %struct.output_stream*, %struct.output_stream** %out1.addr, align 4, !dbg !811, !tbaa !733, !noalias !729
  %30 = call addrspace(1) %struct.output_stream* @llvm.noalias.p0s_struct.output_streams.p0i8.p0p0s_struct.output_streams.i32(%struct.output_stream* %29, i8* %3, %struct.output_stream** %out1.addr, i32 0, metadata !740), !dbg !811, !tbaa !733, !noalias !729
  %arrayidx38 = getelementptr inbounds [8 x float], [8 x float]* %Ap, i32 0, i32 %i29.05, !dbg !812
  %31 = load float, float* %arrayidx38, align 4, !dbg !812, !tbaa !756, !noalias !729
  %fneg = fneg float %31, !dbg !813
  %arrayidx40 = getelementptr inbounds [8 x float], [8 x float]* %Aq, i32 0, i32 %i29.05, !dbg !814
  %32 = load float, float* %arrayidx40, align 4, !dbg !814, !tbaa !756, !noalias !729
  %mul41 = fmul float %32, %div27, !dbg !815
  %33 = call addrspace(1) float @llvm.fmuladd.f32(float %fneg, float %mul28, float %mul41), !dbg !816
  call addrspace(1) void @_ZL9writeincrIL23aie_stream_resource_out0EfEvP13output_streamIT0_ENSt3__213type_identityIS2_E4typeEb(%struct.output_stream* %30, float %33, i1 zeroext false) #22, !dbg !817, !noalias !729
  %inc43 = add nsw i32 %i29.05, 1, !dbg !818
  call addrspace(1) void @llvm.dbg.value(metadata i32 %inc43, metadata !722, metadata !DIExpression()), !dbg !801
  %cmp31 = icmp slt i32 %inc43, 8, !dbg !819
  br i1 %cmp31, label %for.body33, label %for.end44, !dbg !802, !llvm.loop !820

for.end44:                                        ; preds = %for.body33
  %34 = bitcast float* %tau to i8*, !dbg !822
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #21, !dbg !822
  %35 = bitcast [8 x float]* %Aq to i8*, !dbg !822
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 32, i8* %35) #21, !dbg !822
  %36 = bitcast [8 x float]* %Ap to i8*, !dbg !822
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 32, i8* %36) #21, !dbg !822
  ret void, !dbg !822
}

; Function Attrs: nounwind willreturn
declare void @llvm.chess_memory_fence() addrspace(1) #9

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local void @_Z4donev() addrspace(1) #10 comdat {
entry:
  %agg.tmp = alloca %struct.ipd.custom_type.uint2_t.uint2_t, align 4
  %custom_type.tmp = alloca %struct.ipd.custom_type.uint2_t.uint2_t, align 4
  call addrspace(1) void @llvm.chess_memory_fence()
  call addrspace(1) void @_Z25chess_separator_scheduleri(i32 8) #24
  call addrspace(1) void @_ZN7uint2_tC2Ei(%struct.ipd.custom_type.uint2_t.uint2_t* nonnull align 4 dereferenceable(1) %custom_type.tmp, i32 2) #22
  %0 = load %struct.ipd.custom_type.uint2_t.uint2_t, %struct.ipd.custom_type.uint2_t.uint2_t* %custom_type.tmp, align 4, !tbaa !823
  store %struct.ipd.custom_type.uint2_t.uint2_t %0, %struct.ipd.custom_type.uint2_t.uint2_t* %agg.tmp, align 4, !tbaa !823
  %1 = load %struct.ipd.custom_type.uint2_t.uint2_t, %struct.ipd.custom_type.uint2_t.uint2_t* %agg.tmp, align 4, !tbaa !823
  call addrspace(1) void @_ZN12me_primitive5eventE7uint2_t(%struct.ipd.custom_type.uint2_t.uint2_t %1) #25
  call addrspace(1) void @_Z25chess_separator_scheduleri(i32 5) #24
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
  %0 = load %struct.ipd.custom_type.uint2_t.uint2_t, %struct.ipd.custom_type.uint2_t.uint2_t* %a0, align 4, !tbaa !823
  call x86_regcallcc addrspace(1) void @__regcall3__chessintr_void_event_uint2_t(%struct.ipd.custom_type.uint2_t.uint2_t %0) #24
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dso_local void @_ZN7uint2_tC2Ei(%struct.ipd.custom_type.uint2_t.uint2_t* nonnull align 4 dereferenceable(1) %this, i32 %a) unnamed_addr addrspace(1) #13 comdat align 2 {
entry:
  %this.addr = alloca %struct.ipd.custom_type.uint2_t.uint2_t*, align 4
  %a.addr = alloca i32, align 4
  store %struct.ipd.custom_type.uint2_t.uint2_t* %this, %struct.ipd.custom_type.uint2_t.uint2_t** %this.addr, align 4, !tbaa !733
  store i32 2, i32* %a.addr, align 4, !tbaa !632
  %this1 = load %struct.ipd.custom_type.uint2_t.uint2_t*, %struct.ipd.custom_type.uint2_t.uint2_t** %this.addr, align 4
  %0 = bitcast %struct.ipd.custom_type.uint2_t.uint2_t* %this1 to i2*
  store i2 0, i2* %0, align 4
  %1 = load i32, i32* %a.addr, align 4, !tbaa !632
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

; Function Attrs: inlinehint mustprogress nounwind
define internal float @_ZL8readincrIL22aie_stream_resource_in0EfET0_P12input_streamIS1_E(%struct.input_stream* %ss) addrspace(1) #16 !dbg !825 {
entry:
  call addrspace(1) void @llvm.dbg.value(metadata %struct.input_stream* %ss, metadata !830, metadata !DIExpression()), !dbg !838
  call addrspace(1) void @llvm.dbg.value(metadata i32 undef, metadata !831, metadata !DIExpression()), !dbg !838
  %call = call addrspace(1) i32 @_ZN12stream_utilsL17aie_stream_get_ssIffEEiP12input_streamIT0_E(%struct.input_stream* %ss) #22, !dbg !839
  call addrspace(1) void @llvm.dbg.value(metadata i32 %call, metadata !831, metadata !DIExpression()), !dbg !838
  call addrspace(1) void @llvm.dbg.value(metadata float undef, metadata !834, metadata !DIExpression()), !dbg !838
  %call1 = call addrspace(1) float @_Z8as_floati(i32 %call) #22, !dbg !840
  call addrspace(1) void @llvm.dbg.value(metadata float %call1, metadata !834, metadata !DIExpression()), !dbg !838
  ret float %call1, !dbg !848
}

; Function Attrs: argmemonly nounwind speculatable willreturn
declare %struct.input_stream* @llvm.noalias.p0s_struct.input_streams.p0i8.p0p0s_struct.input_streams.i32(%struct.input_stream*, i8*, %struct.input_stream**, i32, metadata) addrspace(1) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) addrspace(1) #3

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local float @_ZN3aie3absIfEENS_17operand_base_typeINS_6detail5utils10remove_allIT_E4typeEE4typeERKS5_(float* nonnull align 4 dereferenceable(4) %a) addrspace(1) #18 comdat !dbg !152 {
entry:
  call addrspace(1) void @llvm.dbg.value(metadata float* %a, metadata !166, metadata !DIExpression()), !dbg !849
  call addrspace(1) void @llvm.dbg.value(metadata float undef, metadata !167, metadata !DIExpression()), !dbg !849
  %0 = load float, float* %a, align 4, !dbg !850, !tbaa !756
  call addrspace(1) void @llvm.dbg.value(metadata float %0, metadata !167, metadata !DIExpression()), !dbg !849
  %call = call addrspace(1) float @_ZNSt3__23absEf(float %0) #26, !dbg !851
  ret float %call, !dbg !853
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local float @_ZN3aie4sqrtIfEEDaT_(float %a) addrspace(1) #18 comdat !dbg !854 {
entry:
  %a.addr = alloca float, align 4
  store float %a, float* %a.addr, align 4, !tbaa !756
  call addrspace(1) void @llvm.dbg.declare(metadata float* %a.addr, metadata !856, metadata !DIExpression()), !dbg !857
  %call = call addrspace(1) float @_ZN3aie6detail15elementary_bitsILNS0_12ElementaryOpE0ELj32EffE3runERKfi(float* nonnull align 4 dereferenceable(4) %a.addr, i32 0) #22, !dbg !858
  ret float %call, !dbg !859
}

; Function Attrs: inlinehint mustprogress nounwind
define internal void @_ZL9writeincrIL23aie_stream_resource_out0EfEvP13output_streamIT0_ENSt3__213type_identityIS2_E4typeEb(%struct.output_stream* %str, float %value, i1 zeroext %tlast) addrspace(1) #16 !dbg !860 {
entry:
  call addrspace(1) void @llvm.dbg.value(metadata %struct.output_stream* %str, metadata !871, metadata !DIExpression()), !dbg !877
  call addrspace(1) void @llvm.dbg.value(metadata float %value, metadata !872, metadata !DIExpression()), !dbg !877
  %frombool = zext i1 false to i8
  call addrspace(1) void @llvm.dbg.value(metadata i8 %frombool, metadata !873, metadata !DIExpression()), !dbg !877
  call addrspace(1) void @llvm.dbg.value(metadata i32 undef, metadata !874, metadata !DIExpression()), !dbg !877
  %call = call addrspace(1) i32 @_Z8as_int32f(float %value) #22, !dbg !878
  call addrspace(1) void @llvm.dbg.value(metadata i32 %call, metadata !874, metadata !DIExpression()), !dbg !877
  %tobool = trunc i8 %frombool to i1, !dbg !886
  call addrspace(1) void @_ZN12stream_utilsL17aie_stream_put_msIffEEvP13output_streamIT0_Eib(%struct.output_stream* %str, i32 %call, i1 zeroext %tobool) #22, !dbg !887
  ret void, !dbg !888
}

; Function Attrs: argmemonly nounwind speculatable willreturn
declare %struct.output_stream* @llvm.noalias.p0s_struct.output_streams.p0i8.p0p0s_struct.output_streams.i32(%struct.output_stream*, i8*, %struct.output_stream**, i32, metadata) addrspace(1) #17

; Function Attrs: inlinehint mustprogress nounwind
define internal i32 @_ZN12stream_utilsL17aie_stream_get_ssIffEEiP12input_streamIT0_E(%struct.input_stream* %ss) addrspace(1) #16 !dbg !889 {
entry:
  call addrspace(1) void @llvm.dbg.value(metadata %struct.input_stream* %ss, metadata !895, metadata !DIExpression()), !dbg !897
  %0 = getelementptr inbounds %struct.input_stream, %struct.input_stream* %ss, i32 0, i32 0, !dbg !898
  %channel = bitcast %union.anon* %0 to i32*, !dbg !898
  %1 = load i32, i32* %channel, align 4, !dbg !898, !tbaa !687
  %call = call addrspace(1) i32 @_Z6get_ssi(i32 %1) #27, !dbg !901
  ret i32 %call, !dbg !902
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local float @_Z8as_floati(i32 %a0) addrspace(1) #18 comdat {
entry:
  %a0.addr = alloca i32, align 4
  store i32 %a0, i32* %a0.addr, align 4, !tbaa !632
  %0 = load i32, i32* %a0.addr, align 4, !tbaa !632
  %call = call x86_regcallcc addrspace(1) float @__regcall3__chessintr___ffloat_as_float___sint(i32 signext %0) #28
  ret float %call
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local i32 @_Z6get_ssi(i32 %idx_ss) addrspace(1) #19 comdat {
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
  store i32 %idx_ss, i32* %idx_ss.addr, align 4, !tbaa !632
  %0 = load i32, i32* %idx_ss.addr, align 4, !tbaa !632
  %cmp = icmp eq i32 %0, 0
  %1 = call addrspace(1) i1 @llvm.chess_manifest(i1 %cmp)
  br i1 %1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 undef, i32* %tmp1, align 4
  %2 = bitcast i32* %tmp1 to i8*
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #21
  store i32 undef, i32* %tmp2, align 4
  %3 = bitcast i32* %tmp2 to i8*
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #21
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp, i32 0) #22
  %4 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp, align 4, !tbaa !903
  store %struct.ipd.custom_type.uint1_t.uint1_t %4, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp, align 4, !tbaa !903
  %5 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp, align 4, !tbaa !903
  %call = call addrspace(1) i32 @_ZN12me_primitive11stream_readIiEEN13chessEnableIfIXsr17chessIsCompatibleIN15chessRemoveQualIT_E4typeEiEE5valueEiE4typeEPU4AS23U16__protect_accessi7uint1_tRS3_(i32 addrspace(23)* addrspacecast (i32 addrspace(25)* @_ZN12me_primitive3ss0E to i32 addrspace(23)*), %struct.ipd.custom_type.uint1_t.uint1_t %5, i32* nonnull align 4 dereferenceable(4) %tmp1) #29
  store i32 %call, i32* %tmp2, align 4, !tbaa !632
  %6 = load i32, i32* %tmp1, align 4, !tbaa !632
  store volatile i32 %6, i32 addrspace(19)* @_ZN12me_primitive4sst0E, align 1, !tbaa !632, !chess_protect_access !905
  %7 = load i32, i32* %tmp2, align 4, !tbaa !632
  store i32 %7, i32* %retval, align 4
  %8 = bitcast i32* %tmp2 to i8*
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #21
  %9 = bitcast i32* %tmp1 to i8*
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #21
  br label %return

if.else:                                          ; preds = %entry
  %10 = load i32, i32* %idx_ss.addr, align 4, !tbaa !632
  %cmp1 = icmp eq i32 %10, 1
  %11 = call addrspace(1) i1 @llvm.chess_manifest(i1 %cmp1)
  br i1 %11, label %if.then2, label %if.else8

if.then2:                                         ; preds = %if.else
  store i32 undef, i32* %tmp13, align 4
  %12 = bitcast i32* %tmp13 to i8*
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #21
  store i32 undef, i32* %tmp24, align 4
  %13 = bitcast i32* %tmp24 to i8*
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #21
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp6, i32 0) #22
  %14 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp6, align 4, !tbaa !903
  store %struct.ipd.custom_type.uint1_t.uint1_t %14, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp5, align 4, !tbaa !903
  %15 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp5, align 4, !tbaa !903
  %call7 = call addrspace(1) i32 @_ZN12me_primitive11stream_readIiEEN13chessEnableIfIXsr17chessIsCompatibleIN15chessRemoveQualIT_E4typeEiEE5valueEiE4typeEPU4AS24U16__protect_accessi7uint1_tRS3_(i32 addrspace(24)* addrspacecast (i32 addrspace(26)* @_ZN12me_primitive3ss1E to i32 addrspace(24)*), %struct.ipd.custom_type.uint1_t.uint1_t %15, i32* nonnull align 4 dereferenceable(4) %tmp13) #29
  store i32 %call7, i32* %tmp24, align 4, !tbaa !632
  %16 = load i32, i32* %tmp13, align 4, !tbaa !632
  store volatile i32 %16, i32 addrspace(19)* @_ZN12me_primitive4sst1E, align 1, !tbaa !632, !chess_protect_access !905
  %17 = load i32, i32* %tmp24, align 4, !tbaa !632
  store i32 %17, i32* %retval, align 4
  %18 = bitcast i32* %tmp24 to i8*
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #21
  %19 = bitcast i32* %tmp13 to i8*
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #21
  br label %return

if.else8:                                         ; preds = %if.else
  store i32 undef, i32* %tmp19, align 4
  %20 = bitcast i32* %tmp19 to i8*
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #21
  store i32 undef, i32* %tmp210, align 4
  %21 = bitcast i32* %tmp210 to i8*
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %21) #21
  %22 = load i32, i32* %idx_ss.addr, align 4, !tbaa !632
  %conv = trunc i32 %22 to i1
  %23 = inttoptr i1 %conv to i32 addrspace(15)*
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp12, i32 0) #22
  %24 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp12, align 4, !tbaa !903
  store %struct.ipd.custom_type.uint1_t.uint1_t %24, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp11, align 4, !tbaa !903
  %25 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp11, align 4, !tbaa !903
  %call13 = call addrspace(1) i32 @_ZN12me_primitive11stream_readIiEEN13chessEnableIfIXsr17chessIsCompatibleIN15chessRemoveQualIT_E4typeEiEE5valueEiE4typeEPU4AS15U16__protect_accessi7uint1_tRS3_(i32 addrspace(15)* %23, %struct.ipd.custom_type.uint1_t.uint1_t %25, i32* nonnull align 4 dereferenceable(4) %tmp19) #29
  store i32 %call13, i32* %tmp210, align 4, !tbaa !632
  %26 = load i32, i32* %tmp19, align 4, !tbaa !632
  %27 = load i32, i32* %idx_ss.addr, align 4, !tbaa !632
  %conv14 = trunc i32 %27 to i1
  %28 = inttoptr i1 %conv14 to i32 addrspace(19)*
  store volatile i32 %26, i32 addrspace(19)* %28, align 1, !tbaa !632, !chess_protect_access !905
  %29 = load i32, i32* %tmp210, align 4, !tbaa !632
  store i32 %29, i32* %retval, align 4
  %30 = bitcast i32* %tmp210 to i8*
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #21
  %31 = bitcast i32* %tmp19 to i8*
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #21
  br label %return

return:                                           ; preds = %if.else8, %if.then2, %if.then
  %32 = load i32, i32* %retval, align 4
  ret i32 %32
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.chess_manifest(i1) addrspace(1) #15

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local i32 @_ZN12me_primitive11stream_readIiEEN13chessEnableIfIXsr17chessIsCompatibleIN15chessRemoveQualIT_E4typeEiEE5valueEiE4typeEPU4AS23U16__protect_accessi7uint1_tRS3_(i32 addrspace(23)* %a0, %struct.ipd.custom_type.uint1_t.uint1_t %a1.coerce, i32* nonnull align 4 dereferenceable(4) %a2) addrspace(1) #12 comdat {
entry:
  %a1 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %a0.addr = alloca i32 addrspace(23)*, align 4
  %a2.addr = alloca i32*, align 4
  %out = alloca %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint", align 1
  store %struct.ipd.custom_type.uint1_t.uint1_t %a1.coerce, %struct.ipd.custom_type.uint1_t.uint1_t* %a1, align 4
  store i32 addrspace(23)* addrspacecast (i32 addrspace(25)* @_ZN12me_primitive3ss0E to i32 addrspace(23)*), i32 addrspace(23)** %a0.addr, align 4, !tbaa !733
  store i32* %a2, i32** %a2.addr, align 4, !tbaa !733
  store %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint" undef, %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint"* %out, align 1
  %0 = bitcast %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint"* %out to i8*
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #21
  %1 = load i32 addrspace(23)*, i32 addrspace(23)** %a0.addr, align 4, !tbaa !733
  %2 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a1, align 4, !tbaa !903
  %call = call x86_regcallcc addrspace(1) %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint" @__regcall3__chessintr___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint(i32 addrspace(23)* "ipd_load"="0,4" %1, %struct.ipd.custom_type.uint1_t.uint1_t %2) #30
  %3 = getelementptr inbounds %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint", %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint"* %out, i32 0, i32 0
  %4 = extractvalue %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint" %call, 0
  store i32 %4, i32* %3, align 1
  %5 = getelementptr inbounds %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint", %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint"* %out, i32 0, i32 1
  %6 = extractvalue %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint" %call, 1
  store i32 %6, i32* %5, align 1
  %o1 = getelementptr inbounds %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint", %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint"* %out, i32 0, i32 1
  %7 = load i32, i32* %o1, align 1, !tbaa !906
  %8 = load i32*, i32** %a2.addr, align 4, !tbaa !733
  store i32 %7, i32* %8, align 4, !tbaa !632
  %o0 = getelementptr inbounds %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint", %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint"* %out, i32 0, i32 0
  %9 = load i32, i32* %o0, align 1, !tbaa !908
  %10 = bitcast %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint"* %out to i8*
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #21
  ret i32 %9
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dso_local void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %this, i32 %a) unnamed_addr addrspace(1) #13 comdat align 2 {
entry:
  %this.addr = alloca %struct.ipd.custom_type.uint1_t.uint1_t*, align 4
  %a.addr = alloca i32, align 4
  store %struct.ipd.custom_type.uint1_t.uint1_t* %this, %struct.ipd.custom_type.uint1_t.uint1_t** %this.addr, align 4, !tbaa !733
  store i32 %a, i32* %a.addr, align 4, !tbaa !632
  %this1 = load %struct.ipd.custom_type.uint1_t.uint1_t*, %struct.ipd.custom_type.uint1_t.uint1_t** %this.addr, align 4
  %0 = bitcast %struct.ipd.custom_type.uint1_t.uint1_t* %this1 to i1*
  store i1 false, i1* %0, align 4
  %1 = load i32, i32* %a.addr, align 4, !tbaa !632
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
  store i32 addrspace(24)* addrspacecast (i32 addrspace(26)* @_ZN12me_primitive3ss1E to i32 addrspace(24)*), i32 addrspace(24)** %a0.addr, align 4, !tbaa !733
  store i32* %a2, i32** %a2.addr, align 4, !tbaa !733
  store %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint" undef, %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint"* %out, align 1
  %0 = bitcast %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint"* %out to i8*
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #21
  %1 = load i32 addrspace(24)*, i32 addrspace(24)** %a0.addr, align 4, !tbaa !733
  %2 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a1, align 4, !tbaa !903
  %call = call x86_regcallcc addrspace(1) %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint" @__regcall3__chessintr___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint(i32 addrspace(24)* "ipd_load"="0,4" %1, %struct.ipd.custom_type.uint1_t.uint1_t %2) #30
  %3 = getelementptr inbounds %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint", %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint"* %out, i32 0, i32 0
  %4 = extractvalue %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint" %call, 0
  store i32 %4, i32* %3, align 1
  %5 = getelementptr inbounds %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint", %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint"* %out, i32 0, i32 1
  %6 = extractvalue %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint" %call, 1
  store i32 %6, i32* %5, align 1
  %o1 = getelementptr inbounds %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint", %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint"* %out, i32 0, i32 1
  %7 = load i32, i32* %o1, align 1, !tbaa !909
  %8 = load i32*, i32** %a2.addr, align 4, !tbaa !733
  store i32 %7, i32* %8, align 4, !tbaa !632
  %o0 = getelementptr inbounds %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint", %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint"* %out, i32 0, i32 0
  %9 = load i32, i32* %o0, align 1, !tbaa !911
  %10 = bitcast %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint"* %out to i8*
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #21
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
  store i32 addrspace(15)* %a0, i32 addrspace(15)** %a0.addr, align 4, !tbaa !733
  store i32* %a2, i32** %a2.addr, align 4, !tbaa !733
  store %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint" undef, %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint"* %out, align 1
  %0 = bitcast %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint"* %out to i8*
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #21
  %1 = load i32 addrspace(15)*, i32 addrspace(15)** %a0.addr, align 4, !tbaa !733
  %2 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a1, align 4, !tbaa !903
  %call = call x86_regcallcc addrspace(1) %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint" @__regcall3__chessintr___sint_stream_read___PSSMEM__sint_uint1_t___sint(i32 addrspace(15)* "ipd_load"="0,4" %1, %struct.ipd.custom_type.uint1_t.uint1_t %2) #30
  %3 = getelementptr inbounds %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint", %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint"* %out, i32 0, i32 0
  %4 = extractvalue %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint" %call, 0
  store i32 %4, i32* %3, align 1
  %5 = getelementptr inbounds %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint", %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint"* %out, i32 0, i32 1
  %6 = extractvalue %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint" %call, 1
  store i32 %6, i32* %5, align 1
  %o1 = getelementptr inbounds %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint", %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint"* %out, i32 0, i32 1
  %7 = load i32, i32* %o1, align 1, !tbaa !912
  %8 = load i32*, i32** %a2.addr, align 4, !tbaa !733
  store i32 %7, i32* %8, align 4, !tbaa !632
  %o0 = getelementptr inbounds %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint", %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint"* %out, i32 0, i32 0
  %9 = load i32, i32* %o0, align 1, !tbaa !914
  %10 = bitcast %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint"* %out to i8*
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #21
  ret i32 %9
}

; Function Attrs: argmemonly nounwind
declare dso_local x86_regcallcc %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint" @__regcall3__chessintr___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint(i32 addrspace(23)* "ipd_load"="0,4", %struct.ipd.custom_type.uint1_t.uint1_t) addrspace(1) #20

; Function Attrs: nounwind readnone willreturn
declare dso_local x86_regcallcc %struct.ipd.custom_type.uint1_t.uint1_t @__regcall3__chessintr_uint1_t_uint1_t___sint(i32 signext) addrspace(1) #14

; Function Attrs: nounwind readnone willreturn
declare %struct.ipd.custom_type.uint1_t.uint1_t @llvm.chess.init.customint.s_struct.ipd.custom_type.uint1_t.uint1_ts.i32.p1f_s_struct.ipd.custom_type.uint1_t.uint1_tsi32f(%struct.ipd.custom_type.uint1_t.uint1_t, i32, i32, i32, i1, i32, %struct.ipd.custom_type.uint1_t.uint1_t (i32) addrspace(1)*) addrspace(1) #15

; Function Attrs: argmemonly nounwind
declare dso_local x86_regcallcc %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint" @__regcall3__chessintr___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint(i32 addrspace(24)* "ipd_load"="0,4", %struct.ipd.custom_type.uint1_t.uint1_t) addrspace(1) #20

; Function Attrs: argmemonly nounwind
declare dso_local x86_regcallcc %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint" @__regcall3__chessintr___sint_stream_read___PSSMEM__sint_uint1_t___sint(i32 addrspace(15)* "ipd_load"="0,4", %struct.ipd.custom_type.uint1_t.uint1_t) addrspace(1) #20

; Function Attrs: nounwind readnone willreturn
declare dso_local x86_regcallcc float @__regcall3__chessintr___ffloat_as_float___sint(i32 signext) addrspace(1) #14

; Function Attrs: inlinehint mustprogress nounwind
define linkonce_odr hidden float @_ZNSt3__23absEf(float %x) addrspace(1) #16 comdat !dbg !915 {
entry:
  call addrspace(1) void @llvm.dbg.value(metadata float %x, metadata !917, metadata !DIExpression()), !dbg !918
  %0 = call addrspace(1) float @llvm.fabs.f32(float %x), !dbg !919
  ret float %0, !dbg !920
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) addrspace(1) #3

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local float @_ZN3aie6detail15elementary_bitsILNS0_12ElementaryOpE0ELj32EffE3runERKfi(float* nonnull align 4 dereferenceable(4) %a, i32 %shift) addrspace(1) #18 comdat align 2 !dbg !921 {
entry:
  call addrspace(1) void @llvm.dbg.value(metadata float* %a, metadata !931, metadata !DIExpression()), !dbg !933
  call addrspace(1) void @llvm.dbg.value(metadata i32 0, metadata !932, metadata !DIExpression()), !dbg !933
  %call = call addrspace(1) float @_ZN3aie6detail20elementary_bits_implILNS0_12ElementaryOpE0ELj32EffE3runERKfi(float* nonnull align 4 dereferenceable(4) %a, i32 0) #22, !dbg !934
  ret float %call, !dbg !935
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local float @_ZN3aie6detail20elementary_bits_implILNS0_12ElementaryOpE0ELj32EffE3runERKfi(float* nonnull align 4 dereferenceable(4) %a, i32 %shift) addrspace(1) #2 comdat align 2 !dbg !936 {
entry:
  call addrspace(1) void @llvm.dbg.value(metadata float* %a, metadata !941, metadata !DIExpression()), !dbg !943
  call addrspace(1) void @llvm.dbg.value(metadata i32 %shift, metadata !942, metadata !DIExpression()), !dbg !943
  %0 = load float, float* %a, align 4, !dbg !944, !tbaa !756
  %call = call addrspace(1) float @_Z6_sqrtff(float %0) #22, !dbg !947
  ret float %call, !dbg !948
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local float @_Z6_sqrtff(float %a0) addrspace(1) #18 comdat {
entry:
  %a0.addr = alloca float, align 4
  store float %a0, float* %a0.addr, align 4, !tbaa !756
  %0 = load float, float* %a0.addr, align 4, !tbaa !756
  %call = call x86_regcallcc addrspace(1) float @__regcall3__chessintr___ffloat__sqrtf___ffloat(float %0) #28
  ret float %call
}

; Function Attrs: nounwind readnone willreturn
declare dso_local x86_regcallcc float @__regcall3__chessintr___ffloat__sqrtf___ffloat(float) addrspace(1) #14

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local i32 @_Z8as_int32f(float %a0) addrspace(1) #18 comdat {
entry:
  %a0.addr = alloca float, align 4
  store float %a0, float* %a0.addr, align 4, !tbaa !756
  %0 = load float, float* %a0.addr, align 4, !tbaa !756
  %call = call x86_regcallcc signext addrspace(1) i32 @__regcall3__chessintr___sint_as_int32___ffloat(float %0) #28
  ret i32 %call
}

; Function Attrs: inlinehint mustprogress nounwind
define internal void @_ZN12stream_utilsL17aie_stream_put_msIffEEvP13output_streamIT0_Eib(%struct.output_stream* %ss, i32 %value, i1 zeroext %tlast) addrspace(1) #16 !dbg !949 {
entry:
  call addrspace(1) void @llvm.dbg.value(metadata %struct.output_stream* %ss, metadata !953, metadata !DIExpression()), !dbg !956
  call addrspace(1) void @llvm.dbg.value(metadata i32 %value, metadata !954, metadata !DIExpression()), !dbg !956
  %frombool = zext i1 %tlast to i8
  call addrspace(1) void @llvm.dbg.value(metadata i8 %frombool, metadata !955, metadata !DIExpression()), !dbg !956
  %0 = getelementptr inbounds %struct.output_stream, %struct.output_stream* %ss, i32 0, i32 0, !dbg !957
  %channel = bitcast %union.anon.0* %0 to i32*, !dbg !957
  %1 = load i32, i32* %channel, align 4, !dbg !957, !tbaa !687
  %tobool = trunc i8 %frombool to i1, !dbg !960
  %conv = zext i1 %tobool to i32, !dbg !960
  call addrspace(1) void @_Z6put_msiii(i32 %1, i32 %value, i32 %conv) #27, !dbg !961
  ret void, !dbg !962
}

; Function Attrs: nounwind readnone willreturn
declare dso_local x86_regcallcc signext i32 @__regcall3__chessintr___sint_as_int32___ffloat(float) addrspace(1) #14

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local void @_Z6put_msiii(i32 %idx_ms, i32 %val, i32 %tlast) addrspace(1) #19 comdat {
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
  store i32 %idx_ms, i32* %idx_ms.addr, align 4, !tbaa !632
  store i32 %val, i32* %val.addr, align 4, !tbaa !632
  store i32 %tlast, i32* %tlast.addr, align 4, !tbaa !632
  %0 = load i32, i32* %idx_ms.addr, align 4, !tbaa !632
  %cmp = icmp eq i32 %0, 0
  %1 = call addrspace(1) i1 @llvm.chess_manifest(i1 %cmp)
  br i1 %1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %val.addr, align 4, !tbaa !632
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp, i32 0) #22
  %3 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp, align 4, !tbaa !903
  store %struct.ipd.custom_type.uint1_t.uint1_t %3, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp, align 4, !tbaa !903
  %4 = load i32, i32* %tlast.addr, align 4, !tbaa !632
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp2, i32 %4) #22
  %5 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp2, align 4, !tbaa !903
  store %struct.ipd.custom_type.uint1_t.uint1_t %5, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp1, align 4, !tbaa !903
  %6 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp, align 4, !tbaa !903
  %7 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp1, align 4, !tbaa !903
  call addrspace(1) void @_ZN12me_primitive12stream_writeEPU4AS27U16__protect_accessii7uint1_tS2_(i32 addrspace(27)* addrspacecast (i32 addrspace(29)* @_ZN12me_primitive3ms0E to i32 addrspace(27)*), i32 %2, %struct.ipd.custom_type.uint1_t.uint1_t %6, %struct.ipd.custom_type.uint1_t.uint1_t %7) #29
  br label %if.end14

if.else:                                          ; preds = %entry
  %8 = load i32, i32* %idx_ms.addr, align 4, !tbaa !632
  %cmp3 = icmp eq i32 %8, 1
  %9 = call addrspace(1) i1 @llvm.chess_manifest(i1 %cmp3)
  br i1 %9, label %if.then4, label %if.else9

if.then4:                                         ; preds = %if.else
  %10 = load i32, i32* %val.addr, align 4, !tbaa !632
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp6, i32 0) #22
  %11 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp6, align 4, !tbaa !903
  store %struct.ipd.custom_type.uint1_t.uint1_t %11, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp5, align 4, !tbaa !903
  %12 = load i32, i32* %tlast.addr, align 4, !tbaa !632
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp8, i32 %12) #22
  %13 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp8, align 4, !tbaa !903
  store %struct.ipd.custom_type.uint1_t.uint1_t %13, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp7, align 4, !tbaa !903
  %14 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp5, align 4, !tbaa !903
  %15 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp7, align 4, !tbaa !903
  call addrspace(1) void @_ZN12me_primitive12stream_writeEPU4AS28U16__protect_accessii7uint1_tS2_(i32 addrspace(28)* addrspacecast (i32 addrspace(30)* @_ZN12me_primitive3ms1E to i32 addrspace(28)*), i32 %10, %struct.ipd.custom_type.uint1_t.uint1_t %14, %struct.ipd.custom_type.uint1_t.uint1_t %15) #29
  br label %if.end

if.else9:                                         ; preds = %if.else
  %16 = load i32, i32* %idx_ms.addr, align 4, !tbaa !632
  %conv = trunc i32 %16 to i1
  %17 = inttoptr i1 %conv to i32 addrspace(16)*
  %18 = load i32, i32* %val.addr, align 4, !tbaa !632
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp11, i32 0) #22
  %19 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp11, align 4, !tbaa !903
  store %struct.ipd.custom_type.uint1_t.uint1_t %19, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp10, align 4, !tbaa !903
  %20 = load i32, i32* %tlast.addr, align 4, !tbaa !632
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp13, i32 %20) #22
  %21 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp13, align 4, !tbaa !903
  store %struct.ipd.custom_type.uint1_t.uint1_t %21, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp12, align 4, !tbaa !903
  %22 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp10, align 4, !tbaa !903
  %23 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp12, align 4, !tbaa !903
  call addrspace(1) void @_ZN12me_primitive12stream_writeEPU4AS16U16__protect_accessii7uint1_tS2_(i32 addrspace(16)* %17, i32 %18, %struct.ipd.custom_type.uint1_t.uint1_t %22, %struct.ipd.custom_type.uint1_t.uint1_t %23) #29
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
  store i32 addrspace(27)* addrspacecast (i32 addrspace(29)* @_ZN12me_primitive3ms0E to i32 addrspace(27)*), i32 addrspace(27)** %a0.addr, align 4, !tbaa !733
  store i32 %a1, i32* %a1.addr, align 4, !tbaa !632
  %0 = load i32 addrspace(27)*, i32 addrspace(27)** %a0.addr, align 4, !tbaa !733
  %1 = load i32, i32* %a1.addr, align 4, !tbaa !632
  %2 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a2, align 4, !tbaa !903
  %3 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a3, align 4, !tbaa !903
  call x86_regcallcc addrspace(1) void @__regcall3__chessintr_void_stream_write___PMS_rsrc1__sint___sint_uint1_t_uint1_t(i32 addrspace(27)* "ipd_store"="0,4" %0, i32 signext %1, %struct.ipd.custom_type.uint1_t.uint1_t %2, %struct.ipd.custom_type.uint1_t.uint1_t %3) #30
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
  store i32 addrspace(28)* addrspacecast (i32 addrspace(30)* @_ZN12me_primitive3ms1E to i32 addrspace(28)*), i32 addrspace(28)** %a0.addr, align 4, !tbaa !733
  store i32 %a1, i32* %a1.addr, align 4, !tbaa !632
  %0 = load i32 addrspace(28)*, i32 addrspace(28)** %a0.addr, align 4, !tbaa !733
  %1 = load i32, i32* %a1.addr, align 4, !tbaa !632
  %2 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a2, align 4, !tbaa !903
  %3 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a3, align 4, !tbaa !903
  call x86_regcallcc addrspace(1) void @__regcall3__chessintr_void_stream_write___PMS_rsrc2__sint___sint_uint1_t_uint1_t(i32 addrspace(28)* "ipd_store"="0,4" %0, i32 signext %1, %struct.ipd.custom_type.uint1_t.uint1_t %2, %struct.ipd.custom_type.uint1_t.uint1_t %3) #30
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
  store i32 addrspace(16)* %a0, i32 addrspace(16)** %a0.addr, align 4, !tbaa !733
  store i32 %a1, i32* %a1.addr, align 4, !tbaa !632
  %0 = load i32 addrspace(16)*, i32 addrspace(16)** %a0.addr, align 4, !tbaa !733
  %1 = load i32, i32* %a1.addr, align 4, !tbaa !632
  %2 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a2, align 4, !tbaa !903
  %3 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a3, align 4, !tbaa !903
  call x86_regcallcc addrspace(1) void @__regcall3__chessintr_void_stream_write___PMSMEM__sint___sint_uint1_t_uint1_t(i32 addrspace(16)* "ipd_store"="0,4" %0, i32 signext %1, %struct.ipd.custom_type.uint1_t.uint1_t %2, %struct.ipd.custom_type.uint1_t.uint1_t %3) #30
  ret void
}

; Function Attrs: argmemonly nounwind
declare dso_local x86_regcallcc void @__regcall3__chessintr_void_stream_write___PMS_rsrc1__sint___sint_uint1_t_uint1_t(i32 addrspace(27)* "ipd_store"="0,4", i32 signext, %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t) addrspace(1) #20

; Function Attrs: argmemonly nounwind
declare dso_local x86_regcallcc void @__regcall3__chessintr_void_stream_write___PMS_rsrc2__sint___sint_uint1_t_uint1_t(i32 addrspace(28)* "ipd_store"="0,4", i32 signext, %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t) addrspace(1) #20

; Function Attrs: argmemonly nounwind
declare dso_local x86_regcallcc void @__regcall3__chessintr_void_stream_write___PMSMEM__sint___sint_uint1_t_uint1_t(i32 addrspace(16)* "ipd_store"="0,4", i32 signext, %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t) addrspace(1) #20

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
attributes #16 = { inlinehint mustprogress nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-memcpy" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #17 = { argmemonly nounwind speculatable willreturn }
attributes #18 = { alwaysinline mustprogress nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-memcpy" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #19 = { alwaysinline mustprogress nounwind "chessFP:property"="do_generate_llvm" "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-memcpy" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #20 = { argmemonly nounwind "frame-pointer"="all" "no-builtin-memcpy" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #21 = { nounwind }
attributes #22 = { "no-builtin-memcpy" }
attributes #23 = { "chessFP:property"="contains_memory_fence do_generate" "no-builtin-memcpy" }
attributes #24 = { inaccessiblememonly nounwind "no-builtin-memcpy" }
attributes #25 = { "chessFP:llvm_local_block_replace_operand_with_variable" "no-builtin-memcpy" }
attributes #26 = { nounwind "no-builtin-memcpy" }
attributes #27 = { "chessFP:property"="do_generate_llvm" "no-builtin-memcpy" }
attributes #28 = { nounwind readnone willreturn "no-builtin-memcpy" }
attributes #29 = { memop_protect_access "chessFP:llvm_local_block_replace_operand_with_variable" "no-builtin-memcpy" }
attributes #30 = { argmemonly nounwind "no-builtin-memcpy" }

!llvm.dbg.cu = !{!2}
!llvm.linker.options = !{}
!llvm.module.flags = !{!606, !607, !608, !609}
!llvm.ident = !{!610}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "sync_buffer", linkageName: "_ZL11sync_buffer", scope: !2, file: !494, line: 8, type: !602, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "clang version 15.0.5 (/u/sgasip/ipd/repositories/llvm_ipd 3a25925e0239306412dac02da5e4c8c51ae722e8)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !52, globals: !171, imports: !172, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/lxy/Projects/SVD/Jacobi_AIE/Work/aie/24_0/src/24_0.cc", directory: "/home/lxy/Projects/SVD/Jacobi_AIE/Work/aie")
!4 = !{!5, !13, !21, !31, !37, !51}
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
!37 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "ElementaryOp", scope: !7, file: !38, line: 58, baseType: !9, size: 32, flags: DIFlagEnumClass, elements: !39, identifier: "_ZTSN3aie6detail12ElementaryOpE")
!38 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/aie_api/detail/elementary.hpp", directory: "/home/lxy")
!39 = !{!40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!40 = !DIEnumerator(name: "Sqrt", value: 0)
!41 = !DIEnumerator(name: "Inv", value: 1)
!42 = !DIEnumerator(name: "InvSqrt", value: 2)
!43 = !DIEnumerator(name: "SinCos", value: 3)
!44 = !DIEnumerator(name: "SinCosComplex", value: 4)
!45 = !DIEnumerator(name: "Sin", value: 5)
!46 = !DIEnumerator(name: "Cos", value: 6)
!47 = !DIEnumerator(name: "Fix2Float", value: 7)
!48 = !DIEnumerator(name: "Float2Fix", value: 8)
!49 = !DIEnumerator(name: "Tanh", value: 9)
!50 = !DIEnumerator(name: "Exp2", value: 10)
!51 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "aie_stream_resource_out", file: !32, line: 402, baseType: !9, size: 32, flags: DIFlagEnumClass, elements: !33, identifier: "_ZTS23aie_stream_resource_out")
!52 = !{!53, !115, !70, !74, !64, !78, !150, !128, !132, !124, !55, !116}
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "input_stream_float", file: !54, line: 18, baseType: !55)
!54 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/adf/stream/types.h", directory: "/home/lxy")
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_stream<float>", file: !56, line: 50, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !57, templateParams: !112, identifier: "_ZTS12input_streamIfE")
!56 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/adf/stream/me/structs.h", directory: "/home/lxy")
!57 = !{!58, !108}
!58 = !DIDerivedType(tag: DW_TAG_member, scope: !55, file: !56, line: 50, baseType: !59, size: 32)
!59 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !55, file: !56, line: 50, size: 32, flags: DIFlagExportSymbols | DIFlagTypePassByValue, elements: !60, identifier: "_ZTSN12input_streamIfEUt_E")
!60 = !{!61, !62, !68, !72, !76, !80, !83, !86, !90, !94, !98, !102, !105}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !59, file: !56, line: 50, baseType: !15, size: 32)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "channel_ss", scope: !59, file: !56, line: 50, baseType: !63, size: 32)
!63 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "ss_idx_t", scope: !66, file: !65, line: 655, baseType: !67)
!65 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/isg/me_chess_llvm.h", directory: "/home/lxy")
!66 = !DINamespace(name: "me_primitive", scope: null)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32, dwarfAddressSpace: 67)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "channel_ss0", scope: !59, file: !56, line: 50, baseType: !69, size: 32)
!69 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "ss0_idx_t", scope: !66, file: !65, line: 559, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32, dwarfAddressSpace: 70)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "channel_ss1", scope: !59, file: !56, line: 50, baseType: !73, size: 32)
!73 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "ss1_idx_t", scope: !66, file: !65, line: 607, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32, dwarfAddressSpace: 71)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "channel_sst", scope: !59, file: !56, line: 50, baseType: !77, size: 32)
!77 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "ss_tlast_idx_t", scope: !66, file: !65, line: 679, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32, dwarfAddressSpace: 69)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "channel_sst0", scope: !59, file: !56, line: 50, baseType: !81, size: 32)
!81 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "ss0_tlast_idx_t", scope: !66, file: !65, line: 583, baseType: !79)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "channel_sst1", scope: !59, file: !56, line: 50, baseType: !84, size: 32)
!84 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "ss1_tlast_idx_t", scope: !66, file: !65, line: 631, baseType: !79)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "channel_wss", scope: !59, file: !56, line: 50, baseType: !87, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "wss_idx_t", scope: !66, file: !65, line: 661, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32, dwarfAddressSpace: 75)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "channel_wss0", scope: !59, file: !56, line: 50, baseType: !91, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !92)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "wss0_idx_t", scope: !66, file: !65, line: 565, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32, dwarfAddressSpace: 77)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "channel_wss1", scope: !59, file: !56, line: 50, baseType: !95, size: 32)
!95 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "wss1_idx_t", scope: !66, file: !65, line: 613, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32, dwarfAddressSpace: 78)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "channel_wsst", scope: !59, file: !56, line: 50, baseType: !99, size: 32)
!99 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "wss_tlast_idx_t", scope: !66, file: !65, line: 691, baseType: !101)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32, dwarfAddressSpace: 76)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "channel_wsst0", scope: !59, file: !56, line: 50, baseType: !103, size: 32)
!103 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "wss0_tlast_idx_t", scope: !66, file: !65, line: 595, baseType: !101)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "channel_wsst1", scope: !59, file: !56, line: 50, baseType: !106, size: 32)
!106 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !107)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "wss1_tlast_idx_t", scope: !66, file: !65, line: 643, baseType: !101)
!108 = !DISubprogram(name: "input_stream", scope: !55, file: !56, line: 50, type: !109, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!109 = !DISubroutineType(types: !110)
!110 = !{null, !111, !15}
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!112 = !{!113}
!113 = !DITemplateTypeParameter(name: "T", type: !114)
!114 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "output_stream_float", file: !54, line: 30, baseType: !116)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "output_stream<float>", file: !56, line: 60, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !117, templateParams: !112, identifier: "_ZTS13output_streamIfE")
!117 = !{!118, !146}
!118 = !DIDerivedType(tag: DW_TAG_member, scope: !116, file: !56, line: 60, baseType: !119, size: 32)
!119 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !116, file: !56, line: 60, size: 32, flags: DIFlagExportSymbols | DIFlagTypePassByValue, elements: !120, identifier: "_ZTSN13output_streamIfEUt_E")
!120 = !{!121, !122, !126, !130, !134, !138, !142}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !119, file: !56, line: 60, baseType: !15, size: 32)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "channel_ms", scope: !119, file: !56, line: 60, baseType: !123, size: 32)
!123 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "ms_idx_t", scope: !66, file: !65, line: 667, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32, dwarfAddressSpace: 61)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "channel_ms0", scope: !119, file: !56, line: 60, baseType: !127, size: 32)
!127 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !128)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "ms0_idx_t", scope: !66, file: !65, line: 571, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32, dwarfAddressSpace: 63)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "channel_ms1", scope: !119, file: !56, line: 60, baseType: !131, size: 32)
!131 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "ms1_idx_t", scope: !66, file: !65, line: 619, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32, dwarfAddressSpace: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "channel_wms", scope: !119, file: !56, line: 60, baseType: !135, size: 32)
!135 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "wms_idx_t", scope: !66, file: !65, line: 673, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32, dwarfAddressSpace: 72)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "channel_wms0", scope: !119, file: !56, line: 60, baseType: !139, size: 32)
!139 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "wms0_idx_t", scope: !66, file: !65, line: 577, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32, dwarfAddressSpace: 73)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "channel_wms1", scope: !119, file: !56, line: 60, baseType: !143, size: 32)
!143 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "wms1_idx_t", scope: !66, file: !65, line: 625, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32, dwarfAddressSpace: 74)
!146 = !DISubprogram(name: "output_stream", scope: !116, file: !56, line: 60, type: !147, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!147 = !DISubroutineType(types: !148)
!148 = !{null, !149, !15}
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "base_t", scope: !152, file: !151, line: 3397, baseType: !155)
!151 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/aie_api/adf/../aie.hpp", directory: "/home/lxy")
!152 = distinct !DISubprogram(name: "abs<float>", linkageName: "_ZN3aie3absIfEENS_17operand_base_typeINS_6detail5utils10remove_allIT_E4typeEE4typeERKS5_", scope: !8, file: !151, line: 3395, type: !153, scopeLine: 3396, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !169, retainedNodes: !165)
!153 = !DISubroutineType(types: !154)
!154 = !{!155, !163}
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "operand_base_type_t<float>", scope: !8, file: !151, line: 152, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !157, file: !151, line: 124, baseType: !159)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "operand_base_type<float>", scope: !8, file: !151, line: 122, size: 8, flags: DIFlagTypePassByValue, elements: !158, templateParams: !112, identifier: "_ZTSN3aie17operand_base_typeIfEE")
!158 = !{}
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "aie_dm_resource_remove_t<float>", file: !160, line: 262, baseType: !161)
!160 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/aie_core.h", directory: "/home/lxy")
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !162, file: !160, line: 239, baseType: !114)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aie_dm_resource_remove<float>", file: !160, line: 237, size: 8, flags: DIFlagTypePassByValue, elements: !158, templateParams: !112, identifier: "_ZTS22aie_dm_resource_removeIfE")
!163 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !164, size: 32)
!164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!165 = !{!166, !167}
!166 = !DILocalVariable(name: "a", arg: 1, scope: !152, file: !151, line: 3395, type: !163)
!167 = !DILocalVariable(name: "_a", scope: !152, file: !151, line: 3398, type: !168)
!168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!169 = !{!170}
!170 = !DITemplateTypeParameter(name: "E", type: !114)
!171 = !{!0}
!172 = !{!173, !179, !181, !185, !190, !193, !195, !198, !201, !204, !206, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !261, !265, !275, !279, !281, !283, !287, !291, !295, !297, !301, !306, !310, !314, !318, !320, !322, !324, !326, !328, !332, !338, !340, !342, !346, !348, !350, !352, !354, !356, !361, !366, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !393, !398, !404, !409, !413, !417, !422, !426, !430, !434, !438, !443, !447, !449, !456, !461, !462, !467, !469, !473, !475, !479, !483, !487, !495, !497, !501, !505, !509, !511, !515, !519, !523, !525, !527, !529, !534, !539, !543, !547, !551, !553, !555, !557, !561, !565, !569, !571, !573, !577, !579, !583, !587, !589, !593, !595, !597, !599, !600, !601}
!173 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !176, file: !178, line: 57)
!174 = !DINamespace(name: "__2", scope: !175, exportSymbols: true)
!175 = !DINamespace(name: "std", scope: null)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !177, line: 35, baseType: !9)
!177 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/tps/lnx64/target/bin/LNa64bin/../../chessdir/clangdir/15.0.5/include/stddef.h", directory: "/home/lxy")
!178 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime_cxx/libs/libcxx-9.0.0/include-lite/../include/cstddef", directory: "/home/lxy")
!179 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !180, file: !178, line: 58)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !177, line: 46, baseType: !15)
!181 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !182, file: !178, line: 63)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "max_align_t", file: !183, line: 24, baseType: !184)
!183 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/tps/lnx64/target/bin/LNa64bin/../../chessdir/clangdir/15.0.5/include/__stddef_max_align_t.h", directory: "/home/lxy")
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !183, line: 19, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS11max_align_t")
!185 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !186, file: !189, line: 161)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !187, line: 23, baseType: !188)
!187 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime/include/stdint.h", directory: "/home/lxy")
!188 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!189 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime_cxx/libs/libcxx-9.0.0/include-lite/../include/cstdint", directory: "/home/lxy")
!190 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !191, file: !189, line: 163)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !187, line: 24, baseType: !192)
!192 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!193 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !194, file: !189, line: 164)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !187, line: 25, baseType: !9)
!195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !196, file: !189, line: 166)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !187, line: 26, baseType: !197)
!197 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!198 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !199, file: !189, line: 170)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !187, line: 28, baseType: !200)
!200 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!201 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !202, file: !189, line: 172)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !187, line: 29, baseType: !203)
!203 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!204 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !205, file: !189, line: 173)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !187, line: 30, baseType: !15)
!206 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !207, file: !189, line: 175)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !187, line: 31, baseType: !208)
!208 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !210, file: !189, line: 178)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !187, line: 34, baseType: !188)
!211 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !212, file: !189, line: 179)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !187, line: 35, baseType: !192)
!213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !214, file: !189, line: 180)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !187, line: 36, baseType: !9)
!215 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !216, file: !189, line: 182)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !187, line: 37, baseType: !197)
!217 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !218, file: !189, line: 185)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !187, line: 39, baseType: !200)
!219 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !220, file: !189, line: 186)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !187, line: 40, baseType: !203)
!221 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !222, file: !189, line: 187)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !187, line: 41, baseType: !15)
!223 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !224, file: !189, line: 189)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !187, line: 42, baseType: !208)
!225 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !226, file: !189, line: 192)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !187, line: 45, baseType: !9)
!227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !228, file: !189, line: 193)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !187, line: 46, baseType: !9)
!229 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !230, file: !189, line: 194)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !187, line: 47, baseType: !9)
!231 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !232, file: !189, line: 196)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !187, line: 48, baseType: !197)
!233 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !234, file: !189, line: 199)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !187, line: 50, baseType: !15)
!235 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !236, file: !189, line: 200)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !187, line: 51, baseType: !15)
!237 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !238, file: !189, line: 201)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !187, line: 52, baseType: !15)
!239 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !240, file: !189, line: 203)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !187, line: 53, baseType: !208)
!241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !242, file: !189, line: 206)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !187, line: 56, baseType: !9)
!243 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !244, file: !189, line: 207)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !187, line: 57, baseType: !15)
!245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !246, file: !189, line: 209)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !187, line: 60, baseType: !9)
!247 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !248, file: !189, line: 210)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !187, line: 61, baseType: !15)
!249 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !180, file: !250, line: 76)
!250 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime_cxx/libs/libcxx-9.0.0/include-lite/../include/cstring", directory: "/home/lxy")
!251 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !252, file: !250, line: 77)
!252 = !DISubprogram(name: "memcpy", scope: !253, file: !253, line: 27, type: !254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!253 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime/include/string.h", directory: "/home/lxy")
!254 = !DISubroutineType(types: !255)
!255 = !{!256, !257, !258, !180}
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!257 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !256)
!258 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 32)
!260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!261 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !262, file: !250, line: 78)
!262 = !DISubprogram(name: "memmove", scope: !253, file: !253, line: 28, type: !263, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!263 = !DISubroutineType(types: !264)
!264 = !{!256, !256, !259, !180}
!265 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !266, file: !250, line: 79)
!266 = !DISubprogram(name: "strcpy", scope: !253, file: !253, line: 29, type: !267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!267 = !DISubroutineType(types: !268)
!268 = !{!269, !271, !272}
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 32)
!270 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!271 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !269)
!272 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !273)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 32)
!274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !270)
!275 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !276, file: !250, line: 80)
!276 = !DISubprogram(name: "strncpy", scope: !253, file: !253, line: 30, type: !277, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!277 = !DISubroutineType(types: !278)
!278 = !{!269, !271, !272, !180}
!279 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !280, file: !250, line: 81)
!280 = !DISubprogram(name: "strcat", scope: !253, file: !253, line: 33, type: !267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!281 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !282, file: !250, line: 82)
!282 = !DISubprogram(name: "strncat", scope: !253, file: !253, line: 34, type: !277, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!283 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !284, file: !250, line: 83)
!284 = !DISubprogram(name: "memcmp", scope: !253, file: !253, line: 37, type: !285, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!285 = !DISubroutineType(types: !286)
!286 = !{!9, !259, !259, !180}
!287 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !288, file: !250, line: 84)
!288 = !DISubprogram(name: "strcmp", scope: !253, file: !253, line: 38, type: !289, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!289 = !DISubroutineType(types: !290)
!290 = !{!9, !273, !273}
!291 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !292, file: !250, line: 85)
!292 = !DISubprogram(name: "strncmp", scope: !253, file: !253, line: 40, type: !293, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!293 = !DISubroutineType(types: !294)
!294 = !{!9, !273, !273, !180}
!295 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !296, file: !250, line: 86)
!296 = !DISubprogram(name: "strcoll", scope: !253, file: !253, line: 39, type: !289, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!297 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !298, file: !250, line: 87)
!298 = !DISubprogram(name: "strxfrm", scope: !253, file: !253, line: 41, type: !299, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!299 = !DISubroutineType(types: !300)
!300 = !{!180, !271, !272, !180}
!301 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !302, file: !250, line: 88)
!302 = !DISubprogram(name: "memchr", linkageName: "_Z6memchrUa9enable_ifILb1EEPvij", scope: !303, file: !303, line: 106, type: !304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!303 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime_cxx/libs/libcxx-9.0.0/include-lite/../include/string.h", directory: "/home/lxy")
!304 = !DISubroutineType(types: !305)
!305 = !{!256, !256, !9, !180}
!306 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !307, file: !250, line: 89)
!307 = !DISubprogram(name: "strchr", linkageName: "_Z6strchrUa9enable_ifILb1EEPci", scope: !303, file: !303, line: 85, type: !308, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!308 = !DISubroutineType(types: !309)
!309 = !{!269, !269, !9}
!310 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !311, file: !250, line: 90)
!311 = !DISubprogram(name: "strcspn", scope: !253, file: !253, line: 46, type: !312, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!312 = !DISubroutineType(types: !313)
!313 = !{!180, !273, !273}
!314 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !315, file: !250, line: 91)
!315 = !DISubprogram(name: "strpbrk", linkageName: "_Z7strpbrkUa9enable_ifILb1EEPcPKc", scope: !303, file: !303, line: 92, type: !316, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!316 = !DISubroutineType(types: !317)
!317 = !{!269, !269, !273}
!318 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !319, file: !250, line: 92)
!319 = !DISubprogram(name: "strrchr", linkageName: "_Z7strrchrUa9enable_ifILb1EEPci", scope: !303, file: !303, line: 99, type: !308, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!320 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !321, file: !250, line: 93)
!321 = !DISubprogram(name: "strspn", scope: !253, file: !253, line: 49, type: !312, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!322 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !323, file: !250, line: 94)
!323 = !DISubprogram(name: "strstr", linkageName: "_Z6strstrUa9enable_ifILb1EEPcPKc", scope: !303, file: !303, line: 113, type: !316, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!324 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !325, file: !250, line: 96)
!325 = !DISubprogram(name: "strtok", scope: !253, file: !253, line: 51, type: !267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!326 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !327, file: !250, line: 98)
!327 = !DISubprogram(name: "memset", scope: !253, file: !253, line: 54, type: !304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!328 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !329, file: !250, line: 102)
!329 = !DISubprogram(name: "strlen", scope: !253, file: !253, line: 56, type: !330, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!330 = !DISubroutineType(types: !331)
!331 = !{!180, !273}
!332 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !333, file: !337, line: 351)
!333 = !DISubprogram(name: "acosf", scope: !334, file: !334, line: 91, type: !335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!334 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime/include/math.h", directory: "/home/lxy")
!335 = !DISubroutineType(types: !336)
!336 = !{!114, !114}
!337 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime_cxx/libs/libcxx-9.0.0/include-lite/../include/cmath", directory: "/home/lxy")
!338 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !339, file: !337, line: 353)
!339 = !DISubprogram(name: "asinf", scope: !334, file: !334, line: 93, type: !335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!340 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !341, file: !337, line: 355)
!341 = !DISubprogram(name: "atanf", scope: !334, file: !334, line: 99, type: !335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!342 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !343, file: !337, line: 357)
!343 = !DISubprogram(name: "atan2f", scope: !334, file: !334, line: 96, type: !344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!344 = !DISubroutineType(types: !345)
!345 = !{!114, !114, !114}
!346 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !347, file: !337, line: 359)
!347 = !DISubprogram(name: "ceilf", scope: !334, file: !334, line: 67, type: !335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!348 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !349, file: !337, line: 361)
!349 = !DISubprogram(name: "cosf", scope: !334, file: !334, line: 75, type: !335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!350 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !351, file: !337, line: 368)
!351 = !DISubprogram(name: "expf", scope: !334, file: !334, line: 79, type: !335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!352 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !353, file: !337, line: 371)
!353 = !DISubprogram(name: "fabsf", scope: !334, file: !334, line: 30, type: !335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!354 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !355, file: !337, line: 373)
!355 = !DISubprogram(name: "floorf", scope: !334, file: !334, line: 69, type: !335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!356 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !357, file: !337, line: 375)
!357 = !DISubprogram(name: "fmod", scope: !334, file: !334, line: 90, type: !358, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!358 = !DISubroutineType(types: !359)
!359 = !{!360, !360, !360}
!360 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!361 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !362, file: !337, line: 381)
!362 = !DISubprogram(name: "frexpf", scope: !334, file: !334, line: 106, type: !363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!363 = !DISubroutineType(types: !364)
!364 = !{!114, !114, !365}
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32)
!366 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !367, file: !337, line: 383)
!367 = !DISubprogram(name: "ldexpf", scope: !334, file: !334, line: 65, type: !368, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!368 = !DISubroutineType(types: !369)
!369 = !{!114, !114, !9}
!370 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !371, file: !337, line: 386)
!371 = !DISubprogram(name: "logf", scope: !334, file: !334, line: 81, type: !335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!372 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !373, file: !337, line: 389)
!373 = !DISubprogram(name: "log10f", scope: !334, file: !334, line: 83, type: !335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!374 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !375, file: !337, line: 396)
!375 = !DISubprogram(name: "powf", scope: !334, file: !334, line: 88, type: !344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!376 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !377, file: !337, line: 399)
!377 = !DISubprogram(name: "sinf", scope: !334, file: !334, line: 76, type: !335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!378 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !379, file: !337, line: 406)
!379 = !DISubprogram(name: "sqrtf", scope: !334, file: !334, line: 86, type: !335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!380 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !381, file: !337, line: 427)
!381 = !DISubprogram(name: "copysignf", scope: !334, file: !334, line: 35, type: !344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!382 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !383, file: !337, line: 484)
!383 = !DISubprogram(name: "roundf", scope: !334, file: !334, line: 71, type: !335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!384 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !385, file: !337, line: 494)
!385 = !DISubprogram(name: "truncf", scope: !334, file: !334, line: 102, type: !335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!386 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !180, file: !387, line: 107)
!387 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime_cxx/libs/libcxx-9.0.0/include-lite/../include/cstdlib", directory: "/home/lxy")
!388 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !389, file: !387, line: 118)
!389 = !DISubprogram(name: "atoi", scope: !390, file: !390, line: 37, type: !391, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!390 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime/include/stdlib.h", directory: "/home/lxy")
!391 = !DISubroutineType(types: !392)
!392 = !{!9, !273}
!393 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !394, file: !387, line: 119)
!394 = !DISubprogram(name: "atol", scope: !390, file: !390, line: 42, type: !395, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!395 = !DISubroutineType(types: !396)
!396 = !{!397, !273}
!397 = !DIBasicType(name: "long", size: 32, encoding: DW_ATE_signed)
!398 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !399, file: !387, line: 128)
!399 = !DISubprogram(name: "strtol", scope: !390, file: !390, line: 29, type: !400, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!400 = !DISubroutineType(types: !401)
!401 = !{!397, !272, !402, !9}
!402 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !403)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 32)
!404 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !405, file: !387, line: 134)
!405 = !DISubprogram(name: "strtoul", scope: !390, file: !390, line: 33, type: !406, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!406 = !DISubroutineType(types: !407)
!407 = !{!408, !272, !402, !9}
!408 = !DIBasicType(name: "unsigned long", size: 32, encoding: DW_ATE_unsigned)
!409 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !410, file: !387, line: 140)
!410 = !DISubprogram(name: "rand", scope: !390, file: !390, line: 51, type: !411, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!411 = !DISubroutineType(types: !412)
!412 = !{!9}
!413 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !414, file: !387, line: 141)
!414 = !DISubprogram(name: "srand", scope: !390, file: !390, line: 52, type: !415, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!415 = !DISubroutineType(types: !416)
!416 = !{null, !15}
!417 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !418, file: !387, line: 142)
!418 = !DISubprogram(name: "calloc", scope: !419, file: !419, line: 32, type: !420, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!419 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime/include/malloc.h", directory: "/home/lxy")
!420 = !DISubroutineType(types: !421)
!421 = !{!256, !180, !180}
!422 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !423, file: !387, line: 143)
!423 = !DISubprogram(name: "free", scope: !419, file: !419, line: 30, type: !424, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!424 = !DISubroutineType(types: !425)
!425 = !{null, !256}
!426 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !427, file: !387, line: 144)
!427 = !DISubprogram(name: "malloc", scope: !419, file: !419, line: 28, type: !428, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!428 = !DISubroutineType(types: !429)
!429 = !{!256, !180}
!430 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !431, file: !387, line: 145)
!431 = !DISubprogram(name: "realloc", scope: !419, file: !419, line: 34, type: !432, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!432 = !DISubroutineType(types: !433)
!433 = !{!256, !256, !180}
!434 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !435, file: !387, line: 146)
!435 = !DISubprogram(name: "abort", scope: !390, file: !390, line: 83, type: !436, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!436 = !DISubroutineType(types: !437)
!437 = !{null}
!438 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !439, file: !387, line: 147)
!439 = !DISubprogram(name: "atexit", scope: !390, file: !390, line: 90, type: !440, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!440 = !DISubroutineType(types: !441)
!441 = !{!9, !442}
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 32, dwarfAddressSpace: 65)
!443 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !444, file: !387, line: 148)
!444 = !DISubprogram(name: "exit", scope: !390, file: !390, line: 75, type: !445, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!445 = !DISubroutineType(types: !446)
!446 = !{null, !9}
!447 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !448, file: !387, line: 149)
!448 = !DISubprogram(name: "_Exit", scope: !390, file: !390, line: 88, type: !445, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!449 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !450, file: !387, line: 157)
!450 = !DISubprogram(name: "qsort", scope: !390, file: !390, line: 96, type: !451, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!451 = !DISubroutineType(types: !452)
!452 = !{null, !256, !180, !180, !453}
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 32, dwarfAddressSpace: 65)
!454 = !DISubroutineType(types: !455)
!455 = !{!9, !259, !259}
!456 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !457, file: !460, line: 115)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !458, line: 30, baseType: !459)
!458 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime/include/stdio.h", directory: "/home/lxy")
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FILE", file: !458, line: 29, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS4FILE")
!460 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime_cxx/libs/libcxx-9.0.0/include-lite/../include/cstdio", directory: "/home/lxy")
!461 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !180, file: !460, line: 119)
!462 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !463, file: !460, line: 121)
!463 = !DISubprogram(name: "fclose", scope: !458, file: !458, line: 77, type: !464, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!464 = !DISubroutineType(types: !465)
!465 = !{!9, !466}
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 32)
!467 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !468, file: !460, line: 122)
!468 = !DISubprogram(name: "fflush", scope: !458, file: !458, line: 78, type: !464, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!469 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !470, file: !460, line: 127)
!470 = !DISubprogram(name: "fprintf", scope: !458, file: !458, line: 87, type: !471, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!471 = !DISubroutineType(types: !472)
!472 = !{!9, !466, !273, null}
!473 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !474, file: !460, line: 128)
!474 = !DISubprogram(name: "fscanf", scope: !458, file: !458, line: 92, type: !471, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!475 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !476, file: !460, line: 129)
!476 = !DISubprogram(name: "snprintf", scope: !458, file: !458, line: 96, type: !477, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!477 = !DISubroutineType(types: !478)
!478 = !{!9, !269, !180, !273, null}
!479 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !480, file: !460, line: 130)
!480 = !DISubprogram(name: "sprintf", scope: !458, file: !458, line: 95, type: !481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!481 = !DISubroutineType(types: !482)
!482 = !{!9, !269, !273, null}
!483 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !484, file: !460, line: 131)
!484 = !DISubprogram(name: "sscanf", scope: !458, file: !458, line: 100, type: !485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!485 = !DISubroutineType(types: !486)
!486 = !{!9, !273, !273, null}
!487 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !488, file: !460, line: 132)
!488 = !DISubprogram(name: "vfprintf", scope: !458, file: !458, line: 85, type: !489, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!489 = !DISubroutineType(types: !490)
!490 = !{!9, !466, !273, !491}
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !492, line: 14, baseType: !493)
!492 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/tps/lnx64/target/bin/LNa64bin/../../chessdir/clangdir/15.0.5/include/stdarg.h", directory: "/home/lxy")
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !494, baseType: !269)
!494 = !DIFile(filename: "24_0/src/24_0.cc", directory: "/home/lxy/Projects/SVD/Jacobi_AIE/Work/aie")
!495 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !496, file: !460, line: 133)
!496 = !DISubprogram(name: "vfscanf", scope: !458, file: !458, line: 90, type: !489, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!497 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !498, file: !460, line: 134)
!498 = !DISubprogram(name: "vsscanf", scope: !458, file: !458, line: 101, type: !499, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!499 = !DISubroutineType(types: !500)
!500 = !{!9, !273, !273, !491}
!501 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !502, file: !460, line: 135)
!502 = !DISubprogram(name: "vsnprintf", scope: !458, file: !458, line: 98, type: !503, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!503 = !DISubroutineType(types: !504)
!504 = !{!9, !269, !180, !273, !491}
!505 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !506, file: !460, line: 136)
!506 = !DISubprogram(name: "vsprintf", scope: !458, file: !458, line: 97, type: !507, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!507 = !DISubroutineType(types: !508)
!508 = !{!9, !269, !273, !491}
!509 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !510, file: !460, line: 137)
!510 = !DISubprogram(name: "fgetc", scope: !458, file: !458, line: 112, type: !464, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!511 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !512, file: !460, line: 138)
!512 = !DISubprogram(name: "fgets", scope: !458, file: !458, line: 115, type: !513, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!513 = !DISubroutineType(types: !514)
!514 = !{!269, !269, !9, !466}
!515 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !516, file: !460, line: 139)
!516 = !DISubprogram(name: "fputc", scope: !458, file: !458, line: 106, type: !517, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!517 = !DISubroutineType(types: !518)
!518 = !{!9, !9, !466}
!519 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !520, file: !460, line: 140)
!520 = !DISubprogram(name: "fputs", scope: !458, file: !458, line: 109, type: !521, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!521 = !DISubroutineType(types: !522)
!522 = !{!9, !273, !466}
!523 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !524, file: !460, line: 141)
!524 = !DISubprogram(name: "getc", scope: !458, file: !458, line: 186, type: !464, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!525 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !526, file: !460, line: 142)
!526 = !DISubprogram(name: "putc", scope: !458, file: !458, line: 168, type: !517, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!527 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !528, file: !460, line: 143)
!528 = !DISubprogram(name: "ungetc", scope: !458, file: !458, line: 118, type: !517, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!529 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !530, file: !460, line: 144)
!530 = !DISubprogram(name: "fread", scope: !458, file: !458, line: 125, type: !531, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!531 = !DISubroutineType(types: !532)
!532 = !{!180, !533, !180, !180, !466}
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32, dwarfAddressSpace: 12)
!534 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !535, file: !460, line: 145)
!535 = !DISubprogram(name: "fwrite", scope: !458, file: !458, line: 123, type: !536, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!536 = !DISubroutineType(types: !537)
!537 = !{!180, !538, !180, !180, !466}
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 32, dwarfAddressSpace: 12)
!539 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !540, file: !460, line: 149)
!540 = !DISubprogram(name: "fseek", scope: !458, file: !458, line: 138, type: !541, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!541 = !DISubroutineType(types: !542)
!542 = !{!9, !466, !397, !9}
!543 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !544, file: !460, line: 153)
!544 = !DISubprogram(name: "ftell", scope: !458, file: !458, line: 140, type: !545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!545 = !DISubroutineType(types: !546)
!546 = !{!397, !466}
!547 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !548, file: !460, line: 154)
!548 = !DISubprogram(name: "rewind", scope: !458, file: !458, line: 163, type: !549, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!549 = !DISubroutineType(types: !550)
!550 = !{null, !466}
!551 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !552, file: !460, line: 155)
!552 = !DISubprogram(name: "clearerr", scope: !458, file: !458, line: 147, type: !549, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!553 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !554, file: !460, line: 156)
!554 = !DISubprogram(name: "feof", scope: !458, file: !458, line: 145, type: !464, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!555 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !556, file: !460, line: 157)
!556 = !DISubprogram(name: "ferror", scope: !458, file: !458, line: 146, type: !464, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!557 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !558, file: !460, line: 158)
!558 = !DISubprogram(name: "perror", scope: !458, file: !458, line: 148, type: !559, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!559 = !DISubroutineType(types: !560)
!560 = !{null, !273}
!561 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !562, file: !460, line: 161)
!562 = !DISubprogram(name: "fopen", scope: !458, file: !458, line: 76, type: !563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!563 = !DISubroutineType(types: !564)
!564 = !{!466, !273, !273}
!565 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !566, file: !460, line: 162)
!566 = !DISubprogram(name: "freopen", scope: !458, file: !458, line: 80, type: !567, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!567 = !DISubroutineType(types: !568)
!568 = !{!466, !273, !273, !466}
!569 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !570, file: !460, line: 163)
!570 = !DISubprogram(name: "remove", scope: !458, file: !458, line: 66, type: !391, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!571 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !572, file: !460, line: 164)
!572 = !DISubprogram(name: "rename", scope: !458, file: !458, line: 67, type: !289, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!573 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !574, file: !460, line: 165)
!574 = !DISubprogram(name: "tmpfile", scope: !458, file: !458, line: 68, type: !575, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!575 = !DISubroutineType(types: !576)
!576 = !{!466}
!577 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !578, file: !460, line: 172)
!578 = !DISubprogram(name: "getchar", scope: !458, file: !458, line: 191, type: !411, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!579 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !580, file: !460, line: 176)
!580 = !DISubprogram(name: "scanf", scope: !458, file: !458, line: 93, type: !581, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!581 = !DISubroutineType(types: !582)
!582 = !{!9, !273, null}
!583 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !584, file: !460, line: 177)
!584 = !DISubprogram(name: "vscanf", scope: !458, file: !458, line: 158, type: !585, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!585 = !DISubroutineType(types: !586)
!586 = !{!9, !273, !491}
!587 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !588, file: !460, line: 181)
!588 = !DISubprogram(name: "printf", scope: !458, file: !458, line: 88, type: !581, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!589 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !590, file: !460, line: 182)
!590 = !DISubprogram(name: "putchar", scope: !458, file: !458, line: 173, type: !591, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!591 = !DISubroutineType(types: !592)
!592 = !{!9, !9}
!593 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !594, file: !460, line: 183)
!594 = !DISubprogram(name: "puts", scope: !458, file: !458, line: 178, type: !391, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!595 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !174, entity: !596, file: !460, line: 184)
!596 = !DISubprogram(name: "vprintf", scope: !458, file: !458, line: 153, type: !585, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!597 = !DIImportedEntity(tag: DW_TAG_imported_declaration, name: "Utils", scope: !8, entity: !598, file: !151, line: 119)
!598 = !DINamespace(name: "utils", scope: !7)
!599 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !5, file: !151, line: 7686)
!600 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !13, file: !151, line: 10079)
!601 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !21, file: !151, line: 10080)
!602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !603, size: 256, elements: !604)
!603 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !9)
!604 = !{!605}
!605 = !DISubrange(count: 8)
!606 = !{i32 7, !"Dwarf Version", i32 4}
!607 = !{i32 2, !"Debug Info Version", i32 3}
!608 = !{i32 1, !"wchar_size", i32 4}
!609 = !{i32 7, !"frame-pointer", i32 2}
!610 = !{!"clang version 15.0.5 (/u/sgasip/ipd/repositories/llvm_ipd 3a25925e0239306412dac02da5e4c8c51ae722e8)"}
!611 = distinct !DISubprogram(name: "sign", linkageName: "_Z4signf", scope: !612, file: !612, line: 7, type: !335, scopeLine: 7, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !613)
!612 = !DIFile(filename: "aie/src/ProcessUnit/Orthogonalize.cpp", directory: "/home/lxy/Projects/SVD/Jacobi_AIE")
!613 = !{!614}
!614 = !DILocalVariable(name: "x", arg: 1, scope: !611, file: !612, line: 7, type: !114)
!615 = !DILocation(line: 0, scope: !611)
!616 = !DILocation(line: 8, column: 10, scope: !617)
!617 = distinct !DILexicalBlock(scope: !611, file: !612, line: 8, column: 8)
!618 = !DILocation(line: 8, column: 8, scope: !611)
!619 = !DILocation(line: 11, column: 1, scope: !611)
!620 = distinct !DISubprogram(name: "main", scope: !494, file: !494, line: 20, type: !411, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !621)
!621 = !{!622, !623, !624, !625, !626, !629}
!622 = !DILocalVariable(name: "stream_0", scope: !620, file: !494, line: 22, type: !53)
!623 = !DILocalVariable(name: "stream_1", scope: !620, file: !494, line: 23, type: !53)
!624 = !DILocalVariable(name: "stream_2", scope: !620, file: !494, line: 24, type: !115)
!625 = !DILocalVariable(name: "stream_3", scope: !620, file: !494, line: 25, type: !115)
!626 = !DILocalVariable(name: "index", scope: !620, file: !494, line: 26, type: !627)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32", file: !628, line: 65, baseType: !194)
!628 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/aie_api/detail/../types.hpp", directory: "/home/lxy")
!629 = !DILocalVariable(name: "proc_24_0_bounds", scope: !630, file: !494, line: 30, type: !627)
!630 = distinct !DILexicalBlock(scope: !620, file: !494, line: 28, column: 3)
!631 = !DILocation(line: 21, column: 18, scope: !620)
!632 = !{!633, !633, i64 0, i64 4}
!633 = !{!634, i64 4, !"int"}
!634 = !{!635, i64 1, !"omnipotent char"}
!635 = !{!"Simple C++ TBAA"}
!636 = !{!637, !639, !640, !641}
!637 = distinct !{!637, !638, !"main: stream_0"}
!638 = distinct !{!638, !"main"}
!639 = distinct !{!639, !638, !"main: stream_1"}
!640 = distinct !{!640, !638, !"main: stream_2"}
!641 = distinct !{!641, !638, !"main: stream_3"}
!642 = !DILocation(line: 22, column: 3, scope: !620)
!643 = !DILocation(line: 22, column: 22, scope: !620)
!644 = !{!637}
!645 = !DILocation(line: 22, column: 33, scope: !620)
!646 = !DILocation(line: 23, column: 3, scope: !620)
!647 = !DILocation(line: 23, column: 22, scope: !620)
!648 = !{!639}
!649 = !DILocation(line: 23, column: 33, scope: !620)
!650 = !DILocation(line: 24, column: 3, scope: !620)
!651 = !DILocation(line: 24, column: 23, scope: !620)
!652 = !{!640}
!653 = !DILocation(line: 24, column: 34, scope: !620)
!654 = !DILocation(line: 25, column: 3, scope: !620)
!655 = !DILocation(line: 25, column: 23, scope: !620)
!656 = !{!641}
!657 = !DILocation(line: 25, column: 34, scope: !620)
!658 = !DILocation(line: 0, scope: !620)
!659 = !DILocation(line: 27, column: 3, scope: !620)
!660 = !DILocation(line: 26, column: 9, scope: !620)
!661 = !DILocation(line: 0, scope: !630)
!662 = !DILocation(line: 30, column: 28, scope: !630)
!663 = !DILocation(line: 32, column: 10, scope: !630)
!664 = !DILocation(line: 32, column: 3, scope: !630)
!665 = !DILocation(line: 36, column: 5, scope: !666)
!666 = distinct !DILexicalBlock(scope: !630, file: !494, line: 33, column: 3)
!667 = !DILocation(line: 37, column: 15, scope: !666)
!668 = !DILocation(line: 39, column: 5, scope: !666)
!669 = !DILocation(line: 41, column: 25, scope: !670)
!670 = distinct !DILexicalBlock(scope: !666, file: !494, line: 41, column: 8)
!671 = !DILocation(line: 41, column: 8, scope: !666)
!672 = distinct !{!672, !664, !673, !674}
!673 = !DILocation(line: 43, column: 3, scope: !630)
!674 = !{!"llvm.loop.mustprogress"}
!675 = !DILocation(line: 44, column: 3, scope: !630)
!676 = !DILocation(line: 45, column: 7, scope: !677)
!677 = distinct !DILexicalBlock(scope: !630, file: !494, line: 45, column: 7)
!678 = !DILocation(line: 45, column: 22, scope: !677)
!679 = !DILocation(line: 48, column: 1, scope: !620)
!680 = distinct !DISubprogram(name: "input_stream", linkageName: "_ZN12input_streamIfEC2Ej", scope: !55, file: !56, line: 50, type: !109, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !108, retainedNodes: !681)
!681 = !{!682, !684}
!682 = !DILocalVariable(name: "this", arg: 1, scope: !680, type: !683, flags: DIFlagArtificial | DIFlagObjectPointer)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 32)
!684 = !DILocalVariable(name: "ch", arg: 2, scope: !680, file: !56, line: 50, type: !15)
!685 = !DILocation(line: 0, scope: !680)
!686 = !DILocation(line: 50, column: 41, scope: !680)
!687 = !{!634, !634, i64 0, i64 0}
!688 = distinct !DISubprogram(name: "output_stream", linkageName: "_ZN13output_streamIfEC2Ej", scope: !116, file: !56, line: 60, type: !147, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !146, retainedNodes: !689)
!689 = !{!690, !692}
!690 = !DILocalVariable(name: "this", arg: 1, scope: !688, type: !691, flags: DIFlagArtificial | DIFlagObjectPointer)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 32)
!692 = !DILocalVariable(name: "ch", arg: 2, scope: !688, file: !56, line: 60, type: !15)
!693 = !DILocation(line: 0, scope: !688)
!694 = !DILocation(line: 60, column: 42, scope: !688)
!695 = distinct !DISubprogram(name: "orthogonalize<8>", linkageName: "_Z13orthogonalizeILi8EEvP12input_streamIfES2_P13output_streamIfES5_", scope: !612, file: !612, line: 14, type: !696, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !724, retainedNodes: !700)
!696 = !DISubroutineType(types: !697)
!697 = !{null, !698, !698, !699, !699}
!698 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !683)
!699 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !691)
!700 = !{!701, !702, !703, !704, !705, !707, !709, !710, !711, !712, !714, !715, !716, !718, !719, !720, !721, !722}
!701 = !DILocalVariable(name: "in0", arg: 1, scope: !695, file: !612, line: 14, type: !698)
!702 = !DILocalVariable(name: "in1", arg: 2, scope: !695, file: !612, line: 15, type: !698)
!703 = !DILocalVariable(name: "out0", arg: 3, scope: !695, file: !612, line: 16, type: !699)
!704 = !DILocalVariable(name: "out1", arg: 4, scope: !695, file: !612, line: 17, type: !699)
!705 = !DILocalVariable(name: "VECSIZE", scope: !695, file: !612, line: 18, type: !706)
!706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!707 = !DILocalVariable(name: "Ap", scope: !695, file: !612, line: 20, type: !708)
!708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 256, elements: !604)
!709 = !DILocalVariable(name: "Aq", scope: !695, file: !612, line: 20, type: !708)
!710 = !DILocalVariable(name: "Bp", scope: !695, file: !612, line: 20, type: !708)
!711 = !DILocalVariable(name: "Bq", scope: !695, file: !612, line: 20, type: !708)
!712 = !DILocalVariable(name: "i", scope: !713, file: !612, line: 22, type: !9)
!713 = distinct !DILexicalBlock(scope: !695, file: !612, line: 22, column: 5)
!714 = !DILocalVariable(name: "tmp1", scope: !695, file: !612, line: 27, type: !114)
!715 = !DILocalVariable(name: "tmp2", scope: !695, file: !612, line: 28, type: !114)
!716 = !DILocalVariable(name: "i", scope: !717, file: !612, line: 29, type: !9)
!717 = distinct !DILexicalBlock(scope: !695, file: !612, line: 29, column: 5)
!718 = !DILocalVariable(name: "tau", scope: !695, file: !612, line: 37, type: !114)
!719 = !DILocalVariable(name: "t", scope: !695, file: !612, line: 38, type: !114)
!720 = !DILocalVariable(name: "c", scope: !695, file: !612, line: 39, type: !114)
!721 = !DILocalVariable(name: "s", scope: !695, file: !612, line: 40, type: !114)
!722 = !DILocalVariable(name: "i", scope: !723, file: !612, line: 41, type: !9)
!723 = distinct !DILexicalBlock(scope: !695, file: !612, line: 41, column: 5)
!724 = !{!725}
!725 = !DITemplateValueParameter(name: "ROW", type: !9, value: i32 8)
!726 = !{!727}
!727 = distinct !{!727, !728, !"_Z13orthogonalizeILi8EEvP12input_streamIfES2_P13output_streamIfES5_: in0"}
!728 = distinct !{!728, !"_Z13orthogonalizeILi8EEvP12input_streamIfES2_P13output_streamIfES5_"}
!729 = !{!727, !730, !731, !732}
!730 = distinct !{!730, !728, !"_Z13orthogonalizeILi8EEvP12input_streamIfES2_P13output_streamIfES5_: in1"}
!731 = distinct !{!731, !728, !"_Z13orthogonalizeILi8EEvP12input_streamIfES2_P13output_streamIfES5_: out0"}
!732 = distinct !{!732, !728, !"_Z13orthogonalizeILi8EEvP12input_streamIfES2_P13output_streamIfES5_: out1"}
!733 = !{!734, !734, i64 0, i64 4}
!734 = !{!634, i64 4, !"any pointer"}
!735 = !DILocation(line: 14, column: 53, scope: !695)
!736 = !{!730}
!737 = !DILocation(line: 15, column: 53, scope: !695)
!738 = !{!731}
!739 = !DILocation(line: 16, column: 54, scope: !695)
!740 = !{!732}
!741 = !DILocation(line: 17, column: 54, scope: !695)
!742 = !DILocation(line: 0, scope: !695)
!743 = !DILocation(line: 20, column: 5, scope: !695)
!744 = !DILocation(line: 20, column: 11, scope: !695)
!745 = !DILocation(line: 20, column: 20, scope: !695)
!746 = !DILocation(line: 0, scope: !713)
!747 = !DILocation(line: 22, column: 5, scope: !713)
!748 = !DILocation(line: 0, scope: !717)
!749 = !DILocation(line: 29, column: 5, scope: !717)
!750 = !DILocation(line: 23, column: 26, scope: !751)
!751 = distinct !DILexicalBlock(scope: !752, file: !612, line: 22, column: 33)
!752 = distinct !DILexicalBlock(scope: !713, file: !612, line: 22, column: 5)
!753 = !DILocation(line: 23, column: 17, scope: !751)
!754 = !DILocation(line: 23, column: 9, scope: !751)
!755 = !DILocation(line: 23, column: 15, scope: !751)
!756 = !{!757, !757, i64 0, i64 4}
!757 = !{!634, i64 4, !"float"}
!758 = !DILocation(line: 24, column: 26, scope: !751)
!759 = !DILocation(line: 24, column: 17, scope: !751)
!760 = !DILocation(line: 24, column: 9, scope: !751)
!761 = !DILocation(line: 24, column: 15, scope: !751)
!762 = !DILocation(line: 22, column: 29, scope: !752)
!763 = !DILocation(line: 22, column: 21, scope: !752)
!764 = distinct !{!764, !747, !765, !674, !766, !767}
!765 = !DILocation(line: 25, column: 5, scope: !713)
!766 = !{!"llvm.loop.chess.min_loop_count", i32 8}
!767 = !{!"llvm.loop.chess.max_loop_count", i32 8}
!768 = !DILocation(line: 32, column: 17, scope: !769)
!769 = distinct !DILexicalBlock(scope: !770, file: !612, line: 31, column: 5)
!770 = distinct !DILexicalBlock(scope: !717, file: !612, line: 29, column: 5)
!771 = !DILocation(line: 32, column: 25, scope: !769)
!772 = !DILocation(line: 32, column: 33, scope: !769)
!773 = !DILocation(line: 32, column: 41, scope: !769)
!774 = !DILocation(line: 32, column: 39, scope: !769)
!775 = !DILocation(line: 32, column: 31, scope: !769)
!776 = !DILocation(line: 32, column: 14, scope: !769)
!777 = !DILocation(line: 33, column: 21, scope: !769)
!778 = !DILocation(line: 33, column: 19, scope: !769)
!779 = !DILocation(line: 33, column: 29, scope: !769)
!780 = !DILocation(line: 33, column: 14, scope: !769)
!781 = !DILocation(line: 29, column: 29, scope: !770)
!782 = !DILocation(line: 29, column: 21, scope: !770)
!783 = distinct !{!783, !749, !784, !674, !766, !767}
!784 = !DILocation(line: 35, column: 5, scope: !717)
!785 = !DILocation(line: 37, column: 5, scope: !695)
!786 = !DILocation(line: 37, column: 10, scope: !695)
!787 = !DILocation(line: 37, column: 21, scope: !695)
!788 = !DILocation(line: 38, column: 19, scope: !695)
!789 = !DILocation(line: 38, column: 14, scope: !695)
!790 = !DILocation(line: 38, column: 27, scope: !695)
!791 = !DILocation(line: 38, column: 57, scope: !695)
!792 = !DILocation(line: 38, column: 63, scope: !695)
!793 = !DILocation(line: 38, column: 55, scope: !695)
!794 = !DILocation(line: 38, column: 43, scope: !695)
!795 = !DILocation(line: 38, column: 41, scope: !695)
!796 = !DILocation(line: 38, column: 24, scope: !695)
!797 = !DILocation(line: 39, column: 31, scope: !695)
!798 = !DILocation(line: 39, column: 19, scope: !695)
!799 = !DILocation(line: 39, column: 16, scope: !695)
!800 = !DILocation(line: 40, column: 16, scope: !695)
!801 = !DILocation(line: 0, scope: !723)
!802 = !DILocation(line: 41, column: 5, scope: !723)
!803 = !DILocation(line: 42, column: 19, scope: !804)
!804 = distinct !DILexicalBlock(scope: !805, file: !612, line: 41, column: 35)
!805 = distinct !DILexicalBlock(scope: !723, file: !612, line: 41, column: 5)
!806 = !DILocation(line: 42, column: 25, scope: !804)
!807 = !DILocation(line: 42, column: 37, scope: !804)
!808 = !DILocation(line: 42, column: 43, scope: !804)
!809 = !DILocation(line: 42, column: 35, scope: !804)
!810 = !DILocation(line: 42, column: 9, scope: !804)
!811 = !DILocation(line: 43, column: 19, scope: !804)
!812 = !DILocation(line: 43, column: 26, scope: !804)
!813 = !DILocation(line: 43, column: 25, scope: !804)
!814 = !DILocation(line: 43, column: 38, scope: !804)
!815 = !DILocation(line: 43, column: 44, scope: !804)
!816 = !DILocation(line: 43, column: 36, scope: !804)
!817 = !DILocation(line: 43, column: 9, scope: !804)
!818 = !DILocation(line: 41, column: 31, scope: !805)
!819 = !DILocation(line: 41, column: 23, scope: !805)
!820 = distinct !{!820, !802, !821, !674, !766, !767}
!821 = !DILocation(line: 46, column: 5, scope: !723)
!822 = !DILocation(line: 50, column: 1, scope: !695)
!823 = !{!824, !824, i64 0, i64 4}
!824 = !{!634, i64 4, !"uint2_t"}
!825 = distinct !DISubprogram(name: "readincr<(aie_stream_resource_in)0, float>", linkageName: "_ZL8readincrIL22aie_stream_resource_in0EfET0_P12input_streamIS1_E", scope: !826, file: !826, line: 126, type: !827, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !835, retainedNodes: !829)
!826 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/adf/stream/me/accessors.h", directory: "/home/lxy")
!827 = !DISubroutineType(types: !828)
!828 = !{!114, !683}
!829 = !{!830, !831, !834}
!830 = !DILocalVariable(name: "ss", arg: 1, scope: !825, file: !826, line: 126, type: !683)
!831 = !DILocalVariable(name: "origVal", scope: !825, file: !826, line: 129, type: !832)
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32", file: !833, line: 28, baseType: !194)
!833 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/adf/window/types.h", directory: "/home/lxy")
!834 = !DILocalVariable(name: "value", scope: !825, file: !826, line: 130, type: !114)
!835 = !{!836, !837}
!836 = !DITemplateValueParameter(name: "resource", type: !31, value: i32 0)
!837 = !DITemplateTypeParameter(name: "streamTy", type: !114)
!838 = !DILocation(line: 0, scope: !825)
!839 = !DILocation(line: 129, column: 21, scope: !825)
!840 = !DILocation(line: 178, column: 21, scope: !841)
!841 = distinct !DILexicalBlock(scope: !842, file: !826, line: 177, column: 28)
!842 = distinct !DILexicalBlock(scope: !843, file: !826, line: 170, column: 28)
!843 = distinct !DILexicalBlock(scope: !844, file: !826, line: 168, column: 28)
!844 = distinct !DILexicalBlock(scope: !845, file: !826, line: 158, column: 28)
!845 = distinct !DILexicalBlock(scope: !846, file: !826, line: 156, column: 23)
!846 = distinct !DILexicalBlock(scope: !847, file: !826, line: 155, column: 5)
!847 = distinct !DILexicalBlock(scope: !825, file: !826, line: 132, column: 19)
!848 = !DILocation(line: 182, column: 5, scope: !825)
!849 = !DILocation(line: 0, scope: !152)
!850 = !DILocation(line: 3398, column: 23, scope: !152)
!851 = !DILocation(line: 3401, column: 24, scope: !852)
!852 = distinct !DILexicalBlock(scope: !152, file: !151, line: 3400, column: 19)
!853 = !DILocation(line: 3401, column: 9, scope: !852)
!854 = distinct !DISubprogram(name: "sqrt<float>", linkageName: "_ZN3aie4sqrtIfEEDaT_", scope: !8, file: !151, line: 9199, type: !335, scopeLine: 9200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !169, retainedNodes: !855)
!855 = !{!856}
!856 = !DILocalVariable(name: "a", arg: 1, scope: !854, file: !151, line: 9199, type: !114)
!857 = !DILocation(line: 9199, column: 13, scope: !854)
!858 = !DILocation(line: 9202, column: 12, scope: !854)
!859 = !DILocation(line: 9202, column: 5, scope: !854)
!860 = distinct !DISubprogram(name: "writeincr<(aie_stream_resource_out)0, float>", linkageName: "_ZL9writeincrIL23aie_stream_resource_out0EfEvP13output_streamIT0_ENSt3__213type_identityIS2_E4typeEb", scope: !826, file: !826, line: 252, type: !861, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !875, retainedNodes: !870)
!861 = !DISubroutineType(types: !862)
!862 = !{null, !691, !863, !869}
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "type_identity_t<float>", scope: !174, file: !864, line: 1240, baseType: !865)
!864 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime_cxx/libs/libcxx-9.0.0/include-lite/../include/type_traits", directory: "/home/lxy")
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !866, file: !864, line: 1239, baseType: !114)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "type_identity<float>", scope: !174, file: !864, line: 1239, size: 8, flags: DIFlagTypePassByValue, elements: !158, templateParams: !867, identifier: "_ZTSNSt3__213type_identityIfEE")
!867 = !{!868}
!868 = !DITemplateTypeParameter(name: "_Tp", type: !114)
!869 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!870 = !{!871, !872, !873, !874}
!871 = !DILocalVariable(name: "str", arg: 1, scope: !860, file: !826, line: 252, type: !691)
!872 = !DILocalVariable(name: "value", arg: 2, scope: !860, file: !826, line: 252, type: !863)
!873 = !DILocalVariable(name: "tlast", arg: 3, scope: !860, file: !826, line: 252, type: !869)
!874 = !DILocalVariable(name: "value32", scope: !860, file: !826, line: 254, type: !832)
!875 = !{!876, !837}
!876 = !DITemplateValueParameter(name: "resource", type: !51, value: i32 0)
!877 = !DILocation(line: 0, scope: !860)
!878 = !DILocation(line: 298, column: 23, scope: !879)
!879 = distinct !DILexicalBlock(scope: !880, file: !826, line: 297, column: 28)
!880 = distinct !DILexicalBlock(scope: !881, file: !826, line: 290, column: 28)
!881 = distinct !DILexicalBlock(scope: !882, file: !826, line: 288, column: 28)
!882 = distinct !DILexicalBlock(scope: !883, file: !826, line: 281, column: 28)
!883 = distinct !DILexicalBlock(scope: !884, file: !826, line: 279, column: 23)
!884 = distinct !DILexicalBlock(scope: !885, file: !826, line: 278, column: 5)
!885 = distinct !DILexicalBlock(scope: !860, file: !826, line: 257, column: 19)
!886 = !DILocation(line: 302, column: 69, scope: !860)
!887 = !DILocation(line: 302, column: 5, scope: !860)
!888 = !DILocation(line: 303, column: 1, scope: !860)
!889 = distinct !DISubprogram(name: "aie_stream_get_ss<float, float>", linkageName: "_ZN12stream_utilsL17aie_stream_get_ssIffEEiP12input_streamIT0_E", scope: !891, file: !890, line: 127, type: !892, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !896, retainedNodes: !894)
!890 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/adf/stream/me/stream_utils.h", directory: "/home/lxy")
!891 = !DINamespace(name: "stream_utils", scope: null)
!892 = !DISubroutineType(types: !893)
!893 = !{!832, !683}
!894 = !{!895}
!895 = !DILocalVariable(name: "ss", arg: 1, scope: !889, file: !890, line: 127, type: !683)
!896 = !{!113, !837}
!897 = !DILocation(line: 0, scope: !889)
!898 = !DILocation(line: 135, column: 27, scope: !899)
!899 = distinct !DILexicalBlock(scope: !900, file: !890, line: 132, column: 24)
!900 = distinct !DILexicalBlock(scope: !889, file: !890, line: 130, column: 19)
!901 = !DILocation(line: 135, column: 16, scope: !899)
!902 = !DILocation(line: 135, column: 9, scope: !899)
!903 = !{!904, !904, i64 0, i64 4}
!904 = !{!634, i64 4, !"uint1_t"}
!905 = !{i32 1}
!906 = !{!907, !633, i64 4, i64 4}
!907 = !{!634, i64 8, !"_ZTSN12me_primitive60chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sintE", !633, i64 0, i64 4, !633, i64 4, i64 4}
!908 = !{!907, !633, i64 0, i64 4}
!909 = !{!910, !633, i64 4, i64 4}
!910 = !{!634, i64 8, !"_ZTSN12me_primitive60chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sintE", !633, i64 0, i64 4, !633, i64 4, i64 4}
!911 = !{!910, !633, i64 0, i64 4}
!912 = !{!913, !633, i64 4, i64 4}
!913 = !{!634, i64 8, !"_ZTSN12me_primitive57chessout___sint_stream_read___PSSMEM__sint_uint1_t___sintE", !633, i64 0, i64 4, !633, i64 4, i64 4}
!914 = !{!913, !633, i64 0, i64 4}
!915 = distinct !DISubprogram(name: "abs", linkageName: "_ZNSt3__23absEf", scope: !174, file: !337, line: 325, type: !335, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !916)
!916 = !{!917}
!917 = !DILocalVariable(name: "x", arg: 1, scope: !915, file: !337, line: 325, type: !114)
!918 = !DILocation(line: 0, scope: !915)
!919 = !DILocation(line: 325, column: 73, scope: !915)
!920 = !DILocation(line: 325, column: 66, scope: !915)
!921 = distinct !DISubprogram(name: "run", linkageName: "_ZN3aie6detail15elementary_bitsILNS0_12ElementaryOpE0ELj32EffE3runERKfi", scope: !922, file: !38, line: 134, type: !927, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !929, retainedNodes: !930)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elementary_bits<(aie::detail::ElementaryOp)0, 32U, float, float>", scope: !7, file: !38, line: 131, size: 8, flags: DIFlagTypePassByValue, elements: !158, templateParams: !923, identifier: "_ZTSN3aie6detail15elementary_bitsILNS0_12ElementaryOpE0ELj32EffEE")
!923 = !{!924, !925, !926, !113}
!924 = !DITemplateValueParameter(name: "Op", type: !37, value: i32 0)
!925 = !DITemplateValueParameter(name: "TypeBits", type: !15, value: i32 32)
!926 = !DITemplateTypeParameter(name: "TR", type: !114)
!927 = !DISubroutineType(types: !928)
!928 = !{!114, !163, !9}
!929 = !DISubprogram(name: "run", linkageName: "_ZN3aie6detail15elementary_bitsILNS0_12ElementaryOpE0ELj32EffE3runERKfi", scope: !922, file: !38, line: 134, type: !927, scopeLine: 134, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!930 = !{!931, !932}
!931 = !DILocalVariable(name: "a", arg: 1, scope: !921, file: !38, line: 134, type: !163)
!932 = !DILocalVariable(name: "shift", arg: 2, scope: !921, file: !38, line: 134, type: !9)
!933 = !DILocation(line: 0, scope: !921)
!934 = !DILocation(line: 136, column: 16, scope: !921)
!935 = !DILocation(line: 136, column: 9, scope: !921)
!936 = distinct !DISubprogram(name: "run", linkageName: "_ZN3aie6detail20elementary_bits_implILNS0_12ElementaryOpE0ELj32EffE3runERKfi", scope: !938, file: !937, line: 81, type: !927, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !939, retainedNodes: !940)
!937 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/aie_api/detail/aie1/elementary.hpp", directory: "/home/lxy")
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elementary_bits_impl<(aie::detail::ElementaryOp)0, 32U, float, float>", scope: !7, file: !937, line: 79, size: 8, flags: DIFlagTypePassByValue, elements: !158, templateParams: !923, identifier: "_ZTSN3aie6detail20elementary_bits_implILNS0_12ElementaryOpE0ELj32EffEE")
!939 = !DISubprogram(name: "run", linkageName: "_ZN3aie6detail20elementary_bits_implILNS0_12ElementaryOpE0ELj32EffE3runERKfi", scope: !938, file: !937, line: 81, type: !927, scopeLine: 81, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!940 = !{!941, !942}
!941 = !DILocalVariable(name: "a", arg: 1, scope: !936, file: !937, line: 81, type: !163)
!942 = !DILocalVariable(name: "shift", arg: 2, scope: !936, file: !937, line: 81, type: !9)
!943 = !DILocation(line: 0, scope: !936)
!944 = !DILocation(line: 84, column: 29, scope: !945)
!945 = distinct !DILexicalBlock(scope: !946, file: !937, line: 83, column: 54)
!946 = distinct !DILexicalBlock(scope: !936, file: !937, line: 83, column: 28)
!947 = !DILocation(line: 84, column: 20, scope: !945)
!948 = !DILocation(line: 84, column: 13, scope: !945)
!949 = distinct !DISubprogram(name: "aie_stream_put_ms<float, float>", linkageName: "_ZN12stream_utilsL17aie_stream_put_msIffEEvP13output_streamIT0_Eib", scope: !891, file: !890, line: 168, type: !950, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !896, retainedNodes: !952)
!950 = !DISubroutineType(types: !951)
!951 = !{null, !691, !832, !869}
!952 = !{!953, !954, !955}
!953 = !DILocalVariable(name: "ss", arg: 1, scope: !949, file: !890, line: 168, type: !691)
!954 = !DILocalVariable(name: "value", arg: 2, scope: !949, file: !890, line: 168, type: !832)
!955 = !DILocalVariable(name: "tlast", arg: 3, scope: !949, file: !890, line: 168, type: !869)
!956 = !DILocation(line: 0, scope: !949)
!957 = !DILocation(line: 176, column: 20, scope: !958)
!958 = distinct !DILexicalBlock(scope: !959, file: !890, line: 173, column: 24)
!959 = distinct !DILexicalBlock(scope: !949, file: !890, line: 171, column: 19)
!960 = !DILocation(line: 176, column: 35, scope: !958)
!961 = !DILocation(line: 176, column: 9, scope: !958)
!962 = !DILocation(line: 180, column: 1, scope: !949)
