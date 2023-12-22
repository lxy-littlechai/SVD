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

$_Z8transferILi8EEvP12input_streamIfEP13output_streamIfE = comdat any

$_Z4donev = comdat any

$_ZN12me_primitive5eventE7uint2_t = comdat any

$_ZN7uint2_tC2Ei = comdat any

$_Z8as_int32f = comdat any

$_Z6put_msiii = comdat any

$_ZN12me_primitive12stream_writeEPU4AS27U16__protect_accessii7uint1_tS2_ = comdat any

$_ZN7uint1_tC2Ei = comdat any

$_ZN12me_primitive12stream_writeEPU4AS28U16__protect_accessii7uint1_tS2_ = comdat any

$_ZN12me_primitive12stream_writeEPU4AS16U16__protect_accessii7uint1_tS2_ = comdat any

$_Z8as_floati = comdat any

$_Z6get_ssi = comdat any

$_ZN12me_primitive11stream_readIiEEN13chessEnableIfIXsr17chessIsCompatibleIN15chessRemoveQualIT_E4typeEiEE5valueEiE4typeEPU4AS23U16__protect_accessi7uint1_tRS3_ = comdat any

$_ZN12me_primitive11stream_readIiEEN13chessEnableIfIXsr17chessIsCompatibleIN15chessRemoveQualIT_E4typeEiEE5valueEiE4typeEPU4AS24U16__protect_accessi7uint1_tRS3_ = comdat any

$_ZN12me_primitive11stream_readIiEEN13chessEnableIfIXsr17chessIsCompatibleIN15chessRemoveQualIT_E4typeEiEE5valueEiE4typeEPU4AS15U16__protect_accessi7uint1_tRS3_ = comdat any

@_ZL11sync_buffer = internal global [8 x i32] [i32 0, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 4, !dbg !0
@_ZN12me_primitive3ms0E = external dso_local addrspace(29) global i32, align 1 #0
@_ZN12me_primitive3ms1E = external dso_local addrspace(30) global i32, align 1 #1
@_ZN12me_primitive3ss0E = external dso_local addrspace(25) global i32, align 1 #0
@_ZN12me_primitive4sst0E = external dso_local addrspace(19) global i32, align 1 #0
@_ZN12me_primitive3ss1E = external dso_local addrspace(26) global i32, align 1 #1
@_ZN12me_primitive4sst1E = external dso_local addrspace(19) global i32, align 1 #1

; Function Attrs: mustprogress norecurse nounwind
define dso_local i32 @main() addrspace(1) #2 !dbg !577 {
entry:
  %retval = alloca i32, align 4
  %stream_0 = alloca %struct.input_stream, align 4
  %stream_1 = alloca %struct.output_stream, align 4
  %index = alloca i32, align 4
  %proc_24_0_bounds = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 0, i32* %retval, align 4, !noalias !586
  store volatile i32 0, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @_ZL11sync_buffer, i32 0, i32 0), align 4, !dbg !590, !tbaa !591, !noalias !586
  store %struct.input_stream undef, %struct.input_stream* %stream_0, align 4, !dbg !595, !noalias !586
  %0 = bitcast %struct.input_stream* %stream_0 to i8*, !dbg !595
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #20, !dbg !595, !noalias !586
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.input_stream* %stream_0, metadata !579, metadata !DIExpression()), !dbg !596
  %1 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0s_struct.input_streams.i32(%struct.input_stream* %stream_0, i32 0, metadata !597), !dbg !595, !noalias !586
  call addrspace(1) void @_ZN12input_streamIfEC2Ej(%struct.input_stream* nonnull align 4 dereferenceable(4) %stream_0, i32 0) #21, !dbg !598, !noalias !586
  store %struct.output_stream undef, %struct.output_stream* %stream_1, align 4, !dbg !599, !noalias !586
  %2 = bitcast %struct.output_stream* %stream_1 to i8*, !dbg !599
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #20, !dbg !599, !noalias !586
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.output_stream* %stream_1, metadata !580, metadata !DIExpression()), !dbg !600
  %3 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0s_struct.output_streams.i32(%struct.output_stream* %stream_1, i32 0, metadata !601), !dbg !599, !noalias !586
  call addrspace(1) void @_ZN13output_streamIfEC2Ej(%struct.output_stream* nonnull align 4 dereferenceable(4) %stream_1, i32 0) #21, !dbg !602, !noalias !586
  store i32 undef, i32* %index, align 4, !dbg !603, !noalias !586
  %4 = bitcast i32* %index to i8*, !dbg !603
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #20, !dbg !603, !noalias !586
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %index, metadata !581, metadata !DIExpression()), !dbg !604
  store i32 1, i32* %index, align 4, !dbg !604, !tbaa !591, !noalias !586
  br label %while.cond, !dbg !605

while.cond:                                       ; preds = %cleanup.cont, %entry
  br label %while.body, !dbg !605

while.body:                                       ; preds = %while.cond
  store i32 undef, i32* %proc_24_0_bounds, align 4, !dbg !606, !noalias !586
  %5 = bitcast i32* %proc_24_0_bounds to i8*, !dbg !606
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #20, !dbg !606, !noalias !586
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %proc_24_0_bounds, metadata !584, metadata !DIExpression()), !dbg !607
  %6 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @_ZL11sync_buffer, i32 0, i32 1), align 4, !dbg !608, !tbaa !591, !noalias !586
  store i32 %6, i32* %proc_24_0_bounds, align 4, !dbg !607, !tbaa !591, !noalias !586
  br label %while.cond1, !dbg !609

while.cond1:                                      ; preds = %if.end, %while.body
  %7 = load i32, i32* %proc_24_0_bounds, align 4, !dbg !610, !tbaa !591, !noalias !586
  %tobool = icmp ne i32 %7, 0, !dbg !610
  br i1 %tobool, label %while.body2, label %while.end, !dbg !609

while.body2:                                      ; preds = %while.cond1
  call addrspace(1) void @_Z8transferILi8EEvP12input_streamIfEP13output_streamIfE(%struct.input_stream* %stream_0, %struct.output_stream* %stream_1) #21, !dbg !611, !noalias !586
  %8 = load i32, i32* %index, align 4, !dbg !613, !tbaa !591, !noalias !586
  %sub = sub nsw i32 1, %8, !dbg !614
  store i32 %sub, i32* %index, align 4, !dbg !615, !tbaa !591, !noalias !586
  call addrspace(1) void @llvm.chess_memory_fence(), !dbg !616, !noalias !586
  %9 = load i32, i32* %proc_24_0_bounds, align 4, !dbg !617, !tbaa !591, !noalias !586
  %cmp = icmp sgt i32 %9, 0, !dbg !619
  br i1 %cmp, label %if.then, label %if.end, !dbg !620

if.then:                                          ; preds = %while.body2
  %10 = load i32, i32* %proc_24_0_bounds, align 4, !dbg !621, !tbaa !591, !noalias !586
  %dec = add nsw i32 %10, -1, !dbg !621
  store i32 %dec, i32* %proc_24_0_bounds, align 4, !dbg !621, !tbaa !591, !noalias !586
  br label %if.end, !dbg !621

if.end:                                           ; preds = %if.then, %while.body2
  br label %while.cond1, !dbg !609, !llvm.loop !622

while.end:                                        ; preds = %while.cond1
  call addrspace(1) void @_Z4donev() #22, !dbg !625, !noalias !586
  %11 = load volatile i32, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @_ZL11sync_buffer, i32 0, i32 0), align 4, !dbg !626, !tbaa !591, !noalias !586
  %cmp3 = icmp sgt i32 %11, 0, !dbg !628
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !629

if.then4:                                         ; preds = %while.end
  store i32 3, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !630

if.end5:                                          ; preds = %while.end
  store i32 0, i32* %cleanup.dest.slot, align 4, !dbg !631, !noalias !586
  br label %cleanup, !dbg !631

cleanup:                                          ; preds = %if.end5, %if.then4
  %12 = bitcast i32* %proc_24_0_bounds to i8*, !dbg !631
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #20, !dbg !631, !noalias !586
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end6
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !605, !llvm.loop !632

while.end6:                                       ; preds = %cleanup
  store i32 0, i32* %retval, align 4, !dbg !633, !noalias !586
  store i32 1, i32* %cleanup.dest.slot, align 4
  %13 = bitcast i32* %index to i8*, !dbg !634
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %13) #20, !dbg !634
  %14 = bitcast %struct.output_stream* %stream_1 to i8*, !dbg !634
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %14) #20, !dbg !634
  %15 = bitcast %struct.input_stream* %stream_0 to i8*, !dbg !634
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %15) #20, !dbg !634
  %16 = load i32, i32* %retval, align 4, !dbg !634
  ret i32 %16, !dbg !634

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) addrspace(1) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) addrspace(1) #4

; Function Attrs: inaccessiblememonly nounwind willreturn
declare i8* @llvm.noalias.decl.p0i8.p0s_struct.input_streams.i32(%struct.input_stream*, i32, metadata) addrspace(1) #5

; Function Attrs: nounwind
define linkonce_odr dso_local void @_ZN12input_streamIfEC2Ej(%struct.input_stream* nonnull align 4 dereferenceable(4) %this, i32 %ch) unnamed_addr addrspace(1) #6 comdat align 2 !dbg !635 {
entry:
  %this.addr = alloca %struct.input_stream*, align 4
  %ch.addr = alloca i32, align 4
  store %struct.input_stream* %this, %struct.input_stream** %this.addr, align 4, !tbaa !640
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.input_stream** %this.addr, metadata !637, metadata !DIExpression()), !dbg !642
  store i32 %ch, i32* %ch.addr, align 4, !tbaa !591
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %ch.addr, metadata !639, metadata !DIExpression()), !dbg !643
  %this1 = load %struct.input_stream*, %struct.input_stream** %this.addr, align 4
  %0 = getelementptr inbounds %struct.input_stream, %struct.input_stream* %this1, i32 0, i32 0, !dbg !643
  %channel = bitcast %union.anon* %0 to i32*, !dbg !643
  %1 = load i32, i32* %ch.addr, align 4, !dbg !643, !tbaa !591
  store i32 %1, i32* %channel, align 4, !dbg !643, !tbaa !644
  ret void, !dbg !643
}

; Function Attrs: inaccessiblememonly nounwind willreturn
declare i8* @llvm.noalias.decl.p0i8.p0s_struct.output_streams.i32(%struct.output_stream*, i32, metadata) addrspace(1) #5

; Function Attrs: nounwind
define linkonce_odr dso_local void @_ZN13output_streamIfEC2Ej(%struct.output_stream* nonnull align 4 dereferenceable(4) %this, i32 %ch) unnamed_addr addrspace(1) #6 comdat align 2 !dbg !645 {
entry:
  %this.addr = alloca %struct.output_stream*, align 4
  %ch.addr = alloca i32, align 4
  store %struct.output_stream* %this, %struct.output_stream** %this.addr, align 4, !tbaa !640
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.output_stream** %this.addr, metadata !647, metadata !DIExpression()), !dbg !650
  store i32 %ch, i32* %ch.addr, align 4, !tbaa !591
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %ch.addr, metadata !649, metadata !DIExpression()), !dbg !651
  %this1 = load %struct.output_stream*, %struct.output_stream** %this.addr, align 4
  %0 = getelementptr inbounds %struct.output_stream, %struct.output_stream* %this1, i32 0, i32 0, !dbg !651
  %channel = bitcast %union.anon.0* %0 to i32*, !dbg !651
  %1 = load i32, i32* %ch.addr, align 4, !dbg !651, !tbaa !591
  store i32 %1, i32* %channel, align 4, !dbg !651, !tbaa !644
  ret void, !dbg !651
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_Z8transferILi8EEvP12input_streamIfEP13output_streamIfE(%struct.input_stream* chesscopy noalias %in, %struct.output_stream* chesscopy noalias %out) addrspace(1) #7 comdat !dbg !652 {
entry:
  %in.addr = alloca %struct.input_stream*, align 4
  %out.addr = alloca %struct.output_stream*, align 4
  %i = alloca i32, align 4
  %0 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0p0s_struct.input_streams.i32(%struct.input_stream** %in.addr, i32 0, metadata !665), !noalias !668
  store %struct.input_stream* %in, %struct.input_stream** %in.addr, align 4, !tbaa !640, !noalias !668
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.input_stream** %in.addr, metadata !659, metadata !DIExpression()), !dbg !670
  %1 = call addrspace(1) i8* @llvm.noalias.decl.p0i8.p0p0s_struct.output_streams.i32(%struct.output_stream** %out.addr, i32 0, metadata !671), !noalias !668
  store %struct.output_stream* %out, %struct.output_stream** %out.addr, align 4, !tbaa !640, !noalias !668
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.output_stream** %out.addr, metadata !660, metadata !DIExpression()), !dbg !672
  store i32 undef, i32* %i, align 4, !dbg !673, !noalias !668
  %2 = bitcast i32* %i to i8*, !dbg !673
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #20, !dbg !673, !noalias !668
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %i, metadata !661, metadata !DIExpression()), !dbg !674
  store i32 0, i32* %i, align 4, !dbg !674, !tbaa !591, !noalias !668
  br label %for.cond, !dbg !673

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !dbg !675, !tbaa !591, !noalias !668
  %cmp = icmp slt i32 %3, 8, !dbg !677
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !678

for.cond.cleanup:                                 ; preds = %for.cond
  %4 = bitcast i32* %i to i8*, !dbg !679
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %4) #20, !dbg !679, !noalias !668
  br label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.output_stream*, %struct.output_stream** %out.addr, align 4, !dbg !680, !tbaa !640, !noalias !668
  %6 = call addrspace(1) %struct.output_stream* @llvm.noalias.p0s_struct.output_streams.p0i8.p0p0s_struct.output_streams.i32(%struct.output_stream* %5, i8* %1, %struct.output_stream** %out.addr, i32 0, metadata !671), !dbg !680, !tbaa !640, !noalias !668
  %7 = load %struct.input_stream*, %struct.input_stream** %in.addr, align 4, !dbg !682, !tbaa !640, !noalias !668
  %8 = call addrspace(1) %struct.input_stream* @llvm.noalias.p0s_struct.input_streams.p0i8.p0p0s_struct.input_streams.i32(%struct.input_stream* %7, i8* %0, %struct.input_stream** %in.addr, i32 0, metadata !665), !dbg !682, !tbaa !640, !noalias !668
  %call = call addrspace(1) float @_ZL8readincrIL22aie_stream_resource_in0EfET0_P12input_streamIS1_E(%struct.input_stream* %8) #21, !dbg !683, !noalias !668
  call addrspace(1) void @_ZL9writeincrIL23aie_stream_resource_out0EfEvP13output_streamIT0_ENSt3__213type_identityIS2_E4typeEb(%struct.output_stream* %6, float %call, i1 zeroext false) #21, !dbg !684, !noalias !668
  br label %for.inc, !dbg !685

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !686, !tbaa !591, !noalias !668
  %inc = add nsw i32 %9, 1, !dbg !686
  store i32 %inc, i32* %i, align 4, !dbg !686, !tbaa !591, !noalias !668
  br label %for.cond, !dbg !679, !llvm.loop !687

for.end:                                          ; preds = %for.cond.cleanup
  ret void, !dbg !689
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
  %0 = load %struct.ipd.custom_type.uint2_t.uint2_t, %struct.ipd.custom_type.uint2_t.uint2_t* %custom_type.tmp, align 4, !tbaa !690
  store %struct.ipd.custom_type.uint2_t.uint2_t %0, %struct.ipd.custom_type.uint2_t.uint2_t* %agg.tmp, align 4, !tbaa !690
  %1 = load %struct.ipd.custom_type.uint2_t.uint2_t, %struct.ipd.custom_type.uint2_t.uint2_t* %agg.tmp, align 4, !tbaa !690
  call addrspace(1) void @_ZN12me_primitive5eventE7uint2_t(%struct.ipd.custom_type.uint2_t.uint2_t %1) #24
  call addrspace(1) void @_Z25chess_separator_scheduleri(i32 5) #23
  call addrspace(1) void @llvm.chess_memory_fence()
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) addrspace(1) #3

; Function Attrs: inaccessiblememonly nounwind
declare dso_local void @_Z25chess_separator_scheduleri(i32) addrspace(1) #10

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local void @_ZN12me_primitive5eventE7uint2_t(%struct.ipd.custom_type.uint2_t.uint2_t %a0.coerce) addrspace(1) #11 comdat {
entry:
  %a0 = alloca %struct.ipd.custom_type.uint2_t.uint2_t, align 4
  store %struct.ipd.custom_type.uint2_t.uint2_t %a0.coerce, %struct.ipd.custom_type.uint2_t.uint2_t* %a0, align 4
  %0 = load %struct.ipd.custom_type.uint2_t.uint2_t, %struct.ipd.custom_type.uint2_t.uint2_t* %a0, align 4, !tbaa !690
  call x86_regcallcc addrspace(1) void @__regcall3__chessintr_void_event_uint2_t(%struct.ipd.custom_type.uint2_t.uint2_t %0) #23
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dso_local void @_ZN7uint2_tC2Ei(%struct.ipd.custom_type.uint2_t.uint2_t* nonnull align 4 dereferenceable(1) %this, i32 %a) unnamed_addr addrspace(1) #12 comdat align 2 {
entry:
  %this.addr = alloca %struct.ipd.custom_type.uint2_t.uint2_t*, align 4
  %a.addr = alloca i32, align 4
  store %struct.ipd.custom_type.uint2_t.uint2_t* %this, %struct.ipd.custom_type.uint2_t.uint2_t** %this.addr, align 4, !tbaa !640
  store i32 %a, i32* %a.addr, align 4, !tbaa !591
  %this1 = load %struct.ipd.custom_type.uint2_t.uint2_t*, %struct.ipd.custom_type.uint2_t.uint2_t** %this.addr, align 4
  %0 = bitcast %struct.ipd.custom_type.uint2_t.uint2_t* %this1 to i2*
  store i2 0, i2* %0, align 4
  %1 = load i32, i32* %a.addr, align 4, !tbaa !591
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
declare i8* @llvm.noalias.decl.p0i8.p0p0s_struct.input_streams.i32(%struct.input_stream**, i32, metadata) addrspace(1) #5

; Function Attrs: inaccessiblememonly nounwind willreturn
declare i8* @llvm.noalias.decl.p0i8.p0p0s_struct.output_streams.i32(%struct.output_stream**, i32, metadata) addrspace(1) #5

; Function Attrs: inlinehint mustprogress nounwind
define internal void @_ZL9writeincrIL23aie_stream_resource_out0EfEvP13output_streamIT0_ENSt3__213type_identityIS2_E4typeEb(%struct.output_stream* %str, float %value, i1 zeroext %tlast) addrspace(1) #15 !dbg !692 {
entry:
  %str.addr = alloca %struct.output_stream*, align 4
  %value.addr = alloca float, align 4
  %tlast.addr = alloca i8, align 1
  %value32 = alloca i32, align 4
  store %struct.output_stream* %str, %struct.output_stream** %str.addr, align 4, !tbaa !640
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.output_stream** %str.addr, metadata !705, metadata !DIExpression()), !dbg !714
  store float %value, float* %value.addr, align 4, !tbaa !715
  call addrspace(1) void @llvm.dbg.declare(metadata float* %value.addr, metadata !706, metadata !DIExpression()), !dbg !717
  %frombool = zext i1 %tlast to i8
  store i8 %frombool, i8* %tlast.addr, align 1, !tbaa !718
  call addrspace(1) void @llvm.dbg.declare(metadata i8* %tlast.addr, metadata !707, metadata !DIExpression()), !dbg !720
  store i32 undef, i32* %value32, align 4, !dbg !721
  %0 = bitcast i32* %value32 to i8*, !dbg !721
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #20, !dbg !721
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %value32, metadata !708, metadata !DIExpression()), !dbg !722
  %1 = load float, float* %value.addr, align 4, !dbg !723, !tbaa !715
  %call = call addrspace(1) i32 @_Z8as_int32f(float %1) #21, !dbg !731
  store i32 %call, i32* %value32, align 4, !dbg !732, !tbaa !591
  %2 = load %struct.output_stream*, %struct.output_stream** %str.addr, align 4, !dbg !733, !tbaa !640
  %3 = load i32, i32* %value32, align 4, !dbg !734, !tbaa !591
  %4 = load i8, i8* %tlast.addr, align 1, !dbg !735, !tbaa !718, !range !736
  %tobool = trunc i8 %4 to i1, !dbg !735
  call addrspace(1) void @_ZN12stream_utilsL17aie_stream_put_msIffEEvP13output_streamIT0_Eib(%struct.output_stream* %2, i32 %3, i1 zeroext %tobool) #21, !dbg !737
  %5 = bitcast i32* %value32 to i8*, !dbg !738
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %5) #20, !dbg !738
  ret void, !dbg !738
}

; Function Attrs: argmemonly nounwind speculatable willreturn
declare %struct.output_stream* @llvm.noalias.p0s_struct.output_streams.p0i8.p0p0s_struct.output_streams.i32(%struct.output_stream*, i8*, %struct.output_stream**, i32, metadata) addrspace(1) #16

; Function Attrs: inlinehint mustprogress nounwind
define internal float @_ZL8readincrIL22aie_stream_resource_in0EfET0_P12input_streamIS1_E(%struct.input_stream* %ss) addrspace(1) #15 !dbg !739 {
entry:
  %ss.addr = alloca %struct.input_stream*, align 4
  %origVal = alloca i32, align 4
  %value = alloca float, align 4
  store %struct.input_stream* %ss, %struct.input_stream** %ss.addr, align 4, !tbaa !640
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.input_stream** %ss.addr, metadata !743, metadata !DIExpression()), !dbg !748
  store i32 undef, i32* %origVal, align 4, !dbg !749
  %0 = bitcast i32* %origVal to i8*, !dbg !749
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #20, !dbg !749
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %origVal, metadata !744, metadata !DIExpression()), !dbg !750
  %1 = load %struct.input_stream*, %struct.input_stream** %ss.addr, align 4, !dbg !751, !tbaa !640
  %call = call addrspace(1) i32 @_ZN12stream_utilsL17aie_stream_get_ssIffEEiP12input_streamIT0_E(%struct.input_stream* %1) #21, !dbg !752
  store i32 %call, i32* %origVal, align 4, !dbg !750, !tbaa !591
  store float undef, float* %value, align 4, !dbg !753
  %2 = bitcast float* %value to i8*, !dbg !753
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #20, !dbg !753
  call addrspace(1) void @llvm.dbg.declare(metadata float* %value, metadata !745, metadata !DIExpression()), !dbg !754
  %3 = load i32, i32* %origVal, align 4, !dbg !755, !tbaa !591
  %call1 = call addrspace(1) float @_Z8as_floati(i32 %3) #21, !dbg !763
  store float %call1, float* %value, align 4, !dbg !764, !tbaa !715
  %4 = load float, float* %value, align 4, !dbg !765, !tbaa !715
  %5 = bitcast float* %value to i8*, !dbg !766
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %5) #20, !dbg !766
  %6 = bitcast i32* %origVal to i8*, !dbg !766
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %6) #20, !dbg !766
  ret float %4, !dbg !767
}

; Function Attrs: argmemonly nounwind speculatable willreturn
declare %struct.input_stream* @llvm.noalias.p0s_struct.input_streams.p0i8.p0p0s_struct.input_streams.i32(%struct.input_stream*, i8*, %struct.input_stream**, i32, metadata) addrspace(1) #16

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local i32 @_Z8as_int32f(float %a0) addrspace(1) #17 comdat {
entry:
  %a0.addr = alloca float, align 4
  store float %a0, float* %a0.addr, align 4, !tbaa !715
  %0 = load float, float* %a0.addr, align 4, !tbaa !715
  %call = call x86_regcallcc signext addrspace(1) i32 @__regcall3__chessintr___sint_as_int32___ffloat(float %0) #25
  ret i32 %call
}

; Function Attrs: inlinehint mustprogress nounwind
define internal void @_ZN12stream_utilsL17aie_stream_put_msIffEEvP13output_streamIT0_Eib(%struct.output_stream* %ss, i32 %value, i1 zeroext %tlast) addrspace(1) #15 !dbg !768 {
entry:
  %ss.addr = alloca %struct.output_stream*, align 4
  %value.addr = alloca i32, align 4
  %tlast.addr = alloca i8, align 1
  store %struct.output_stream* %ss, %struct.output_stream** %ss.addr, align 4, !tbaa !640
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.output_stream** %ss.addr, metadata !774, metadata !DIExpression()), !dbg !778
  store i32 %value, i32* %value.addr, align 4, !tbaa !591
  call addrspace(1) void @llvm.dbg.declare(metadata i32* %value.addr, metadata !775, metadata !DIExpression()), !dbg !779
  %frombool = zext i1 %tlast to i8
  store i8 %frombool, i8* %tlast.addr, align 1, !tbaa !718
  call addrspace(1) void @llvm.dbg.declare(metadata i8* %tlast.addr, metadata !776, metadata !DIExpression()), !dbg !780
  %0 = load %struct.output_stream*, %struct.output_stream** %ss.addr, align 4, !dbg !781, !tbaa !640
  %1 = getelementptr inbounds %struct.output_stream, %struct.output_stream* %0, i32 0, i32 0, !dbg !784
  %channel = bitcast %union.anon.0* %1 to i32*, !dbg !784
  %2 = load i32, i32* %channel, align 4, !dbg !784, !tbaa !644
  %3 = load i32, i32* %value.addr, align 4, !dbg !785, !tbaa !591
  %4 = load i8, i8* %tlast.addr, align 1, !dbg !786, !tbaa !718, !range !736
  %tobool = trunc i8 %4 to i1, !dbg !786
  %conv = zext i1 %tobool to i32, !dbg !786
  call addrspace(1) void @_Z6put_msiii(i32 %2, i32 %3, i32 %conv) #26, !dbg !787
  ret void, !dbg !788
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
  store i32 %idx_ms, i32* %idx_ms.addr, align 4, !tbaa !591
  store i32 %val, i32* %val.addr, align 4, !tbaa !591
  store i32 %tlast, i32* %tlast.addr, align 4, !tbaa !591
  %0 = load i32, i32* %idx_ms.addr, align 4, !tbaa !591
  %cmp = icmp eq i32 %0, 0
  %1 = call addrspace(1) i1 @llvm.chess_manifest(i1 %cmp)
  br i1 %1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %val.addr, align 4, !tbaa !591
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp, i32 0) #21
  %3 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp, align 4, !tbaa !789
  store %struct.ipd.custom_type.uint1_t.uint1_t %3, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp, align 4, !tbaa !789
  %4 = load i32, i32* %tlast.addr, align 4, !tbaa !591
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp2, i32 %4) #21
  %5 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp2, align 4, !tbaa !789
  store %struct.ipd.custom_type.uint1_t.uint1_t %5, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp1, align 4, !tbaa !789
  %6 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp, align 4, !tbaa !789
  %7 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp1, align 4, !tbaa !789
  call addrspace(1) void @_ZN12me_primitive12stream_writeEPU4AS27U16__protect_accessii7uint1_tS2_(i32 addrspace(27)* addrspacecast (i32 addrspace(29)* @_ZN12me_primitive3ms0E to i32 addrspace(27)*), i32 %2, %struct.ipd.custom_type.uint1_t.uint1_t %6, %struct.ipd.custom_type.uint1_t.uint1_t %7) #27
  br label %if.end14

if.else:                                          ; preds = %entry
  %8 = load i32, i32* %idx_ms.addr, align 4, !tbaa !591
  %cmp3 = icmp eq i32 %8, 1
  %9 = call addrspace(1) i1 @llvm.chess_manifest(i1 %cmp3)
  br i1 %9, label %if.then4, label %if.else9

if.then4:                                         ; preds = %if.else
  %10 = load i32, i32* %val.addr, align 4, !tbaa !591
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp6, i32 0) #21
  %11 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp6, align 4, !tbaa !789
  store %struct.ipd.custom_type.uint1_t.uint1_t %11, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp5, align 4, !tbaa !789
  %12 = load i32, i32* %tlast.addr, align 4, !tbaa !591
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp8, i32 %12) #21
  %13 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp8, align 4, !tbaa !789
  store %struct.ipd.custom_type.uint1_t.uint1_t %13, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp7, align 4, !tbaa !789
  %14 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp5, align 4, !tbaa !789
  %15 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp7, align 4, !tbaa !789
  call addrspace(1) void @_ZN12me_primitive12stream_writeEPU4AS28U16__protect_accessii7uint1_tS2_(i32 addrspace(28)* addrspacecast (i32 addrspace(30)* @_ZN12me_primitive3ms1E to i32 addrspace(28)*), i32 %10, %struct.ipd.custom_type.uint1_t.uint1_t %14, %struct.ipd.custom_type.uint1_t.uint1_t %15) #27
  br label %if.end

if.else9:                                         ; preds = %if.else
  %16 = load i32, i32* %idx_ms.addr, align 4, !tbaa !591
  %conv = trunc i32 %16 to i1
  %17 = inttoptr i1 %conv to i32 addrspace(16)*
  %18 = load i32, i32* %val.addr, align 4, !tbaa !591
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp11, i32 0) #21
  %19 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp11, align 4, !tbaa !789
  store %struct.ipd.custom_type.uint1_t.uint1_t %19, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp10, align 4, !tbaa !789
  %20 = load i32, i32* %tlast.addr, align 4, !tbaa !591
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp13, i32 %20) #21
  %21 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp13, align 4, !tbaa !789
  store %struct.ipd.custom_type.uint1_t.uint1_t %21, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp12, align 4, !tbaa !789
  %22 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp10, align 4, !tbaa !789
  %23 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp12, align 4, !tbaa !789
  call addrspace(1) void @_ZN12me_primitive12stream_writeEPU4AS16U16__protect_accessii7uint1_tS2_(i32 addrspace(16)* %17, i32 %18, %struct.ipd.custom_type.uint1_t.uint1_t %22, %struct.ipd.custom_type.uint1_t.uint1_t %23) #27
  br label %if.end

if.end:                                           ; preds = %if.else9, %if.then4
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.chess_manifest(i1) addrspace(1) #14

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local void @_ZN12me_primitive12stream_writeEPU4AS27U16__protect_accessii7uint1_tS2_(i32 addrspace(27)* %a0, i32 %a1, %struct.ipd.custom_type.uint1_t.uint1_t %a2.coerce, %struct.ipd.custom_type.uint1_t.uint1_t %a3.coerce) addrspace(1) #11 comdat {
entry:
  %a2 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %a3 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %a0.addr = alloca i32 addrspace(27)*, align 4
  %a1.addr = alloca i32, align 4
  store %struct.ipd.custom_type.uint1_t.uint1_t %a2.coerce, %struct.ipd.custom_type.uint1_t.uint1_t* %a2, align 4
  store %struct.ipd.custom_type.uint1_t.uint1_t %a3.coerce, %struct.ipd.custom_type.uint1_t.uint1_t* %a3, align 4
  store i32 addrspace(27)* %a0, i32 addrspace(27)** %a0.addr, align 4, !tbaa !640
  store i32 %a1, i32* %a1.addr, align 4, !tbaa !591
  %0 = load i32 addrspace(27)*, i32 addrspace(27)** %a0.addr, align 4, !tbaa !640
  %1 = load i32, i32* %a1.addr, align 4, !tbaa !591
  %2 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a2, align 4, !tbaa !789
  %3 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a3, align 4, !tbaa !789
  call x86_regcallcc addrspace(1) void @__regcall3__chessintr_void_stream_write___PMS_rsrc1__sint___sint_uint1_t_uint1_t(i32 addrspace(27)* "ipd_store"="0,4" %0, i32 signext %1, %struct.ipd.custom_type.uint1_t.uint1_t %2, %struct.ipd.custom_type.uint1_t.uint1_t %3) #28
  ret void
}

; Function Attrs: alwaysinline nounwind
define linkonce_odr dso_local void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %this, i32 %a) unnamed_addr addrspace(1) #12 comdat align 2 {
entry:
  %this.addr = alloca %struct.ipd.custom_type.uint1_t.uint1_t*, align 4
  %a.addr = alloca i32, align 4
  store %struct.ipd.custom_type.uint1_t.uint1_t* %this, %struct.ipd.custom_type.uint1_t.uint1_t** %this.addr, align 4, !tbaa !640
  store i32 %a, i32* %a.addr, align 4, !tbaa !591
  %this1 = load %struct.ipd.custom_type.uint1_t.uint1_t*, %struct.ipd.custom_type.uint1_t.uint1_t** %this.addr, align 4
  %0 = bitcast %struct.ipd.custom_type.uint1_t.uint1_t* %this1 to i1*
  store i1 false, i1* %0, align 4
  %1 = load i32, i32* %a.addr, align 4, !tbaa !591
  %2 = call addrspace(1) %struct.ipd.custom_type.uint1_t.uint1_t @llvm.chess.init.customint.s_struct.ipd.custom_type.uint1_t.uint1_ts.i32.p1f_s_struct.ipd.custom_type.uint1_t.uint1_tsi32f(%struct.ipd.custom_type.uint1_t.uint1_t undef, i32 %1, i32 1, i32 32, i1 true, i32 0, %struct.ipd.custom_type.uint1_t.uint1_t (i32) addrspace(1)* @__regcall3__chessintr_uint1_t_uint1_t___sint)
  store %struct.ipd.custom_type.uint1_t.uint1_t %2, %struct.ipd.custom_type.uint1_t.uint1_t* %this1, align 4
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
  store i32 addrspace(28)* %a0, i32 addrspace(28)** %a0.addr, align 4, !tbaa !640
  store i32 %a1, i32* %a1.addr, align 4, !tbaa !591
  %0 = load i32 addrspace(28)*, i32 addrspace(28)** %a0.addr, align 4, !tbaa !640
  %1 = load i32, i32* %a1.addr, align 4, !tbaa !591
  %2 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a2, align 4, !tbaa !789
  %3 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a3, align 4, !tbaa !789
  call x86_regcallcc addrspace(1) void @__regcall3__chessintr_void_stream_write___PMS_rsrc2__sint___sint_uint1_t_uint1_t(i32 addrspace(28)* "ipd_store"="0,4" %0, i32 signext %1, %struct.ipd.custom_type.uint1_t.uint1_t %2, %struct.ipd.custom_type.uint1_t.uint1_t %3) #28
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
  store i32 addrspace(16)* %a0, i32 addrspace(16)** %a0.addr, align 4, !tbaa !640
  store i32 %a1, i32* %a1.addr, align 4, !tbaa !591
  %0 = load i32 addrspace(16)*, i32 addrspace(16)** %a0.addr, align 4, !tbaa !640
  %1 = load i32, i32* %a1.addr, align 4, !tbaa !591
  %2 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a2, align 4, !tbaa !789
  %3 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a3, align 4, !tbaa !789
  call x86_regcallcc addrspace(1) void @__regcall3__chessintr_void_stream_write___PMSMEM__sint___sint_uint1_t_uint1_t(i32 addrspace(16)* "ipd_store"="0,4" %0, i32 signext %1, %struct.ipd.custom_type.uint1_t.uint1_t %2, %struct.ipd.custom_type.uint1_t.uint1_t %3) #28
  ret void
}

; Function Attrs: argmemonly nounwind
declare dso_local x86_regcallcc void @__regcall3__chessintr_void_stream_write___PMS_rsrc1__sint___sint_uint1_t_uint1_t(i32 addrspace(27)* "ipd_store"="0,4", i32 signext, %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t) addrspace(1) #19

; Function Attrs: nounwind readnone willreturn
declare dso_local x86_regcallcc %struct.ipd.custom_type.uint1_t.uint1_t @__regcall3__chessintr_uint1_t_uint1_t___sint(i32 signext) addrspace(1) #13

; Function Attrs: nounwind readnone willreturn
declare %struct.ipd.custom_type.uint1_t.uint1_t @llvm.chess.init.customint.s_struct.ipd.custom_type.uint1_t.uint1_ts.i32.p1f_s_struct.ipd.custom_type.uint1_t.uint1_tsi32f(%struct.ipd.custom_type.uint1_t.uint1_t, i32, i32, i32, i1, i32, %struct.ipd.custom_type.uint1_t.uint1_t (i32) addrspace(1)*) addrspace(1) #14

; Function Attrs: argmemonly nounwind
declare dso_local x86_regcallcc void @__regcall3__chessintr_void_stream_write___PMS_rsrc2__sint___sint_uint1_t_uint1_t(i32 addrspace(28)* "ipd_store"="0,4", i32 signext, %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t) addrspace(1) #19

; Function Attrs: argmemonly nounwind
declare dso_local x86_regcallcc void @__regcall3__chessintr_void_stream_write___PMSMEM__sint___sint_uint1_t_uint1_t(i32 addrspace(16)* "ipd_store"="0,4", i32 signext, %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t) addrspace(1) #19

; Function Attrs: inlinehint mustprogress nounwind
define internal i32 @_ZN12stream_utilsL17aie_stream_get_ssIffEEiP12input_streamIT0_E(%struct.input_stream* %ss) addrspace(1) #15 !dbg !791 {
entry:
  %ss.addr = alloca %struct.input_stream*, align 4
  store %struct.input_stream* %ss, %struct.input_stream** %ss.addr, align 4, !tbaa !640
  call addrspace(1) void @llvm.dbg.declare(metadata %struct.input_stream** %ss.addr, metadata !795, metadata !DIExpression()), !dbg !796
  %0 = load %struct.input_stream*, %struct.input_stream** %ss.addr, align 4, !dbg !797, !tbaa !640
  %1 = getelementptr inbounds %struct.input_stream, %struct.input_stream* %0, i32 0, i32 0, !dbg !800
  %channel = bitcast %union.anon* %1 to i32*, !dbg !800
  %2 = load i32, i32* %channel, align 4, !dbg !800, !tbaa !644
  %call = call addrspace(1) i32 @_Z6get_ssi(i32 %2) #26, !dbg !801
  ret i32 %call, !dbg !802
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local float @_Z8as_floati(i32 %a0) addrspace(1) #17 comdat {
entry:
  %a0.addr = alloca i32, align 4
  store i32 %a0, i32* %a0.addr, align 4, !tbaa !591
  %0 = load i32, i32* %a0.addr, align 4, !tbaa !591
  %call = call x86_regcallcc addrspace(1) float @__regcall3__chessintr___ffloat_as_float___sint(i32 signext %0) #25
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
  store i32 %idx_ss, i32* %idx_ss.addr, align 4, !tbaa !591
  %0 = load i32, i32* %idx_ss.addr, align 4, !tbaa !591
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
  %4 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp, align 4, !tbaa !789
  store %struct.ipd.custom_type.uint1_t.uint1_t %4, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp, align 4, !tbaa !789
  %5 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp, align 4, !tbaa !789
  %call = call addrspace(1) i32 @_ZN12me_primitive11stream_readIiEEN13chessEnableIfIXsr17chessIsCompatibleIN15chessRemoveQualIT_E4typeEiEE5valueEiE4typeEPU4AS23U16__protect_accessi7uint1_tRS3_(i32 addrspace(23)* addrspacecast (i32 addrspace(25)* @_ZN12me_primitive3ss0E to i32 addrspace(23)*), %struct.ipd.custom_type.uint1_t.uint1_t %5, i32* nonnull align 4 dereferenceable(4) %tmp1) #27
  store i32 %call, i32* %tmp2, align 4, !tbaa !591
  %6 = load i32, i32* %tmp1, align 4, !tbaa !591
  store volatile i32 %6, i32 addrspace(19)* @_ZN12me_primitive4sst0E, align 1, !tbaa !591, !chess_protect_access !803
  %7 = load i32, i32* %tmp2, align 4, !tbaa !591
  store i32 %7, i32* %retval, align 4
  %8 = bitcast i32* %tmp2 to i8*
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #20
  %9 = bitcast i32* %tmp1 to i8*
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #20
  br label %return

if.else:                                          ; preds = %entry
  %10 = load i32, i32* %idx_ss.addr, align 4, !tbaa !591
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
  %14 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp6, align 4, !tbaa !789
  store %struct.ipd.custom_type.uint1_t.uint1_t %14, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp5, align 4, !tbaa !789
  %15 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp5, align 4, !tbaa !789
  %call7 = call addrspace(1) i32 @_ZN12me_primitive11stream_readIiEEN13chessEnableIfIXsr17chessIsCompatibleIN15chessRemoveQualIT_E4typeEiEE5valueEiE4typeEPU4AS24U16__protect_accessi7uint1_tRS3_(i32 addrspace(24)* addrspacecast (i32 addrspace(26)* @_ZN12me_primitive3ss1E to i32 addrspace(24)*), %struct.ipd.custom_type.uint1_t.uint1_t %15, i32* nonnull align 4 dereferenceable(4) %tmp13) #27
  store i32 %call7, i32* %tmp24, align 4, !tbaa !591
  %16 = load i32, i32* %tmp13, align 4, !tbaa !591
  store volatile i32 %16, i32 addrspace(19)* @_ZN12me_primitive4sst1E, align 1, !tbaa !591, !chess_protect_access !803
  %17 = load i32, i32* %tmp24, align 4, !tbaa !591
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
  %22 = load i32, i32* %idx_ss.addr, align 4, !tbaa !591
  %conv = trunc i32 %22 to i1
  %23 = inttoptr i1 %conv to i32 addrspace(15)*
  call addrspace(1) void @_ZN7uint1_tC2Ei(%struct.ipd.custom_type.uint1_t.uint1_t* nonnull align 4 dereferenceable(1) %custom_type.tmp12, i32 0) #21
  %24 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %custom_type.tmp12, align 4, !tbaa !789
  store %struct.ipd.custom_type.uint1_t.uint1_t %24, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp11, align 4, !tbaa !789
  %25 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %agg.tmp11, align 4, !tbaa !789
  %call13 = call addrspace(1) i32 @_ZN12me_primitive11stream_readIiEEN13chessEnableIfIXsr17chessIsCompatibleIN15chessRemoveQualIT_E4typeEiEE5valueEiE4typeEPU4AS15U16__protect_accessi7uint1_tRS3_(i32 addrspace(15)* %23, %struct.ipd.custom_type.uint1_t.uint1_t %25, i32* nonnull align 4 dereferenceable(4) %tmp19) #27
  store i32 %call13, i32* %tmp210, align 4, !tbaa !591
  %26 = load i32, i32* %tmp19, align 4, !tbaa !591
  %27 = load i32, i32* %idx_ss.addr, align 4, !tbaa !591
  %conv14 = trunc i32 %27 to i1
  %28 = inttoptr i1 %conv14 to i32 addrspace(19)*
  store volatile i32 %26, i32 addrspace(19)* %28, align 1, !tbaa !591, !chess_protect_access !803
  %29 = load i32, i32* %tmp210, align 4, !tbaa !591
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

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local i32 @_ZN12me_primitive11stream_readIiEEN13chessEnableIfIXsr17chessIsCompatibleIN15chessRemoveQualIT_E4typeEiEE5valueEiE4typeEPU4AS23U16__protect_accessi7uint1_tRS3_(i32 addrspace(23)* %a0, %struct.ipd.custom_type.uint1_t.uint1_t %a1.coerce, i32* nonnull align 4 dereferenceable(4) %a2) addrspace(1) #11 comdat {
entry:
  %a1 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %a0.addr = alloca i32 addrspace(23)*, align 4
  %a2.addr = alloca i32*, align 4
  %out = alloca %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint", align 1
  store %struct.ipd.custom_type.uint1_t.uint1_t %a1.coerce, %struct.ipd.custom_type.uint1_t.uint1_t* %a1, align 4
  store i32 addrspace(23)* %a0, i32 addrspace(23)** %a0.addr, align 4, !tbaa !640
  store i32* %a2, i32** %a2.addr, align 4, !tbaa !640
  store %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint" undef, %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint"* %out, align 1
  %0 = bitcast %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint"* %out to i8*
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #20
  %1 = load i32 addrspace(23)*, i32 addrspace(23)** %a0.addr, align 4, !tbaa !640
  %2 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a1, align 4, !tbaa !789
  %call = call x86_regcallcc addrspace(1) %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint" @__regcall3__chessintr___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint(i32 addrspace(23)* "ipd_load"="0,4" %1, %struct.ipd.custom_type.uint1_t.uint1_t %2) #28
  %3 = getelementptr inbounds %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint", %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint"* %out, i32 0, i32 0
  %4 = extractvalue %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint" %call, 0
  store i32 %4, i32* %3, align 1
  %5 = getelementptr inbounds %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint", %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint"* %out, i32 0, i32 1
  %6 = extractvalue %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint" %call, 1
  store i32 %6, i32* %5, align 1
  %o1 = getelementptr inbounds %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint", %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint"* %out, i32 0, i32 1
  %7 = load i32, i32* %o1, align 1, !tbaa !804
  %8 = load i32*, i32** %a2.addr, align 4, !tbaa !640
  store i32 %7, i32* %8, align 4, !tbaa !591
  %o0 = getelementptr inbounds %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint", %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint"* %out, i32 0, i32 0
  %9 = load i32, i32* %o0, align 1, !tbaa !806
  %10 = bitcast %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint"* %out to i8*
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #20
  ret i32 %9
}

; Function Attrs: alwaysinline mustprogress nounwind
define linkonce_odr dso_local i32 @_ZN12me_primitive11stream_readIiEEN13chessEnableIfIXsr17chessIsCompatibleIN15chessRemoveQualIT_E4typeEiEE5valueEiE4typeEPU4AS24U16__protect_accessi7uint1_tRS3_(i32 addrspace(24)* %a0, %struct.ipd.custom_type.uint1_t.uint1_t %a1.coerce, i32* nonnull align 4 dereferenceable(4) %a2) addrspace(1) #11 comdat {
entry:
  %a1 = alloca %struct.ipd.custom_type.uint1_t.uint1_t, align 4
  %a0.addr = alloca i32 addrspace(24)*, align 4
  %a2.addr = alloca i32*, align 4
  %out = alloca %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint", align 1
  store %struct.ipd.custom_type.uint1_t.uint1_t %a1.coerce, %struct.ipd.custom_type.uint1_t.uint1_t* %a1, align 4
  store i32 addrspace(24)* %a0, i32 addrspace(24)** %a0.addr, align 4, !tbaa !640
  store i32* %a2, i32** %a2.addr, align 4, !tbaa !640
  store %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint" undef, %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint"* %out, align 1
  %0 = bitcast %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint"* %out to i8*
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #20
  %1 = load i32 addrspace(24)*, i32 addrspace(24)** %a0.addr, align 4, !tbaa !640
  %2 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a1, align 4, !tbaa !789
  %call = call x86_regcallcc addrspace(1) %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint" @__regcall3__chessintr___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint(i32 addrspace(24)* "ipd_load"="0,4" %1, %struct.ipd.custom_type.uint1_t.uint1_t %2) #28
  %3 = getelementptr inbounds %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint", %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint"* %out, i32 0, i32 0
  %4 = extractvalue %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint" %call, 0
  store i32 %4, i32* %3, align 1
  %5 = getelementptr inbounds %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint", %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint"* %out, i32 0, i32 1
  %6 = extractvalue %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint" %call, 1
  store i32 %6, i32* %5, align 1
  %o1 = getelementptr inbounds %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint", %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint"* %out, i32 0, i32 1
  %7 = load i32, i32* %o1, align 1, !tbaa !807
  %8 = load i32*, i32** %a2.addr, align 4, !tbaa !640
  store i32 %7, i32* %8, align 4, !tbaa !591
  %o0 = getelementptr inbounds %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint", %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint"* %out, i32 0, i32 0
  %9 = load i32, i32* %o0, align 1, !tbaa !809
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
  store i32 addrspace(15)* %a0, i32 addrspace(15)** %a0.addr, align 4, !tbaa !640
  store i32* %a2, i32** %a2.addr, align 4, !tbaa !640
  store %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint" undef, %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint"* %out, align 1
  %0 = bitcast %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint"* %out to i8*
  call addrspace(1) void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #20
  %1 = load i32 addrspace(15)*, i32 addrspace(15)** %a0.addr, align 4, !tbaa !640
  %2 = load %struct.ipd.custom_type.uint1_t.uint1_t, %struct.ipd.custom_type.uint1_t.uint1_t* %a1, align 4, !tbaa !789
  %call = call x86_regcallcc addrspace(1) %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint" @__regcall3__chessintr___sint_stream_read___PSSMEM__sint_uint1_t___sint(i32 addrspace(15)* "ipd_load"="0,4" %1, %struct.ipd.custom_type.uint1_t.uint1_t %2) #28
  %3 = getelementptr inbounds %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint", %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint"* %out, i32 0, i32 0
  %4 = extractvalue %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint" %call, 0
  store i32 %4, i32* %3, align 1
  %5 = getelementptr inbounds %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint", %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint"* %out, i32 0, i32 1
  %6 = extractvalue %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint" %call, 1
  store i32 %6, i32* %5, align 1
  %o1 = getelementptr inbounds %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint", %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint"* %out, i32 0, i32 1
  %7 = load i32, i32* %o1, align 1, !tbaa !810
  %8 = load i32*, i32** %a2.addr, align 4, !tbaa !640
  store i32 %7, i32* %8, align 4, !tbaa !591
  %o0 = getelementptr inbounds %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint", %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint"* %out, i32 0, i32 0
  %9 = load i32, i32* %o0, align 1, !tbaa !812
  %10 = bitcast %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint"* %out to i8*
  call addrspace(1) void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #20
  ret i32 %9
}

; Function Attrs: argmemonly nounwind
declare dso_local x86_regcallcc %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint" @__regcall3__chessintr___sint_stream_read___PSS_rsrc1__sint_uint1_t___sint(i32 addrspace(23)* "ipd_load"="0,4", %struct.ipd.custom_type.uint1_t.uint1_t) addrspace(1) #19

; Function Attrs: argmemonly nounwind
declare dso_local x86_regcallcc %"struct.me_primitive::chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint" @__regcall3__chessintr___sint_stream_read___PSS_rsrc2__sint_uint1_t___sint(i32 addrspace(24)* "ipd_load"="0,4", %struct.ipd.custom_type.uint1_t.uint1_t) addrspace(1) #19

; Function Attrs: argmemonly nounwind
declare dso_local x86_regcallcc %"struct.me_primitive::chessout___sint_stream_read___PSSMEM__sint_uint1_t___sint" @__regcall3__chessintr___sint_stream_read___PSSMEM__sint_uint1_t___sint(i32 addrspace(15)* "ipd_load"="0,4", %struct.ipd.custom_type.uint1_t.uint1_t) addrspace(1) #19

; Function Attrs: nounwind readnone willreturn
declare dso_local x86_regcallcc float @__regcall3__chessintr___ffloat_as_float___sint(i32 signext) addrspace(1) #13

attributes #0 = { "chess_storage:addr"="0" }
attributes #1 = { "chess_storage:addr"="1" }
attributes #2 = { mustprogress norecurse nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-memcpy" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inaccessiblememonly nounwind willreturn }
attributes #6 = { nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-memcpy" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #7 = { mustprogress nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-memcpy" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
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
attributes #25 = { nounwind readnone willreturn "no-builtin-memcpy" }
attributes #26 = { "chessFP:property"="do_generate_llvm" "no-builtin-memcpy" }
attributes #27 = { memop_protect_access "chessFP:llvm_local_block_replace_operand_with_variable" "no-builtin-memcpy" }
attributes #28 = { argmemonly nounwind "no-builtin-memcpy" }

!llvm.dbg.cu = !{!2}
!llvm.linker.options = !{}
!llvm.module.flags = !{!572, !573, !574, !575}
!llvm.ident = !{!576}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "sync_buffer", linkageName: "_ZL11sync_buffer", scope: !2, file: !459, line: 8, type: !568, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "clang version 15.0.5 (/u/sgasip/ipd/repositories/llvm_ipd 3a25925e0239306412dac02da5e4c8c51ae722e8)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !38, globals: !136, imports: !137, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/lxy/Projects/SVD/Jacobi_AIE_Scalar/Work/aie/24_0/src/24_0.cc", directory: "/home/lxy/Projects/SVD/Jacobi_AIE_Scalar/Work/aie")
!4 = !{!5, !13, !21, !31, !37}
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
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "aie_stream_resource_out", file: !32, line: 402, baseType: !9, size: 32, flags: DIFlagEnumClass, elements: !33, identifier: "_ZTS23aie_stream_resource_out")
!32 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/me_defines.h", directory: "/home/lxy")
!33 = !{!34, !35, !36}
!34 = !DIEnumerator(name: "none", value: 0)
!35 = !DIEnumerator(name: "a", value: 1)
!36 = !DIEnumerator(name: "b", value: 2)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "aie_stream_resource_in", file: !32, line: 396, baseType: !9, size: 32, flags: DIFlagEnumClass, elements: !33, identifier: "_ZTS22aie_stream_resource_in")
!38 = !{!39, !101, !114, !118, !110, !56, !60, !50, !64, !41, !102}
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "input_stream_float", file: !40, line: 18, baseType: !41)
!40 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/adf/stream/types.h", directory: "/home/lxy")
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_stream<float>", file: !42, line: 50, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !43, templateParams: !98, identifier: "_ZTS12input_streamIfE")
!42 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/adf/stream/me/structs.h", directory: "/home/lxy")
!43 = !{!44, !94}
!44 = !DIDerivedType(tag: DW_TAG_member, scope: !41, file: !42, line: 50, baseType: !45, size: 32)
!45 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !41, file: !42, line: 50, size: 32, flags: DIFlagExportSymbols | DIFlagTypePassByValue, elements: !46, identifier: "_ZTSN12input_streamIfEUt_E")
!46 = !{!47, !48, !54, !58, !62, !66, !69, !72, !76, !80, !84, !88, !91}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !45, file: !42, line: 50, baseType: !15, size: 32)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "channel_ss", scope: !45, file: !42, line: 50, baseType: !49, size: 32)
!49 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "ss_idx_t", scope: !52, file: !51, line: 655, baseType: !53)
!51 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/isg/me_chess_llvm.h", directory: "/home/lxy")
!52 = !DINamespace(name: "me_primitive", scope: null)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32, dwarfAddressSpace: 67)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "channel_ss0", scope: !45, file: !42, line: 50, baseType: !55, size: 32)
!55 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "ss0_idx_t", scope: !52, file: !51, line: 559, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32, dwarfAddressSpace: 70)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "channel_ss1", scope: !45, file: !42, line: 50, baseType: !59, size: 32)
!59 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "ss1_idx_t", scope: !52, file: !51, line: 607, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32, dwarfAddressSpace: 71)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "channel_sst", scope: !45, file: !42, line: 50, baseType: !63, size: 32)
!63 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "ss_tlast_idx_t", scope: !52, file: !51, line: 679, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32, dwarfAddressSpace: 69)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "channel_sst0", scope: !45, file: !42, line: 50, baseType: !67, size: 32)
!67 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "ss0_tlast_idx_t", scope: !52, file: !51, line: 583, baseType: !65)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "channel_sst1", scope: !45, file: !42, line: 50, baseType: !70, size: 32)
!70 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "ss1_tlast_idx_t", scope: !52, file: !51, line: 631, baseType: !65)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "channel_wss", scope: !45, file: !42, line: 50, baseType: !73, size: 32)
!73 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "wss_idx_t", scope: !52, file: !51, line: 661, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32, dwarfAddressSpace: 75)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "channel_wss0", scope: !45, file: !42, line: 50, baseType: !77, size: 32)
!77 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "wss0_idx_t", scope: !52, file: !51, line: 565, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32, dwarfAddressSpace: 77)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "channel_wss1", scope: !45, file: !42, line: 50, baseType: !81, size: 32)
!81 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "wss1_idx_t", scope: !52, file: !51, line: 613, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32, dwarfAddressSpace: 78)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "channel_wsst", scope: !45, file: !42, line: 50, baseType: !85, size: 32)
!85 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "wss_tlast_idx_t", scope: !52, file: !51, line: 691, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32, dwarfAddressSpace: 76)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "channel_wsst0", scope: !45, file: !42, line: 50, baseType: !89, size: 32)
!89 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "wss0_tlast_idx_t", scope: !52, file: !51, line: 595, baseType: !87)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "channel_wsst1", scope: !45, file: !42, line: 50, baseType: !92, size: 32)
!92 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "wss1_tlast_idx_t", scope: !52, file: !51, line: 643, baseType: !87)
!94 = !DISubprogram(name: "input_stream", scope: !41, file: !42, line: 50, type: !95, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!95 = !DISubroutineType(types: !96)
!96 = !{null, !97, !15}
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!98 = !{!99}
!99 = !DITemplateTypeParameter(name: "T", type: !100)
!100 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "output_stream_float", file: !40, line: 30, baseType: !102)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "output_stream<float>", file: !42, line: 60, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !103, templateParams: !98, identifier: "_ZTS13output_streamIfE")
!103 = !{!104, !132}
!104 = !DIDerivedType(tag: DW_TAG_member, scope: !102, file: !42, line: 60, baseType: !105, size: 32)
!105 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !102, file: !42, line: 60, size: 32, flags: DIFlagExportSymbols | DIFlagTypePassByValue, elements: !106, identifier: "_ZTSN13output_streamIfEUt_E")
!106 = !{!107, !108, !112, !116, !120, !124, !128}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !105, file: !42, line: 60, baseType: !15, size: 32)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "channel_ms", scope: !105, file: !42, line: 60, baseType: !109, size: 32)
!109 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "ms_idx_t", scope: !52, file: !51, line: 667, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32, dwarfAddressSpace: 61)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "channel_ms0", scope: !105, file: !42, line: 60, baseType: !113, size: 32)
!113 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "ms0_idx_t", scope: !52, file: !51, line: 571, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32, dwarfAddressSpace: 63)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "channel_ms1", scope: !105, file: !42, line: 60, baseType: !117, size: 32)
!117 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "ms1_idx_t", scope: !52, file: !51, line: 619, baseType: !119)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32, dwarfAddressSpace: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "channel_wms", scope: !105, file: !42, line: 60, baseType: !121, size: 32)
!121 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "wms_idx_t", scope: !52, file: !51, line: 673, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32, dwarfAddressSpace: 72)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "channel_wms0", scope: !105, file: !42, line: 60, baseType: !125, size: 32)
!125 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !126)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "wms0_idx_t", scope: !52, file: !51, line: 577, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32, dwarfAddressSpace: 73)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "channel_wms1", scope: !105, file: !42, line: 60, baseType: !129, size: 32)
!129 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "wms1_idx_t", scope: !52, file: !51, line: 625, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32, dwarfAddressSpace: 74)
!132 = !DISubprogram(name: "output_stream", scope: !102, file: !42, line: 60, type: !133, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!133 = !DISubroutineType(types: !134)
!134 = !{null, !135, !15}
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 32, flags: DIFlagArtificial | DIFlagObjectPointer)
!136 = !{!0}
!137 = !{!138, !144, !146, !150, !155, !158, !160, !163, !166, !169, !171, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !226, !230, !240, !244, !246, !248, !252, !256, !260, !262, !266, !271, !275, !279, !283, !285, !287, !289, !291, !293, !297, !303, !305, !307, !311, !313, !315, !317, !319, !321, !326, !331, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !358, !363, !369, !374, !378, !382, !387, !391, !395, !399, !403, !408, !412, !414, !421, !426, !427, !432, !434, !438, !440, !444, !448, !452, !460, !462, !466, !470, !474, !476, !480, !484, !488, !490, !492, !494, !499, !504, !508, !512, !516, !518, !520, !522, !526, !530, !534, !536, !538, !542, !544, !548, !552, !554, !558, !560, !562, !565, !566, !567}
!138 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !141, file: !143, line: 57)
!139 = !DINamespace(name: "__2", scope: !140, exportSymbols: true)
!140 = !DINamespace(name: "std", scope: null)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !142, line: 35, baseType: !9)
!142 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/tps/lnx64/target/bin/LNa64bin/../../chessdir/clangdir/15.0.5/include/stddef.h", directory: "/home/lxy")
!143 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime_cxx/libs/libcxx-9.0.0/include-lite/../include/cstddef", directory: "/home/lxy")
!144 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !145, file: !143, line: 58)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !142, line: 46, baseType: !15)
!146 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !147, file: !143, line: 63)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "max_align_t", file: !148, line: 24, baseType: !149)
!148 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/tps/lnx64/target/bin/LNa64bin/../../chessdir/clangdir/15.0.5/include/__stddef_max_align_t.h", directory: "/home/lxy")
!149 = !DICompositeType(tag: DW_TAG_structure_type, file: !148, line: 19, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS11max_align_t")
!150 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !151, file: !154, line: 161)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !152, line: 23, baseType: !153)
!152 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime/include/stdint.h", directory: "/home/lxy")
!153 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!154 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime_cxx/libs/libcxx-9.0.0/include-lite/../include/cstdint", directory: "/home/lxy")
!155 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !156, file: !154, line: 163)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !152, line: 24, baseType: !157)
!157 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!158 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !159, file: !154, line: 164)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !152, line: 25, baseType: !9)
!160 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !161, file: !154, line: 166)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !152, line: 26, baseType: !162)
!162 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!163 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !164, file: !154, line: 170)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !152, line: 28, baseType: !165)
!165 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!166 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !167, file: !154, line: 172)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !152, line: 29, baseType: !168)
!168 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !170, file: !154, line: 173)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !152, line: 30, baseType: !15)
!171 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !172, file: !154, line: 175)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !152, line: 31, baseType: !173)
!173 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!174 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !175, file: !154, line: 178)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !152, line: 34, baseType: !153)
!176 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !177, file: !154, line: 179)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !152, line: 35, baseType: !157)
!178 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !179, file: !154, line: 180)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !152, line: 36, baseType: !9)
!180 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !181, file: !154, line: 182)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !152, line: 37, baseType: !162)
!182 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !183, file: !154, line: 185)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !152, line: 39, baseType: !165)
!184 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !185, file: !154, line: 186)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !152, line: 40, baseType: !168)
!186 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !187, file: !154, line: 187)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !152, line: 41, baseType: !15)
!188 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !189, file: !154, line: 189)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !152, line: 42, baseType: !173)
!190 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !191, file: !154, line: 192)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !152, line: 45, baseType: !9)
!192 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !193, file: !154, line: 193)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !152, line: 46, baseType: !9)
!194 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !195, file: !154, line: 194)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !152, line: 47, baseType: !9)
!196 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !197, file: !154, line: 196)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !152, line: 48, baseType: !162)
!198 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !199, file: !154, line: 199)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !152, line: 50, baseType: !15)
!200 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !201, file: !154, line: 200)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !152, line: 51, baseType: !15)
!202 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !203, file: !154, line: 201)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !152, line: 52, baseType: !15)
!204 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !205, file: !154, line: 203)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !152, line: 53, baseType: !173)
!206 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !207, file: !154, line: 206)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !152, line: 56, baseType: !9)
!208 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !209, file: !154, line: 207)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !152, line: 57, baseType: !15)
!210 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !211, file: !154, line: 209)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !152, line: 60, baseType: !9)
!212 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !213, file: !154, line: 210)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !152, line: 61, baseType: !15)
!214 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !145, file: !215, line: 76)
!215 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime_cxx/libs/libcxx-9.0.0/include-lite/../include/cstring", directory: "/home/lxy")
!216 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !217, file: !215, line: 77)
!217 = !DISubprogram(name: "memcpy", scope: !218, file: !218, line: 27, type: !219, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!218 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime/include/string.h", directory: "/home/lxy")
!219 = !DISubroutineType(types: !220)
!220 = !{!221, !222, !223, !145}
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!222 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !221)
!223 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 32)
!225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!226 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !227, file: !215, line: 78)
!227 = !DISubprogram(name: "memmove", scope: !218, file: !218, line: 28, type: !228, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!228 = !DISubroutineType(types: !229)
!229 = !{!221, !221, !224, !145}
!230 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !231, file: !215, line: 79)
!231 = !DISubprogram(name: "strcpy", scope: !218, file: !218, line: 29, type: !232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!232 = !DISubroutineType(types: !233)
!233 = !{!234, !236, !237}
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 32)
!235 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!236 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !234)
!237 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 32)
!239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !235)
!240 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !241, file: !215, line: 80)
!241 = !DISubprogram(name: "strncpy", scope: !218, file: !218, line: 30, type: !242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!242 = !DISubroutineType(types: !243)
!243 = !{!234, !236, !237, !145}
!244 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !245, file: !215, line: 81)
!245 = !DISubprogram(name: "strcat", scope: !218, file: !218, line: 33, type: !232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!246 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !247, file: !215, line: 82)
!247 = !DISubprogram(name: "strncat", scope: !218, file: !218, line: 34, type: !242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!248 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !249, file: !215, line: 83)
!249 = !DISubprogram(name: "memcmp", scope: !218, file: !218, line: 37, type: !250, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!250 = !DISubroutineType(types: !251)
!251 = !{!9, !224, !224, !145}
!252 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !253, file: !215, line: 84)
!253 = !DISubprogram(name: "strcmp", scope: !218, file: !218, line: 38, type: !254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!254 = !DISubroutineType(types: !255)
!255 = !{!9, !238, !238}
!256 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !257, file: !215, line: 85)
!257 = !DISubprogram(name: "strncmp", scope: !218, file: !218, line: 40, type: !258, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!258 = !DISubroutineType(types: !259)
!259 = !{!9, !238, !238, !145}
!260 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !261, file: !215, line: 86)
!261 = !DISubprogram(name: "strcoll", scope: !218, file: !218, line: 39, type: !254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!262 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !263, file: !215, line: 87)
!263 = !DISubprogram(name: "strxfrm", scope: !218, file: !218, line: 41, type: !264, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!264 = !DISubroutineType(types: !265)
!265 = !{!145, !236, !237, !145}
!266 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !267, file: !215, line: 88)
!267 = !DISubprogram(name: "memchr", linkageName: "_Z6memchrUa9enable_ifILb1EEPvij", scope: !268, file: !268, line: 106, type: !269, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!268 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime_cxx/libs/libcxx-9.0.0/include-lite/../include/string.h", directory: "/home/lxy")
!269 = !DISubroutineType(types: !270)
!270 = !{!221, !221, !9, !145}
!271 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !272, file: !215, line: 89)
!272 = !DISubprogram(name: "strchr", linkageName: "_Z6strchrUa9enable_ifILb1EEPci", scope: !268, file: !268, line: 85, type: !273, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!273 = !DISubroutineType(types: !274)
!274 = !{!234, !234, !9}
!275 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !276, file: !215, line: 90)
!276 = !DISubprogram(name: "strcspn", scope: !218, file: !218, line: 46, type: !277, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!277 = !DISubroutineType(types: !278)
!278 = !{!145, !238, !238}
!279 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !280, file: !215, line: 91)
!280 = !DISubprogram(name: "strpbrk", linkageName: "_Z7strpbrkUa9enable_ifILb1EEPcPKc", scope: !268, file: !268, line: 92, type: !281, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!281 = !DISubroutineType(types: !282)
!282 = !{!234, !234, !238}
!283 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !284, file: !215, line: 92)
!284 = !DISubprogram(name: "strrchr", linkageName: "_Z7strrchrUa9enable_ifILb1EEPci", scope: !268, file: !268, line: 99, type: !273, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!285 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !286, file: !215, line: 93)
!286 = !DISubprogram(name: "strspn", scope: !218, file: !218, line: 49, type: !277, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!287 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !288, file: !215, line: 94)
!288 = !DISubprogram(name: "strstr", linkageName: "_Z6strstrUa9enable_ifILb1EEPcPKc", scope: !268, file: !268, line: 113, type: !281, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!289 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !290, file: !215, line: 96)
!290 = !DISubprogram(name: "strtok", scope: !218, file: !218, line: 51, type: !232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!291 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !292, file: !215, line: 98)
!292 = !DISubprogram(name: "memset", scope: !218, file: !218, line: 54, type: !269, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!293 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !294, file: !215, line: 102)
!294 = !DISubprogram(name: "strlen", scope: !218, file: !218, line: 56, type: !295, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!295 = !DISubroutineType(types: !296)
!296 = !{!145, !238}
!297 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !298, file: !302, line: 351)
!298 = !DISubprogram(name: "acosf", scope: !299, file: !299, line: 91, type: !300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!299 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime/include/math.h", directory: "/home/lxy")
!300 = !DISubroutineType(types: !301)
!301 = !{!100, !100}
!302 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime_cxx/libs/libcxx-9.0.0/include-lite/../include/cmath", directory: "/home/lxy")
!303 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !304, file: !302, line: 353)
!304 = !DISubprogram(name: "asinf", scope: !299, file: !299, line: 93, type: !300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!305 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !306, file: !302, line: 355)
!306 = !DISubprogram(name: "atanf", scope: !299, file: !299, line: 99, type: !300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!307 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !308, file: !302, line: 357)
!308 = !DISubprogram(name: "atan2f", scope: !299, file: !299, line: 96, type: !309, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!309 = !DISubroutineType(types: !310)
!310 = !{!100, !100, !100}
!311 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !312, file: !302, line: 359)
!312 = !DISubprogram(name: "ceilf", scope: !299, file: !299, line: 67, type: !300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!313 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !314, file: !302, line: 361)
!314 = !DISubprogram(name: "cosf", scope: !299, file: !299, line: 75, type: !300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!315 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !316, file: !302, line: 368)
!316 = !DISubprogram(name: "expf", scope: !299, file: !299, line: 79, type: !300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!317 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !318, file: !302, line: 371)
!318 = !DISubprogram(name: "fabsf", scope: !299, file: !299, line: 30, type: !300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!319 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !320, file: !302, line: 373)
!320 = !DISubprogram(name: "floorf", scope: !299, file: !299, line: 69, type: !300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!321 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !322, file: !302, line: 375)
!322 = !DISubprogram(name: "fmod", scope: !299, file: !299, line: 90, type: !323, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!323 = !DISubroutineType(types: !324)
!324 = !{!325, !325, !325}
!325 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!326 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !327, file: !302, line: 381)
!327 = !DISubprogram(name: "frexpf", scope: !299, file: !299, line: 106, type: !328, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!328 = !DISubroutineType(types: !329)
!329 = !{!100, !100, !330}
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32)
!331 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !332, file: !302, line: 383)
!332 = !DISubprogram(name: "ldexpf", scope: !299, file: !299, line: 65, type: !333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!333 = !DISubroutineType(types: !334)
!334 = !{!100, !100, !9}
!335 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !336, file: !302, line: 386)
!336 = !DISubprogram(name: "logf", scope: !299, file: !299, line: 81, type: !300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!337 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !338, file: !302, line: 389)
!338 = !DISubprogram(name: "log10f", scope: !299, file: !299, line: 83, type: !300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!339 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !340, file: !302, line: 396)
!340 = !DISubprogram(name: "powf", scope: !299, file: !299, line: 88, type: !309, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!341 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !342, file: !302, line: 399)
!342 = !DISubprogram(name: "sinf", scope: !299, file: !299, line: 76, type: !300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!343 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !344, file: !302, line: 406)
!344 = !DISubprogram(name: "sqrtf", scope: !299, file: !299, line: 86, type: !300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!345 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !346, file: !302, line: 427)
!346 = !DISubprogram(name: "copysignf", scope: !299, file: !299, line: 35, type: !309, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!347 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !348, file: !302, line: 484)
!348 = !DISubprogram(name: "roundf", scope: !299, file: !299, line: 71, type: !300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!349 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !350, file: !302, line: 494)
!350 = !DISubprogram(name: "truncf", scope: !299, file: !299, line: 102, type: !300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!351 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !145, file: !352, line: 107)
!352 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime_cxx/libs/libcxx-9.0.0/include-lite/../include/cstdlib", directory: "/home/lxy")
!353 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !354, file: !352, line: 118)
!354 = !DISubprogram(name: "atoi", scope: !355, file: !355, line: 37, type: !356, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!355 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime/include/stdlib.h", directory: "/home/lxy")
!356 = !DISubroutineType(types: !357)
!357 = !{!9, !238}
!358 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !359, file: !352, line: 119)
!359 = !DISubprogram(name: "atol", scope: !355, file: !355, line: 42, type: !360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!360 = !DISubroutineType(types: !361)
!361 = !{!362, !238}
!362 = !DIBasicType(name: "long", size: 32, encoding: DW_ATE_signed)
!363 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !364, file: !352, line: 128)
!364 = !DISubprogram(name: "strtol", scope: !355, file: !355, line: 29, type: !365, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!365 = !DISubroutineType(types: !366)
!366 = !{!362, !237, !367, !9}
!367 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !368)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 32)
!369 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !370, file: !352, line: 134)
!370 = !DISubprogram(name: "strtoul", scope: !355, file: !355, line: 33, type: !371, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!371 = !DISubroutineType(types: !372)
!372 = !{!373, !237, !367, !9}
!373 = !DIBasicType(name: "unsigned long", size: 32, encoding: DW_ATE_unsigned)
!374 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !375, file: !352, line: 140)
!375 = !DISubprogram(name: "rand", scope: !355, file: !355, line: 51, type: !376, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!376 = !DISubroutineType(types: !377)
!377 = !{!9}
!378 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !379, file: !352, line: 141)
!379 = !DISubprogram(name: "srand", scope: !355, file: !355, line: 52, type: !380, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!380 = !DISubroutineType(types: !381)
!381 = !{null, !15}
!382 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !383, file: !352, line: 142)
!383 = !DISubprogram(name: "calloc", scope: !384, file: !384, line: 32, type: !385, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!384 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime/include/malloc.h", directory: "/home/lxy")
!385 = !DISubroutineType(types: !386)
!386 = !{!221, !145, !145}
!387 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !388, file: !352, line: 143)
!388 = !DISubprogram(name: "free", scope: !384, file: !384, line: 30, type: !389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!389 = !DISubroutineType(types: !390)
!390 = !{null, !221}
!391 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !392, file: !352, line: 144)
!392 = !DISubprogram(name: "malloc", scope: !384, file: !384, line: 28, type: !393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!393 = !DISubroutineType(types: !394)
!394 = !{!221, !145}
!395 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !396, file: !352, line: 145)
!396 = !DISubprogram(name: "realloc", scope: !384, file: !384, line: 34, type: !397, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!397 = !DISubroutineType(types: !398)
!398 = !{!221, !221, !145}
!399 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !400, file: !352, line: 146)
!400 = !DISubprogram(name: "abort", scope: !355, file: !355, line: 83, type: !401, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!401 = !DISubroutineType(types: !402)
!402 = !{null}
!403 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !404, file: !352, line: 147)
!404 = !DISubprogram(name: "atexit", scope: !355, file: !355, line: 90, type: !405, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!405 = !DISubroutineType(types: !406)
!406 = !{!9, !407}
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 32, dwarfAddressSpace: 65)
!408 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !409, file: !352, line: 148)
!409 = !DISubprogram(name: "exit", scope: !355, file: !355, line: 75, type: !410, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!410 = !DISubroutineType(types: !411)
!411 = !{null, !9}
!412 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !413, file: !352, line: 149)
!413 = !DISubprogram(name: "_Exit", scope: !355, file: !355, line: 88, type: !410, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!414 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !415, file: !352, line: 157)
!415 = !DISubprogram(name: "qsort", scope: !355, file: !355, line: 96, type: !416, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!416 = !DISubroutineType(types: !417)
!417 = !{null, !221, !145, !145, !418}
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 32, dwarfAddressSpace: 65)
!419 = !DISubroutineType(types: !420)
!420 = !{!9, !224, !224}
!421 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !422, file: !425, line: 115)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !423, line: 30, baseType: !424)
!423 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime/include/stdio.h", directory: "/home/lxy")
!424 = !DICompositeType(tag: DW_TAG_structure_type, name: "FILE", file: !423, line: 29, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS4FILE")
!425 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime_cxx/libs/libcxx-9.0.0/include-lite/../include/cstdio", directory: "/home/lxy")
!426 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !145, file: !425, line: 119)
!427 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !428, file: !425, line: 121)
!428 = !DISubprogram(name: "fclose", scope: !423, file: !423, line: 77, type: !429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!429 = !DISubroutineType(types: !430)
!430 = !{!9, !431}
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 32)
!432 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !433, file: !425, line: 122)
!433 = !DISubprogram(name: "fflush", scope: !423, file: !423, line: 78, type: !429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!434 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !435, file: !425, line: 127)
!435 = !DISubprogram(name: "fprintf", scope: !423, file: !423, line: 87, type: !436, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!436 = !DISubroutineType(types: !437)
!437 = !{!9, !431, !238, null}
!438 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !439, file: !425, line: 128)
!439 = !DISubprogram(name: "fscanf", scope: !423, file: !423, line: 92, type: !436, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!440 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !441, file: !425, line: 129)
!441 = !DISubprogram(name: "snprintf", scope: !423, file: !423, line: 96, type: !442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!442 = !DISubroutineType(types: !443)
!443 = !{!9, !234, !145, !238, null}
!444 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !445, file: !425, line: 130)
!445 = !DISubprogram(name: "sprintf", scope: !423, file: !423, line: 95, type: !446, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!446 = !DISubroutineType(types: !447)
!447 = !{!9, !234, !238, null}
!448 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !449, file: !425, line: 131)
!449 = !DISubprogram(name: "sscanf", scope: !423, file: !423, line: 100, type: !450, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!450 = !DISubroutineType(types: !451)
!451 = !{!9, !238, !238, null}
!452 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !453, file: !425, line: 132)
!453 = !DISubprogram(name: "vfprintf", scope: !423, file: !423, line: 85, type: !454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!454 = !DISubroutineType(types: !455)
!455 = !{!9, !431, !238, !456}
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !457, line: 14, baseType: !458)
!457 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/tps/lnx64/target/bin/LNa64bin/../../chessdir/clangdir/15.0.5/include/stdarg.h", directory: "/home/lxy")
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !459, baseType: !234)
!459 = !DIFile(filename: "24_0/src/24_0.cc", directory: "/home/lxy/Projects/SVD/Jacobi_AIE_Scalar/Work/aie")
!460 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !461, file: !425, line: 133)
!461 = !DISubprogram(name: "vfscanf", scope: !423, file: !423, line: 90, type: !454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!462 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !463, file: !425, line: 134)
!463 = !DISubprogram(name: "vsscanf", scope: !423, file: !423, line: 101, type: !464, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!464 = !DISubroutineType(types: !465)
!465 = !{!9, !238, !238, !456}
!466 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !467, file: !425, line: 135)
!467 = !DISubprogram(name: "vsnprintf", scope: !423, file: !423, line: 98, type: !468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!468 = !DISubroutineType(types: !469)
!469 = !{!9, !234, !145, !238, !456}
!470 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !471, file: !425, line: 136)
!471 = !DISubprogram(name: "vsprintf", scope: !423, file: !423, line: 97, type: !472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!472 = !DISubroutineType(types: !473)
!473 = !{!9, !234, !238, !456}
!474 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !475, file: !425, line: 137)
!475 = !DISubprogram(name: "fgetc", scope: !423, file: !423, line: 112, type: !429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!476 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !477, file: !425, line: 138)
!477 = !DISubprogram(name: "fgets", scope: !423, file: !423, line: 115, type: !478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!478 = !DISubroutineType(types: !479)
!479 = !{!234, !234, !9, !431}
!480 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !481, file: !425, line: 139)
!481 = !DISubprogram(name: "fputc", scope: !423, file: !423, line: 106, type: !482, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!482 = !DISubroutineType(types: !483)
!483 = !{!9, !9, !431}
!484 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !485, file: !425, line: 140)
!485 = !DISubprogram(name: "fputs", scope: !423, file: !423, line: 109, type: !486, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!486 = !DISubroutineType(types: !487)
!487 = !{!9, !238, !431}
!488 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !489, file: !425, line: 141)
!489 = !DISubprogram(name: "getc", scope: !423, file: !423, line: 186, type: !429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!490 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !491, file: !425, line: 142)
!491 = !DISubprogram(name: "putc", scope: !423, file: !423, line: 168, type: !482, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!492 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !493, file: !425, line: 143)
!493 = !DISubprogram(name: "ungetc", scope: !423, file: !423, line: 118, type: !482, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!494 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !495, file: !425, line: 144)
!495 = !DISubprogram(name: "fread", scope: !423, file: !423, line: 125, type: !496, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!496 = !DISubroutineType(types: !497)
!497 = !{!145, !498, !145, !145, !431}
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32, dwarfAddressSpace: 12)
!499 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !500, file: !425, line: 145)
!500 = !DISubprogram(name: "fwrite", scope: !423, file: !423, line: 123, type: !501, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!501 = !DISubroutineType(types: !502)
!502 = !{!145, !503, !145, !145, !431}
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 32, dwarfAddressSpace: 12)
!504 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !505, file: !425, line: 149)
!505 = !DISubprogram(name: "fseek", scope: !423, file: !423, line: 138, type: !506, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!506 = !DISubroutineType(types: !507)
!507 = !{!9, !431, !362, !9}
!508 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !509, file: !425, line: 153)
!509 = !DISubprogram(name: "ftell", scope: !423, file: !423, line: 140, type: !510, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!510 = !DISubroutineType(types: !511)
!511 = !{!362, !431}
!512 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !513, file: !425, line: 154)
!513 = !DISubprogram(name: "rewind", scope: !423, file: !423, line: 163, type: !514, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!514 = !DISubroutineType(types: !515)
!515 = !{null, !431}
!516 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !517, file: !425, line: 155)
!517 = !DISubprogram(name: "clearerr", scope: !423, file: !423, line: 147, type: !514, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!518 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !519, file: !425, line: 156)
!519 = !DISubprogram(name: "feof", scope: !423, file: !423, line: 145, type: !429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!520 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !521, file: !425, line: 157)
!521 = !DISubprogram(name: "ferror", scope: !423, file: !423, line: 146, type: !429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!522 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !523, file: !425, line: 158)
!523 = !DISubprogram(name: "perror", scope: !423, file: !423, line: 148, type: !524, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!524 = !DISubroutineType(types: !525)
!525 = !{null, !238}
!526 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !527, file: !425, line: 161)
!527 = !DISubprogram(name: "fopen", scope: !423, file: !423, line: 76, type: !528, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!528 = !DISubroutineType(types: !529)
!529 = !{!431, !238, !238}
!530 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !531, file: !425, line: 162)
!531 = !DISubprogram(name: "freopen", scope: !423, file: !423, line: 80, type: !532, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!532 = !DISubroutineType(types: !533)
!533 = !{!431, !238, !238, !431}
!534 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !535, file: !425, line: 163)
!535 = !DISubprogram(name: "remove", scope: !423, file: !423, line: 66, type: !356, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!536 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !537, file: !425, line: 164)
!537 = !DISubprogram(name: "rename", scope: !423, file: !423, line: 67, type: !254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!538 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !539, file: !425, line: 165)
!539 = !DISubprogram(name: "tmpfile", scope: !423, file: !423, line: 68, type: !540, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!540 = !DISubroutineType(types: !541)
!541 = !{!431}
!542 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !543, file: !425, line: 172)
!543 = !DISubprogram(name: "getchar", scope: !423, file: !423, line: 191, type: !376, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!544 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !545, file: !425, line: 176)
!545 = !DISubprogram(name: "scanf", scope: !423, file: !423, line: 93, type: !546, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!546 = !DISubroutineType(types: !547)
!547 = !{!9, !238, null}
!548 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !549, file: !425, line: 177)
!549 = !DISubprogram(name: "vscanf", scope: !423, file: !423, line: 158, type: !550, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!550 = !DISubroutineType(types: !551)
!551 = !{!9, !238, !456}
!552 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !553, file: !425, line: 181)
!553 = !DISubprogram(name: "printf", scope: !423, file: !423, line: 88, type: !546, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!554 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !555, file: !425, line: 182)
!555 = !DISubprogram(name: "putchar", scope: !423, file: !423, line: 173, type: !556, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!556 = !DISubroutineType(types: !557)
!557 = !{!9, !9}
!558 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !559, file: !425, line: 183)
!559 = !DISubprogram(name: "puts", scope: !423, file: !423, line: 178, type: !356, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!560 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !139, entity: !561, file: !425, line: 184)
!561 = !DISubprogram(name: "vprintf", scope: !423, file: !423, line: 153, type: !550, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!562 = !DIImportedEntity(tag: DW_TAG_imported_declaration, name: "Utils", scope: !8, entity: !563, file: !564, line: 119)
!563 = !DINamespace(name: "utils", scope: !7)
!564 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/aie_api/adf/../aie.hpp", directory: "/home/lxy")
!565 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !5, file: !564, line: 7686)
!566 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !13, file: !564, line: 10079)
!567 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !8, entity: !21, file: !564, line: 10080)
!568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !569, size: 256, elements: !570)
!569 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !9)
!570 = !{!571}
!571 = !DISubrange(count: 8)
!572 = !{i32 7, !"Dwarf Version", i32 4}
!573 = !{i32 2, !"Debug Info Version", i32 3}
!574 = !{i32 1, !"wchar_size", i32 4}
!575 = !{i32 7, !"frame-pointer", i32 2}
!576 = !{!"clang version 15.0.5 (/u/sgasip/ipd/repositories/llvm_ipd 3a25925e0239306412dac02da5e4c8c51ae722e8)"}
!577 = distinct !DISubprogram(name: "main", scope: !459, file: !459, line: 20, type: !376, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !578)
!578 = !{!579, !580, !581, !584}
!579 = !DILocalVariable(name: "stream_0", scope: !577, file: !459, line: 22, type: !39)
!580 = !DILocalVariable(name: "stream_1", scope: !577, file: !459, line: 23, type: !101)
!581 = !DILocalVariable(name: "index", scope: !577, file: !459, line: 24, type: !582)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32", file: !583, line: 65, baseType: !159)
!583 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/aie_api/detail/../types.hpp", directory: "/home/lxy")
!584 = !DILocalVariable(name: "proc_24_0_bounds", scope: !585, file: !459, line: 28, type: !582)
!585 = distinct !DILexicalBlock(scope: !577, file: !459, line: 26, column: 3)
!586 = !{!587, !589}
!587 = distinct !{!587, !588, !"main: stream_0"}
!588 = distinct !{!588, !"main"}
!589 = distinct !{!589, !588, !"main: stream_1"}
!590 = !DILocation(line: 21, column: 18, scope: !577)
!591 = !{!592, !592, i64 0, i64 4}
!592 = !{!593, i64 4, !"int"}
!593 = !{!594, i64 1, !"omnipotent char"}
!594 = !{!"Simple C++ TBAA"}
!595 = !DILocation(line: 22, column: 3, scope: !577)
!596 = !DILocation(line: 22, column: 22, scope: !577)
!597 = !{!587}
!598 = !DILocation(line: 22, column: 33, scope: !577)
!599 = !DILocation(line: 23, column: 3, scope: !577)
!600 = !DILocation(line: 23, column: 23, scope: !577)
!601 = !{!589}
!602 = !DILocation(line: 23, column: 34, scope: !577)
!603 = !DILocation(line: 24, column: 3, scope: !577)
!604 = !DILocation(line: 24, column: 9, scope: !577)
!605 = !DILocation(line: 25, column: 3, scope: !577)
!606 = !DILocation(line: 28, column: 3, scope: !585)
!607 = !DILocation(line: 28, column: 9, scope: !585)
!608 = !DILocation(line: 28, column: 28, scope: !585)
!609 = !DILocation(line: 30, column: 3, scope: !585)
!610 = !DILocation(line: 30, column: 10, scope: !585)
!611 = !DILocation(line: 34, column: 5, scope: !612)
!612 = distinct !DILexicalBlock(scope: !585, file: !459, line: 31, column: 3)
!613 = !DILocation(line: 35, column: 17, scope: !612)
!614 = !DILocation(line: 35, column: 15, scope: !612)
!615 = !DILocation(line: 35, column: 11, scope: !612)
!616 = !DILocation(line: 37, column: 5, scope: !612)
!617 = !DILocation(line: 39, column: 8, scope: !618)
!618 = distinct !DILexicalBlock(scope: !612, file: !459, line: 39, column: 8)
!619 = !DILocation(line: 39, column: 25, scope: !618)
!620 = !DILocation(line: 39, column: 8, scope: !612)
!621 = !DILocation(line: 40, column: 7, scope: !618)
!622 = distinct !{!622, !609, !623, !624}
!623 = !DILocation(line: 41, column: 3, scope: !585)
!624 = !{!"llvm.loop.mustprogress"}
!625 = !DILocation(line: 42, column: 3, scope: !585)
!626 = !DILocation(line: 43, column: 7, scope: !627)
!627 = distinct !DILexicalBlock(scope: !585, file: !459, line: 43, column: 7)
!628 = !DILocation(line: 43, column: 22, scope: !627)
!629 = !DILocation(line: 43, column: 7, scope: !585)
!630 = !DILocation(line: 43, column: 27, scope: !627)
!631 = !DILocation(line: 44, column: 3, scope: !577)
!632 = distinct !{!632, !605, !631, !624}
!633 = !DILocation(line: 45, column: 3, scope: !577)
!634 = !DILocation(line: 46, column: 1, scope: !577)
!635 = distinct !DISubprogram(name: "input_stream", linkageName: "_ZN12input_streamIfEC2Ej", scope: !41, file: !42, line: 50, type: !95, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !94, retainedNodes: !636)
!636 = !{!637, !639}
!637 = !DILocalVariable(name: "this", arg: 1, scope: !635, type: !638, flags: DIFlagArtificial | DIFlagObjectPointer)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 32)
!639 = !DILocalVariable(name: "ch", arg: 2, scope: !635, file: !42, line: 50, type: !15)
!640 = !{!641, !641, i64 0, i64 4}
!641 = !{!593, i64 4, !"any pointer"}
!642 = !DILocation(line: 0, scope: !635)
!643 = !DILocation(line: 50, column: 41, scope: !635)
!644 = !{!593, !593, i64 0, i64 0}
!645 = distinct !DISubprogram(name: "output_stream", linkageName: "_ZN13output_streamIfEC2Ej", scope: !102, file: !42, line: 60, type: !133, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, declaration: !132, retainedNodes: !646)
!646 = !{!647, !649}
!647 = !DILocalVariable(name: "this", arg: 1, scope: !645, type: !648, flags: DIFlagArtificial | DIFlagObjectPointer)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 32)
!649 = !DILocalVariable(name: "ch", arg: 2, scope: !645, file: !42, line: 60, type: !15)
!650 = !DILocation(line: 0, scope: !645)
!651 = !DILocation(line: 60, column: 42, scope: !645)
!652 = distinct !DISubprogram(name: "transfer<8>", linkageName: "_Z8transferILi8EEvP12input_streamIfEP13output_streamIfE", scope: !653, file: !653, line: 10, type: !654, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !663, retainedNodes: !658)
!653 = !DIFile(filename: "aie/src/ProcessUnit/Transfer.cpp", directory: "/home/lxy/Projects/SVD/Jacobi_AIE_Scalar")
!654 = !DISubroutineType(types: !655)
!655 = !{null, !656, !657}
!656 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !638)
!657 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !648)
!658 = !{!659, !660, !661}
!659 = !DILocalVariable(name: "in", arg: 1, scope: !652, file: !653, line: 10, type: !656)
!660 = !DILocalVariable(name: "out", arg: 2, scope: !652, file: !653, line: 11, type: !657)
!661 = !DILocalVariable(name: "i", scope: !662, file: !653, line: 13, type: !9)
!662 = distinct !DILexicalBlock(scope: !652, file: !653, line: 13, column: 3)
!663 = !{!664}
!664 = !DITemplateValueParameter(name: "ROW", type: !9, value: i32 8)
!665 = !{!666}
!666 = distinct !{!666, !667, !"_Z8transferILi8EEvP12input_streamIfEP13output_streamIfE: in"}
!667 = distinct !{!667, !"_Z8transferILi8EEvP12input_streamIfEP13output_streamIfE"}
!668 = !{!666, !669}
!669 = distinct !{!669, !667, !"_Z8transferILi8EEvP12input_streamIfEP13output_streamIfE: out"}
!670 = !DILocation(line: 10, column: 48, scope: !652)
!671 = !{!669}
!672 = !DILocation(line: 11, column: 54, scope: !652)
!673 = !DILocation(line: 13, column: 7, scope: !662)
!674 = !DILocation(line: 13, column: 11, scope: !662)
!675 = !DILocation(line: 13, column: 17, scope: !676)
!676 = distinct !DILexicalBlock(scope: !662, file: !653, line: 13, column: 3)
!677 = !DILocation(line: 13, column: 19, scope: !676)
!678 = !DILocation(line: 13, column: 3, scope: !662)
!679 = !DILocation(line: 13, column: 3, scope: !676)
!680 = !DILocation(line: 14, column: 15, scope: !681)
!681 = distinct !DILexicalBlock(scope: !676, file: !653, line: 13, column: 32)
!682 = !DILocation(line: 14, column: 29, scope: !681)
!683 = !DILocation(line: 14, column: 20, scope: !681)
!684 = !DILocation(line: 14, column: 5, scope: !681)
!685 = !DILocation(line: 15, column: 3, scope: !681)
!686 = !DILocation(line: 13, column: 28, scope: !676)
!687 = distinct !{!687, !678, !688, !624}
!688 = !DILocation(line: 15, column: 3, scope: !662)
!689 = !DILocation(line: 16, column: 1, scope: !652)
!690 = !{!691, !691, i64 0, i64 4}
!691 = !{!593, i64 4, !"uint2_t"}
!692 = distinct !DISubprogram(name: "writeincr<(aie_stream_resource_out)0, float>", linkageName: "_ZL9writeincrIL23aie_stream_resource_out0EfEvP13output_streamIT0_ENSt3__213type_identityIS2_E4typeEb", scope: !693, file: !693, line: 252, type: !694, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !711, retainedNodes: !704)
!693 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/adf/stream/me/accessors.h", directory: "/home/lxy")
!694 = !DISubroutineType(types: !695)
!695 = !{null, !648, !696, !703}
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "type_identity_t<float>", scope: !139, file: !697, line: 1240, baseType: !698)
!697 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/data/versal_prod/lib/runtime_cxx/libs/libcxx-9.0.0/include-lite/../include/type_traits", directory: "/home/lxy")
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "type", scope: !699, file: !697, line: 1239, baseType: !100)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "type_identity<float>", scope: !139, file: !697, line: 1239, size: 8, flags: DIFlagTypePassByValue, elements: !700, templateParams: !701, identifier: "_ZTSNSt3__213type_identityIfEE")
!700 = !{}
!701 = !{!702}
!702 = !DITemplateTypeParameter(name: "_Tp", type: !100)
!703 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!704 = !{!705, !706, !707, !708}
!705 = !DILocalVariable(name: "str", arg: 1, scope: !692, file: !693, line: 252, type: !648)
!706 = !DILocalVariable(name: "value", arg: 2, scope: !692, file: !693, line: 252, type: !696)
!707 = !DILocalVariable(name: "tlast", arg: 3, scope: !692, file: !693, line: 252, type: !703)
!708 = !DILocalVariable(name: "value32", scope: !692, file: !693, line: 254, type: !709)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32", file: !710, line: 28, baseType: !159)
!710 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/adf/window/types.h", directory: "/home/lxy")
!711 = !{!712, !713}
!712 = !DITemplateValueParameter(name: "resource", type: !31, value: i32 0)
!713 = !DITemplateTypeParameter(name: "streamTy", type: !100)
!714 = !DILocation(line: 252, column: 36, scope: !692)
!715 = !{!716, !716, i64 0, i64 4}
!716 = !{!593, i64 4, !"float"}
!717 = !DILocation(line: 252, column: 72, scope: !692)
!718 = !{!719, !719, i64 0, i64 1}
!719 = !{!593, i64 1, !"bool"}
!720 = !DILocation(line: 252, column: 84, scope: !692)
!721 = !DILocation(line: 254, column: 5, scope: !692)
!722 = !DILocation(line: 254, column: 11, scope: !692)
!723 = !DILocation(line: 298, column: 32, scope: !724)
!724 = distinct !DILexicalBlock(scope: !725, file: !693, line: 297, column: 28)
!725 = distinct !DILexicalBlock(scope: !726, file: !693, line: 290, column: 28)
!726 = distinct !DILexicalBlock(scope: !727, file: !693, line: 288, column: 28)
!727 = distinct !DILexicalBlock(scope: !728, file: !693, line: 281, column: 28)
!728 = distinct !DILexicalBlock(scope: !729, file: !693, line: 279, column: 23)
!729 = distinct !DILexicalBlock(scope: !730, file: !693, line: 278, column: 5)
!730 = distinct !DILexicalBlock(scope: !692, file: !693, line: 257, column: 19)
!731 = !DILocation(line: 298, column: 23, scope: !724)
!732 = !DILocation(line: 298, column: 21, scope: !724)
!733 = !DILocation(line: 302, column: 55, scope: !692)
!734 = !DILocation(line: 302, column: 60, scope: !692)
!735 = !DILocation(line: 302, column: 69, scope: !692)
!736 = !{i8 0, i8 2}
!737 = !DILocation(line: 302, column: 5, scope: !692)
!738 = !DILocation(line: 303, column: 1, scope: !692)
!739 = distinct !DISubprogram(name: "readincr<(aie_stream_resource_in)0, float>", linkageName: "_ZL8readincrIL22aie_stream_resource_in0EfET0_P12input_streamIS1_E", scope: !693, file: !693, line: 126, type: !740, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !746, retainedNodes: !742)
!740 = !DISubroutineType(types: !741)
!741 = !{!100, !638}
!742 = !{!743, !744, !745}
!743 = !DILocalVariable(name: "ss", arg: 1, scope: !739, file: !693, line: 126, type: !638)
!744 = !DILocalVariable(name: "origVal", scope: !739, file: !693, line: 129, type: !709)
!745 = !DILocalVariable(name: "value", scope: !739, file: !693, line: 130, type: !100)
!746 = !{!747, !713}
!747 = !DITemplateValueParameter(name: "resource", type: !37, value: i32 0)
!748 = !DILocation(line: 126, column: 34, scope: !739)
!749 = !DILocation(line: 129, column: 5, scope: !739)
!750 = !DILocation(line: 129, column: 11, scope: !739)
!751 = !DILocation(line: 129, column: 71, scope: !739)
!752 = !DILocation(line: 129, column: 21, scope: !739)
!753 = !DILocation(line: 130, column: 5, scope: !739)
!754 = !DILocation(line: 130, column: 14, scope: !739)
!755 = !DILocation(line: 178, column: 30, scope: !756)
!756 = distinct !DILexicalBlock(scope: !757, file: !693, line: 177, column: 28)
!757 = distinct !DILexicalBlock(scope: !758, file: !693, line: 170, column: 28)
!758 = distinct !DILexicalBlock(scope: !759, file: !693, line: 168, column: 28)
!759 = distinct !DILexicalBlock(scope: !760, file: !693, line: 158, column: 28)
!760 = distinct !DILexicalBlock(scope: !761, file: !693, line: 156, column: 23)
!761 = distinct !DILexicalBlock(scope: !762, file: !693, line: 155, column: 5)
!762 = distinct !DILexicalBlock(scope: !739, file: !693, line: 132, column: 19)
!763 = !DILocation(line: 178, column: 21, scope: !756)
!764 = !DILocation(line: 178, column: 19, scope: !756)
!765 = !DILocation(line: 182, column: 12, scope: !739)
!766 = !DILocation(line: 183, column: 1, scope: !739)
!767 = !DILocation(line: 182, column: 5, scope: !739)
!768 = distinct !DISubprogram(name: "aie_stream_put_ms<float, float>", linkageName: "_ZN12stream_utilsL17aie_stream_put_msIffEEvP13output_streamIT0_Eib", scope: !770, file: !769, line: 168, type: !771, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !777, retainedNodes: !773)
!769 = !DIFile(filename: "tools/Xilinx/Vitis/2023.2/aietools/include/adf/stream/me/stream_utils.h", directory: "/home/lxy")
!770 = !DINamespace(name: "stream_utils", scope: null)
!771 = !DISubroutineType(types: !772)
!772 = !{null, !648, !709, !703}
!773 = !{!774, !775, !776}
!774 = !DILocalVariable(name: "ss", arg: 1, scope: !768, file: !769, line: 168, type: !648)
!775 = !DILocalVariable(name: "value", arg: 2, scope: !768, file: !769, line: 168, type: !709)
!776 = !DILocalVariable(name: "tlast", arg: 3, scope: !768, file: !769, line: 168, type: !703)
!777 = !{!99, !713}
!778 = !DILocation(line: 168, column: 45, scope: !768)
!779 = !DILocation(line: 168, column: 55, scope: !768)
!780 = !DILocation(line: 168, column: 67, scope: !768)
!781 = !DILocation(line: 176, column: 16, scope: !782)
!782 = distinct !DILexicalBlock(scope: !783, file: !769, line: 173, column: 24)
!783 = distinct !DILexicalBlock(scope: !768, file: !769, line: 171, column: 19)
!784 = !DILocation(line: 176, column: 20, scope: !782)
!785 = !DILocation(line: 176, column: 29, scope: !782)
!786 = !DILocation(line: 176, column: 35, scope: !782)
!787 = !DILocation(line: 176, column: 9, scope: !782)
!788 = !DILocation(line: 180, column: 1, scope: !768)
!789 = !{!790, !790, i64 0, i64 4}
!790 = !{!593, i64 4, !"uint1_t"}
!791 = distinct !DISubprogram(name: "aie_stream_get_ss<float, float>", linkageName: "_ZN12stream_utilsL17aie_stream_get_ssIffEEiP12input_streamIT0_E", scope: !770, file: !769, line: 127, type: !792, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, templateParams: !777, retainedNodes: !794)
!792 = !DISubroutineType(types: !793)
!793 = !{!709, !638}
!794 = !{!795}
!795 = !DILocalVariable(name: "ss", arg: 1, scope: !791, file: !769, line: 127, type: !638)
!796 = !DILocation(line: 127, column: 44, scope: !791)
!797 = !DILocation(line: 135, column: 23, scope: !798)
!798 = distinct !DILexicalBlock(scope: !799, file: !769, line: 132, column: 24)
!799 = distinct !DILexicalBlock(scope: !791, file: !769, line: 130, column: 19)
!800 = !DILocation(line: 135, column: 27, scope: !798)
!801 = !DILocation(line: 135, column: 16, scope: !798)
!802 = !DILocation(line: 135, column: 9, scope: !798)
!803 = !{i32 1}
!804 = !{!805, !592, i64 4, i64 4}
!805 = !{!593, i64 8, !"_ZTSN12me_primitive60chessout___sint_stream_read___PSS_rsrc1__sint_uint1_t___sintE", !592, i64 0, i64 4, !592, i64 4, i64 4}
!806 = !{!805, !592, i64 0, i64 4}
!807 = !{!808, !592, i64 4, i64 4}
!808 = !{!593, i64 8, !"_ZTSN12me_primitive60chessout___sint_stream_read___PSS_rsrc2__sint_uint1_t___sintE", !592, i64 0, i64 4, !592, i64 4, i64 4}
!809 = !{!808, !592, i64 0, i64 4}
!810 = !{!811, !592, i64 4, i64 4}
!811 = !{!593, i64 8, !"_ZTSN12me_primitive57chessout___sint_stream_read___PSSMEM__sint_uint1_t___sintE", !592, i64 0, i64 4, !592, i64 4, i64 4}
!812 = !{!811, !592, i64 0, i64 4}
