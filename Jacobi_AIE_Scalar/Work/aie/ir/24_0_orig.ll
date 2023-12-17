; ModuleID = '/home/lxy/Projects/SVD/Jacobi_AIE_Scalar/Work/aie/24_0/src/24_0.cc'
source_filename = "/home/lxy/Projects/SVD/Jacobi_AIE_Scalar/Work/aie/24_0/src/24_0.cc"
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

@_ZL11sync_buffer = internal global [8 x i32] [i32 0, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 4, !dbg !0
@_ZN12me_primitive3ss0E = external dso_local addrspace(25) global i32, align 1 #0
@_ZN12me_primitive4sst0E = external dso_local addrspace(19) global i32, align 1 #0
@_ZN12me_primitive3ss1E = external dso_local addrspace(26) global i32, align 1 #1
@_ZN12me_primitive4sst1E = external dso_local addrspace(19) global i32, align 1 #1
@_ZN12me_primitive3ms0E = external dso_local addrspace(29) global i32, align 1 #0
@_ZN12me_primitive3ms1E = external dso_local addrspace(30) global i32, align 1 #1

; Function Attrs: mustprogress nounwind
define dso_local float @_Z4signd(double %x) addrspace(1) #2 !dbg !611 {
entry:
  %retval = alloca float, align 4
  %x.addr = alloca double, align 4
  store double %x, double* %x.addr, align 4, !tbaa !617
  call addrspace(1) void @llvm.dbg.declare(metadata double* %x.addr, metadata !616, metadata !DIExpression()), !dbg !621
  %0 = load double, double* %x.addr, align 4, !dbg !622, !tbaa !617
  %cmp = fcmp ogt double %0, 0.000000e+00, !dbg !624
  br i1 %cmp, label %if.then, label %if.else, !dbg !625

if.then:                                          ; preds = %entry
  store float 1.000000e+00, float* %retval, align 4, !dbg !626
  br label %return, !dbg !626

if.else:                                          ; preds = %entry
  %1 = load double, double* %x.addr, align 4, !dbg !627, !tbaa !617
  %cmp1 = fcmp oeq double %1, 0.000000e+00, !dbg !629
  br i1 %cmp1, label %if.then2, label %if.else3, !dbg !630

if.then2:                                         ; preds = %if.else
  store float 0.000000e+00, float* %retval, align 4, !dbg !631
  br label %return, !dbg !631

if.else3:                                         ; preds = %if.else
  store float -1.000000e+00, float* %retval, align 4, !dbg !632
  br label %return, !dbg !632

return:                                           ; preds = %if.else3, %if.then2, %if.then
  %2 = load float, float* %retval, align 4, !dbg !633
  ret float %2, !dbg !633
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) addrspace(1) #3

; Function Attrs: mustprogress norecurse nounwind
define dso_local i32 @main() addrspace(1) #4 !dbg !634 {
entry:
  %retval = alloca i32, align 4
  %stream_0 = alloca %struct.input_stream, align 4
  %stream_1 = alloca %struct.input_stream, align 4
  %stream_2 = alloca %struct.output_stream, align 4
  %stream_3 = alloca %struct.output_stream, align 4
  %index = alloca i32, align 4
  %proc_24_0_bounds = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 0, i32* %retval, align 4, !noalias !645
  store volatile i32 0, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @_ZL11sync_buffer, i32 0, i32 0), align 4, !dbg !651, !tbaa !652, !noalias !645
  store %struct.input_stream undef, %struct.input_stream* %stream_0, align 4, !dbg !654, !noalias !645
  %0 = bitcast %struct.input_stream* %stream_0 to i8*, !dbg !654
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #20, !dbg !654, !noalias !645
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.input_stream* %stream_0, metadata !636, metadata !DIExpression()), !dbg !655
  %1 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0s_struct.input_streams.i32(%struct.input_stream* %stream_0, i32 0, metadata !656), !dbg !654, !noalias !645
  call addrspace(1) void @_ZN12input_streamIfEC2Ej(%struct.input_stream* nonnull align 4 dereferenceable(4) %stream_0, i32 0) #21, !dbg !657, !noalias !645
  store %struct.input_stream undef, %struct.input_stream* %stream_1, align 4, !dbg !658, !noalias !645
  %2 = bitcast %struct.input_stream* %stream_1 to i8*, !dbg !658
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #20, !dbg !658, !noalias !645
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.input_stream* %stream_1, metadata !637, metadata !DIExpression()), !dbg !659
  %3 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0s_struct.input_streams.i32(%struct.input_stream* %stream_1, i32 0, metadata !660), !dbg !658, !noalias !645
  call addrspace(1) void @_ZN12input_streamIfEC2Ej(%struct.input_stream* nonnull align 4 dereferenceable(4) %stream_1, i32 1) #21, !dbg !661, !noalias !645
  store %struct.output_stream undef, %struct.output_stream* %stream_2, align 4, !dbg !662, !noalias !645
  %4 = bitcast %struct.output_stream* %stream_2 to i8*, !dbg !662
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #20, !dbg !662, !noalias !645
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.output_stream* %stream_2, metadata !638, metadata !DIExpression()), !dbg !663
  %5 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0s_struct.output_streams.i32(%struct.output_stream* %stream_2, i32 0, metadata !664), !dbg !662, !noalias !645
  call addrspace(1) void @_ZN13output_streamIfEC2Ej(%struct.output_stream* nonnull align 4 dereferenceable(4) %stream_2, i32 0) #21, !dbg !665, !noalias !645
  store %struct.output_stream undef, %struct.output_stream* %stream_3, align 4, !dbg !666, !noalias !645
  %6 = bitcast %struct.output_stream* %stream_3 to i8*, !dbg !666
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #20, !dbg !666, !noalias !645
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.output_stream* %stream_3, metadata !639, metadata !DIExpression()), !dbg !667
  %7 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0s_struct.output_streams.i32(%struct.output_stream* %stream_3, i32 0, metadata !668), !dbg !666, !noalias !645
  call addrspace(1) void @_ZN13output_streamIfEC2Ej(%struct.output_stream* nonnull align 4 dereferenceable(4) %stream_3, i32 1) #21, !dbg !669, !noalias !645
  store i32 undef, i32* %index, align 4, !dbg !670, !noalias !645
  %8 = bitcast i32* %index to i8*, !dbg !670
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #20, !dbg !670, !noalias !645
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %index, metadata !640, metadata !DIExpression()), !dbg !671
  store i32 1, i32* %index, align 4, !dbg !671, !tbaa !652, !noalias !645
  br label %while.cond, !dbg !672

while.cond:                                       ; preds = %cleanup.cont, %entry
  br label %while.body, !dbg !672

while.body:                                       ; preds = %while.cond
  store i32 undef, i32* %proc_24_0_bounds, align 4, !dbg !673, !noalias !645
  %9 = bitcast i32* %proc_24_0_bounds to i8*, !dbg !673
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #20, !dbg !673, !noalias !645
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %proc_24_0_bounds, metadata !643, metadata !DIExpression()), !dbg !674
  %10 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @_ZL11sync_buffer, i32 0, i32 1), align 4, !dbg !675, !tbaa !652, !noalias !645
  store i32 %10, i32* %proc_24_0_bounds, align 4, !dbg !674, !tbaa !652, !noalias !645
  br label %while.cond1, !dbg !676

while.cond1:                                      ; preds = %if.end, %while.body
  %11 = load i32, i32* %proc_24_0_bounds, align 4, !dbg !677, !tbaa !652, !noalias !645
  %tobool = icmp ne i32 %11, 0, !dbg !677
  br i1 %tobool, label %while.body2, label %while.end, !dbg !676

while.body2:                                      ; preds = %while.cond1
  call addrspace(1) void @_Z13orthogonalizeILi8EEvP12input_streamIfES2_P13output_streamIfES5_(%struct.input_stream* %stream_0, %struct.input_stream* %stream_1, %struct.output_stream* %stream_2, %struct.output_stream* %stream_3) #21, !dbg !678, !noalias !645
  %12 = load i32, i32* %index, align 4, !dbg !680, !tbaa !652, !noalias !645
  %sub = sub nsw i32 1, %12, !dbg !681
  store i32 %sub, i32* %index, align 4, !dbg !682, !tbaa !652, !noalias !645
  call addrspace(1) void @llvm.chess_memory_fence(), !dbg !683, !noalias !645
  %13 = load i32, i32* %proc_24_0_bounds, align 4, !dbg !684, !tbaa !652, !noalias !645
  %cmp = icmp sgt i32 %13, 0, !dbg !686
  br i1 %cmp, label %if.then, label %if.end, !dbg !687

if.then:                                          ; preds = %while.body2
  %14 = load i32, i32* %proc_24_0_bounds, align 4, !dbg !688, !tbaa !652, !noalias !645
  %dec = add nsw i32 %14, -1, !dbg !688
  store i32 %dec, i32* %proc_24_0_bounds, align 4, !dbg !688, !tbaa !652, !noalias !645
  br label %if.end, !dbg !688

if.end:                                           ; preds = %if.then, %while.body2
  br label %while.cond1, !dbg !676, !llvm.loop !689

while.end:                                        ; preds = %while.cond1
  call addrspace(1) void @_Z4donev() #22, !dbg !692, !noalias !645
  %15 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @_ZL11sync_buffer, i32 0, i32 0), align 4, !dbg !693, !tbaa !652, !noalias !645
  %cmp3 = icmp sgt i32 %15, 0, !dbg !695
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !696

if.then4:                                         ; preds = %while.end
  store i32 3, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !697

if.end5:                                          ; preds = %while.end
  store i32 0, i32* %cleanup.dest.slot, align 4, !dbg !698, !noalias !645
  br label %cleanup, !dbg !698

cleanup:                                          ; preds = %if.end5, %if.then4
  %16 = bitcast i32* %proc_24_0_bounds to i8*, !dbg !698
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %16) #20, !dbg !698, !noalias !645
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end6
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !672, !llvm.loop !699

while.end6:                                       ; preds = %cleanup
  store i32 0, i32* %retval, align 4, !dbg !700, !noalias !645
  store i32 1, i32* %cleanup.dest.slot, align 4
  %17 = bitcast i32* %index to i8*, !dbg !701
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %17) #20, !dbg !701
  %18 = bitcast %struct.output_stream* %stream_3 to i8*, !dbg !701
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #20, !dbg !701
  %19 = bitcast %struct.output_stream* %stream_2 to i8*, !dbg !701
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #20, !dbg !701
  %20 = bitcast %struct.input_stream* %stream_1 to i8*, !dbg !701
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %20) #20, !dbg !701
  %21 = bitcast %struct.input_stream* %stream_0 to i8*, !dbg !701
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #20, !dbg !701
  %22 = load i32, i32* %retval, align 4, !dbg !701
  ret i32 %22, !dbg !701

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) addrspace(1) #5

; Function Attrs: inaccessiblememonly nounwind willreturn
declare i8* @llvm.noalias.decl.p0i8.p0s_struct.input_streams.i32(%struct.input_stream*, i32, metadata) addrspace(1) #6

; Function Attrs: nounwind
define linkonce_odr dso_local void @_ZN12input_streamIfEC2Ej(%struct.input_stream* nonnull align 4 dereferenceable(4) %this, i32 %ch) unnamed_addr addrspace(1) #7 comdat align 2 !dbg !702 {
entry:
  %this.addr = alloca %struct.input_stream*, align 4
  %ch.addr = alloca i32, align 4
  store %struct.input_stream* %this, %struct.input_stream** %this.addr, align 4, !tbaa !707
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.input_stream** %this.addr, metadata !704, metadata !DIExpression()), !dbg !709
  store i32 %ch, i32* %ch.addr, align 4, !tbaa !652
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %ch.addr, metadata !706, metadata !DIExpression()), !dbg !710
  %this1 = load %struct.input_stream*, %struct.input_stream** %this.addr, align 4
  %0 = getelementptr inbounds %struct.input_stream, %struct.input_stream* %this1, i32 0, i32 0, !dbg !710
  %channel = bitcast %union.anon* %0 to i32*, !dbg !710
  %1 = load i32, i32* %ch.addr, align 4, !dbg !710, !tbaa !652
  store i32 %1, i32* %channel, align 4, !dbg !710, !tbaa !711
  ret void, !dbg !710
}

; Function Attrs: inaccessiblememonly nounwind willreturn
declare i8* @llvm.noalias.decl.p0i8.p0s_struct.output_streams.i32(%struct.output_stream*, i32, metadata) addrspace(1) #6

; Function Attrs: nounwind
define linkonce_odr dso_local void @_ZN13output_streamIfEC2Ej(%struct.output_stream* nonnull align 4 dereferenceable(4) %this, i32 %ch) unnamed_addr addrspace(1) #7 comdat align 2 !dbg !712 {
entry:
  %this.addr = alloca %struct.output_stream*, align 4
  %ch.addr = alloca i32, align 4
  store %struct.output_stream* %this, %struct.output_stream** %this.addr, align 4, !tbaa !707
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.output_stream** %this.addr, metadata !714, metadata !DIExpression()), !dbg !717
  store i32 %ch, i32* %ch.addr, align 4, !tbaa !652
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %ch.addr, metadata !716, metadata !DIExpression()), !dbg !718
  %this1 = load %struct.output_stream*, %struct.output_stream** %this.addr, align 4
  %0 = getelementptr inbounds %struct.output_stream, %struct.output_stream* %this1, i32 0, i32 0, !dbg !718
  %channel = bitcast %union.anon.0* %0 to i32*, !dbg !718
  %1 = load i32, i32* %ch.addr, align 4, !dbg !718, !tbaa !652
  store i32 %1, i32* %channel, align 4, !dbg !718, !tbaa !711
  ret void, !dbg !718
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_Z13orthogonalizeILi8EEvP12input_streamIfES2_P13output_streamIfES5_(%struct.input_stream* chesscopy noalias %in0, %struct.input_stream* chesscopy noalias %in1, %struct.output_stream* chesscopy noalias %out0, %struct.output_stream* chesscopy noalias %out1) addrspace(1) #2 comdat !dbg !719 {
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
  %0 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0p0s_struct.input_streams.i32(%struct.input_stream** %in0.addr, i32 0, metadata !750), !noalias !753
  store %struct.input_stream* %in0, %struct.input_stream** %in0.addr, align 4, !tbaa !707, !noalias !753
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.input_stream** %in0.addr, metadata !725, metadata !DIExpression()), !dbg !757
  %1 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0p0s_struct.input_streams.i32(%struct.input_stream** %in1.addr, i32 0, metadata !758), !noalias !753
  store %struct.input_stream* %in1, %struct.input_stream** %in1.addr, align 4, !tbaa !707, !noalias !753
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.input_stream** %in1.addr, metadata !726, metadata !DIExpression()), !dbg !759
  %2 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0p0s_struct.output_streams.i32(%struct.output_stream** %out0.addr, i32 0, metadata !760), !noalias !753
  store %struct.output_stream* %out0, %struct.output_stream** %out0.addr, align 4, !tbaa !707, !noalias !753
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.output_stream** %out0.addr, metadata !727, metadata !DIExpression()), !dbg !761
  %3 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0p0s_struct.output_streams.i32(%struct.output_stream** %out1.addr, i32 0, metadata !762), !noalias !753
  store %struct.output_stream* %out1, %struct.output_stream** %out1.addr, align 4, !tbaa !707, !noalias !753
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.output_stream** %out1.addr, metadata !728, metadata !DIExpression()), !dbg !763
  store i32 undef, i32* %VECSIZE, align 4, !dbg !764, !noalias !753
  %4 = bitcast i32* %VECSIZE to i8*, !dbg !764
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #20, !dbg !764, !noalias !753
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %VECSIZE, metadata !729, metadata !DIExpression()), !dbg !765
  store i32 4, i32* %VECSIZE, align 4, !dbg !765, !tbaa !652, !noalias !753
  store [8 x float] undef, [8 x float]* %Ap, align 4, !dbg !766, !noalias !753
  %5 = bitcast [8 x float]* %Ap to i8*, !dbg !766
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 32, i8* %5) #20, !dbg !766, !noalias !753
  call addrspace(1) void @llvm.dbg.declare(metadata [8 x float]* %Ap, metadata !731, metadata !DIExpression()), !dbg !767
  store [8 x float] undef, [8 x float]* %Aq, align 4, !dbg !766, !noalias !753
  %6 = bitcast [8 x float]* %Aq to i8*, !dbg !766
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 32, i8* %6) #20, !dbg !766, !noalias !753
  call addrspace(1) void @llvm.dbg.declare(metadata [8 x float]* %Aq, metadata !733, metadata !DIExpression()), !dbg !768
  store [8 x float] undef, [8 x float]* %Bp, align 4, !dbg !766, !noalias !753
  %7 = bitcast [8 x float]* %Bp to i8*, !dbg !766
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 32, i8* %7) #20, !dbg !766, !noalias !753
  call addrspace(1) void @llvm.dbg.declare(metadata [8 x float]* %Bp, metadata !734, metadata !DIExpression()), !dbg !769
  store [8 x float] undef, [8 x float]* %Bq, align 4, !dbg !766, !noalias !753
  %8 = bitcast [8 x float]* %Bq to i8*, !dbg !766
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 32, i8* %8) #20, !dbg !766, !noalias !753
  call addrspace(1) void @llvm.dbg.declare(metadata [8 x float]* %Bq, metadata !735, metadata !DIExpression()), !dbg !770
  store i32 undef, i32* %i, align 4, !dbg !771, !noalias !753
  %9 = bitcast i32* %i to i8*, !dbg !771
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #20, !dbg !771, !noalias !753
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %i, metadata !736, metadata !DIExpression()), !dbg !772
  store i32 0, i32* %i, align 4, !dbg !772, !tbaa !652, !noalias !753
  br label %for.cond, !dbg !771

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %i, align 4, !dbg !773, !tbaa !652, !noalias !753
  %cmp = icmp slt i32 %10, 8, !dbg !775
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !776

for.cond.cleanup:                                 ; preds = %for.cond
  %11 = bitcast i32* %i to i8*, !dbg !777
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #20, !dbg !777, !noalias !753
  br label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.input_stream*, %struct.input_stream** %in0.addr, align 4, !dbg !778, !tbaa !707, !noalias !753
  %13 = call addrspace(1) %struct.input_stream* @llvm.noalias.p0s_struct.input_streams.p0i8.p0p0s_struct.input_streams.i32(%struct.input_stream* %12, i8* %0, %struct.input_stream** %in0.addr, i32 0, metadata !750), !dbg !778, !tbaa !707, !noalias !753
  %call = call addrspace(1) float @_ZL8readincrIL22aie_stream_resource_in0EfET0_P12input_streamIS1_E(%struct.input_stream* %13) #21, !dbg !780, !noalias !753
  %14 = load i32, i32* %i, align 4, !dbg !781, !tbaa !652, !noalias !753
  %arrayidx = getelementptr inbounds [8 x float], [8 x float]* %Ap, i32 0, i32 %14, !dbg !782
  store float %call, float* %arrayidx, align 4, !dbg !783, !tbaa !784, !noalias !753
  %15 = load %struct.input_stream*, %struct.input_stream** %in1.addr, align 4, !dbg !786, !tbaa !707, !noalias !753
  %16 = call addrspace(1) %struct.input_stream* @llvm.noalias.p0s_struct.input_streams.p0i8.p0p0s_struct.input_streams.i32(%struct.input_stream* %15, i8* %1, %struct.input_stream** %in1.addr, i32 0, metadata !758), !dbg !786, !tbaa !707, !noalias !753
  %call1 = call addrspace(1) float @_ZL8readincrIL22aie_stream_resource_in0EfET0_P12input_streamIS1_E(%struct.input_stream* %16) #21, !dbg !787, !noalias !753
  %17 = load i32, i32* %i, align 4, !dbg !788, !tbaa !652, !noalias !753
  %arrayidx2 = getelementptr inbounds [8 x float], [8 x float]* %Aq, i32 0, i32 %17, !dbg !789
  store float %call1, float* %arrayidx2, align 4, !dbg !790, !tbaa !784, !noalias !753
  br label %for.inc, !dbg !791

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !dbg !792, !tbaa !652, !noalias !753
  %inc = add nsw i32 %18, 1, !dbg !792
  store i32 %inc, i32* %i, align 4, !dbg !792, !tbaa !652, !noalias !753
  br label %for.cond, !dbg !777, !llvm.loop !793

for.end:                                          ; preds = %for.cond.cleanup
  store float undef, float* %tmp1, align 4, !dbg !795, !noalias !753
  %19 = bitcast float* %tmp1 to i8*, !dbg !795
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #20, !dbg !795, !noalias !753
  call addrspace(1) void @llvm.dbg.declare(metadata float* %tmp1, metadata !738, metadata !DIExpression()), !dbg !796
  store float 0.000000e+00, float* %tmp1, align 4, !dbg !796, !tbaa !784, !noalias !753
  store float undef, float* %tmp2, align 4, !dbg !797, !noalias !753
  %20 = bitcast float* %tmp2 to i8*, !dbg !797
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #20, !dbg !797, !noalias !753
  call addrspace(1) void @llvm.dbg.declare(metadata float* %tmp2, metadata !739, metadata !DIExpression()), !dbg !798
  store float 0.000000e+00, float* %tmp2, align 4, !dbg !798, !tbaa !784, !noalias !753
  store i32 undef, i32* %i3, align 4, !dbg !799, !noalias !753
  %21 = bitcast i32* %i3 to i8*, !dbg !799
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %21) #20, !dbg !799, !noalias !753
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %i3, metadata !740, metadata !DIExpression()), !dbg !800
  store i32 0, i32* %i3, align 4, !dbg !800, !tbaa !652, !noalias !753
  br label %for.cond4, !dbg !799

for.cond4:                                        ; preds = %for.inc16, %for.end
  %22 = load i32, i32* %i3, align 4, !dbg !801, !tbaa !652, !noalias !753
  %cmp5 = icmp slt i32 %22, 8, !dbg !803
  br i1 %cmp5, label %for.body7, label %for.cond.cleanup6, !dbg !804

for.cond.cleanup6:                                ; preds = %for.cond4
  %23 = bitcast i32* %i3 to i8*, !dbg !805
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #20, !dbg !805, !noalias !753
  br label %for.end18

for.body7:                                        ; preds = %for.cond4
  %24 = load i32, i32* %i3, align 4, !dbg !806, !tbaa !652, !noalias !753
  %arrayidx8 = getelementptr inbounds [8 x float], [8 x float]* %Ap, i32 0, i32 %24, !dbg !808
  %25 = load float, float* %arrayidx8, align 4, !dbg !808, !tbaa !784, !noalias !753
  %26 = load i32, i32* %i3, align 4, !dbg !809, !tbaa !652, !noalias !753
  %arrayidx9 = getelementptr inbounds [8 x float], [8 x float]* %Ap, i32 0, i32 %26, !dbg !810
  %27 = load float, float* %arrayidx9, align 4, !dbg !810, !tbaa !784, !noalias !753
  %28 = load i32, i32* %i3, align 4, !dbg !811, !tbaa !652, !noalias !753
  %arrayidx10 = getelementptr inbounds [8 x float], [8 x float]* %Aq, i32 0, i32 %28, !dbg !812
  %29 = load float, float* %arrayidx10, align 4, !dbg !812, !tbaa !784, !noalias !753
  %30 = load i32, i32* %i3, align 4, !dbg !813, !tbaa !652, !noalias !753
  %arrayidx11 = getelementptr inbounds [8 x float], [8 x float]* %Aq, i32 0, i32 %30, !dbg !814
  %31 = load float, float* %arrayidx11, align 4, !dbg !814, !tbaa !784, !noalias !753
  %mul12 = fmul float %29, %31, !dbg !815
  %neg = fneg float %mul12, !dbg !816
  %32 = call addrspace(1) float @llvm.fmuladd.f32(float %25, float %27, float %neg), !dbg !816
  %33 = load float, float* %tmp1, align 4, !dbg !817, !tbaa !784, !noalias !753
  %add = fadd float %33, %32, !dbg !817
  store float %add, float* %tmp1, align 4, !dbg !817, !tbaa !784, !noalias !753
  %34 = load i32, i32* %i3, align 4, !dbg !818, !tbaa !652, !noalias !753
  %arrayidx13 = getelementptr inbounds [8 x float], [8 x float]* %Ap, i32 0, i32 %34, !dbg !819
  %35 = load float, float* %arrayidx13, align 4, !dbg !819, !tbaa !784, !noalias !753
  %mul = fmul float 2.000000e+00, %35, !dbg !820
  %36 = load i32, i32* %i3, align 4, !dbg !821, !tbaa !652, !noalias !753
  %arrayidx14 = getelementptr inbounds [8 x float], [8 x float]* %Aq, i32 0, i32 %36, !dbg !822
  %37 = load float, float* %arrayidx14, align 4, !dbg !822, !tbaa !784, !noalias !753
  %38 = load float, float* %tmp2, align 4, !dbg !823, !tbaa !784, !noalias !753
  %39 = call addrspace(1) float @llvm.fmuladd.f32(float %mul, float %37, float %38), !dbg !823
  store float %39, float* %tmp2, align 4, !dbg !823, !tbaa !784, !noalias !753
  br label %for.inc16, !dbg !824

for.inc16:                                        ; preds = %for.body7
  %40 = load i32, i32* %i3, align 4, !dbg !825, !tbaa !652, !noalias !753
  %inc17 = add nsw i32 %40, 1, !dbg !825
  store i32 %inc17, i32* %i3, align 4, !dbg !825, !tbaa !652, !noalias !753
  br label %for.cond4, !dbg !805, !llvm.loop !826

for.end18:                                        ; preds = %for.cond.cleanup6
  store float undef, float* %tau, align 4, !dbg !828, !noalias !753
  %41 = bitcast float* %tau to i8*, !dbg !828
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %41) #20, !dbg !828, !noalias !753
  call addrspace(1) void @llvm.dbg.declare(metadata float* %tau, metadata !742, metadata !DIExpression()), !dbg !829
  %42 = load float, float* %tmp1, align 4, !dbg !830, !tbaa !784, !noalias !753
  %43 = load float, float* %tmp2, align 4, !dbg !831, !tbaa !784, !noalias !753
  %div = fdiv float %42, %43, !dbg !832
  store float %div, float* %tau, align 4, !dbg !829, !tbaa !784, !noalias !753
  store float undef, float* %t, align 4, !dbg !833, !noalias !753
  %44 = bitcast float* %t to i8*, !dbg !833
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %44) #20, !dbg !833, !noalias !753
  call addrspace(1) void @llvm.dbg.declare(metadata float* %t, metadata !743, metadata !DIExpression()), !dbg !834
  %45 = load float, float* %tau, align 4, !dbg !835, !tbaa !784, !noalias !753
  %conv = fpext float %45 to double, !dbg !835
  %call19 = call addrspace(1) float @_Z4signd(double %conv) #21, !dbg !836, !noalias !753
  %call20 = call addrspace(1) float @_ZN3aie3absIfEENS_17operand_base_typeINS_6detail5utils10remove_allIT_E4typeEE4typeERKS5_(float* nonnull align 4 dereferenceable(4) %tau) #21, !dbg !837, !noalias !753
  %46 = load float, float* %tau, align 4, !dbg !838, !tbaa !784, !noalias !753
  %47 = load float, float* %tau, align 4, !dbg !839, !tbaa !784, !noalias !753
  %48 = call addrspace(1) float @llvm.fmuladd.f32(float %46, float %47, float 1.000000e+00), !dbg !840
  %call22 = call addrspace(1) float @_ZN3aie4sqrtIfEEDaT_(float %48) #21, !dbg !841, !noalias !753
  %add23 = fadd float %call20, %call22, !dbg !842
  %div24 = fdiv float %call19, %add23, !dbg !843
  store float %div24, float* %t, align 4, !dbg !834, !tbaa !784, !noalias !753
  store float undef, float* %c, align 4, !dbg !844, !noalias !753
  %49 = bitcast float* %c to i8*, !dbg !844
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %49) #20, !dbg !844, !noalias !753
  call addrspace(1) void @llvm.dbg.declare(metadata float* %c, metadata !744, metadata !DIExpression()), !dbg !845
  %50 = load float, float* %t, align 4, !dbg !846, !tbaa !784, !noalias !753
  %51 = load float, float* %t, align 4, !dbg !847, !tbaa !784, !noalias !753
  %52 = call addrspace(1) float @llvm.fmuladd.f32(float %50, float %51, float 1.000000e+00), !dbg !848
  %call26 = call addrspace(1) float @_ZN3aie4sqrtIfEEDaT_(float %52) #21, !dbg !849, !noalias !753
  %div27 = fdiv float 1.000000e+00, %call26, !dbg !850
  store float %div27, float* %c, align 4, !dbg !845, !tbaa !784, !noalias !753
  store float undef, float* %s, align 4, !dbg !851, !noalias !753
  %53 = bitcast float* %s to i8*, !dbg !851
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %53) #20, !dbg !851, !noalias !753
  call addrspace(1) void @llvm.dbg.declare(metadata float* %s, metadata !745, metadata !DIExpression()), !dbg !852
  %54 = load float, float* %t, align 4, !dbg !853, !tbaa !784, !noalias !753
  %55 = load float, float* %c, align 4, !dbg !854, !tbaa !784, !noalias !753
  %mul28 = fmul float %54, %55, !dbg !855
  store float %mul28, float* %s, align 4, !dbg !852, !tbaa !784, !noalias !753
  store i32 undef, i32* %i29, align 4, !dbg !856, !noalias !753
  %56 = bitcast i32* %i29 to i8*, !dbg !856
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %56) #20, !dbg !856, !noalias !753
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %i29, metadata !746, metadata !DIExpression()), !dbg !857
  store i32 0, i32* %i29, align 4, !dbg !857, !tbaa !652, !noalias !753
  br label %for.cond30, !dbg !856

for.cond30:                                       ; preds = %for.inc42, %for.end18
  %57 = load i32, i32* %i29, align 4, !dbg !858, !tbaa !652, !noalias !753
  %cmp31 = icmp slt i32 %57, 8, !dbg !860
  br i1 %cmp31, label %for.body33, label %for.cond.cleanup32, !dbg !861

for.cond.cleanup32:                               ; preds = %for.cond30
  %58 = bitcast i32* %i29 to i8*, !dbg !862
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %58) #20, !dbg !862, !noalias !753
  br label %for.end44

for.body33:                                       ; preds = %for.cond30
  %59 = load %struct.output_stream*, %struct.output_stream** %out0.addr, align 4, !dbg !863, !tbaa !707, !noalias !753
  %60 = call addrspace(1) %struct.output_stream* @llvm.noalias.p0s_struct.output_streams.p0i8.p0p0s_struct.output_streams.i32(%struct.output_stream* %59, i8* %2, %struct.output_stream** %out0.addr, i32 0, metadata !760), !dbg !863, !tbaa !707, !noalias !753
  %61 = load i32, i32* %i29, align 4, !dbg !865, !tbaa !652, !noalias !753
  %arrayidx34 = getelementptr inbounds [8 x float], [8 x float]* %Ap, i32 0, i32 %61, !dbg !866
  %62 = load float, float* %arrayidx34, align 4, !dbg !866, !tbaa !784, !noalias !753
  %63 = load float, float* %c, align 4, !dbg !867, !tbaa !784, !noalias !753
  %64 = load i32, i32* %i29, align 4, !dbg !868, !tbaa !652, !noalias !753
  %arrayidx36 = getelementptr inbounds [8 x float], [8 x float]* %Aq, i32 0, i32 %64, !dbg !869
  %65 = load float, float* %arrayidx36, align 4, !dbg !869, !tbaa !784, !noalias !753
  %66 = load float, float* %s, align 4, !dbg !870, !tbaa !784, !noalias !753
  %mul37 = fmul float %65, %66, !dbg !871
  %67 = call addrspace(1) float @llvm.fmuladd.f32(float %62, float %63, float %mul37), !dbg !872
  call addrspace(1) void @_ZL9writeincrIL23aie_stream_resource_out0EfEvP13output_streamIT0_ENSt3__213type_identityIS2_E4typeEb(%struct.output_stream* %60, float %67, i1 zeroext false) #21, !dbg !873, !noalias !753
  %68 = load %struct.output_stream*, %struct.output_stream** %out1.addr, align 4, !dbg !874, !tbaa !707, !noalias !753
  %69 = call addrspace(1) %struct.output_stream* @llvm.noalias.p0s_struct.output_streams.p0i8.p0p0s_struct.output_streams.i32(%struct.output_stream* %68, i8* %3, %struct.output_stream** %out1.addr, i32 0, metadata !762), !dbg !874, !tbaa !707, !noalias !753
  %70 = load i32, i32* %i29, align 4, !dbg !875, !tbaa !652, !noalias !753
  %arrayidx38 = getelementptr inbounds [8 x float], [8 x float]* %Ap, i32 0, i32 %70, !dbg !876
  %71 = load float, float* %arrayidx38, align 4, !dbg !876, !tbaa !784, !noalias !753
  %fneg = fneg float %71, !dbg !877
  %72 = load float, float* %s, align 4, !dbg !878, !tbaa !784, !noalias !753
  %73 = load i32, i32* %i29, align 4, !dbg !879, !tbaa !652, !noalias !753
  %arrayidx40 = getelementptr inbounds [8 x float], [8 x float]* %Aq, i32 0, i32 %73, !dbg !880
  %74 = load float, float* %arrayidx40, align 4, !dbg !880, !tbaa !784, !noalias !753
  %75 = load float, float* %c, align 4, !dbg !881, !tbaa !784, !noalias !753
  %mul41 = fmul float %74, %75, !dbg !882
  %76 = call addrspace(1) float @llvm.fmuladd.f32(float %fneg, float %72, float %mul41), !dbg !883
  call addrspace(1) void @_ZL9writeincrIL23aie_stream_resource_out0EfEvP13output_streamIT0_ENSt3__213type_identityIS2_E4typeEb(%struct.output_stream* %69, float %76, i1 zeroext false) #21, !dbg !884, !noalias !753
  br label %for.inc42, !dbg !885

for.inc42:                                        ; preds = %for.body33
  %77 = load i32, i32* %i29, align 4, !dbg !886, !tbaa !652, !noalias !753
  %inc43 = add nsw i32 %77, 1, !dbg !886
  store i32 %inc43, i32* %i29, align 4, !dbg !886, !tbaa !652, !noalias !753
  br label %for.cond30, !dbg !862, !llvm.loop !887

for.end44:                                        ; preds = %for.cond.cleanup32
  %78 = bitcast float* %s to i8*, !dbg !889
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %78) #20, !dbg !889
  %79 = bitcast float* %c to i8*, !dbg !889
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %79) #20, !dbg !889
  %80 = bitcast float* %t to i8*, !dbg !889
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %80) #20, !dbg !889
  %81 = bitcast float* %tau to i8*, !dbg !889
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %81) #20, !dbg !889
  %82 = bitcast float* %tmp2 to i8*, !dbg !889
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %82) #20, !dbg !889
  %83 = bitcast float* %tmp1 to i8*, !dbg !889
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %83) #20, !dbg !889
  %84 = bitcast [8 x float]* %Bq to i8*, !dbg !889
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 32, i8* %84) #20, !dbg !889
  %85 = bitcast [8 x float]* %Bp to i8*, !dbg !889
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 32, i8* %85) #20, !dbg !889
  %86 = bitcast [8 x float]* %Aq to i8*, !dbg !889
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 32, i8* %86) #20, !dbg !889
  %87 = bitcast [8 x float]* %Ap to i8*, !dbg !889
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 32, i8* %87) #20, !dbg !889
  %88 = bitcast i32* %VECSIZE to i8*, !dbg !889
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %88) #20, !dbg !889
  ret void, !dbg !889
}

; Function Attrs: nounwind willreturn
declare void @llvm.chess_memory_fence() addrspace(1) #8

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local void @_Z4donev() addrspace(1) #9 comdat {
entry:
  %agg.tmp = alloca %struct.ipd.custom_type.uint2_t.uint2_t, align 4
  %custom_type.tmp = alloca %struct.ipd.custom_type.uint2_t.uint2_t, align 4
  call addrspace(1) void @llvm.chess_memory_fence()
  call addrspace(1) void @_Z25chess_separator_scheduleri(i32 8) #23
  call addrspace(1) void @_ZN7uint2_tC2Ei(%struct.ipd.custom_type.uint2_t.uint2_t* nonnull align 4 dereferenceable(1) %custom_type.tmp, i32 2) #21
  %0 = load %struct.ipd.custom_type.uint2_t.uint2_t, %struct.ipd.custom_type.uint2_t.uint2_t* %custom_type.tmp, align 4, !tbaa !890
  store %struct.ipd.custom_type.uint2_t.uint2_t %0, %struct.ipd.custom_type.uint2_t.uint2_t* %agg.tmp, align 4, !tbaa !890
  %1 = load %struct.ipd.custom_type.uint2_t.uint2_t, %struct.ipd.custom_type.uint2_t.uint2_t* %agg.tmp, align 4, !tbaa !890
  call addrspace(1) void @_ZN12me_primitive5eventE7uint2_t(%struct.ipd.custom_type.uint2_t.uint2_t %1) #24
  call addrspace(1) void @_Z25chess_separator_scheduleri(i32 5) #23
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
  %0 = load %struct.ipd.custom_type.uint2_t.uint2_t, %struct.ipd.custom_type.uint2_t.uint2_t* %a0, align 4, !tbaa !890
  call x86_regcallcc addrspace(1) void @__regcall3__chessintr_void_event_uint2_t(%struct.ipd.custom_type.uint2_t.uint2_t %0) #23
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dso_local void @_ZN7uint2_tC2Ei(%struct.ipd.custom_type.uint2_t.uint2_t* nonnull align 4 dereferenceable(1) %this, i32 %a) unnamed_addr addrspace(1) #12 comdat align 2 {
entry:
  %this.addr = alloca %struct.ipd.custom_type.uint2_t.uint2_t*, align 4
  %a.addr = alloca i32, align 4
  store %struct.ipd.custom_type.uint2_t.uint2_t* %this, %struct.ipd.custom_type.uint2_t.uint2_t** %this.addr, align 4, !tbaa !707
  store i32 %a, i32* %a.addr, align 4, !tbaa !652
  %this1 = load %struct.ipd.custom_type.uint2_t.uint2_t*, %struct.ipd.custom_type.uint2_t.uint2_t** %this.addr, align 4
  %0 = bitcast %struct.ipd.custom_type.uint2_t.uint2_t* %this1 to i2*
  store i2 0, i2* %0, align 4
  %1 = load i32, i32* %a.addr, align 4, !tbaa !652
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

; Function Attrs: inlinehint mustprogress nounwind
define internal float @_ZL8readincrIL22aie_stream_resource_in0EfET0_P12input_streamIS1_E(%struct.input_stream* %ss) addrspace(1) #15 !dbg !892 {
entry:
  %ss.addr = alloca %struct.input_stream*, align 4
  %origVal = alloca i32, align 4
  %value = alloca float, align 4
  store %struct.input_stream* %ss, %struct.input_stream** %ss.addr, align 4, !tbaa !707
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.input_stream** %ss.addr, metadata !897, metadata !DIExpression()), !dbg !905
  store i32 undef, i32* %origVal, align 4, !dbg !906
  %0 = bitcast i32* %origVal to i8*, !dbg !906
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #20, !dbg !906
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %origVal, metadata !898, metadata !DIExpression()), !dbg !907
  %1 = load %struct.input_stream*, %struct.input_stream** %ss.addr, align 4, !dbg !908, !tbaa !707
  %call = call addrspace(1) i32 @_ZN12stream_utilsL17aie_stream_get_ssIffEEiP12input_streamIT0_E(%struct.input_stream* %1) #21, !dbg !909
  store i32 %call, i32* %origVal, align 4, !dbg !907, !tbaa !652
  store float undef, float* %value, align 4, !dbg !910
  %2 = bitcast float* %value to i8*, !dbg !910
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #20, !dbg !910
  call addrspace(1) void @llvm.dbg.declare(metadata float* %value, metadata !901, metadata !DIExpression()), !dbg !911
  %3 = load i32, i32* %origVal, align 4, !dbg !912, !tbaa !652
  %call1 = call addrspace(1) float @_Z8as_floati(i32 %3) #21, !dbg !920
  store float %call1, float* %value, align 4, !dbg !921, !tbaa !784
  %4 = load float, float* %value, align 4, !dbg !922, !tbaa !784
  %5 = bitcast float* %value to i8*, !dbg !923
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %5) #20, !dbg !923
  %6 = bitcast i32* %origVal to i8*, !dbg !923
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %6) #20, !dbg !923
  ret float %4, !dbg !924
}

; Function Attrs: argmemonly nounwind speculatable willreturn
declare %struct.input_stream* @llvm.noalias.p0s_struct.input_streams.p0i8.p0p0s_struct.input_streams.i32(%struct.input_stream*, i8*, %struct.input_stream**, i32, metadata) addrspace(1) #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) addrspace(1) #3

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local float @_ZN3aie3absIfEENS_17operand_base_typeINS_6detail5utils10remove_allIT_E4typeEE4typeERKS5_(float* nonnull align 4 dereferenceable(4) %a) addrspace(1) #17 comdat !dbg !152 {
entry:
  %a.addr = alloca float*, align 4
  %_a = alloca float, align 4
  store float* %a, float** %a.addr, align 4, !tbaa !707
  call addrspace(1) void @llvm.dbg.declare(metadata float** %a.addr, metadata !166, metadata !DIExpression()), !dbg !925
  store float undef, float* %_a, align 4, !dbg !926
  %0 = bitcast float* %_a to i8*, !dbg !926
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #20, !dbg !926
  call addrspace(1) void @llvm.dbg.declare(metadata float* %_a, metadata !167, metadata !DIExpression()), !dbg !927
  %1 = load float*, float** %a.addr, align 4, !dbg !928, !tbaa !707
  %2 = load float, float* %1, align 4, !dbg !928, !tbaa !784
  store float %2, float* %_a, align 4, !dbg !927, !tbaa !784
  %3 = load float, float* %_a, align 4, !dbg !929, !tbaa !784
  %call = call addrspace(1) float @_ZNSt3__23absEf(float %3) #25, !dbg !931
  %4 = bitcast float* %_a to i8*, !dbg !932
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %4) #20, !dbg !932
  ret float %call, !dbg !933
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local float @_ZN3aie4sqrtIfEEDaT_(float %a) addrspace(1) #17 comdat !dbg !934 {
entry:
  %a.addr = alloca float, align 4
  store float %a, float* %a.addr, align 4, !tbaa !784
  call addrspace(1) void @llvm.dbg.declare(metadata float* %a.addr, metadata !936, metadata !DIExpression()), !dbg !937
  %call = call addrspace(1) float @_ZN3aie6detail15elementary_bitsILNS0_12ElementaryOpE0ELj32EffE3runERKfi(float* nonnull align 4 dereferenceable(4) %a.addr, i32 0) #21, !dbg !938
  ret float %call, !dbg !939
}

; Function Attrs: inlinehint mustprogress nounwind
define internal void @_ZL9writeincrIL23aie_stream_resource_out0EfEvP13output_streamIT0_ENSt3__213type_identityIS2_E4typeEb(%struct.output_stream* %str, float %value, i1 zeroext %tlast) addrspace(1) #15 !dbg !940 {
entry:
  %str.addr = alloca %struct.output_stream*, align 4
  %value.addr = alloca float, align 4
  %tlast.addr = alloca i8, align 1
  %value32 = alloca i32, align 4
  store %struct.output_stream* %str, %struct.output_stream** %str.addr, align 4, !tbaa !707
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.output_stream** %str.addr, metadata !951, metadata !DIExpression()), !dbg !957
  store float %value, float* %value.addr, align 4, !tbaa !784
  call addrspace(1) void @llvm.dbg.declare(metadata float* %value.addr, metadata !952, metadata !DIExpression()), !dbg !958
  %frombool = zext i1 %tlast to i8
  store i8 %frombool, i8* %tlast.addr, align 1, !tbaa !959
  call addrspace(1) void @llvm.dbg.declare(metadata i8* %tlast.addr, metadata !953, metadata !DIExpression()), !dbg !961
  store i32 undef, i32* %value32, align 4, !dbg !962
  %0 = bitcast i32* %value32 to i8*, !dbg !962
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #20, !dbg !962
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %value32, metadata !954, metadata !DIExpression()), !dbg !963
  %1 = load float, float* %value.addr, align 4, !dbg !964, !tbaa !784
  %call = call addrspace(1) i32 @_Z8as_int32f(float %1) #21, !dbg !972
  store i32 %call, i32* %value32, align 4, !dbg !973, !tbaa !652
  %2 = load %struct.output_stream*, %struct.output_stream** %str.addr, align 4, !dbg !974, !tbaa !707
  %3 = load i32, i32* %value32, align 4, !dbg !975, !tbaa !652
  %4 = load i8, i8* %tlast.addr, align 1, !dbg !976, !tbaa !959, !range !977
  %tobool = trunc i8 %4 to i1, !dbg !976
  call addrspace(1) void @_ZN12stream_utilsL17aie_stream_put_msIffEEvP13output_streamIT0_Eib(%struct.output_stream* %2, i32 %3, i1 zeroext %tobool) #21, !dbg !978
  %5 = bitcast i32* %value32 to i8*, !dbg !979
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %5) #20, !dbg !979
  ret void, !dbg !979
}

; Function Attrs: argmemonly nounwind speculatable willreturn
declare %struct.output_stream* @llvm.noalias.p0s_struct.output_streams.p0i8.p0p0s_struct.output_streams.i32(%struct.output_stream*, i8*, %struct.output_stream**, i32, metadata) addrspace(1) #16

; Function Attrs: inlinehint mustprogress nounwind
define internal i32 @_ZN12stream_utilsL17aie_stream_get_ssIffEEiP12input_streamIT0_E(%struct.input_stream* %ss) addrspace(1) #15 !dbg !980 {
entry:
  %ss.addr = alloca %struct.input_stream*, align 4
  store %struct.input_stream* %ss, %struct.input_stream** %ss.addr, align 4, !tbaa !707
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.input_stream** %ss.addr, metadata !986, metadata !DIExpression()), !dbg !988
  %0 = load %struct.input_stream*, %struct.input_stream** %ss.addr, align 4, !dbg !989, !tbaa !707
  %1 = getelementptr inbounds %struct.input_stream, %struct.input_stream* %0, i32 0, i32 0, !dbg !992
  %channel = bitcast %union.anon* %1 to i32*, !dbg !992
  %2 = load i32, i32* %channel, align 4, !dbg !992, !tbaa !711
  %call = call addrspace(1) i32 @_Z6get_ssi(i32 %2) #26, !dbg !993
  ret i32 %call, !dbg !994
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local float @_Z8as_floati(i32 %a0) addrspace(1) #17 comdat {
entry:
  %a0.addr = alloca i32, align 4
  store i32 %a0, i32* %a0.addr, align 4, !tbaa !652
  %0 = load i32, i32* %a0.addr, align 4, !tbaa !652
  %call = call x86_regcallcc addrspace(1) float @__regcall3__chessintr___ffloat_as_float___sint(i32 signext %0) #27
  ret float %call
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local i32 @_Z6get_ssi(i32 %idx_ss) addrspace(1) #18 comdat {
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
  store i32 %idx_ss, i32* %idx_ss.addr, align 4, !tbaa !652
  %0 = load i32, i32* %idx_ss.addr, align 4, !tbaa !652
  %cmp = icmp eq i32 %0, 0
  %1 = call addrspace(1) i1 @llvm.chess_manifest(i1 %cmp)
  br i1 %1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 undef, i32* %tmp1, align 4
  %2 = bitcast i32* %tmp1 to i8*
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #20
  store i32 undef, i32* %tmp2, align 4
  %3 = bitcast i32* %tmp2 to i8*
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #20
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp, i32 0) #21
  %4 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp, align 4, !tbaa !995
  store %struct.ipd.custom_type.uint1_t.uint1_t %4, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp, align 4, !tbaa !995
  %5 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp, align 4, !tbaa !995
  %call = call addrspace(1) i32 @_ZN12me_primitive11stream_readIiEEN13chessEnableIfIXsr17chessIsCompatibleIN15chessRemoveQualIT_E4typeEiEE5valueEiE4typeEPU4AS23U16__protect_accessi7uint1_tRS3_(i32 addrspace(23)* addrspacecast (i32 addrspace(25)* @_ZN12me_primitive3ss0E to i32 addrspace(23)*), %struct.ipd.custom_type.uint1_t.uint1_t %5, i32* nonnull align 4 dereferenceable(4) %tmp1) #28
  store i32 %call, i32* %tmp2, align 4, !tbaa !652
  %6 = load i32, i32* %tmp1, align 4, !tbaa !652
  store volatile i32 %6, i32 addrspace(19)* @_ZN12me_primitive4sst0E, align 1, !tbaa !652, !chess_protect_access !997
  %7 = load i32, i32* %tmp2, align 4, !tbaa !652
  store i32 %7, i32* %retval, align 4
  %8 = bitcast i32* %tmp2 to i8*
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #20
  %9 = bitcast i32* %tmp1 to i8*
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #20
  br label %return

if.else:                                          ; preds = %entry
  %10 = load i32, i32* %idx_ss.addr, align 4, !tbaa !652
  %cmp1 = icmp eq i32 %10, 1
  %11 = call addrspace(1) i1 @llvm.chess_manifest(i1 %cmp1)
  br i1 %11, label %if.then2, label %if.else8

if.then2:                                         ; preds = %if.else
  store i32 undef, i32* %tmp13, align 4
  %12 = bitcast i32* %tmp13 to i8*
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #20
  store i32 undef, i32* %tmp24, align 4
  %13 = bitcast i32* %tmp24 to i8*
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #20
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp6, i32 0) #21
  %14 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp6, align 4, !tbaa !995
  store %struct.ipd.custom_type.uint1_t.uint1_t %14, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp5, align 4, !tbaa !995
  %15 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp5, align 4, !tbaa !995
  %call7 = call addrspace(1) i32 @_ZN12me_primitive11stream_readIiEEN13chessEnableIfIXsr17chessIsCompatibleIN15chessRemoveQualIT_E4typeEiEE5valueEiE4typeEPU4AS24U16__protect_accessi7uint1_tRS3_(i32 addrspace(24)* addrspacecast (i32 addrspace(26)* @_ZN12me_primitive3ss1E to i32 addrspace(24)*), %struct.ipd.custom_type.uint1_t.uint1_t %15, i32* nonnull align 4 dereferenceable(4) %tmp13) #28
  store i32 %call7, i32* %tmp24, align 4, !tbaa !652
  %16 = load i32, i32* %tmp13, align 4, !tbaa !652
  store volatile i32 %16, i32 addrspace(19)* @_ZN12me_primitive4sst1E, align 1, !tbaa !652, !chess_protect_access !997
  %17 = load i32, i32* %tmp24, align 4, !tbaa !652
  store i32 %17, i32* %retval, align 4
  %18 = bitcast i32* %tmp24 to i8*
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #20
  %19 = bitcast i32* %tmp13 to i8*
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #20
  br label %return

if.else8:                                         ; preds = %if.else
  store i32 undef, i32* %tmp19, align 4
  %20 = bitcast i32* %tmp19 to i8*
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #20
  store i32 undef, i32* %tmp210, align 4
  %21 = bitcast i32* %tmp210 to i8*
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %21) #20
  %22 = load i32, i32* %idx_ss.addr, align 4, !tbaa !652
  %conv = trunc i32 %22 to i1
  %23 = inttoptr i1 %conv to i32 addrspace(15)*
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp12, i32 0) #21
  %24 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp12, align 4, !tbaa !995
  store %struct.ipd.custom_type.uint1_t.uint1_t %24, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp11, align 4, !tbaa !995
  %25 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp11, align 4, !tbaa !995
  %call13 = call addrspace(1) i32 @_ZN12me_primitive11stream_readIiEEN13chessEnableIfIXsr17chessIsCompatibleIN15chessRemoveQualIT_E4typeEiEE5valueEiE4typeEPU4AS15U16__protect_accessi7uint1_tRS3_(i32 addrspace(15)* %23, %struct.ipd.custom_type.uint1_t.uint1_t %25, i32* nonnull align 4 dereferenceable(4) %tmp19) #28
  store i32 %call13, i32* %tmp210, align 4, !tbaa !652
  %26 = load i32, i32* %tmp19, align 4, !tbaa !652
  %27 = load i32, i32* %idx_ss.addr, align 4, !tbaa !652
  %conv14 = trunc i32 %27 to i1
  %28 = inttoptr i1 %conv14 to i32 addrspace(19)*
  store volatile i32 %26, i32 addrspace(19)* %28, align 1, !tbaa !652, !chess_protect_access !997
  %29 = load i32, i32* %tmp210, align 4, !tbaa !652
  store i32 %29, i32* %retval, align 4
  %30 = bitcast i32* %tmp210 to i8*
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #20
  %31 = bitcast i32* %tmp19 to i8*
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #20
  br label %return

return:                                           ; preds = %if.else8, %if.then2, %if.then
  %32 = load i32, i32* %retval, align 4
  ret i32 %32
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.chess_manifest(i1) addrspace(1) #14

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local i32 @_ZN12me_primitive11stream_readIiEEN13chessEnableIfIXsr17chessIsCompatibleIN15chessRemoveQualIT_E4typeEiEE5valueEiE4typeEPU4AS23U16__protect_accessi7uint1_tRS3_(i32 addrspace(23)* %a0, %struct.ipd.custom_type.uint1_t.uint1_t %a1.coerce, i32* nonnull align 4 dereferenceable(4) %a2) addrspace(1) #11 comdat {
entry:
  %a1 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %a0.addr = alloca i32 addrspace(23)*, align 4
  %a2.addr = alloca i32*, align 4
  %out = alloca %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint", align 1
  store %struct.ipd.custom_type.uint1_t.uint1_t %a1.coerce, %struct.ipd.custom_type.uint1_t.uint1_t* %a1, align 4
  store i32 addrspace(23)* %a0, i32 addrspace(23)** %a0.addr, align 4, !tbaa !707
  store i32* %a2, i32** %a2.addr, align 4, !tbaa !707
  store %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint" undef, %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint"* %out, align 1
  %0 = bitcast %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint"* %out to i8*
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #20
  %1 = load i32 addrspace(23)*, i32 addrspace(23)** %a0.addr, align 4, !tbaa !707
  %2 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a1, align 4, !tbaa !995
  %call = call x86_regcallcc addrspace(1) %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint" @__regcall3__chessintr___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint(i32 addrspace(23)* "ipd_load"="0,4" %1, %struct.ipd.custom_type.uint1_t.uint1_t %2) #29
  %3 = getelementptr inbounds %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint", %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint"* %out, i32 0, i32 0
  %4 = extractvalue %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint" %call, 0
  store i32 %4, i32* %3, align 1
  %5 = getelementptr inbounds %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint", %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint"* %out, i32 0, i32 1
  %6 = extractvalue %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint" %call, 1
  store i32 %6, i32* %5, align 1
  %o1 = getelementptr inbounds %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint", %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint"* %out, i32 0, i32 1
  %7 = load i32, i32* %o1, align 1, !tbaa !998
  %8 = load i32*, i32** %a2.addr, align 4, !tbaa !707
  store i32 %7, i32* %8, align 4, !tbaa !652
  %o0 = getelementptr inbounds %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint", %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint"* %out, i32 0, i32 0
  %9 = load i32, i32* %o0, align 1, !tbaa !1000
  %10 = bitcast %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint"* %out to i8*
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #20
  ret i32 %9
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dso_local void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %this, i32 %a) unnamed_addr addrspace(1) #12 comdat align 2 {
entry:
  %this.addr = alloca %struct.ipd.custom_type.uint1_t.uint1_t*, align 4
  %a.addr = alloca i32, align 4
  store %struct.ipd.custom_type.uint1_t.uint1_t* %this, %struct.ipd.custom_type.uint1_t.uint1_t** %this.addr, align 4, !tbaa !707
  store i32 %a, i32* %a.addr, align 4, !tbaa !652
  %this1 = load %struct.ipd.custom_type.uint1_t.uint1_t*, %struct.ipd.custom_type.uint1_t.uint1_t** %this.addr, align 4
  %0 = bitcast %struct.ipd.custom_type.uint1_t.uint1_t* %this1 to i1*
  store i1 false, i1* %0, align 4
  %1 = load i32, i32* %a.addr, align 4, !tbaa !652
  %2 = call addrspace(1) %struct.ipd.custom_type.uint1_t.uint1_t @llvm.chess.init.customint.s_struct.ipd.custom_type.uint1_t.uint1_ts.i32.p1f_s_struct.ipd.custom_type.uint1_t.uint1_tsi32f(%struct.ipd.custom_type.uint1_t.uint1_t undef, i32 %1, i32 1, i32 32, i1 true, i32 0, %struct.ipd.custom_type.uint1_t.uint1_t (i32) addrspace(1)* @__regcall3__chessintr_uint1_t_uint1_t___sint)
  store %struct.ipd.custom_type.uint1_t.uint1_t %2, %struct.ipd.custom_type.uint1_t.uint1_t* %this1, align 4
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local i32 @_ZN12me_primitive11stream_readIiEEN13chessEnableIfIXsr17chessIsCompatibleIN15chessRemoveQualIT_E4typeEiEE5valueEiE4typeEPU4AS24U16__protect_accessi7uint1_tRS3_(i32 addrspace(24)* %a0, %struct.ipd.custom_type.uint1_t.uint1_t %a1.coerce, i32* nonnull align 4 dereferenceable(4) %a2) addrspace(1) #11 comdat {
entry:
  %a1 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %a0.addr = alloca i32 addrspace(24)*, align 4
  %a2.addr = alloca i32*, align 4
  %out = alloca %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint", align 1
  store %struct.ipd.custom_type.uint1_t.uint1_t %a1.coerce, %struct.ipd.custom_type.uint1_t.uint1_t* %a1, align 4
  store i32 addrspace(24)* %a0, i32 addrspace(24)** %a0.addr, align 4, !tbaa !707
  store i32* %a2, i32** %a2.addr, align 4, !tbaa !707
  store %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint" undef, %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint"* %out, align 1
  %0 = bitcast %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint"* %out to i8*
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #20
  %1 = load i32 addrspace(24)*, i32 addrspace(24)** %a0.addr, align 4, !tbaa !707
  %2 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a1, align 4, !tbaa !995
  %call = call x86_regcallcc addrspace(1) %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint" @__regcall3__chessintr___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint(i32 addrspace(24)* "ipd_load"="0,4" %1, %struct.ipd.custom_type.uint1_t.uint1_t %2) #29
  %3 = getelementptr inbounds %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint", %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint"* %out, i32 0, i32 0
  %4 = extractvalue %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint" %call, 0
  store i32 %4, i32* %3, align 1
  %5 = getelementptr inbounds %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint", %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint"* %out, i32 0, i32 1
  %6 = extractvalue %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint" %call, 1
  store i32 %6, i32* %5, align 1
  %o1 = getelementptr inbounds %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint", %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint"* %out, i32 0, i32 1
  %7 = load i32, i32* %o1, align 1, !tbaa !1001
  %8 = load i32*, i32** %a2.addr, align 4, !tbaa !707
  store i32 %7, i32* %8, align 4, !tbaa !652
  %o0 = getelementptr inbounds %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint", %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint"* %out, i32 0, i32 0
  %9 = load i32, i32* %o0, align 1, !tbaa !1003
  %10 = bitcast %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint"* %out to i8*
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #20
  ret i32 %9
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local i32 @_ZN12me_primitive11stream_readIiEEN13chessEnableIfIXsr17chessIsCompatibleIN15chessRemoveQualIT_E4typeEiEE5valueEiE4typeEPU4AS15U16__protect_accessi7uint1_tRS3_(i32 addrspace(15)* %a0, %struct.ipd.custom_type.uint1_t.uint1_t %a1.coerce, i32* nonnull align 4 dereferenceable(4) %a2) addrspace(1) #11 comdat {
entry:
  %a1 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %a0.addr = alloca i32 addrspace(15)*, align 4
  %a2.addr = alloca i32*, align 4
  %out = alloca %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint", align 1
  store %struct.ipd.custom_type.uint1_t.uint1_t %a1.coerce, %struct.ipd.custom_type.uint1_t.uint1_t* %a1, align 4
  store i32 addrspace(15)* %a0, i32 addrspace(15)** %a0.addr, align 4, !tbaa !707
  store i32* %a2, i32** %a2.addr, align 4, !tbaa !707
  store %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint" undef, %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint"* %out, align 1
  %0 = bitcast %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint"* %out to i8*
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #20
  %1 = load i32 addrspace(15)*, i32 addrspace(15)** %a0.addr, align 4, !tbaa !707
  %2 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a1, align 4, !tbaa !995
  %call = call x86_regcallcc addrspace(1) %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint" @__regcall3__chessintr___sint_stream_read___PSSMEM__sint_uint1_t___sint(i32 addrspace(15)* "ipd_load"="0,4" %1, %struct.ipd.custom_type.uint1_t.uint1_t %2) #29
  %3 = getelementptr inbounds %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint", %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint"* %out, i32 0, i32 0
  %4 = extractvalue %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint" %call, 0
  store i32 %4, i32* %3, align 1
  %5 = getelementptr inbounds %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint", %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint"* %out, i32 0, i32 1
  %6 = extractvalue %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint" %call, 1
  store i32 %6, i32* %5, align 1
  %o1 = getelementptr inbounds %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint", %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint"* %out, i32 0, i32 1
  %7 = load i32, i32* %o1, align 1, !tbaa !1004
  %8 = load i32*, i32** %a2.addr, align 4, !tbaa !707
  store i32 %7, i32* %8, align 4, !tbaa !652
  %o0 = getelementptr inbounds %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint", %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint"* %out, i32 0, i32 0
  %9 = load i32, i32* %o0, align 1, !tbaa !1006
  %10 = bitcast %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint"* %out to i8*
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #20
  ret i32 %9
}

; Function Attrs: argmemonly nounwind
declare dso_local x86_regcallcc %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint" @__regcall3__chessintr___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint(i32 addrspace(23)* "ipd_load"="0,4", %struct.ipd.custom_type.uint1_t.uint1_t) addrspace(1) #19

; Function Attrs: nounwind readnone willreturn
declare dso_local x86_regcallcc %struct.ipd.custom_type.uint1_t.uint1_t @__regcall3__chessintr_uint1_t_uint1_t___sint(i32 signext) addrspace(1) #13

; Function Attrs: nounwind readnone willreturn
declare %struct.ipd.custom_type.uint1_t.uint1_t @llvm.chess.init.customint.s_struct.ipd.custom_type.uint1_t.uint1_ts.i32.p1f_s_struct.ipd.custom_type.uint1_t.uint1_tsi32f(%struct.ipd.custom_type.uint1_t.uint1_t, i32, i32, i32, i1, i32, %struct.ipd.custom_type.uint1_t.uint1_t (i32) addrspace(1)*) addrspace(1) #14

; Function Attrs: argmemonly nounwind
declare dso_local x86_regcallcc %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint" @__regcall3__chessintr___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint(i32 addrspace(24)* "ipd_load"="0,4", %struct.ipd.custom_type.uint1_t.uint1_t) addrspace(1) #19

; Function Attrs: argmemonly nounwind
declare dso_local x86_regcallcc %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint" @__regcall3__chessintr___sint_stream_read___PSSMEM__sint_uint1_t___sint(i32 addrspace(15)* "ipd_load"="0,4", %struct.ipd.custom_type.uint1_t.uint1_t) addrspace(1) #19

; Function Attrs: nounwind readnone willreturn
declare dso_local x86_regcallcc float @__regcall3__chessintr___ffloat_as_float___sint(i32 signext) addrspace(1) #13

; Function Attrs: inlinehint mustprogress nounwind
define linkonce_odr hidden float @_ZNSt3__23absEf(float %x) addrspace(1) #15 comdat !dbg !1007 {
entry:
  %x.addr = alloca float, align 4
  store float %x, float* %x.addr, align 4, !tbaa !784
  call addrspace(1) void @llvm.dbg.declare(metadata float* %x.addr, metadata !1009, metadata !DIExpression()), !dbg !1010
  %0 = load float, float* %x.addr, align 4, !dbg !1011, !tbaa !784
  %1 = call addrspace(1) float @llvm.fabs.f32(float %0), !dbg !1012
  ret float %1, !dbg !1013
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) addrspace(1) #3

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local float @_ZN3aie6detail15elementary_bitsILNS0_12ElementaryOpE0ELj32EffE3runERKfi(float* nonnull align 4 dereferenceable(4) %a, i32 %shift) addrspace(1) #17 comdat align 2 !dbg !1014 {
entry:
  %a.addr = alloca float*, align 4
  %shift.addr = alloca i32, align 4
  store float* %a, float** %a.addr, align 4, !tbaa !707
  call addrspace(1) void @llvm.dbg.declare(metadata float** %a.addr, metadata !1024, metadata !DIExpression()), !dbg !1026
  store i32 %shift, i32* %shift.addr, align 4, !tbaa !652
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %shift.addr, metadata !1025, metadata !DIExpression()), !dbg !1027
  %0 = load float*, float** %a.addr, align 4, !dbg !1028, !tbaa !707
  %1 = load i32, i32* %shift.addr, align 4, !dbg !1029, !tbaa !652
  %call = call addrspace(1) float @_ZN3aie6detail20elementary_bits_implILNS0_12ElementaryOpE0ELj32EffE3runERKfi(float* nonnull align 4 dereferenceable(4) %0, i32 %1) #21, !dbg !1030
  ret float %call, !dbg !1031
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local float @_ZN3aie6detail20elementary_bits_implILNS0_12ElementaryOpE0ELj32EffE3runERKfi(float* nonnull align 4 dereferenceable(4) %a, i32 %shift) addrspace(1) #2 comdat align 2 !dbg !1032 {
entry:
  %a.addr = alloca float*, align 4
  %shift.addr = alloca i32, align 4
  store float* %a, float** %a.addr, align 4, !tbaa !707
  call addrspace(1) void @llvm.dbg.declare(metadata float** %a.addr, metadata !1037, metadata !DIExpression()), !dbg !1039
  store i32 %shift, i32* %shift.addr, align 4, !tbaa !652
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %shift.addr, metadata !1038, metadata !DIExpression()), !dbg !1040
  %0 = load float*, float** %a.addr, align 4, !dbg !1041, !tbaa !707
  %1 = load float, float* %0, align 4, !dbg !1041, !tbaa !784
  %call = call addrspace(1) float @_Z6_sqrtff(float %1) #21, !dbg !1044
  ret float %call, !dbg !1045
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local float @_Z6_sqrtff(float %a0) addrspace(1) #17 comdat {
entry:
  %a0.addr = alloca float, align 4
  store float %a0, float* %a0.addr, align 4, !tbaa !784
  %0 = load float, float* %a0.addr, align 4, !tbaa !784
  %call = call x86_regcallcc addrspace(1) float @__regcall3__chessintr___ffloat__sqrtf___ffloat(float %0) #27
  ret float %call
}

; Function Attrs: nounwind readnone willreturn
declare dso_local x86_regcallcc float @__regcall3__chessintr___ffloat__sqrtf___ffloat(float) addrspace(1) #13

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local i32 @_Z8as_int32f(float %a0) addrspace(1) #17 comdat {
entry:
  %a0.addr = alloca float, align 4
  store float %a0, float* %a0.addr, align 4, !tbaa !784
  %0 = load float, float* %a0.addr, align 4, !tbaa !784
  %call = call x86_regcallcc signext addrspace(1) i32 @__regcall3__chessintr___sint_as_int32___ffloat(float %0) #27
  ret i32 %call
}

; Function Attrs: inlinehint mustprogress nounwind
define internal void @_ZN12stream_utilsL17aie_stream_put_msIffEEvP13output_streamIT0_Eib(%struct.output_stream* %ss, i32 %value, i1 zeroext %tlast) addrspace(1) #15 !dbg !1046 {
entry:
  %ss.addr = alloca %struct.output_stream*, align 4
  %value.addr = alloca i32, align 4
  %tlast.addr = alloca i8, align 1
  store %struct.output_stream* %ss, %struct.output_stream** %ss.addr, align 4, !tbaa !707
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.output_stream** %ss.addr, metadata !1050, metadata !DIExpression()), !dbg !1053
  store i32 %value, i32* %value.addr, align 4, !tbaa !652
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %value.addr, metadata !1051, metadata !DIExpression()), !dbg !1054
  %frombool = zext i1 %tlast to i8
  store i8 %frombool, i8* %tlast.addr, align 1, !tbaa !959
  call addrspace(1) void @llvm.dbg.declare(metadata i8* %tlast.addr, metadata !1052, metadata !DIExpression()), !dbg !1055
  %0 = load %struct.output_stream*, %struct.output_stream** %ss.addr, align 4, !dbg !1056, !tbaa !707
  %1 = getelementptr inbounds %struct.output_stream, %struct.output_stream* %0, i32 0, i32 0, !dbg !1059
  %channel = bitcast %union.anon.0* %1 to i32*, !dbg !1059
  %2 = load i32, i32* %channel, align 4, !dbg !1059, !tbaa !711
  %3 = load i32, i32* %value.addr, align 4, !dbg !1060, !tbaa !652
  %4 = load i8, i8* %tlast.addr, align 1, !dbg !1061, !tbaa !959, !range !977
  %tobool = trunc i8 %4 to i1, !dbg !1061
  %conv = zext i1 %tobool to i32, !dbg !1061
  call addrspace(1) void @_Z6put_msiii(i32 %2, i32 %3, i32 %conv) #26, !dbg !1062
  ret void, !dbg !1063
}

; Function Attrs: nounwind readnone willreturn
declare dso_local x86_regcallcc signext i32 @__regcall3__chessintr___sint_as_int32___ffloat(float) addrspace(1) #13

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local void @_Z6put_msiii(i32 %idx_ms, i32 %val, i32 %tlast) addrspace(1) #18 comdat {
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
  store i32 %idx_ms, i32* %idx_ms.addr, align 4, !tbaa !652
  store i32 %val, i32* %val.addr, align 4, !tbaa !652
  store i32 %tlast, i32* %tlast.addr, align 4, !tbaa !652
  %0 = load i32, i32* %idx_ms.addr, align 4, !tbaa !652
  %cmp = icmp eq i32 %0, 0
  %1 = call addrspace(1) i1 @llvm.chess_manifest(i1 %cmp)
  br i1 %1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %val.addr, align 4, !tbaa !652
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp, i32 0) #21
  %3 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp, align 4, !tbaa !995
  store %struct.ipd.custom_type.uint1_t.uint1_t %3, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp, align 4, !tbaa !995
  %4 = load i32, i32* %tlast.addr, align 4, !tbaa !652
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp2, i32 %4) #21
  %5 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp2, align 4, !tbaa !995
  store %struct.ipd.custom_type.uint1_t.uint1_t %5, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp1, align 4, !tbaa !995
  %6 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp, align 4, !tbaa !995
  %7 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp1, align 4, !tbaa !995
  call addrspace(1) void @_ZN12me_primitive12stream_writeEPU4AS27U16__protect_accessii7uint1_tS2_(i32 addrspace(27)* addrspacecast (i32 addrspace(29)* @_ZN12me_primitive3ms0E to i32 addrspace(27)*), i32 %2, %struct.ipd.custom_type.uint1_t.uint1_t %6, %struct.ipd.custom_type.uint1_t.uint1_t %7) #28
  br label %if.end14

if.else:                                          ; preds = %entry
  %8 = load i32, i32* %idx_ms.addr, align 4, !tbaa !652
  %cmp3 = icmp eq i32 %8, 1
  %9 = call addrspace(1) i1 @llvm.chess_manifest(i1 %cmp3)
  br i1 %9, label %if.then4, label %if.else9

if.then4:                                         ; preds = %if.else
  %10 = load i32, i32* %val.addr, align 4, !tbaa !652
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp6, i32 0) #21
  %11 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp6, align 4, !tbaa !995
  store %struct.ipd.custom_type.uint1_t.uint1_t %11, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp5, align 4, !tbaa !995
  %12 = load i32, i32* %tlast.addr, align 4, !tbaa !652
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp8, i32 %12) #21
  %13 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp8, align 4, !tbaa !995
  store %struct.ipd.custom_type.uint1_t.uint1_t %13, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp7, align 4, !tbaa !995
  %14 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp5, align 4, !tbaa !995
  %15 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp7, align 4, !tbaa !995
  call addrspace(1) void @_ZN12me_primitive12stream_writeEPU4AS28U16__protect_accessii7uint1_tS2_(i32 addrspace(28)* addrspacecast (i32 addrspace(30)* @_ZN12me_primitive3ms1E to i32 addrspace(28)*), i32 %10, %struct.ipd.custom_type.uint1_t.uint1_t %14, %struct.ipd.custom_type.uint1_t.uint1_t %15) #28
  br label %if.end

if.else9:                                         ; preds = %if.else
  %16 = load i32, i32* %idx_ms.addr, align 4, !tbaa !652
  %conv = trunc i32 %16 to i1
  %17 = inttoptr i1 %conv to i32 addrspace(16)*
  %18 = load i32, i32* %val.addr, align 4, !tbaa !652
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp11, i32 0) #21
  %19 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp11, align 4, !tbaa !995
  store %struct.ipd.custom_type.uint1_t.uint1_t %19, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp10, align 4, !tbaa !995
  %20 = load i32, i32* %tlast.addr, align 4, !tbaa !652
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp13, i32 %20) #21
  %21 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp13, align 4, !tbaa !995
  store %struct.ipd.custom_type.uint1_t.uint1_t %21, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp12, align 4, !tbaa !995
  %22 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp10, align 4, !tbaa !995
  %23 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp12, align 4, !tbaa !995
  call addrspace(1) void @_ZN12me_primitive12stream_writeEPU4AS16U16__protect_accessii7uint1_tS2_(i32 addrspace(16)* %17, i32 %18, %struct.ipd.custom_type.uint1_t.uint1_t %22, %struct.ipd.custom_type.uint1_t.uint1_t %23) #28
  br label %if.end

if.end:                                           ; preds = %if.else9, %if.then4
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local void @_ZN12me_primitive12stream_writeEPU4AS27U16__protect_accessii7uint1_tS2_(i32 addrspace(27)* %a0, i32 %a1, %struct.ipd.custom_type.uint1_t.uint1_t %a2.coerce, %struct.ipd.custom_type.uint1_t.uint1_t %a3.coerce) addrspace(1) #11 comdat {
entry:
  %a2 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %a3 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %a0.addr = alloca i32 addrspace(27)*, align 4
  %a1.addr = alloca i32, align 4
  store %struct.ipd.custom_type.uint1_t.uint1_t %a2.coerce, %struct.ipd.custom_type.uint1_t.uint1_t* %a2, align 4
  store %struct.ipd.custom_type.uint1_t.uint1_t %a3.coerce, %struct.ipd.custom_type.uint1_t.uint1_t* %a3, align 4
  store i32 addrspace(27)* %a0, i32 addrspace(27)** %a0.addr, align 4, !tbaa !707
  store i32 %a1, i32* %a1.addr, align 4, !tbaa !652
  %0 = load i32 addrspace(27)*, i32 addrspace(27)** %a0.addr, align 4, !tbaa !707
  %1 = load i32, i32* %a1.addr, align 4, !tbaa !652
  %2 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a2, align 4, !tbaa !995
  %3 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a3, align 4, !tbaa !995
  call x86_regcallcc addrspace(1) void @__regcall3__chessintr_void_stream_write___PMS_rsrc1__sint___sint_uint1_t_uint1_t(i32 addrspace(27)* "ipd_store"="0,4" %0, i32 signext %1, %struct.ipd.custom_type.uint1_t.uint1_t %2, %struct.ipd.custom_type.uint1_t.uint1_t %3) #29
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local void @_ZN12me_primitive12stream_writeEPU4AS28U16__protect_accessii7uint1_tS2_(i32 addrspace(28)* %a0, i32 %a1, %struct.ipd.custom_type.uint1_t.uint1_t %a2.coerce, %struct.ipd.custom_type.uint1_t.uint1_t %a3.coerce) addrspace(1) #11 comdat {
entry:
  %a2 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %a3 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %a0.addr = alloca i32 addrspace(28)*, align 4
  %a1.addr = alloca i32, align 4
  store %struct.ipd.custom_type.uint1_t.uint1_t %a2.coerce, %struct.ipd.custom_type.uint1_t.uint1_t* %a2, align 4
  store %struct.ipd.custom_type.uint1_t.uint1_t %a3.coerce, %struct.ipd.custom_type.uint1_t.uint1_t* %a3, align 4
  store i32 addrspace(28)* %a0, i32 addrspace(28)** %a0.addr, align 4, !tbaa !707
  store i32 %a1, i32* %a1.addr, align 4, !tbaa !652
  %0 = load i32 addrspace(28)*, i32 addrspace(28)** %a0.addr, align 4, !tbaa !707
  %1 = load i32, i32* %a1.addr, align 4, !tbaa !652
  %2 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a2, align 4, !tbaa !995
  %3 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a3, align 4, !tbaa !995
  call x86_regcallcc addrspace(1) void @__regcall3__chessintr_void_stream_write___PMS_rsrc2__sint___sint_uint1_t_uint1_t(i32 addrspace(28)* "ipd_store"="0,4" %0, i32 signext %1, %struct.ipd.custom_type.uint1_t.uint1_t %2, %struct.ipd.custom_type.uint1_t.uint1_t %3) #29
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local void @_ZN12me_primitive12stream_writeEPU4AS16U16__protect_accessii7uint1_tS2_(i32 addrspace(16)* %a0, i32 %a1, %struct.ipd.custom_type.uint1_t.uint1_t %a2.coerce, %struct.ipd.custom_type.uint1_t.uint1_t %a3.coerce) addrspace(1) #11 comdat {
entry:
  %a2 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %a3 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %a0.addr = alloca i32 addrspace(16)*, align 4
  %a1.addr = alloca i32, align 4
  store %struct.ipd.custom_type.uint1_t.uint1_t %a2.coerce, %struct.ipd.custom_type.uint1_t.uint1_t* %a2, align 4
  store %struct.ipd.custom_type.uint1_t.uint1_t %a3.coerce, %struct.ipd.custom_type.uint1_t.uint1_t* %a3, align 4
  store i32 addrspace(16)* %a0, i32 addrspace(16)** %a0.addr, align 4, !tbaa !707
  store i32 %a1, i32* %a1.addr, align 4, !tbaa !652
  %0 = load i32 addrspace(16)*, i32 addrspace(16)** %a0.addr, align 4, !tbaa !707
  %1 = load i32, i32* %a1.addr, align 4, !tbaa !652
  %2 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a2, align 4, !tbaa !995
  %3 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a3, align 4, !tbaa !995
  call x86_regcallcc addrspace(1) void @__regcall3__chessintr_void_stream_write___PMSMEM__sint___sint_uint1_t_uint1_t(i32 addrspace(16)* "ipd_store"="0,4" %0, i32 signext %1, %struct.ipd.custom_type.uint1_t.uint1_t %2, %struct.ipd.custom_type.uint1_t.uint1_t %3) #29
  ret void
}

; Function Attrs: argmemonly nounwind
declare dso_local x86_regcallcc void @__regcall3__chessintr_void_stream_write___PMS_rsrc1__sint___sint_uint1_t_uint1_t(i32 addrspace(27)* "ipd_store"="0,4", i32 signext, %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t) addrspace(1) #19

; Function Attrs: argmemonly nounwind
declare dso_local x86_regcallcc void @__regcall3__chessintr_void_stream_write___PMS_rsrc2__sint___sint_uint1_t_uint1_t(i32 addrspace(28)* "ipd_store"="0,4", i32 signext, %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t) addrspace(1) #19

; Function Attrs: argmemonly nounwind
declare dso_local x86_regcallcc void @__regcall3__chessintr_void_stream_write___PMSMEM__sint___sint_uint1_t_uint1_t(i32 addrspace(16)* "ipd_store"="0,4", i32 signext, %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t) addrspace(1) #19

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
attributes #15 = { inlinehint mustprogress nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-memcpy" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #16 = { argmemonly nounwind speculatable willreturn }
attributes #17 = { alwaysinline mustprogress nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-memcpy" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #18 = { alwaysinline mustprogress nounwind "chessFP:property"="do_generate_llvm" "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-memcpy" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #19 = { argmemonly nounwind "frame-pointer"="all" "no-builtin-memcpy" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #20 = { nounwind }
attributes #21 = { "no-builtin-memcpy" }
attributes #22 = { "chessFP:property"="contains_memory_fence do_generate" "no-builtin-memcpy" }
attributes #23 = { inaccessiblememonly nounwind "no-builtin-memcpy" }
attributes #24 = { "chessFP:llvm_local_block_replace_operand_with_variable" "no-builtin-memcpy" }
attributes #25 = { nounwind "no-builtin-memcpy" }
attributes #26 = { "chessFP:property"="do_generate_llvm" "no-builtin-memcpy" }
attributes #27 = { nounwind readnone willreturn "no-builtin-memcpy" }
attributes #28 = { memop_protect_access "chessFP:llvm_local_block_replace_operand_with_variable" "no-builtin-memcpy" }
attributes #29 = { argmemonly nounwind "no-builtin-memcpy" }

!llvm.dbg.cu = !{!2}
!llvm.linker.options = !{}
!llvm.module.flags = !{!606, !607, !608, !609}
!llvm.ident = !{!610}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "sync_buffer", linkageName: "_ZL11sync_buffer", scope: !2, file: !494, line: 8, type: !602, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "clang version 15.0.5 (/u/sgasip/ipd/repositories/llvm_ipd 3a25925e0239306412dac02da5e4c8c51ae722e8)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !52, globals: !171, imports: !172, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/lxy/Projects/SVD/Jacobi_AIE_Scalar/Work/aie/24_0/src/24_0.cc", directory: "/home/lxy/Projects/SVD/Jacobi_AIE_Scalar/Work/aie")
!4 = !{!5, !13, !21, !31, !37, !51}
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
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ElementaryOp", scope: !7, file: !38, line: 58, baseType: !9, size: 32, flags: DIFlagEnumClass, elements: !39, identifier: "_ZTSN3aie6detail12ElementaryOpE")
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
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "aie_stream_resource_out", file: !32, line: 402, baseType: !9, size: 32, flags: DIFlagEnumClass, elements: !33, identifier: "_ZTS23aie_stream_resource_out")
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
!184 = !DICompositeType(tag: DW_TAG_structure_type, file: !183, line: 19, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS11max_align_t")
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
!459 = !DICompositeType(tag: DW_TAG_structure_type, name: "FILE", file: !458, line: 29, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS4FILE")
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
!494 = !DIFile(filename: "24_0/src/24_0.cc", directory: "/home/lxy/Projects/SVD/Jacobi_AIE_Scalar/Work/aie")
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
!611 = distinct !DISubprogram(name: "sign", linkageName: "_Z4signd", scope: !612, file: !612, line: 7, type: !613, scopeLine: 7, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !615)
!612 = !DIFile(filename: "aie/src/ProcessUnit/Orthogonalize.cpp", directory: "/home/lxy/Projects/SVD/Jacobi_AIE_Scalar")
!613 = !DISubroutineType(types: !614)
!614 = !{!114, !360}
!615 = !{!616}
!616 = !DILocalVariable(name: "x", arg: 1, scope: !611, file: !612, line: 7, type: !360)
!617 = !{!618, !618, i64 0, i64 8}
!618 = !{!619, i64 8, !"double"}
!619 = !{!620, i64 1, !"omnipotent char"}
!620 = !{!"Simple C++ TBAA"}
!621 = !DILocation(line: 7, column: 19, scope: !611)
!622 = !DILocation(line: 8, column: 8, scope: !623)
!623 = distinct !DILexicalBlock(scope: !611, file: !612, line: 8, column: 8)
!624 = !DILocation(line: 8, column: 10, scope: !623)
!625 = !DILocation(line: 8, column: 8, scope: !611)
!626 = !DILocation(line: 8, column: 15, scope: !623)
!627 = !DILocation(line: 9, column: 13, scope: !628)
!628 = distinct !DILexicalBlock(scope: !623, file: !612, line: 9, column: 13)
!629 = !DILocation(line: 9, column: 15, scope: !628)
!630 = !DILocation(line: 9, column: 13, scope: !623)
!631 = !DILocation(line: 9, column: 21, scope: !628)
!632 = !DILocation(line: 10, column: 10, scope: !628)
!633 = !DILocation(line: 11, column: 1, scope: !611)
!634 = distinct !DISubprogram(name: "main", scope: !494, file: !494, line: 20, type: !411, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !635)
!635 = !{!636, !637, !638, !639, !640, !643}
!636 = !DILocalVariable(name: "stream_0", scope: !634, file: !494, line: 22, type: !53)
!637 = !DILocalVariable(name: "stream_1", scope: !634, file: !494, line: 23, type: !53)
!638 = !DILocalVariable(name: "stream_2", scope: !634, file: !494, line: 24, type: !115)
!639 = !DILocalVariable(name: "stream_3", scope: !634, file: !494, line: 25, type: !115)
!640 = !DILocalVariable(name: "index", scope: !634, file: !494, line: 26, type: !641)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32", file: !642, line: 65, baseType: !194)
!642 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/aie_api/detail/../types.hpp", directory: "/home/lxy")
!643 = !DILocalVariable(name: "proc_24_0_bounds", scope: !644, file: !494, line: 30, type: !641)
!644 = distinct !DILexicalBlock(scope: !634, file: !494, line: 28, column: 3)
!645 = !{!646, !648, !649, !650}
!646 = distinct !{!646, !647, !"main: stream_0"}
!647 = distinct !{!647, !"main"}
!648 = distinct !{!648, !647, !"main: stream_1"}
!649 = distinct !{!649, !647, !"main: stream_2"}
!650 = distinct !{!650, !647, !"main: stream_3"}
!651 = !DILocation(line: 21, column: 18, scope: !634)
!652 = !{!653, !653, i64 0, i64 4}
!653 = !{!619, i64 4, !"int"}
!654 = !DILocation(line: 22, column: 3, scope: !634)
!655 = !DILocation(line: 22, column: 22, scope: !634)
!656 = !{!646}
!657 = !DILocation(line: 22, column: 33, scope: !634)
!658 = !DILocation(line: 23, column: 3, scope: !634)
!659 = !DILocation(line: 23, column: 22, scope: !634)
!660 = !{!648}
!661 = !DILocation(line: 23, column: 33, scope: !634)
!662 = !DILocation(line: 24, column: 3, scope: !634)
!663 = !DILocation(line: 24, column: 23, scope: !634)
!664 = !{!649}
!665 = !DILocation(line: 24, column: 34, scope: !634)
!666 = !DILocation(line: 25, column: 3, scope: !634)
!667 = !DILocation(line: 25, column: 23, scope: !634)
!668 = !{!650}
!669 = !DILocation(line: 25, column: 34, scope: !634)
!670 = !DILocation(line: 26, column: 3, scope: !634)
!671 = !DILocation(line: 26, column: 9, scope: !634)
!672 = !DILocation(line: 27, column: 3, scope: !634)
!673 = !DILocation(line: 30, column: 3, scope: !644)
!674 = !DILocation(line: 30, column: 9, scope: !644)
!675 = !DILocation(line: 30, column: 28, scope: !644)
!676 = !DILocation(line: 32, column: 3, scope: !644)
!677 = !DILocation(line: 32, column: 10, scope: !644)
!678 = !DILocation(line: 36, column: 5, scope: !679)
!679 = distinct !DILexicalBlock(scope: !644, file: !494, line: 33, column: 3)
!680 = !DILocation(line: 37, column: 17, scope: !679)
!681 = !DILocation(line: 37, column: 15, scope: !679)
!682 = !DILocation(line: 37, column: 11, scope: !679)
!683 = !DILocation(line: 39, column: 5, scope: !679)
!684 = !DILocation(line: 41, column: 8, scope: !685)
!685 = distinct !DILexicalBlock(scope: !679, file: !494, line: 41, column: 8)
!686 = !DILocation(line: 41, column: 25, scope: !685)
!687 = !DILocation(line: 41, column: 8, scope: !679)
!688 = !DILocation(line: 42, column: 7, scope: !685)
!689 = distinct !{!689, !676, !690, !691}
!690 = !DILocation(line: 43, column: 3, scope: !644)
!691 = !{!"llvm.loop.mustprogress"}
!692 = !DILocation(line: 44, column: 3, scope: !644)
!693 = !DILocation(line: 45, column: 7, scope: !694)
!694 = distinct !DILexicalBlock(scope: !644, file: !494, line: 45, column: 7)
!695 = !DILocation(line: 45, column: 22, scope: !694)
!696 = !DILocation(line: 45, column: 7, scope: !644)
!697 = !DILocation(line: 45, column: 27, scope: !694)
!698 = !DILocation(line: 46, column: 3, scope: !634)
!699 = distinct !{!699, !672, !698, !691}
!700 = !DILocation(line: 47, column: 3, scope: !634)
!701 = !DILocation(line: 48, column: 1, scope: !634)
!702 = distinct !DISubprogram(name: "input_stream", linkageName: "_ZN12input_streamIfEC2Ej", scope: !55, file: !56, line: 50, type: !109, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !108, retainedNodes: !703)
!703 = !{!704, !706}
!704 = !DILocalVariable(name: "this", arg: 1, scope: !702, type: !705, flags: DIFlagArtificial | DIFlagObjectPointer)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 32)
!706 = !DILocalVariable(name: "ch", arg: 2, scope: !702, file: !56, line: 50, type: !15)
!707 = !{!708, !708, i64 0, i64 4}
!708 = !{!619, i64 4, !"any pointer"}
!709 = !DILocation(line: 0, scope: !702)
!710 = !DILocation(line: 50, column: 41, scope: !702)
!711 = !{!619, !619, i64 0, i64 0}
!712 = distinct !DISubprogram(name: "output_stream", linkageName: "_ZN13output_streamIfEC2Ej", scope: !116, file: !56, line: 60, type: !147, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !146, retainedNodes: !713)
!713 = !{!714, !716}
!714 = !DILocalVariable(name: "this", arg: 1, scope: !712, type: !715, flags: DIFlagArtificial | DIFlagObjectPointer)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 32)
!716 = !DILocalVariable(name: "ch", arg: 2, scope: !712, file: !56, line: 60, type: !15)
!717 = !DILocation(line: 0, scope: !712)
!718 = !DILocation(line: 60, column: 42, scope: !712)
!719 = distinct !DISubprogram(name: "orthogonalize<8>", linkageName: "_Z13orthogonalizeILi8EEvP12input_streamIfES2_P13output_streamIfES5_", scope: !612, file: !612, line: 14, type: !720, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !748, retainedNodes: !724)
!720 = !DISubroutineType(types: !721)
!721 = !{null, !722, !722, !723, !723}
!722 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !705)
!723 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !715)
!724 = !{!725, !726, !727, !728, !729, !731, !733, !734, !735, !736, !738, !739, !740, !742, !743, !744, !745, !746}
!725 = !DILocalVariable(name: "in0", arg: 1, scope: !719, file: !612, line: 14, type: !722)
!726 = !DILocalVariable(name: "in1", arg: 2, scope: !719, file: !612, line: 15, type: !722)
!727 = !DILocalVariable(name: "out0", arg: 3, scope: !719, file: !612, line: 16, type: !723)
!728 = !DILocalVariable(name: "out1", arg: 4, scope: !719, file: !612, line: 17, type: !723)
!729 = !DILocalVariable(name: "VECSIZE", scope: !719, file: !612, line: 18, type: !730)
!730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!731 = !DILocalVariable(name: "Ap", scope: !719, file: !612, line: 20, type: !732)
!732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 256, elements: !604)
!733 = !DILocalVariable(name: "Aq", scope: !719, file: !612, line: 20, type: !732)
!734 = !DILocalVariable(name: "Bp", scope: !719, file: !612, line: 20, type: !732)
!735 = !DILocalVariable(name: "Bq", scope: !719, file: !612, line: 20, type: !732)
!736 = !DILocalVariable(name: "i", scope: !737, file: !612, line: 22, type: !9)
!737 = distinct !DILexicalBlock(scope: !719, file: !612, line: 22, column: 5)
!738 = !DILocalVariable(name: "tmp1", scope: !719, file: !612, line: 27, type: !114)
!739 = !DILocalVariable(name: "tmp2", scope: !719, file: !612, line: 28, type: !114)
!740 = !DILocalVariable(name: "i", scope: !741, file: !612, line: 29, type: !9)
!741 = distinct !DILexicalBlock(scope: !719, file: !612, line: 29, column: 5)
!742 = !DILocalVariable(name: "tau", scope: !719, file: !612, line: 37, type: !114)
!743 = !DILocalVariable(name: "t", scope: !719, file: !612, line: 38, type: !114)
!744 = !DILocalVariable(name: "c", scope: !719, file: !612, line: 39, type: !114)
!745 = !DILocalVariable(name: "s", scope: !719, file: !612, line: 40, type: !114)
!746 = !DILocalVariable(name: "i", scope: !747, file: !612, line: 41, type: !9)
!747 = distinct !DILexicalBlock(scope: !719, file: !612, line: 41, column: 5)
!748 = !{!749}
!749 = !DITemplateValueParameter(name: "ROW", type: !9, value: i32 8)
!750 = !{!751}
!751 = distinct !{!751, !752, !"_Z13orthogonalizeILi8EEvP12input_streamIfES2_P13output_streamIfES5_: in0"}
!752 = distinct !{!752, !"_Z13orthogonalizeILi8EEvP12input_streamIfES2_P13output_streamIfES5_"}
!753 = !{!751, !754, !755, !756}
!754 = distinct !{!754, !752, !"_Z13orthogonalizeILi8EEvP12input_streamIfES2_P13output_streamIfES5_: in1"}
!755 = distinct !{!755, !752, !"_Z13orthogonalizeILi8EEvP12input_streamIfES2_P13output_streamIfES5_: out0"}
!756 = distinct !{!756, !752, !"_Z13orthogonalizeILi8EEvP12input_streamIfES2_P13output_streamIfES5_: out1"}
!757 = !DILocation(line: 14, column: 53, scope: !719)
!758 = !{!754}
!759 = !DILocation(line: 15, column: 53, scope: !719)
!760 = !{!755}
!761 = !DILocation(line: 16, column: 54, scope: !719)
!762 = !{!756}
!763 = !DILocation(line: 17, column: 54, scope: !719)
!764 = !DILocation(line: 18, column: 5, scope: !719)
!765 = !DILocation(line: 18, column: 15, scope: !719)
!766 = !DILocation(line: 20, column: 5, scope: !719)
!767 = !DILocation(line: 20, column: 11, scope: !719)
!768 = !DILocation(line: 20, column: 20, scope: !719)
!769 = !DILocation(line: 20, column: 29, scope: !719)
!770 = !DILocation(line: 20, column: 38, scope: !719)
!771 = !DILocation(line: 22, column: 9, scope: !737)
!772 = !DILocation(line: 22, column: 13, scope: !737)
!773 = !DILocation(line: 22, column: 19, scope: !774)
!774 = distinct !DILexicalBlock(scope: !737, file: !612, line: 22, column: 5)
!775 = !DILocation(line: 22, column: 21, scope: !774)
!776 = !DILocation(line: 22, column: 5, scope: !737)
!777 = !DILocation(line: 22, column: 5, scope: !774)
!778 = !DILocation(line: 23, column: 26, scope: !779)
!779 = distinct !DILexicalBlock(scope: !774, file: !612, line: 22, column: 33)
!780 = !DILocation(line: 23, column: 17, scope: !779)
!781 = !DILocation(line: 23, column: 12, scope: !779)
!782 = !DILocation(line: 23, column: 9, scope: !779)
!783 = !DILocation(line: 23, column: 15, scope: !779)
!784 = !{!785, !785, i64 0, i64 4}
!785 = !{!619, i64 4, !"float"}
!786 = !DILocation(line: 24, column: 26, scope: !779)
!787 = !DILocation(line: 24, column: 17, scope: !779)
!788 = !DILocation(line: 24, column: 12, scope: !779)
!789 = !DILocation(line: 24, column: 9, scope: !779)
!790 = !DILocation(line: 24, column: 15, scope: !779)
!791 = !DILocation(line: 25, column: 5, scope: !779)
!792 = !DILocation(line: 22, column: 29, scope: !774)
!793 = distinct !{!793, !776, !794, !691}
!794 = !DILocation(line: 25, column: 5, scope: !737)
!795 = !DILocation(line: 27, column: 5, scope: !719)
!796 = !DILocation(line: 27, column: 11, scope: !719)
!797 = !DILocation(line: 28, column: 5, scope: !719)
!798 = !DILocation(line: 28, column: 11, scope: !719)
!799 = !DILocation(line: 29, column: 9, scope: !741)
!800 = !DILocation(line: 29, column: 13, scope: !741)
!801 = !DILocation(line: 29, column: 19, scope: !802)
!802 = distinct !DILexicalBlock(scope: !741, file: !612, line: 29, column: 5)
!803 = !DILocation(line: 29, column: 21, scope: !802)
!804 = !DILocation(line: 29, column: 5, scope: !741)
!805 = !DILocation(line: 29, column: 5, scope: !802)
!806 = !DILocation(line: 32, column: 20, scope: !807)
!807 = distinct !DILexicalBlock(scope: !802, file: !612, line: 31, column: 5)
!808 = !DILocation(line: 32, column: 17, scope: !807)
!809 = !DILocation(line: 32, column: 28, scope: !807)
!810 = !DILocation(line: 32, column: 25, scope: !807)
!811 = !DILocation(line: 32, column: 36, scope: !807)
!812 = !DILocation(line: 32, column: 33, scope: !807)
!813 = !DILocation(line: 32, column: 44, scope: !807)
!814 = !DILocation(line: 32, column: 41, scope: !807)
!815 = !DILocation(line: 32, column: 39, scope: !807)
!816 = !DILocation(line: 32, column: 31, scope: !807)
!817 = !DILocation(line: 32, column: 14, scope: !807)
!818 = !DILocation(line: 33, column: 24, scope: !807)
!819 = !DILocation(line: 33, column: 21, scope: !807)
!820 = !DILocation(line: 33, column: 19, scope: !807)
!821 = !DILocation(line: 33, column: 32, scope: !807)
!822 = !DILocation(line: 33, column: 29, scope: !807)
!823 = !DILocation(line: 33, column: 14, scope: !807)
!824 = !DILocation(line: 35, column: 5, scope: !807)
!825 = !DILocation(line: 29, column: 29, scope: !802)
!826 = distinct !{!826, !804, !827, !691}
!827 = !DILocation(line: 35, column: 5, scope: !741)
!828 = !DILocation(line: 37, column: 5, scope: !719)
!829 = !DILocation(line: 37, column: 10, scope: !719)
!830 = !DILocation(line: 37, column: 16, scope: !719)
!831 = !DILocation(line: 37, column: 23, scope: !719)
!832 = !DILocation(line: 37, column: 21, scope: !719)
!833 = !DILocation(line: 38, column: 5, scope: !719)
!834 = !DILocation(line: 38, column: 10, scope: !719)
!835 = !DILocation(line: 38, column: 19, scope: !719)
!836 = !DILocation(line: 38, column: 14, scope: !719)
!837 = !DILocation(line: 38, column: 27, scope: !719)
!838 = !DILocation(line: 38, column: 57, scope: !719)
!839 = !DILocation(line: 38, column: 63, scope: !719)
!840 = !DILocation(line: 38, column: 55, scope: !719)
!841 = !DILocation(line: 38, column: 43, scope: !719)
!842 = !DILocation(line: 38, column: 41, scope: !719)
!843 = !DILocation(line: 38, column: 24, scope: !719)
!844 = !DILocation(line: 39, column: 5, scope: !719)
!845 = !DILocation(line: 39, column: 10, scope: !719)
!846 = !DILocation(line: 39, column: 33, scope: !719)
!847 = !DILocation(line: 39, column: 37, scope: !719)
!848 = !DILocation(line: 39, column: 31, scope: !719)
!849 = !DILocation(line: 39, column: 19, scope: !719)
!850 = !DILocation(line: 39, column: 16, scope: !719)
!851 = !DILocation(line: 40, column: 5, scope: !719)
!852 = !DILocation(line: 40, column: 10, scope: !719)
!853 = !DILocation(line: 40, column: 14, scope: !719)
!854 = !DILocation(line: 40, column: 18, scope: !719)
!855 = !DILocation(line: 40, column: 16, scope: !719)
!856 = !DILocation(line: 41, column: 10, scope: !747)
!857 = !DILocation(line: 41, column: 14, scope: !747)
!858 = !DILocation(line: 41, column: 21, scope: !859)
!859 = distinct !DILexicalBlock(scope: !747, file: !612, line: 41, column: 5)
!860 = !DILocation(line: 41, column: 23, scope: !859)
!861 = !DILocation(line: 41, column: 5, scope: !747)
!862 = !DILocation(line: 41, column: 5, scope: !859)
!863 = !DILocation(line: 42, column: 19, scope: !864)
!864 = distinct !DILexicalBlock(scope: !859, file: !612, line: 41, column: 35)
!865 = !DILocation(line: 42, column: 28, scope: !864)
!866 = !DILocation(line: 42, column: 25, scope: !864)
!867 = !DILocation(line: 42, column: 33, scope: !864)
!868 = !DILocation(line: 42, column: 40, scope: !864)
!869 = !DILocation(line: 42, column: 37, scope: !864)
!870 = !DILocation(line: 42, column: 45, scope: !864)
!871 = !DILocation(line: 42, column: 43, scope: !864)
!872 = !DILocation(line: 42, column: 35, scope: !864)
!873 = !DILocation(line: 42, column: 9, scope: !864)
!874 = !DILocation(line: 43, column: 19, scope: !864)
!875 = !DILocation(line: 43, column: 29, scope: !864)
!876 = !DILocation(line: 43, column: 26, scope: !864)
!877 = !DILocation(line: 43, column: 25, scope: !864)
!878 = !DILocation(line: 43, column: 34, scope: !864)
!879 = !DILocation(line: 43, column: 41, scope: !864)
!880 = !DILocation(line: 43, column: 38, scope: !864)
!881 = !DILocation(line: 43, column: 46, scope: !864)
!882 = !DILocation(line: 43, column: 44, scope: !864)
!883 = !DILocation(line: 43, column: 36, scope: !864)
!884 = !DILocation(line: 43, column: 9, scope: !864)
!885 = !DILocation(line: 46, column: 5, scope: !864)
!886 = !DILocation(line: 41, column: 31, scope: !859)
!887 = distinct !{!887, !861, !888, !691}
!888 = !DILocation(line: 46, column: 5, scope: !747)
!889 = !DILocation(line: 50, column: 1, scope: !719)
!890 = !{!891, !891, i64 0, i64 4}
!891 = !{!619, i64 4, !"uint2_t"}
!892 = distinct !DISubprogram(name: "readincr<(aie_stream_resource_in)0, float>", linkageName: "_ZL8readincrIL22aie_stream_resource_in0EfET0_P12input_streamIS1_E", scope: !893, file: !893, line: 126, type: !894, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !902, retainedNodes: !896)
!893 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/adf/stream/me/accessors.h", directory: "/home/lxy")
!894 = !DISubroutineType(types: !895)
!895 = !{!114, !705}
!896 = !{!897, !898, !901}
!897 = !DILocalVariable(name: "ss", arg: 1, scope: !892, file: !893, line: 126, type: !705)
!898 = !DILocalVariable(name: "origVal", scope: !892, file: !893, line: 129, type: !899)
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32", file: !900, line: 28, baseType: !194)
!900 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/adf/window/types.h", directory: "/home/lxy")
!901 = !DILocalVariable(name: "value", scope: !892, file: !893, line: 130, type: !114)
!902 = !{!903, !904}
!903 = !DITemplateValueParameter(name: "resource", type: !31, value: i32 0)
!904 = !DITemplateTypeParameter(name: "streamTy", type: !114)
!905 = !DILocation(line: 126, column: 34, scope: !892)
!906 = !DILocation(line: 129, column: 5, scope: !892)
!907 = !DILocation(line: 129, column: 11, scope: !892)
!908 = !DILocation(line: 129, column: 71, scope: !892)
!909 = !DILocation(line: 129, column: 21, scope: !892)
!910 = !DILocation(line: 130, column: 5, scope: !892)
!911 = !DILocation(line: 130, column: 14, scope: !892)
!912 = !DILocation(line: 178, column: 30, scope: !913)
!913 = distinct !DILexicalBlock(scope: !914, file: !893, line: 177, column: 28)
!914 = distinct !DILexicalBlock(scope: !915, file: !893, line: 170, column: 28)
!915 = distinct !DILexicalBlock(scope: !916, file: !893, line: 168, column: 28)
!916 = distinct !DILexicalBlock(scope: !917, file: !893, line: 158, column: 28)
!917 = distinct !DILexicalBlock(scope: !918, file: !893, line: 156, column: 23)
!918 = distinct !DILexicalBlock(scope: !919, file: !893, line: 155, column: 5)
!919 = distinct !DILexicalBlock(scope: !892, file: !893, line: 132, column: 19)
!920 = !DILocation(line: 178, column: 21, scope: !913)
!921 = !DILocation(line: 178, column: 19, scope: !913)
!922 = !DILocation(line: 182, column: 12, scope: !892)
!923 = !DILocation(line: 183, column: 1, scope: !892)
!924 = !DILocation(line: 182, column: 5, scope: !892)
!925 = !DILocation(line: 3395, column: 29, scope: !152)
!926 = !DILocation(line: 3398, column: 5, scope: !152)
!927 = !DILocation(line: 3398, column: 18, scope: !152)
!928 = !DILocation(line: 3398, column: 23, scope: !152)
!929 = !DILocation(line: 3401, column: 33, scope: !930)
!930 = distinct !DILexicalBlock(scope: !152, file: !151, line: 3400, column: 19)
!931 = !DILocation(line: 3401, column: 24, scope: !930)
!932 = !DILocation(line: 3404, column: 1, scope: !152)
!933 = !DILocation(line: 3401, column: 9, scope: !930)
!934 = distinct !DISubprogram(name: "sqrt<float>", linkageName: "_ZN3aie4sqrtIfEEDaT_", scope: !8, file: !151, line: 9199, type: !335, scopeLine: 9200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !169, retainedNodes: !935)
!935 = !{!936}
!936 = !DILocalVariable(name: "a", arg: 1, scope: !934, file: !151, line: 9199, type: !114)
!937 = !DILocation(line: 9199, column: 13, scope: !934)
!938 = !DILocation(line: 9202, column: 12, scope: !934)
!939 = !DILocation(line: 9202, column: 5, scope: !934)
!940 = distinct !DISubprogram(name: "writeincr<(aie_stream_resource_out)0, float>", linkageName: "_ZL9writeincrIL23aie_stream_resource_out0EfEvP13output_streamIT0_ENSt3__213type_identityIS2_E4typeEb", scope: !893, file: !893, line: 252, type: !941, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !955, retainedNodes: !950)
!941 = !DISubroutineType(types: !942)
!942 = !{null, !715, !943, !949}
!943 = !DIDerivedType(tag: DW_TAG_typedef, name: "type_identity_t<float>", scope: !174, file: !944, line: 1240, baseType: !945)
!944 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime_cxx/libs/libcxx-9.0.0/include-lite/../include/type_traits", directory: "/home/lxy")
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !946, file: !944, line: 1239, baseType: !114)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "type_identity<float>", scope: !174, file: !944, line: 1239, size: 8, flags: DIFlagTypePassByValue, elements: !158, templateParams: !947, identifier: "_ZTSNSt3__213type_identityIfEE")
!947 = !{!948}
!948 = !DITemplateTypeParameter(name: "_Tp", type: !114)
!949 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!950 = !{!951, !952, !953, !954}
!951 = !DILocalVariable(name: "str", arg: 1, scope: !940, file: !893, line: 252, type: !715)
!952 = !DILocalVariable(name: "value", arg: 2, scope: !940, file: !893, line: 252, type: !943)
!953 = !DILocalVariable(name: "tlast", arg: 3, scope: !940, file: !893, line: 252, type: !949)
!954 = !DILocalVariable(name: "value32", scope: !940, file: !893, line: 254, type: !899)
!955 = !{!956, !904}
!956 = !DITemplateValueParameter(name: "resource", type: !51, value: i32 0)
!957 = !DILocation(line: 252, column: 36, scope: !940)
!958 = !DILocation(line: 252, column: 72, scope: !940)
!959 = !{!960, !960, i64 0, i64 1}
!960 = !{!619, i64 1, !"bool"}
!961 = !DILocation(line: 252, column: 84, scope: !940)
!962 = !DILocation(line: 254, column: 5, scope: !940)
!963 = !DILocation(line: 254, column: 11, scope: !940)
!964 = !DILocation(line: 298, column: 32, scope: !965)
!965 = distinct !DILexicalBlock(scope: !966, file: !893, line: 297, column: 28)
!966 = distinct !DILexicalBlock(scope: !967, file: !893, line: 290, column: 28)
!967 = distinct !DILexicalBlock(scope: !968, file: !893, line: 288, column: 28)
!968 = distinct !DILexicalBlock(scope: !969, file: !893, line: 281, column: 28)
!969 = distinct !DILexicalBlock(scope: !970, file: !893, line: 279, column: 23)
!970 = distinct !DILexicalBlock(scope: !971, file: !893, line: 278, column: 5)
!971 = distinct !DILexicalBlock(scope: !940, file: !893, line: 257, column: 19)
!972 = !DILocation(line: 298, column: 23, scope: !965)
!973 = !DILocation(line: 298, column: 21, scope: !965)
!974 = !DILocation(line: 302, column: 55, scope: !940)
!975 = !DILocation(line: 302, column: 60, scope: !940)
!976 = !DILocation(line: 302, column: 69, scope: !940)
!977 = !{i8 0, i8 2}
!978 = !DILocation(line: 302, column: 5, scope: !940)
!979 = !DILocation(line: 303, column: 1, scope: !940)
!980 = distinct !DISubprogram(name: "aie_stream_get_ss<float, float>", linkageName: "_ZN12stream_utilsL17aie_stream_get_ssIffEEiP12input_streamIT0_E", scope: !982, file: !981, line: 127, type: !983, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !987, retainedNodes: !985)
!981 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/adf/stream/me/stream_utils.h", directory: "/home/lxy")
!982 = !DINamespace(name: "stream_utils", scope: null)
!983 = !DISubroutineType(types: !984)
!984 = !{!899, !705}
!985 = !{!986}
!986 = !DILocalVariable(name: "ss", arg: 1, scope: !980, file: !981, line: 127, type: !705)
!987 = !{!113, !904}
!988 = !DILocation(line: 127, column: 44, scope: !980)
!989 = !DILocation(line: 135, column: 23, scope: !990)
!990 = distinct !DILexicalBlock(scope: !991, file: !981, line: 132, column: 24)
!991 = distinct !DILexicalBlock(scope: !980, file: !981, line: 130, column: 19)
!992 = !DILocation(line: 135, column: 27, scope: !990)
!993 = !DILocation(line: 135, column: 16, scope: !990)
!994 = !DILocation(line: 135, column: 9, scope: !990)
!995 = !{!996, !996, i64 0, i64 4}
!996 = !{!619, i64 4, !"uint1_t"}
!997 = !{i32 1}
!998 = !{!999, !653, i64 4, i64 4}
!999 = !{!619, i64 8, !"_ZTSN12me_primitive60chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sintE", !653, i64 0, i64 4, !653, i64 4, i64 4}
!1000 = !{!999, !653, i64 0, i64 4}
!1001 = !{!1002, !653, i64 4, i64 4}
!1002 = !{!619, i64 8, !"_ZTSN12me_primitive60chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sintE", !653, i64 0, i64 4, !653, i64 4, i64 4}
!1003 = !{!1002, !653, i64 0, i64 4}
!1004 = !{!1005, !653, i64 4, i64 4}
!1005 = !{!619, i64 8, !"_ZTSN12me_primitive57chessout___sint_stream_read___PSSMEM__sint_uint1_t___sintE", !653, i64 0, i64 4, !653, i64 4, i64 4}
!1006 = !{!1005, !653, i64 0, i64 4}
!1007 = distinct !DISubprogram(name: "abs", linkageName: "_ZNSt3__23absEf", scope: !174, file: !337, line: 325, type: !335, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1008)
!1008 = !{!1009}
!1009 = !DILocalVariable(name: "x", arg: 1, scope: !1007, file: !337, line: 325, type: !114)
!1010 = !DILocation(line: 325, column: 51, scope: !1007)
!1011 = !DILocation(line: 325, column: 81, scope: !1007)
!1012 = !DILocation(line: 325, column: 73, scope: !1007)
!1013 = !DILocation(line: 325, column: 66, scope: !1007)
!1014 = distinct !DISubprogram(name: "run", linkageName: "_ZN3aie6detail15elementary_bitsILNS0_12ElementaryOpE0ELj32EffE3runERKfi", scope: !1015, file: !38, line: 134, type: !1020, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !1022, retainedNodes: !1023)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elementary_bits<(aie::detail::ElementaryOp)0, 32U, float, float>", scope: !7, file: !38, line: 131, size: 8, flags: DIFlagTypePassByValue, elements: !158, templateParams: !1016, identifier: "_ZTSN3aie6detail15elementary_bitsILNS0_12ElementaryOpE0ELj32EffEE")
!1016 = !{!1017, !1018, !1019, !113}
!1017 = !DITemplateValueParameter(name: "Op", type: !37, value: i32 0)
!1018 = !DITemplateValueParameter(name: "TypeBits", type: !15, value: i32 32)
!1019 = !DITemplateTypeParameter(name: "TR", type: !114)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!114, !163, !9}
!1022 = !DISubprogram(name: "run", linkageName: "_ZN3aie6detail15elementary_bitsILNS0_12ElementaryOpE0ELj32EffE3runERKfi", scope: !1015, file: !38, line: 134, type: !1020, scopeLine: 134, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1023 = !{!1024, !1025}
!1024 = !DILocalVariable(name: "a", arg: 1, scope: !1014, file: !38, line: 134, type: !163)
!1025 = !DILocalVariable(name: "shift", arg: 2, scope: !1014, file: !38, line: 134, type: !9)
!1026 = !DILocation(line: 134, column: 30, scope: !1014)
!1027 = !DILocation(line: 134, column: 37, scope: !1014)
!1028 = !DILocation(line: 136, column: 63, scope: !1014)
!1029 = !DILocation(line: 136, column: 66, scope: !1014)
!1030 = !DILocation(line: 136, column: 16, scope: !1014)
!1031 = !DILocation(line: 136, column: 9, scope: !1014)
!1032 = distinct !DISubprogram(name: "run", linkageName: "_ZN3aie6detail20elementary_bits_implILNS0_12ElementaryOpE0ELj32EffE3runERKfi", scope: !1034, file: !1033, line: 81, type: !1020, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !1035, retainedNodes: !1036)
!1033 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/aie_api/detail/aie1/elementary.hpp", directory: "/home/lxy")
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elementary_bits_impl<(aie::detail::ElementaryOp)0, 32U, float, float>", scope: !7, file: !1033, line: 79, size: 8, flags: DIFlagTypePassByValue, elements: !158, templateParams: !1016, identifier: "_ZTSN3aie6detail20elementary_bits_implILNS0_12ElementaryOpE0ELj32EffEE")
!1035 = !DISubprogram(name: "run", linkageName: "_ZN3aie6detail20elementary_bits_implILNS0_12ElementaryOpE0ELj32EffE3runERKfi", scope: !1034, file: !1033, line: 81, type: !1020, scopeLine: 81, flags: DIFlagPrototyped | DIFlagStaticMember, spFlags: DISPFlagOptimized)
!1036 = !{!1037, !1038}
!1037 = !DILocalVariable(name: "a", arg: 1, scope: !1032, file: !1033, line: 81, type: !163)
!1038 = !DILocalVariable(name: "shift", arg: 2, scope: !1032, file: !1033, line: 81, type: !9)
!1039 = !DILocation(line: 81, column: 34, scope: !1032)
!1040 = !DILocation(line: 81, column: 41, scope: !1032)
!1041 = !DILocation(line: 84, column: 29, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1043, file: !1033, line: 83, column: 54)
!1043 = distinct !DILexicalBlock(scope: !1032, file: !1033, line: 83, column: 28)
!1044 = !DILocation(line: 84, column: 20, scope: !1042)
!1045 = !DILocation(line: 84, column: 13, scope: !1042)
!1046 = distinct !DISubprogram(name: "aie_stream_put_ms<float, float>", linkageName: "_ZN12stream_utilsL17aie_stream_put_msIffEEvP13output_streamIT0_Eib", scope: !982, file: !981, line: 168, type: !1047, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !987, retainedNodes: !1049)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{null, !715, !899, !949}
!1049 = !{!1050, !1051, !1052}
!1050 = !DILocalVariable(name: "ss", arg: 1, scope: !1046, file: !981, line: 168, type: !715)
!1051 = !DILocalVariable(name: "value", arg: 2, scope: !1046, file: !981, line: 168, type: !899)
!1052 = !DILocalVariable(name: "tlast", arg: 3, scope: !1046, file: !981, line: 168, type: !949)
!1053 = !DILocation(line: 168, column: 45, scope: !1046)
!1054 = !DILocation(line: 168, column: 55, scope: !1046)
!1055 = !DILocation(line: 168, column: 67, scope: !1046)
!1056 = !DILocation(line: 176, column: 16, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1058, file: !981, line: 173, column: 24)
!1058 = distinct !DILexicalBlock(scope: !1046, file: !981, line: 171, column: 19)
!1059 = !DILocation(line: 176, column: 20, scope: !1057)
!1060 = !DILocation(line: 176, column: 29, scope: !1057)
!1061 = !DILocation(line: 176, column: 35, scope: !1057)
!1062 = !DILocation(line: 176, column: 9, scope: !1057)
!1063 = !DILocation(line: 180, column: 1, scope: !1046)
