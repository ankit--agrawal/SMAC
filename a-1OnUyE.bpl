// Basic types
type i1 = int;
type i8 = int;
type i16 = int;
type i24 = int;
type i32 = int;
type i40 = int;
type i48 = int;
type i56 = int;
type i64 = int;
type i88 = int;
type i96 = int;
type i128 = int;
type ref = i64;
type float = i32;

// Basic constants
const $0: i32;
axiom ($0 == 0);
const $0.ref: ref;
axiom ($0.ref == 0);
const $1.ref: ref;
axiom ($1.ref == 1);
const $2.ref: ref;
axiom ($2.ref == 2);
const $3.ref: ref;
axiom ($3.ref == 3);
const $4.ref: ref;
axiom ($4.ref == 4);
const $5.ref: ref;
axiom ($5.ref == 5);
const $6.ref: ref;
axiom ($6.ref == 6);
const $7.ref: ref;
axiom ($7.ref == 7);
const $8.ref: ref;
axiom ($8.ref == 8);
const $9.ref: ref;
axiom ($9.ref == 9);
const $10.ref: ref;
axiom ($10.ref == 10);
const $11.ref: ref;
axiom ($11.ref == 11);
const $12.ref: ref;
axiom ($12.ref == 12);
const $13.ref: ref;
axiom ($13.ref == 13);
const $14.ref: ref;
axiom ($14.ref == 14);
const $1024.ref: ref;
axiom ($1024.ref == 1024);

// Memory maps (26 regions)
var $M.0: [ref] i8;
var $M.1: [ref] i16;
var $M.2: [ref] ref;
var $M.3: i32;
var $M.4: i32;
var $M.5: i32;
var $M.6: ref;
var $M.7: ref;
var $M.8: ref;
var $M.9: ref;
var $M.10: ref;
var $M.11: ref;
var $M.12: ref;
var $M.13: ref;
var $M.14: ref;
var $M.15: ref;
var $M.16: i8;
var $M.17: ref;
var $M.18: ref;
var $M.19: ref;
var $M.20: ref;
var $M.21: ref;
var $M.22: ref;
var $M.23: ref;
var $M.24: ref;
var $M.25: ref;

// Memory address bounds
axiom ($GLOBALS_BOTTOM == $sub.ref(0, 83993));
axiom ($EXTERNS_BOTTOM == $sub.ref(0, 32776));
axiom ($MALLOC_TOP == 9223372036854775807);

// Bitstd::vector-integer conversions
function {:builtin "(_ int2bv 64)"} $int2bv.64(i: i64) returns (bv64);
function {:builtin "bv2int"} $bv2int.64(i: bv64) returns (i64);

// Pointer-number conversions
function {:inline} $p2i.ref.i8(p: ref) returns (i8) { $trunc.i64.i8(p) }
function {:inline} $i2p.i8.ref(i: i8) returns (ref) { $zext.i8.i64(i) }
function {:inline} $p2i.ref.i16(p: ref) returns (i16) { $trunc.i64.i16(p) }
function {:inline} $i2p.i16.ref(i: i16) returns (ref) { $zext.i16.i64(i) }
function {:inline} $p2i.ref.i32(p: ref) returns (i32) { $trunc.i64.i32(p) }
function {:inline} $i2p.i32.ref(i: i32) returns (ref) { $zext.i32.i64(i) }
function {:inline} $p2i.ref.i64(p: ref) returns (i64) { p }
function {:inline} $i2p.i64.ref(i: i64) returns (ref) { i }

// Pointer predicates
function {:inline} $eq.ref(p1: ref, p2: ref) returns (i1) { if $eq.i64.bool(p1, p2) then 1 else 0 }
function {:inline} $eq.ref.bool(p1: ref, p2: ref) returns (bool) { $eq.i64.bool(p1, p2) }
function {:inline} $ne.ref(p1: ref, p2: ref) returns (i1) { if $ne.i64.bool(p1, p2) then 1 else 0 }
function {:inline} $ne.ref.bool(p1: ref, p2: ref) returns (bool) { $ne.i64.bool(p1, p2) }
function {:inline} $ugt.ref(p1: ref, p2: ref) returns (i1) { if $ugt.i64.bool(p1, p2) then 1 else 0 }
function {:inline} $ugt.ref.bool(p1: ref, p2: ref) returns (bool) { $ugt.i64.bool(p1, p2) }
function {:inline} $uge.ref(p1: ref, p2: ref) returns (i1) { if $uge.i64.bool(p1, p2) then 1 else 0 }
function {:inline} $uge.ref.bool(p1: ref, p2: ref) returns (bool) { $uge.i64.bool(p1, p2) }
function {:inline} $ult.ref(p1: ref, p2: ref) returns (i1) { if $ult.i64.bool(p1, p2) then 1 else 0 }
function {:inline} $ult.ref.bool(p1: ref, p2: ref) returns (bool) { $ult.i64.bool(p1, p2) }
function {:inline} $ule.ref(p1: ref, p2: ref) returns (i1) { if $ule.i64.bool(p1, p2) then 1 else 0 }
function {:inline} $ule.ref.bool(p1: ref, p2: ref) returns (bool) { $ule.i64.bool(p1, p2) }
function {:inline} $sgt.ref(p1: ref, p2: ref) returns (i1) { if $sgt.i64.bool(p1, p2) then 1 else 0 }
function {:inline} $sgt.ref.bool(p1: ref, p2: ref) returns (bool) { $sgt.i64.bool(p1, p2) }
function {:inline} $sge.ref(p1: ref, p2: ref) returns (i1) { if $sge.i64.bool(p1, p2) then 1 else 0 }
function {:inline} $sge.ref.bool(p1: ref, p2: ref) returns (bool) { $sge.i64.bool(p1, p2) }
function {:inline} $slt.ref(p1: ref, p2: ref) returns (i1) { if $slt.i64.bool(p1, p2) then 1 else 0 }
function {:inline} $slt.ref.bool(p1: ref, p2: ref) returns (bool) { $slt.i64.bool(p1, p2) }
function {:inline} $sle.ref(p1: ref, p2: ref) returns (i1) { if $sle.i64.bool(p1, p2) then 1 else 0 }
function {:inline} $sle.ref.bool(p1: ref, p2: ref) returns (bool) { $sle.i64.bool(p1, p2) }

// Pointer operations
function {:inline} $add.ref(p1: ref, p2: ref) returns (ref) { $add.i64(p1, p2) }
function {:inline} $sub.ref(p1: ref, p2: ref) returns (ref) { $sub.i64(p1, p2) }
function {:inline} $mul.ref(p1: ref, p2: ref) returns (ref) { $mul.i64(p1, p2) }

const LDV_IN_INTERRUPT: ref;
axiom (LDV_IN_INTERRUPT == $sub.ref(0, 1028));
const ldv_mutex: ref;
axiom (ldv_mutex == $sub.ref(0, 2056));
const {:count 4} llvm.used: ref;
axiom (llvm.used == $sub.ref(0, 3112));
const {:count 17} __mod_author149: ref;
axiom (__mod_author149 == $sub.ref(0, 4153));
const {:count 41} __mod_description150: ref;
axiom (__mod_description150 == $sub.ref(0, 5218));
const {:count 15} __mod_license151: ref;
axiom (__mod_license151 == $sub.ref(0, 6257));
const {:count 17} __mod_alias152: ref;
axiom (__mod_alias152 == $sub.ref(0, 7298));
const iio_dev_attr_dds: ref;
axiom (iio_dev_attr_dds == $sub.ref(0, 8386));
const {:count 2} ad5930_attributes: ref;
axiom (ad5930_attributes == $sub.ref(0, 9426));
const ad5930_attribute_group: ref;
axiom (ad5930_attribute_group == $sub.ref(0, 10474));
const ad5930_info: ref;
axiom (ad5930_info == $sub.ref(0, 11602));
const __key___3: ref;
axiom (__key___3 == $sub.ref(0, 12634));
const ad5930_driver: ref;
axiom (ad5930_driver == $sub.ref(0, 13818));
const res_ad5930_probe_1: ref;
axiom (res_ad5930_probe_1 == $sub.ref(0, 14846));
const .str: ref;
axiom (.str == $sub.ref(0, 15877));
const __this_module: ref;
axiom (__this_module == $sub.ref(0, 32776));
const {:count 10} .str.1: ref;
axiom (.str.1 == $sub.ref(0, 16911));
const {:count 4} .str.2: ref;
axiom (.str.2 == $sub.ref(0, 17939));
const {:count 14} .str.2.8: ref;
axiom (.str.2.8 == $sub.ref(0, 18977));
const llvm.dbg.declare: ref;
axiom (llvm.dbg.declare == $sub.ref(0, 20009));
procedure llvm.dbg.declare($p0: ref, $p1: ref, $p2: ref);
const ad5930_probe: ref;
axiom (ad5930_probe == $sub.ref(0, 21041));
procedure ad5930_probe($p0: ref)
  returns ($r: i32)
{
  var $p1: ref;
  var $i2: i64;
  var $i3: i64;
  var $i4: i1;
  var $p6: ref;
  var $p7: ref;
  var $p8: ref;
  var $p9: ref;
  var $i10: i64;
  var $i11: i64;
  var $p12: ref;
  var $i13: i64;
  var $i14: i64;
  var $p15: ref;
  var $p16: ref;
  var $i17: i64;
  var $i18: i64;
  var $p19: ref;
  var $i20: i64;
  var $i21: i64;
  var $p22: ref;
  var $i23: i32;
  var $i24: i1;
  var $i25: i64;
  var $i26: i64;
  var $p27: ref;
  var $i28: i64;
  var $i29: i64;
  var $p30: ref;
  var $i31: i64;
  var $i32: i64;
  var $p33: ref;
  var $i34: i32;
  var $i5: i32;
  var $i35: i32;
$bb0:
  // WARNING: call void @llvm.dbg.value(metadata %struct.spi_device* %0, i64 0, metadata !2513, metadata !2514), !dbg !2515, !verifier.code !2516
  // WARNING: call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !2517, metadata !2514), !dbg !2518, !verifier.code !2516
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2543, 10} true;
  assume {:verifier.code 0} true;
  call $p1 := iio_allocate_device(80);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2547, 16} true;
  assume {:verifier.code 0} true;
  $i2 := $p2i.ref.i64($0.ref);
  // WARNING: %3 = ptrtoint i8* null to i64, !dbg !2528, !verifier.code !2516
  call {:cexpr "__cil_tmp8"} boogie_si_record_i64($i2);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2548, 16} true;
  assume {:verifier.code 0} true;
  $i3 := $p2i.ref.i64($p1);
  // WARNING: %4 = ptrtoint %struct.iio_dev* %2 to i64, !dbg !2532, !verifier.code !2516
  call {:cexpr "__cil_tmp9"} boogie_si_record_i64($i3);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2549, 18} true;
  assume {:verifier.code 0} true;
  $i4 := $eq.i64($i3, $i2);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2549, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i4} true;
  goto $bb1, $bb2;
$bb1:
  assume ($i4 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2551, 5} true;
  assume {:verifier.code 0} true;
  $i5 := $sub.i32(0, 12);
  goto $bb3;
$bb2:
  assume !(($i4 == 1));
  assume {:verifier.code 0} true;
  goto $bb4;
$bb3:
  assume {:verifier.code 0} true;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2612, 3} true;
  assume {:verifier.code 0} true;
  $i35 := $i5;
  goto $bb12;
$bb4:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2557, 17} true;
  assume {:verifier.code 0} true;
  $p6 := $bitcast.ref.ref($p1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2558, 3} true;
  assume {:verifier.code 0} true;
  call spi_set_drvdata($p0, $p6);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2560, 13} true;
  assume {:verifier.code 0} true;
  call $p7 := iio_priv($p1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2561, 8} true;
  assume {:verifier.code 0} true;
  $p8 := $bitcast.ref.ref($p7);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2564, 3} true;
  assume {:verifier.code 0} true;
  goto $bb5;
$bb5:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2564, 13} true;
  assume {:verifier.code 0} true;
  goto $bb6;
$bb6:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2567, 19} true;
  assume {:verifier.code 0} true;
  $p9 := $bitcast.ref.ref($p8);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2568, 5} true;
  assume {:verifier.code 0} true;
  call __mutex_init($p9, .str.1, __key___3);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2570, 5} true;
  assume {:verifier.code 0} true;
  goto $bb7;
$bb7:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2575, 17} true;
  assume {:verifier.code 0} true;
  $i10 := $p2i.ref.i64($p8);
  // WARNING: %16 = ptrtoint %struct.ad5930_state* %11 to i64, !dbg !2564, !verifier.code !2516
  call {:cexpr "__cil_tmp13"} boogie_si_record_i64($i10);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2576, 29} true;
  assume {:verifier.code 0} true;
  $i11 := $add.i64($i10, 72);
  // WARNING: %17 = add i64 %16, 72, !dbg !2568, !verifier.code !2516
  call {:cexpr "__cil_tmp14"} boogie_si_record_i64($i11);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2577, 5} true;
  assume {:verifier.code 0} true;
  $p12 := $i2p.i64.ref($i11);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2577, 40} true;
  assume {:verifier.code 0} true;
  $M.0 := $store.ref($M.0, $p12, $p0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2578, 17} true;
  assume {:verifier.code 0} true;
  $i13 := $p2i.ref.i64($p1);
  // WARNING: %19 = ptrtoint %struct.iio_dev* %2 to i64, !dbg !2573, !verifier.code !2516
  call {:cexpr "__cil_tmp15"} boogie_si_record_i64($i13);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2579, 29} true;
  assume {:verifier.code 0} true;
  $i14 := $add.i64($i13, 16);
  // WARNING: %20 = add i64 %19, 16, !dbg !2576, !verifier.code !2516
  call {:cexpr "__cil_tmp16"} boogie_si_record_i64($i14);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2580, 38} true;
  assume {:verifier.code 0} true;
  $p15 := $bitcast.ref.ref($p0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2580, 5} true;
  assume {:verifier.code 0} true;
  $p16 := $i2p.i64.ref($i14);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2580, 36} true;
  assume {:verifier.code 0} true;
  $M.0 := $store.ref($M.0, $p16, $p0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2581, 17} true;
  assume {:verifier.code 0} true;
  $i17 := $p2i.ref.i64($p1);
  // WARNING: %23 = ptrtoint %struct.iio_dev* %2 to i64, !dbg !2582, !verifier.code !2516
  call {:cexpr "__cil_tmp17"} boogie_si_record_i64($i17);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2582, 29} true;
  assume {:verifier.code 0} true;
  $i18 := $add.i64($i17, 976);
  // WARNING: %24 = add i64 %23, 976, !dbg !2585, !verifier.code !2516
  call {:cexpr "__cil_tmp18"} boogie_si_record_i64($i18);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2583, 5} true;
  assume {:verifier.code 0} true;
  $p19 := $i2p.i64.ref($i18);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2583, 46} true;
  assume {:verifier.code 0} true;
  $M.0 := $store.ref($M.0, $p19, ad5930_info);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2584, 17} true;
  assume {:verifier.code 0} true;
  $i20 := $p2i.ref.i64($p1);
  // WARNING: %26 = ptrtoint %struct.iio_dev* %2 to i64, !dbg !2590, !verifier.code !2516
  call {:cexpr "__cil_tmp19"} boogie_si_record_i64($i20);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2585, 29} true;
  assume {:verifier.code 0} true;
  $i21 := $add.i64($i20, 4);
  // WARNING: %27 = add i64 %26, 4, !dbg !2593, !verifier.code !2516
  call {:cexpr "__cil_tmp20"} boogie_si_record_i64($i21);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2586, 5} true;
  assume {:verifier.code 0} true;
  $p22 := $i2p.i64.ref($i21);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2586, 25} true;
  assume {:verifier.code 0} true;
  $M.0 := $store.i32($M.0, $p22, 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2587, 9} true;
  assume {:verifier.code 0} true;
  call $i23 := iio_device_register($p1);
  // WARNING: %29 = call i32 @iio_device_register(%struct.iio_dev* %2), !dbg !2598, !verifier.code !2516
  call {:cexpr "ret"} boogie_si_record_i32($i23);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2589, 7} true;
  assume {:verifier.code 0} true;
  $i24 := $ne.i32($i23, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2589, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i24} true;
  goto $bb8, $bb9;
$bb8:
  assume ($i24 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2590, 5} true;
  assume {:verifier.code 0} true;
  goto $bb10;
$bb9:
  assume !(($i24 == 1));
  assume {:verifier.code 0} true;
  goto $bb11;
$bb10:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2609, 3} true;
  assume {:verifier.code 0} true;
  call iio_free_device($p1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2610, 3} true;
  assume {:verifier.code 0} true;
  $i5 := $i23;
  goto $bb3;
$bb11:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2595, 17} true;
  assume {:verifier.code 0} true;
  $i25 := $p2i.ref.i64($p0);
  // WARNING: %34 = ptrtoint %struct.spi_device* %0 to i64, !dbg !2604, !verifier.code !2516
  call {:cexpr "__cil_tmp21"} boogie_si_record_i64($i25);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2596, 29} true;
  assume {:verifier.code 0} true;
  $i26 := $add.i64($i25, 776);
  // WARNING: %35 = add i64 %34, 776, !dbg !2608, !verifier.code !2516
  call {:cexpr "__cil_tmp22"} boogie_si_record_i64($i26);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2597, 5} true;
  assume {:verifier.code 0} true;
  $p27 := $i2p.i64.ref($i26);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2597, 25} true;
  assume {:verifier.code 0} true;
  $M.0 := $store.i32($M.0, $p27, 2000000);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2598, 17} true;
  assume {:verifier.code 0} true;
  $i28 := $p2i.ref.i64($p0);
  // WARNING: %37 = ptrtoint %struct.spi_device* %0 to i64, !dbg !2613, !verifier.code !2516
  call {:cexpr "__cil_tmp23"} boogie_si_record_i64($i28);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2599, 29} true;
  assume {:verifier.code 0} true;
  $i29 := $add.i64($i28, 781);
  // WARNING: %38 = add i64 %37, 781, !dbg !2616, !verifier.code !2516
  call {:cexpr "__cil_tmp24"} boogie_si_record_i64($i29);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2600, 5} true;
  assume {:verifier.code 0} true;
  $p30 := $i2p.i64.ref($i29);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2600, 24} true;
  assume {:verifier.code 0} true;
  $M.0 := $store.i8($M.0, $p30, 3);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2601, 17} true;
  assume {:verifier.code 0} true;
  $i31 := $p2i.ref.i64($p0);
  // WARNING: %40 = ptrtoint %struct.spi_device* %0 to i64, !dbg !2621, !verifier.code !2516
  call {:cexpr "__cil_tmp25"} boogie_si_record_i64($i31);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2602, 29} true;
  assume {:verifier.code 0} true;
  $i32 := $add.i64($i31, 782);
  // WARNING: %41 = add i64 %40, 782, !dbg !2624, !verifier.code !2516
  call {:cexpr "__cil_tmp26"} boogie_si_record_i64($i32);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2603, 5} true;
  assume {:verifier.code 0} true;
  $p33 := $i2p.i64.ref($i32);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2603, 24} true;
  assume {:verifier.code 0} true;
  $M.0 := $store.i8($M.0, $p33, 16);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2604, 3} true;
  assume {:verifier.code 0} true;
  call $i34 := spi_setup($p0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2606, 3} true;
  assume {:verifier.code 0} true;
  $i35 := 0;
  goto $bb12;
$bb12:
  assume {:verifier.code 0} true;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2614, 1} true;
  assume {:verifier.code 0} true;
  $r := $i35;
  $exn := false;
  return;
}
const ad5930_remove: ref;
axiom (ad5930_remove == $sub.ref(0, 22073));
procedure ad5930_remove($p0: ref)
  returns ($r: i32)
{
  var $p1: ref;
  var $p2: ref;
  var $p3: ref;
  var $p4: ref;
$bb0:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2625, 13} true;
  assume {:verifier.code 0} true;
  call $p1 := spi_get_drvdata($p0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2626, 16} true;
  assume {:verifier.code 0} true;
  $p2 := $bitcast.ref.ref($p1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2627, 3} true;
  assume {:verifier.code 0} true;
  call iio_device_unregister($p2);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2628, 13} true;
  assume {:verifier.code 0} true;
  call $p3 := spi_get_drvdata($p0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2629, 16} true;
  assume {:verifier.code 0} true;
  $p4 := $bitcast.ref.ref($p3);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2630, 3} true;
  assume {:verifier.code 0} true;
  call iio_free_device($p4);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2632, 3} true;
  assume {:verifier.code 0} true;
  $r := 0;
  $exn := false;
  return;
}
const spi_get_drvdata: ref;
axiom (spi_get_drvdata == $sub.ref(0, 23105));
procedure spi_get_drvdata($p0: ref)
  returns ($r: ref)
{
  var $p1: ref;
  var $p2: ref;
$bb0:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2194, 16} true;
  assume {:verifier.code 0} true;
  $p1 := $bitcast.ref.ref($p0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2196, 13} true;
  assume {:verifier.code 0} true;
  call $p2 := dev_get_drvdata($p1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2198, 3} true;
  assume {:verifier.code 0} true;
  $r := $p2;
  $exn := false;
  return;
}
const iio_device_unregister: ref;
axiom (iio_device_unregister == $sub.ref(0, 24137));
procedure iio_device_unregister($p0: ref);
const iio_free_device: ref;
axiom (iio_free_device == $sub.ref(0, 25169));
procedure iio_free_device($p0: ref);
const dev_get_drvdata: ref;
axiom (dev_get_drvdata == $sub.ref(0, 26201));
procedure dev_get_drvdata($p0: ref)
  returns ($r: ref);
const iio_allocate_device: ref;
axiom (iio_allocate_device == $sub.ref(0, 27233));
procedure iio_allocate_device($i0: i32)
  returns ($r: ref);
const spi_set_drvdata: ref;
axiom (spi_set_drvdata == $sub.ref(0, 28265));
procedure spi_set_drvdata($p0: ref, $p1: ref)
{
  var $p2: ref;
  var $i3: i32;
$bb0:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2180, 16} true;
  assume {:verifier.code 0} true;
  $p2 := $bitcast.ref.ref($p0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2181, 3} true;
  assume {:verifier.code 0} true;
  call $i3 := dev_set_drvdata($p2, $p1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2183, 3} true;
  assume {:verifier.code 0} true;
  $exn := false;
  return;
}
const iio_priv: ref;
axiom (iio_priv == $sub.ref(0, 29297));
procedure iio_priv($p0: ref)
  returns ($r: ref)
{
  var $i1: i64;
  var $i2: i64;
  var $i3: i64;
  var $i4: i64;
  var $i5: i64;
  var $i6: i64;
  var $i7: i64;
  var $p8: ref;
  var $p9: ref;
$bb0:
  // WARNING: call void @llvm.dbg.value(metadata %struct.iio_dev* %0, i64 0, metadata !2689, metadata !2514), !dbg !2690, !verifier.code !2516
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2280, 16} true;
  assume {:verifier.code 0} true;
  $i1 := $sext.i32.i64(64);
  // WARNING: %2 = sext i32 64 to i64, !dbg !2521, !verifier.code !2518
  call {:cexpr "__cil_tmp3"} boogie_si_record_i64($i1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2281, 27} true;
  assume {:verifier.code 0} true;
  $i2 := $sub.i64($i1, 1);
  // WARNING: %3 = sub i64 %2, 1, !dbg !2526, !verifier.code !2518
  call {:cexpr "__cil_tmp4"} boogie_si_record_i64($i2);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2282, 16} true;
  assume {:verifier.code 0} true;
  $i3 := $xor.i64($i2, $sub.i64(0, 1));
  // WARNING: %4 = xor i64 %3, -1, !dbg !2529, !verifier.code !2518
  call {:cexpr "__cil_tmp5"} boogie_si_record_i64($i3);
  // WARNING: call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !2702, metadata !2514), !dbg !2703, !verifier.code !2516
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2284, 16} true;
  assume {:verifier.code 0} true;
  $i4 := $sext.i32.i64(64);
  // WARNING: %5 = sext i32 64 to i64, !dbg !2534, !verifier.code !2518
  call {:cexpr "__cil_tmp7"} boogie_si_record_i64($i4);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2285, 27} true;
  assume {:verifier.code 0} true;
  $i5 := $sub.i64($i4, 1);
  // WARNING: %6 = sub i64 %5, 1, !dbg !2537, !verifier.code !2518
  call {:cexpr "__cil_tmp8"} boogie_si_record_i64($i5);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2286, 23} true;
  assume {:verifier.code 0} true;
  $i6 := $add.i64(1256, $i5);
  // WARNING: %7 = add i64 1256, %6, !dbg !2540, !verifier.code !2518
  call {:cexpr "__cil_tmp9"} boogie_si_record_i64($i6);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2287, 28} true;
  assume {:verifier.code 0} true;
  $i7 := $and.i64($i6, $i3);
  // WARNING: %8 = and i64 %7, %4, !dbg !2543, !verifier.code !2518
  call {:cexpr "__cil_tmp10"} boogie_si_record_i64($i7);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2288, 17} true;
  assume {:verifier.code 0} true;
  $p8 := $bitcast.ref.ref($p0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2289, 29} true;
  assume {:verifier.code 0} true;
  $p9 := $add.ref($p8, $mul.ref($i7, 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2290, 3} true;
  assume {:verifier.code 0} true;
  $r := $p9;
  $exn := false;
  return;
}
const __mutex_init: ref;
axiom (__mutex_init == $sub.ref(0, 30329));
procedure __mutex_init($p0: ref, $p1: ref, $p2: ref);
const iio_device_register: ref;
axiom (iio_device_register == $sub.ref(0, 31361));
procedure iio_device_register($p0: ref)
  returns ($r: i32);
const spi_setup: ref;
axiom (spi_setup == $sub.ref(0, 32393));
procedure spi_setup($p0: ref)
  returns ($r: i32);
const dev_set_drvdata: ref;
axiom (dev_set_drvdata == $sub.ref(0, 33425));
procedure dev_set_drvdata($p0: ref, $p1: ref)
  returns ($r: i32);
const ad5930_set_parameter: ref;
axiom (ad5930_set_parameter == $sub.ref(0, 34457));
procedure ad5930_set_parameter($p0: ref, $p1: ref, $p2: ref, $i3: i64)
  returns ($r: i64)
{
  var $p4: ref;
  var $p5: ref;
  var $p6: ref;
  var $p7: ref;
  var $p8: ref;
  var $p9: ref;
  var $p10: ref;
  var $p11: ref;
  var $i12: i16;
  var $i13: i32;
  var $i14: i32;
  var $i15: i16;
  var $p16: ref;
  var $i17: i64;
  var $i18: i64;
  var $p19: ref;
  var $i20: i16;
  var $i21: i32;
  var $i22: i32;
  var $i23: i32;
  var $i24: i16;
  var $p25: ref;
  var $i26: i64;
  var $i27: i64;
  var $i28: i64;
  var $p29: ref;
  var $i30: i16;
  var $i31: i32;
  var $i32: i32;
  var $i33: i32;
  var $i34: i16;
  var $p35: ref;
  var $i36: i64;
  var $i37: i64;
  var $i38: i64;
  var $p39: ref;
  var $i40: i16;
  var $i41: i32;
  var $i42: i32;
  var $i43: i32;
  var $i44: i16;
  var $p45: ref;
  var $i46: i64;
  var $i47: i64;
  var $p48: ref;
  var $i49: i16;
  var $i50: i32;
  var $i51: i32;
  var $i52: i32;
  var $i53: i16;
  var $p54: ref;
  var $i55: i64;
  var $i56: i64;
  var $p57: ref;
  var $i58: i16;
  var $i59: i32;
  var $i60: i32;
  var $i61: i32;
  var $i62: i16;
  var $p63: ref;
  var $i64: i64;
  var $i65: i64;
  var $i66: i64;
  var $p67: ref;
  var $i68: i16;
  var $i69: i32;
  var $i70: i32;
  var $i71: i32;
  var $i72: i16;
  var $p73: ref;
  var $i74: i64;
  var $i75: i64;
  var $i76: i64;
  var $p77: ref;
  var $i78: i16;
  var $i79: i32;
  var $i80: i32;
  var $i81: i32;
  var $i82: i16;
  var $p83: ref;
  var $i84: i64;
  var $i85: i64;
  var $i86: i32;
  var $p87: ref;
  var $p88: ref;
  var $p89: ref;
  var $p90: ref;
  var $i91: i64;
  var $i92: i64;
  var $p93: ref;
  var $p94: ref;
  var $i95: i32;
  var $i96: i1;
  var $p97: ref;
  var $i98: i1;
  var $i99: i64;
  var $i100: i64;
$bb0:
  assume {:verifier.code 0} true;
  call $p4 := $alloc($mul.ref(80, $zext.i32.i64(1)));
  assume {:verifier.code 0} true;
  call $p5 := $alloc($mul.ref(64, $zext.i32.i64(1)));
  // WARNING: call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !2730, metadata !2514), !dbg !2731, !verifier.code !2516
  // WARNING: ignoring llvm.debug call.
  assume true;
  // WARNING: ignoring llvm.debug call.
  assume true;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2378, 12} true;
  assume {:verifier.code 0} true;
  $p6 := $bitcast.ref.ref($p2);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2380, 13} true;
  assume {:verifier.code 0} true;
  call $p7 := dev_get_drvdata($p0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2381, 10} true;
  assume {:verifier.code 0} true;
  $p8 := $bitcast.ref.ref($p7);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2383, 13} true;
  assume {:verifier.code 0} true;
  call $p9 := iio_priv($p8);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2384, 8} true;
  assume {:verifier.code 0} true;
  $p10 := $bitcast.ref.ref($p9);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2385, 17} true;
  assume {:verifier.code 0} true;
  $p11 := $bitcast.ref.ref($p6);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2385, 17} true;
  assume {:verifier.code 0} true;
  $i12 := $load.i16($M.1, $p11);
  // WARNING: %13 = load i16, i16* %12, align 2, !dbg !2561, !verifier.code !2513
  call {:cexpr "__cil_tmp16"} boogie_si_record_i16($i12);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2386, 17} true;
  assume {:verifier.code 0} true;
  $i13 := $zext.i16.i32($i12);
  // WARNING: %14 = zext i16 %13 to i32, !dbg !2564, !verifier.code !2513
  call {:cexpr "__cil_tmp17"} boogie_si_record_i32($i13);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2387, 29} true;
  assume {:verifier.code 0} true;
  $i14 := $and.i32($i13, $sub.i32(0, 61441));
  // WARNING: %15 = and i32 %14, -61441, !dbg !2567, !verifier.code !2513
  call {:cexpr "__cil_tmp18"} boogie_si_record_i32($i14);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2388, 22} true;
  assume {:verifier.code 0} true;
  $i15 := $trunc.i32.i16($i14);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2388, 3} true;
  assume {:verifier.code 0} true;
  $p16 := $bitcast.ref.ref($p6);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2388, 20} true;
  assume {:verifier.code 0} true;
  $M.1 := $store.i16($M.1, $p16, $i15);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2389, 17} true;
  assume {:verifier.code 0} true;
  $i17 := $p2i.ref.i64($p6);
  // WARNING: %18 = ptrtoint %struct.ad5903_config* %7 to i64, !dbg !2573, !verifier.code !2513
  call {:cexpr "__cil_tmp19"} boogie_si_record_i64($i17);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2390, 29} true;
  assume {:verifier.code 0} true;
  $i18 := $add.i64($i17, 2);
  // WARNING: %19 = add i64 %18, 2, !dbg !2576, !verifier.code !2513
  call {:cexpr "__cil_tmp20"} boogie_si_record_i64($i18);
  // WARNING: call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !2788, metadata !2514), !dbg !2789, !verifier.code !2516
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2392, 17} true;
  assume {:verifier.code 0} true;
  $p19 := $bitcast.ref.ref($p6);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2392, 17} true;
  assume {:verifier.code 0} true;
  $i20 := $load.i16($M.1, $p19);
  // WARNING: %21 = load i16, i16* %20, align 2, !dbg !2581, !verifier.code !2513
  call {:cexpr "__cil_tmp22"} boogie_si_record_i16($i20);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2393, 17} true;
  assume {:verifier.code 0} true;
  $i21 := $zext.i16.i32($i20);
  // WARNING: %22 = zext i16 %21 to i32, !dbg !2584, !verifier.code !2513
  call {:cexpr "__cil_tmp23"} boogie_si_record_i32($i21);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2394, 29} true;
  assume {:verifier.code 0} true;
  $i22 := $and.i32($i21, $sub.i32(0, 61441));
  // WARNING: %23 = and i32 %22, -61441, !dbg !2587, !verifier.code !2513
  call {:cexpr "__cil_tmp24"} boogie_si_record_i32($i22);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2395, 29} true;
  assume {:verifier.code 0} true;
  $i23 := $or.i32($i22, 4096);
  // WARNING: %24 = or i32 %23, 4096, !dbg !2590, !verifier.code !2513
  call {:cexpr "__cil_tmp25"} boogie_si_record_i32($i23);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2396, 27} true;
  assume {:verifier.code 0} true;
  $i24 := $trunc.i32.i16($i23);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2396, 5} true;
  assume {:verifier.code 0} true;
  $p25 := $i2p.i64.ref($i18);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2396, 25} true;
  assume {:verifier.code 0} true;
  $M.0 := $store.i16($M.0, $p25, $i24);
  // WARNING: store i16 %25, i16* %26, align 2, !dbg !2595, !verifier.code !2513
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2398, 19} true;
  assume {:verifier.code 0} true;
  $i26 := $add.i64(4, 0);
  // WARNING: %27 = add i64 4, 0, !dbg !2598, !verifier.code !2513
  call {:cexpr "__cil_tmp27"} boogie_si_record_i64($i26);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2399, 17} true;
  assume {:verifier.code 0} true;
  $i27 := $p2i.ref.i64($p6);
  // WARNING: %28 = ptrtoint %struct.ad5903_config* %7 to i64, !dbg !2601, !verifier.code !2513
  call {:cexpr "__cil_tmp28"} boogie_si_record_i64($i27);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2400, 29} true;
  assume {:verifier.code 0} true;
  $i28 := $add.i64($i27, $i26);
  // WARNING: %29 = add i64 %28, %27, !dbg !2604, !verifier.code !2513
  call {:cexpr "__cil_tmp29"} boogie_si_record_i64($i28);
  // WARNING: call void @llvm.dbg.value(metadata i64 %29, i64 0, metadata !2816, metadata !2514), !dbg !2817, !verifier.code !2516
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2402, 17} true;
  assume {:verifier.code 0} true;
  $p29 := $bitcast.ref.ref($p6);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2402, 17} true;
  assume {:verifier.code 0} true;
  $i30 := $load.i16($M.1, $p29);
  // WARNING: %31 = load i16, i16* %30, align 2, !dbg !2609, !verifier.code !2513
  call {:cexpr "__cil_tmp31"} boogie_si_record_i16($i30);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2403, 17} true;
  assume {:verifier.code 0} true;
  $i31 := $zext.i16.i32($i30);
  // WARNING: %32 = zext i16 %31 to i32, !dbg !2612, !verifier.code !2513
  call {:cexpr "__cil_tmp32"} boogie_si_record_i32($i31);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2404, 29} true;
  assume {:verifier.code 0} true;
  $i32 := $and.i32($i31, $sub.i32(0, 61441));
  // WARNING: %33 = and i32 %32, -61441, !dbg !2615, !verifier.code !2513
  call {:cexpr "__cil_tmp33"} boogie_si_record_i32($i32);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2405, 29} true;
  assume {:verifier.code 0} true;
  $i33 := $or.i32($i32, 8192);
  // WARNING: %34 = or i32 %33, 8192, !dbg !2618, !verifier.code !2513
  call {:cexpr "__cil_tmp34"} boogie_si_record_i32($i33);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2406, 27} true;
  assume {:verifier.code 0} true;
  $i34 := $trunc.i32.i16($i33);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2406, 5} true;
  assume {:verifier.code 0} true;
  $p35 := $i2p.i64.ref($i28);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2406, 25} true;
  assume {:verifier.code 0} true;
  $M.0 := $store.i16($M.0, $p35, $i34);
  // WARNING: store i16 %35, i16* %36, align 2, !dbg !2623, !verifier.code !2513
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2408, 19} true;
  assume {:verifier.code 0} true;
  $i36 := $add.i64(4, 2);
  // WARNING: %37 = add i64 4, 2, !dbg !2626, !verifier.code !2513
  call {:cexpr "__cil_tmp36"} boogie_si_record_i64($i36);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2409, 17} true;
  assume {:verifier.code 0} true;
  $i37 := $p2i.ref.i64($p6);
  // WARNING: %38 = ptrtoint %struct.ad5903_config* %7 to i64, !dbg !2629, !verifier.code !2513
  call {:cexpr "__cil_tmp37"} boogie_si_record_i64($i37);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2410, 29} true;
  assume {:verifier.code 0} true;
  $i38 := $add.i64($i37, $i36);
  // WARNING: %39 = add i64 %38, %37, !dbg !2632, !verifier.code !2513
  call {:cexpr "__cil_tmp38"} boogie_si_record_i64($i38);
  // WARNING: call void @llvm.dbg.value(metadata i64 %39, i64 0, metadata !2844, metadata !2514), !dbg !2845, !verifier.code !2516
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2412, 17} true;
  assume {:verifier.code 0} true;
  $p39 := $bitcast.ref.ref($p6);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2412, 17} true;
  assume {:verifier.code 0} true;
  $i40 := $load.i16($M.1, $p39);
  // WARNING: %41 = load i16, i16* %40, align 2, !dbg !2637, !verifier.code !2513
  call {:cexpr "__cil_tmp40"} boogie_si_record_i16($i40);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2413, 17} true;
  assume {:verifier.code 0} true;
  $i41 := $zext.i16.i32($i40);
  // WARNING: %42 = zext i16 %41 to i32, !dbg !2640, !verifier.code !2513
  call {:cexpr "__cil_tmp41"} boogie_si_record_i32($i41);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2414, 29} true;
  assume {:verifier.code 0} true;
  $i42 := $and.i32($i41, $sub.i32(0, 61441));
  // WARNING: %43 = and i32 %42, -61441, !dbg !2643, !verifier.code !2513
  call {:cexpr "__cil_tmp42"} boogie_si_record_i32($i42);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2415, 29} true;
  assume {:verifier.code 0} true;
  $i43 := $or.i32($i42, 12288);
  // WARNING: %44 = or i32 %43, 12288, !dbg !2646, !verifier.code !2513
  call {:cexpr "__cil_tmp43"} boogie_si_record_i32($i43);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2416, 27} true;
  assume {:verifier.code 0} true;
  $i44 := $trunc.i32.i16($i43);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2416, 5} true;
  assume {:verifier.code 0} true;
  $p45 := $i2p.i64.ref($i38);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2416, 25} true;
  assume {:verifier.code 0} true;
  $M.0 := $store.i16($M.0, $p45, $i44);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2417, 17} true;
  assume {:verifier.code 0} true;
  $i46 := $p2i.ref.i64($p6);
  // WARNING: %47 = ptrtoint %struct.ad5903_config* %7 to i64, !dbg !2652, !verifier.code !2513
  call {:cexpr "__cil_tmp44"} boogie_si_record_i64($i46);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2418, 29} true;
  assume {:verifier.code 0} true;
  $i47 := $add.i64($i46, 8);
  // WARNING: %48 = add i64 %47, 8, !dbg !2655, !verifier.code !2513
  call {:cexpr "__cil_tmp45"} boogie_si_record_i64($i47);
  // WARNING: call void @llvm.dbg.value(metadata i64 %48, i64 0, metadata !2867, metadata !2514), !dbg !2868, !verifier.code !2516
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2420, 17} true;
  assume {:verifier.code 0} true;
  $p48 := $bitcast.ref.ref($p6);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2420, 17} true;
  assume {:verifier.code 0} true;
  $i49 := $load.i16($M.1, $p48);
  // WARNING: %50 = load i16, i16* %49, align 2, !dbg !2660, !verifier.code !2513
  call {:cexpr "__cil_tmp47"} boogie_si_record_i16($i49);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2421, 17} true;
  assume {:verifier.code 0} true;
  $i50 := $zext.i16.i32($i49);
  // WARNING: %51 = zext i16 %50 to i32, !dbg !2663, !verifier.code !2513
  call {:cexpr "__cil_tmp48"} boogie_si_record_i32($i50);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2422, 29} true;
  assume {:verifier.code 0} true;
  $i51 := $and.i32($i50, $sub.i32(0, 61441));
  // WARNING: %52 = and i32 %51, -61441, !dbg !2666, !verifier.code !2513
  call {:cexpr "__cil_tmp49"} boogie_si_record_i32($i51);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2423, 29} true;
  assume {:verifier.code 0} true;
  $i52 := $or.i32($i51, 16384);
  // WARNING: %53 = or i32 %52, 16384, !dbg !2669, !verifier.code !2513
  call {:cexpr "__cil_tmp50"} boogie_si_record_i32($i52);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2424, 27} true;
  assume {:verifier.code 0} true;
  $i53 := $trunc.i32.i16($i52);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2424, 5} true;
  assume {:verifier.code 0} true;
  $p54 := $i2p.i64.ref($i47);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2424, 25} true;
  assume {:verifier.code 0} true;
  $M.0 := $store.i16($M.0, $p54, $i53);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2425, 17} true;
  assume {:verifier.code 0} true;
  $i55 := $p2i.ref.i64($p6);
  // WARNING: %56 = ptrtoint %struct.ad5903_config* %7 to i64, !dbg !2675, !verifier.code !2513
  call {:cexpr "__cil_tmp51"} boogie_si_record_i64($i55);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2426, 29} true;
  assume {:verifier.code 0} true;
  $i56 := $add.i64($i55, 10);
  // WARNING: %57 = add i64 %56, 10, !dbg !2678, !verifier.code !2513
  call {:cexpr "__cil_tmp52"} boogie_si_record_i64($i56);
  // WARNING: call void @llvm.dbg.value(metadata i64 %57, i64 0, metadata !2890, metadata !2514), !dbg !2891, !verifier.code !2516
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2428, 17} true;
  assume {:verifier.code 0} true;
  $p57 := $bitcast.ref.ref($p6);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2428, 17} true;
  assume {:verifier.code 0} true;
  $i58 := $load.i16($M.1, $p57);
  // WARNING: %59 = load i16, i16* %58, align 2, !dbg !2683, !verifier.code !2513
  call {:cexpr "__cil_tmp54"} boogie_si_record_i16($i58);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2429, 17} true;
  assume {:verifier.code 0} true;
  $i59 := $zext.i16.i32($i58);
  // WARNING: %60 = zext i16 %59 to i32, !dbg !2686, !verifier.code !2513
  call {:cexpr "__cil_tmp55"} boogie_si_record_i32($i59);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2430, 29} true;
  assume {:verifier.code 0} true;
  $i60 := $and.i32($i59, $sub.i32(0, 61441));
  // WARNING: %61 = and i32 %60, -61441, !dbg !2689, !verifier.code !2513
  call {:cexpr "__cil_tmp56"} boogie_si_record_i32($i60);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2431, 29} true;
  assume {:verifier.code 0} true;
  $i61 := $or.i32($i60, 32768);
  // WARNING: %62 = or i32 %61, 32768, !dbg !2692, !verifier.code !2513
  call {:cexpr "__cil_tmp57"} boogie_si_record_i32($i61);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2432, 27} true;
  assume {:verifier.code 0} true;
  $i62 := $trunc.i32.i16($i61);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2432, 5} true;
  assume {:verifier.code 0} true;
  $p63 := $i2p.i64.ref($i56);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2432, 25} true;
  assume {:verifier.code 0} true;
  $M.0 := $store.i16($M.0, $p63, $i62);
  // WARNING: store i16 %63, i16* %64, align 2, !dbg !2697, !verifier.code !2513
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2434, 20} true;
  assume {:verifier.code 0} true;
  $i64 := $add.i64(12, 0);
  // WARNING: %65 = add i64 12, 0, !dbg !2700, !verifier.code !2513
  call {:cexpr "__cil_tmp59"} boogie_si_record_i64($i64);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2435, 17} true;
  assume {:verifier.code 0} true;
  $i65 := $p2i.ref.i64($p6);
  // WARNING: %66 = ptrtoint %struct.ad5903_config* %7 to i64, !dbg !2703, !verifier.code !2513
  call {:cexpr "__cil_tmp60"} boogie_si_record_i64($i65);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2436, 29} true;
  assume {:verifier.code 0} true;
  $i66 := $add.i64($i65, $i64);
  // WARNING: %67 = add i64 %66, %65, !dbg !2706, !verifier.code !2513
  call {:cexpr "__cil_tmp61"} boogie_si_record_i64($i66);
  // WARNING: call void @llvm.dbg.value(metadata i64 %67, i64 0, metadata !2918, metadata !2514), !dbg !2919, !verifier.code !2516
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2438, 17} true;
  assume {:verifier.code 0} true;
  $p67 := $bitcast.ref.ref($p6);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2438, 17} true;
  assume {:verifier.code 0} true;
  $i68 := $load.i16($M.1, $p67);
  // WARNING: %69 = load i16, i16* %68, align 2, !dbg !2711, !verifier.code !2513
  call {:cexpr "__cil_tmp63"} boogie_si_record_i16($i68);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2439, 17} true;
  assume {:verifier.code 0} true;
  $i69 := $zext.i16.i32($i68);
  // WARNING: %70 = zext i16 %69 to i32, !dbg !2714, !verifier.code !2513
  call {:cexpr "__cil_tmp64"} boogie_si_record_i32($i69);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2440, 29} true;
  assume {:verifier.code 0} true;
  $i70 := $and.i32($i69, $sub.i32(0, 61441));
  // WARNING: %71 = and i32 %70, -61441, !dbg !2717, !verifier.code !2513
  call {:cexpr "__cil_tmp65"} boogie_si_record_i32($i70);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2441, 29} true;
  assume {:verifier.code 0} true;
  $i71 := $or.i32($i70, 49152);
  // WARNING: %72 = or i32 %71, 49152, !dbg !2720, !verifier.code !2513
  call {:cexpr "__cil_tmp66"} boogie_si_record_i32($i71);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2442, 27} true;
  assume {:verifier.code 0} true;
  $i72 := $trunc.i32.i16($i71);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2442, 5} true;
  assume {:verifier.code 0} true;
  $p73 := $i2p.i64.ref($i66);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2442, 25} true;
  assume {:verifier.code 0} true;
  $M.0 := $store.i16($M.0, $p73, $i72);
  // WARNING: store i16 %73, i16* %74, align 2, !dbg !2725, !verifier.code !2513
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2444, 20} true;
  assume {:verifier.code 0} true;
  $i74 := $add.i64(12, 2);
  // WARNING: %75 = add i64 12, 2, !dbg !2728, !verifier.code !2513
  call {:cexpr "__cil_tmp68"} boogie_si_record_i64($i74);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2445, 17} true;
  assume {:verifier.code 0} true;
  $i75 := $p2i.ref.i64($p6);
  // WARNING: %76 = ptrtoint %struct.ad5903_config* %7 to i64, !dbg !2731, !verifier.code !2513
  call {:cexpr "__cil_tmp69"} boogie_si_record_i64($i75);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2446, 29} true;
  assume {:verifier.code 0} true;
  $i76 := $add.i64($i75, $i74);
  // WARNING: %77 = add i64 %76, %75, !dbg !2734, !verifier.code !2513
  call {:cexpr "__cil_tmp70"} boogie_si_record_i64($i76);
  // WARNING: call void @llvm.dbg.value(metadata i64 %77, i64 0, metadata !2946, metadata !2514), !dbg !2947, !verifier.code !2516
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2448, 17} true;
  assume {:verifier.code 0} true;
  $p77 := $bitcast.ref.ref($p6);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2448, 17} true;
  assume {:verifier.code 0} true;
  $i78 := $load.i16($M.1, $p77);
  // WARNING: %79 = load i16, i16* %78, align 2, !dbg !2739, !verifier.code !2513
  call {:cexpr "__cil_tmp72"} boogie_si_record_i16($i78);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2449, 17} true;
  assume {:verifier.code 0} true;
  $i79 := $zext.i16.i32($i78);
  // WARNING: %80 = zext i16 %79 to i32, !dbg !2742, !verifier.code !2513
  call {:cexpr "__cil_tmp73"} boogie_si_record_i32($i79);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2450, 29} true;
  assume {:verifier.code 0} true;
  $i80 := $and.i32($i79, $sub.i32(0, 61441));
  // WARNING: %81 = and i32 %80, -61441, !dbg !2745, !verifier.code !2513
  call {:cexpr "__cil_tmp74"} boogie_si_record_i32($i80);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2451, 29} true;
  assume {:verifier.code 0} true;
  $i81 := $or.i32($i80, 53248);
  // WARNING: %82 = or i32 %81, 53248, !dbg !2748, !verifier.code !2513
  call {:cexpr "__cil_tmp75"} boogie_si_record_i32($i81);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2452, 27} true;
  assume {:verifier.code 0} true;
  $i82 := $trunc.i32.i16($i81);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2452, 5} true;
  assume {:verifier.code 0} true;
  $p83 := $i2p.i64.ref($i76);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2452, 25} true;
  assume {:verifier.code 0} true;
  $M.0 := $store.i16($M.0, $p83, $i82);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2453, 17} true;
  assume {:verifier.code 0} true;
  $i84 := $p2i.ref.i64($p5);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2453, 42} true;
  assume {:verifier.code 0} true;
  $i85 := $add.i64($i84, 16);
  // WARNING: %86 = add i64 %85, 16, !dbg !2755, !verifier.code !2513
  call {:cexpr "__cil_tmp76"} boogie_si_record_i64($i85);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2454, 36} true;
  assume {:verifier.code 0} true;
  $i86 := $trunc.i64.i32($i3);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2454, 5} true;
  assume {:verifier.code 0} true;
  $p87 := $i2p.i64.ref($i85);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2454, 34} true;
  assume {:verifier.code 0} true;
  $M.0 := $store.i32($M.0, $p87, $i86);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2456, 37} true;
  assume {:verifier.code 0} true;
  $p88 := $bitcast.ref.ref($p6);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2456, 3} true;
  assume {:verifier.code 0} true;
  $p89 := $bitcast.ref.ref($p5);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2456, 35} true;
  assume {:verifier.code 0} true;
  $M.2 := $store.ref($M.2, $p89, $p2);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2457, 17} true;
  assume {:verifier.code 0} true;
  $p90 := $bitcast.ref.ref($p10);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2458, 3} true;
  assume {:verifier.code 0} true;
  call mutex_lock($p90);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2459, 3} true;
  assume {:verifier.code 0} true;
  call spi_message_init($p4);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2460, 3} true;
  assume {:verifier.code 0} true;
  call spi_message_add_tail($p5, $p4);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2461, 17} true;
  assume {:verifier.code 0} true;
  $i91 := $p2i.ref.i64($p10);
  // WARNING: %92 = ptrtoint %struct.ad5930_state* %11 to i64, !dbg !2773, !verifier.code !2513
  call {:cexpr "__cil_tmp79"} boogie_si_record_i64($i91);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2462, 29} true;
  assume {:verifier.code 0} true;
  $i92 := $add.i64($i91, 72);
  // WARNING: %93 = add i64 %92, 72, !dbg !2776, !verifier.code !2513
  call {:cexpr "__cil_tmp80"} boogie_si_record_i64($i92);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2463, 19} true;
  assume {:verifier.code 0} true;
  $p93 := $i2p.i64.ref($i92);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2463, 17} true;
  assume {:verifier.code 0} true;
  $p94 := $load.ref($M.0, $p93);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2464, 9} true;
  assume {:verifier.code 0} true;
  call $i95 := spi_sync($p94, $p4);
  // WARNING: %96 = call i32 @spi_sync(%struct.spi_device* %95, %struct.spi_message* %5), !dbg !2783, !verifier.code !2513
  call {:cexpr "ret"} boogie_si_record_i32($i95);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2466, 7} true;
  assume {:verifier.code 0} true;
  $i96 := $ne.i32($i95, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2466, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i96} true;
  goto $bb1, $bb2;
$bb1:
  assume ($i96 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2467, 5} true;
  assume {:verifier.code 0} true;
  goto $bb3;
$bb2:
  assume !(($i96 == 1));
  assume {:verifier.code 0} true;
  goto $bb4;
$bb3:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2473, 17} true;
  assume {:verifier.code 0} true;
  $p97 := $bitcast.ref.ref($p10);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2474, 3} true;
  assume {:verifier.code 0} true;
  call mutex_unlock($p97);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2476, 7} true;
  assume {:verifier.code 0} true;
  $i98 := $ne.i32($i95, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2476, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i98} true;
  goto $bb5, $bb6;
$bb4:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2466, 7} true;
  assume {:verifier.code 0} true;
  goto $bb3;
$bb5:
  assume ($i98 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2477, 15} true;
  assume {:verifier.code 0} true;
  $i99 := $sext.i32.i64($i95);
  // WARNING: %105 = sext i32 %96 to i64, !dbg !2801, !verifier.code !2513
  call {:cexpr "tmp___9"} boogie_si_record_i64($i99);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2478, 3} true;
  assume {:verifier.code 0} true;
  $i100 := $i99;
  goto $bb7;
$bb6:
  assume !(($i98 == 1));
  assume {:verifier.code 0} true;
  $i100 := $i3;
  goto $bb7;
$bb7:
  assume {:verifier.code 0} true;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2481, 3} true;
  assume {:verifier.code 0} true;
  $r := $i100;
  $exn := false;
  return;
}
const mutex_lock: ref;
axiom (mutex_lock == $sub.ref(0, 35489));
procedure mutex_lock($p0: ref)
{
  var $i1: i32;
  var $i2: i1;
$bb0:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2876, 7} true;
  assume {:verifier.code 0} true;
  $i1 := $M.3;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2876, 17} true;
  assume {:verifier.code 0} true;
  $i2 := $eq.i32($i1, 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2876, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i2} true;
  goto $bb1, $bb2;
$bb1:
  assume ($i2 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2878, 3} true;
  assume {:verifier.code 0} true;
  goto $bb3;
$bb2:
  assume !(($i2 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2880, 5} true;
  assume {:verifier.code 0} true;
  call ldv_blast_assert();
  assume {:verifier.code 0} true;
  goto $bb3;
$bb3:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2883, 13} true;
  assume {:verifier.code 0} true;
  $M.3 := 2;
  call {:cexpr "ldv_mutex"} boogie_si_record_i32(2);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2884, 3} true;
  assume {:verifier.code 0} true;
  $exn := false;
  return;
}
const spi_message_init: ref;
axiom (spi_message_init == $sub.ref(0, 36521));
procedure spi_message_init($p0: ref)
{
  var $p1: ref;
  var $p2: ref;
$bb0:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2229, 16} true;
  assume {:verifier.code 0} true;
  $p1 := $bitcast.ref.ref($p0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2230, 3} true;
  assume {:verifier.code 0} true;
  call $M.0 := $memset.i8($M.0, $p1, 0, 80, $zext.i32.i64(1), (0 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2231, 16} true;
  assume {:verifier.code 0} true;
  $p2 := $bitcast.ref.ref($p0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2232, 3} true;
  assume {:verifier.code 0} true;
  call INIT_LIST_HEAD($p2);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2234, 3} true;
  assume {:verifier.code 0} true;
  $exn := false;
  return;
}
const spi_message_add_tail: ref;
axiom (spi_message_add_tail == $sub.ref(0, 37553));
procedure spi_message_add_tail($p0: ref, $p1: ref)
{
  var $i2: i64;
  var $i3: i64;
  var $p4: ref;
  var $p5: ref;
$bb0:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2246, 16} true;
  assume {:verifier.code 0} true;
  $i2 := $p2i.ref.i64($p0);
  // WARNING: %3 = ptrtoint %struct.spi_transfer* %0 to i64, !dbg !2535, !verifier.code !2532
  call {:cexpr "__cil_tmp3"} boogie_si_record_i64($i2);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2247, 27} true;
  assume {:verifier.code 0} true;
  $i3 := $add.i64($i2, 48);
  // WARNING: %4 = add i64 %3, 48, !dbg !2540, !verifier.code !2532
  call {:cexpr "__cil_tmp4"} boogie_si_record_i64($i3);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2248, 16} true;
  assume {:verifier.code 0} true;
  $p4 := $i2p.i64.ref($i3);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2249, 16} true;
  assume {:verifier.code 0} true;
  $p5 := $bitcast.ref.ref($p1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2250, 3} true;
  assume {:verifier.code 0} true;
  call list_add_tail($p4, $p5);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2252, 3} true;
  assume {:verifier.code 0} true;
  $exn := false;
  return;
}
const spi_sync: ref;
axiom (spi_sync == $sub.ref(0, 38585));
procedure spi_sync($p0: ref, $p1: ref)
  returns ($r: i32);
const mutex_unlock: ref;
axiom (mutex_unlock == $sub.ref(0, 39617));
procedure mutex_unlock($p0: ref)
{
  var $i1: i32;
  var $i2: i1;
$bb0:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2913, 7} true;
  assume {:verifier.code 0} true;
  $i1 := $M.3;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2913, 17} true;
  assume {:verifier.code 0} true;
  $i2 := $eq.i32($i1, 2);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2913, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i2} true;
  goto $bb1, $bb2;
$bb1:
  assume ($i2 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2915, 3} true;
  assume {:verifier.code 0} true;
  goto $bb3;
$bb2:
  assume !(($i2 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2917, 5} true;
  assume {:verifier.code 0} true;
  call ldv_blast_assert();
  assume {:verifier.code 0} true;
  goto $bb3;
$bb3:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2920, 13} true;
  assume {:verifier.code 0} true;
  $M.3 := 1;
  call {:cexpr "ldv_mutex"} boogie_si_record_i32(1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2921, 3} true;
  assume {:verifier.code 0} true;
  $exn := false;
  return;
}
const ldv_blast_assert: ref;
axiom (ldv_blast_assert == $sub.ref(0, 40649));
procedure ldv_blast_assert()
{
$bb0:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2799, 3} true;
  assume {:verifier.code 0} true;
  goto $bb1;
$bb1:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2800, 10} true;
  assume {:verifier.code 1} true;
  call __VERIFIER_error();
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2802, 1} true;
  assume {:verifier.code 0} true;
  $exn := false;
  return;
}
const list_add_tail: ref;
axiom (list_add_tail == $sub.ref(0, 41681));
procedure list_add_tail($p0: ref, $p1: ref)
{
  var $i2: i64;
  var $i3: i64;
  var $p4: ref;
  var $p5: ref;
$bb0:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2155, 16} true;
  assume {:verifier.code 0} true;
  $i2 := $p2i.ref.i64($p1);
  // WARNING: %3 = ptrtoint %struct.list_head* %1 to i64, !dbg !2521, !verifier.code !2518
  call {:cexpr "__cil_tmp3"} boogie_si_record_i64($i2);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2156, 27} true;
  assume {:verifier.code 0} true;
  $i3 := $add.i64($i2, 8);
  // WARNING: %4 = add i64 %3, 8, !dbg !2526, !verifier.code !2518
  call {:cexpr "__cil_tmp4"} boogie_si_record_i64($i3);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2157, 18} true;
  assume {:verifier.code 0} true;
  $p4 := $i2p.i64.ref($i3);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2157, 16} true;
  assume {:verifier.code 0} true;
  $p5 := $load.ref($M.0, $p4);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2158, 3} true;
  assume {:verifier.code 0} true;
  call __list_add($p0, $p5, $p1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2160, 3} true;
  assume {:verifier.code 0} true;
  $exn := false;
  return;
}
const __list_add: ref;
axiom (__list_add == $sub.ref(0, 42713));
procedure __list_add($p0: ref, $p1: ref, $p2: ref);
const llvm.memset.p0i8.i64: ref;
axiom (llvm.memset.p0i8.i64 == $sub.ref(0, 43745));
procedure llvm.memset.p0i8.i64($p0: ref, $i1: i8, $i2: i64, $i3: i32, $i4: i1);
const INIT_LIST_HEAD: ref;
axiom (INIT_LIST_HEAD == $sub.ref(0, 44777));
procedure INIT_LIST_HEAD($p0: ref)
{
  var $p1: ref;
  var $i2: i64;
  var $i3: i64;
  var $p4: ref;
$bb0:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2139, 3} true;
  assume {:verifier.code 0} true;
  $p1 := $bitcast.ref.ref($p0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2139, 32} true;
  assume {:verifier.code 0} true;
  $M.0 := $store.ref($M.0, $p1, $p0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2140, 16} true;
  assume {:verifier.code 0} true;
  $i2 := $p2i.ref.i64($p0);
  // WARNING: %3 = ptrtoint %struct.list_head* %0 to i64, !dbg !2522, !verifier.code !2518
  call {:cexpr "__cil_tmp2"} boogie_si_record_i64($i2);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2141, 27} true;
  assume {:verifier.code 0} true;
  $i3 := $add.i64($i2, 8);
  // WARNING: %4 = add i64 %3, 8, !dbg !2525, !verifier.code !2518
  call {:cexpr "__cil_tmp3"} boogie_si_record_i64($i3);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2142, 5} true;
  assume {:verifier.code 0} true;
  $p4 := $i2p.i64.ref($i3);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2142, 38} true;
  assume {:verifier.code 0} true;
  $M.0 := $store.ref($M.0, $p4, $p0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2143, 3} true;
  assume {:verifier.code 0} true;
  $exn := false;
  return;
}
const main: ref;
axiom (main == $sub.ref(0, 45809));
procedure main()
{
  var $i0: i32;
  var $i1: i32;
  var $i2: i1;
  var $i3: i1;
  var $i4: i32;
  var $i5: i1;
  var $i6: i32;
  var $i7: i1;
  var $i8: i1;
  var $i9: i32;
  var $i10: i32;
  var $i11: i32;
  var $i12: i1;
  var $i13: i32;
  var $i14: i32;
$bb0:
  call $initialize();
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2732, 20} true;
  assume {:verifier.code 0} true;
  call {:cexpr "smack:entry:main"} boogie_si_record_ref(main);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2732, 20} true;
  assume {:verifier.code 0} true;
  $M.4 := 1;
  call {:cexpr "LDV_IN_INTERRUPT"} boogie_si_record_i32(1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2733, 3} true;
  assume {:verifier.code 0} true;
  call ldv_initialize();
  // WARNING: call void @ldv_initialize(), !dbg !2517, !verifier.code !2516
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2737, 3} true;
  assume {:verifier.code 0} true;
  $i0 := 0;
  goto $bb1;
$bb1:
  assume {:verifier.code 0} true;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2737, 13} true;
  assume {:verifier.code 0} true;
  goto $bb2;
$bb2:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2740, 15} true;
  assume {:verifier.code 1} true;
  call $i1 := __VERIFIER_nondet_int();
  call {:cexpr "smack:ext:__VERIFIER_nondet_int"} boogie_si_record_i32($i1);
  // WARNING: %3 = call i32 @__VERIFIER_nondet_int(), !dbg !2525, !verifier.code !2528
  call {:cexpr "tmp___8"} boogie_si_record_i32($i1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2742, 9} true;
  assume {:verifier.code 0} true;
  $i2 := $ne.i32($i1, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2742, 9} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i2} true;
  goto $bb3, $bb4;
$bb3:
  assume ($i2 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2744, 5} true;
  assume {:verifier.code 0} true;
  goto $bb5;
$bb4:
  assume !(($i2 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2746, 51} true;
  assume {:verifier.code 0} true;
  $i3 := $eq.i32($i0, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2746, 51} true;
  assume {:verifier.code 0} true;
  $i4 := $zext.i1.i32($i3);
  // WARNING: %8 = zext i1 %7 to i32, !dbg !2536, !verifier.code !2516
  call {:cexpr "__cil_tmp5"} boogie_si_record_i32($i4);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2747, 13} true;
  assume {:verifier.code 0} true;
  $i5 := $ne.i32($i4, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2747, 11} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i5} true;
  goto $bb6, $bb7;
$bb5:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2755, 15} true;
  assume {:verifier.code 1} true;
  call $i6 := __VERIFIER_nondet_int();
  call {:cexpr "smack:ext:__VERIFIER_nondet_int"} boogie_si_record_i32($i6);
  // WARNING: %14 = call i32 @__VERIFIER_nondet_int(), !dbg !2548, !verifier.code !2528
  call {:cexpr "tmp___7"} boogie_si_record_i32($i6);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2757, 17} true;
  assume {:verifier.code 0} true;
  $i7 := $eq.i32($i6, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2757, 9} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i7} true;
  goto $bb10, $bb11;
$bb6:
  assume ($i5 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2750, 9} true;
  assume {:verifier.code 0} true;
  goto $bb9;
$bb7:
  assume !(($i5 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2749, 7} true;
  assume {:verifier.code 0} true;
  goto $bb8;
$bb8:
  assume {:verifier.code 0} true;
  goto $bb5;
$bb9:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2788, 3} true;
  assume {:verifier.code 0} true;
  goto $bb21;
$bb10:
  assume ($i7 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2758, 7} true;
  assume {:verifier.code 0} true;
  goto $bb12;
$bb11:
  assume !(($i7 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2761, 7} true;
  assume {:verifier.code 0} true;
  goto $bb13;
$bb12:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2764, 44} true;
  assume {:verifier.code 0} true;
  $i8 := $eq.i32($i0, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2764, 13} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i8} true;
  goto $bb17, $bb18;
$bb13:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2780, 9} true;
  assume {:verifier.code 0} true;
  $i14 := $i0;
  goto $bb24;
$bb14:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2762, 11} true;
  assume {:verifier.code 0} true;
  assume {:branchcond 0} true;
  goto $bb15, $bb16;
$bb15:
  assume (0 == 1);
  assume {:verifier.code 0} true;
  assume false;
$bb16:
  assume !((0 == 1));
  assume {:verifier.code 0} true;
  assume false;
$bb17:
  assume ($i8 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2766, 32} true;
  assume {:verifier.code 0} true;
  call $i9 := ad5930_probe($u0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2766, 30} true;
  assume {:verifier.code 0} true;
  $M.5 := $i9;
  call {:cexpr "res_ad5930_probe_1"} boogie_si_record_i32($i9);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2767, 34} true;
  assume {:verifier.code 0} true;
  $i10 := $M.5;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2767, 11} true;
  assume {:verifier.code 0} true;
  call ldv_check_return_value($i10);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2769, 15} true;
  assume {:verifier.code 0} true;
  $i11 := $M.5;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2769, 15} true;
  assume {:verifier.code 0} true;
  $i12 := $ne.i32($i11, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2769, 15} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i12} true;
  goto $bb19, $bb20;
$bb18:
  assume !(($i8 == 1));
  assume {:verifier.code 0} true;
  $i13 := $i0;
  goto $bb23;
$bb19:
  assume ($i12 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2770, 13} true;
  assume {:verifier.code 0} true;
  goto $bb21;
$bb20:
  assume !(($i12 == 1));
  assume {:verifier.code 0} true;
  goto $bb22;
$bb21:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2791, 3} true;
  assume {:verifier.code 0} true;
  call ldv_check_final_state();
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2793, 3} true;
  assume {:verifier.code 0} true;
  $exn := false;
  return;
$bb22:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2775, 9} true;
  assume {:verifier.code 0} true;
  $i13 := 0;
  goto $bb23;
$bb23:
  assume {:verifier.code 0} true;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2778, 9} true;
  assume {:verifier.code 0} true;
  $i14 := $i13;
  goto $bb24;
$bb24:
  assume {:verifier.code 0} true;
  assume {:verifier.code 0} true;
  goto $bb25;
$bb25:
  assume {:verifier.code 0} true;
  goto $bb26;
$bb26:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2737, 3} true;
  assume {:verifier.code 0} true;
  $i0 := $i14;
  goto $bb1;
}
const ldv_initialize: ref;
axiom (ldv_initialize == $sub.ref(0, 46841));
procedure ldv_initialize();
const ldv_check_return_value: ref;
axiom (ldv_check_return_value == $sub.ref(0, 47873));
procedure ldv_check_return_value($i0: i32);
const ldv_check_final_state: ref;
axiom (ldv_check_final_state == $sub.ref(0, 48905));
procedure ldv_check_final_state()
{
  var $i0: i32;
  var $i1: i1;
$bb0:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2928, 7} true;
  assume {:verifier.code 0} true;
  $i0 := $M.3;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2928, 17} true;
  assume {:verifier.code 0} true;
  $i1 := $eq.i32($i0, 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2928, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i1} true;
  goto $bb1, $bb2;
$bb1:
  assume ($i1 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2930, 3} true;
  assume {:verifier.code 0} true;
  goto $bb3;
$bb2:
  assume !(($i1 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2932, 5} true;
  assume {:verifier.code 0} true;
  call ldv_blast_assert();
  assume {:verifier.code 0} true;
  goto $bb3;
$bb3:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--staging--iio--dds--ad5930.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-PCdfZ3.c", 2935, 3} true;
  assume {:verifier.code 0} true;
  $exn := false;
  return;
}
const __VERIFIER_assume: ref;
axiom (__VERIFIER_assume == $sub.ref(0, 49937));
procedure __VERIFIER_assume($i0: i32)
{
$bb0:
  // WARNING: call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !3218, metadata !2514), !dbg !3219, !verifier.code !2516
  assume {:sourceloc "/mnt/local/smack-project/smack/share/smack/lib/smack.c", 260, 3} true;
  assume {:verifier.code 1} true;
  assume true;
  assume {:sourceloc "/mnt/local/smack-project/smack/share/smack/lib/smack.c", 34, 21} true;
  assume {:verifier.code 1} true;
  assume $i0 != $0;
  assume {:sourceloc "/mnt/local/smack-project/smack/share/smack/lib/smack.c", 35, 1} true;
  assume {:verifier.code 0} true;
  $exn := false;
  return;
}
const __SMACK_code: ref;
axiom (__SMACK_code == $sub.ref(0, 50969));
procedure __SMACK_code.ref($p0: ref);
procedure __SMACK_code.ref.i32($p0: ref, p.1: i32);
const __SMACK_dummy: ref;
axiom (__SMACK_dummy == $sub.ref(0, 52001));
procedure __SMACK_dummy($i0: i32)
{
$bb0:
  assume {:sourceloc "/mnt/local/smack-project/smack/share/smack/lib/smack.c", 260, 3} true;
  assume {:verifier.code 1} true;
  assume true;
  assume {:sourceloc "/mnt/local/smack-project/smack/share/smack/lib/smack.c", 261, 1} true;
  assume {:verifier.code 0} true;
  $exn := false;
  return;
}
const __VERIFIER_error: ref;
axiom (__VERIFIER_error == $sub.ref(0, 53033));
procedure __VERIFIER_error()
{
$bb0:
  assume {:sourceloc "/mnt/local/smack-project/smack/share/smack/lib/smack.c", 47, 3} true;
  assume {:verifier.code 1} true;
  assert false;
  assume {:sourceloc "/mnt/local/smack-project/smack/share/smack/lib/smack.c", 51, 1} true;
  assume {:verifier.code 0} true;
  $exn := false;
  return;
}
const __SMACK_nondet_char: ref;
axiom (__SMACK_nondet_char == $sub.ref(0, 54065));
procedure __SMACK_nondet_char()
  returns ($r: i8);
const __SMACK_nondet_signed_char: ref;
axiom (__SMACK_nondet_signed_char == $sub.ref(0, 55097));
procedure __SMACK_nondet_signed_char()
  returns ($r: i8);
const __SMACK_nondet_unsigned_char: ref;
axiom (__SMACK_nondet_unsigned_char == $sub.ref(0, 56129));
procedure __SMACK_nondet_unsigned_char()
  returns ($r: i8);
const __SMACK_nondet_short: ref;
axiom (__SMACK_nondet_short == $sub.ref(0, 57161));
procedure __SMACK_nondet_short()
  returns ($r: i16);
const __SMACK_nondet_signed_short: ref;
axiom (__SMACK_nondet_signed_short == $sub.ref(0, 58193));
procedure __SMACK_nondet_signed_short()
  returns ($r: i16);
const __SMACK_nondet_signed_short_int: ref;
axiom (__SMACK_nondet_signed_short_int == $sub.ref(0, 59225));
procedure __SMACK_nondet_signed_short_int()
  returns ($r: i16);
const __SMACK_nondet_unsigned_short: ref;
axiom (__SMACK_nondet_unsigned_short == $sub.ref(0, 60257));
procedure __SMACK_nondet_unsigned_short()
  returns ($r: i16);
const __SMACK_nondet_unsigned_short_int: ref;
axiom (__SMACK_nondet_unsigned_short_int == $sub.ref(0, 61289));
procedure __SMACK_nondet_unsigned_short_int()
  returns ($r: i16);
const __VERIFIER_nondet_int: ref;
axiom (__VERIFIER_nondet_int == $sub.ref(0, 62321));
procedure __VERIFIER_nondet_int()
  returns ($r: i32)
{
  var $i0: i32;
  var $i1: i1;
  var $i3: i1;
  var $i2: i1;
  var $i4: i32;
$bb0:
  assume {:sourceloc "/mnt/local/smack-project/smack/share/smack/lib/smack.c", 120, 11} true;
  assume {:verifier.code 1} true;
  call $i0 := __SMACK_nondet_int();
  call {:cexpr "smack:ext:__SMACK_nondet_int"} boogie_si_record_i32($i0);
  // WARNING: %1 = call i32 @__SMACK_nondet_int(), !dbg !2513, !verifier.code !2514
  call {:cexpr "x"} boogie_si_record_i32($i0);
  assume {:sourceloc "/mnt/local/smack-project/smack/share/smack/lib/smack.c", 121, 23} true;
  assume {:verifier.code 0} true;
  $i1 := $sge.i32($i0, $sub.i32(0, 2147483648));
  assume {:sourceloc "/mnt/local/smack-project/smack/share/smack/lib/smack.c", 121, 34} true;
  assume {:verifier.code 0} true;
  $i2 := 0;
  assume {:branchcond $i1} true;
  goto $bb1, $bb2;
$bb1:
  assume ($i1 == 1);
  assume {:sourceloc "/mnt/local/smack-project/smack/share/smack/lib/smack.c", 121, 39} true;
  assume {:verifier.code 1} true;
  $i3 := $sle.i32($i0, 2147483647);
  assume {:verifier.code 0} true;
  $i2 := $i3;
  goto $bb3;
$bb2:
  assume {:sourceloc "/mnt/local/smack-project/smack/share/smack/lib/smack.c", 121, 34} true;
  assume {:verifier.code 0} true;
  assume !(($i1 == 1));
  goto $bb3;
$bb3:
  assume {:verifier.code 1} true;
  assume {:sourceloc "/mnt/local/smack-project/smack/share/smack/lib/smack.c", 121, 34} true;
  assume {:verifier.code 1} true;
  $i4 := $zext.i1.i32($i2);
  assume {:sourceloc "/mnt/local/smack-project/smack/share/smack/lib/smack.c", 121, 3} true;
  assume {:verifier.code 1} true;
  call __VERIFIER_assume($i4);
  assume {:sourceloc "/mnt/local/smack-project/smack/share/smack/lib/smack.c", 122, 3} true;
  assume {:verifier.code 0} true;
  $r := $i0;
  $exn := false;
  return;
}
const __SMACK_nondet_int: ref;
axiom (__SMACK_nondet_int == $sub.ref(0, 63353));
procedure __SMACK_nondet_int()
  returns ($r: i32);
const __SMACK_nondet_signed_int: ref;
axiom (__SMACK_nondet_signed_int == $sub.ref(0, 64385));
procedure __SMACK_nondet_signed_int()
  returns ($r: i32);
const __SMACK_nondet_unsigned: ref;
axiom (__SMACK_nondet_unsigned == $sub.ref(0, 65417));
procedure __SMACK_nondet_unsigned()
  returns ($r: i32);
const __SMACK_nondet_unsigned_int: ref;
axiom (__SMACK_nondet_unsigned_int == $sub.ref(0, 66449));
procedure __SMACK_nondet_unsigned_int()
  returns ($r: i32);
const __SMACK_nondet_long: ref;
axiom (__SMACK_nondet_long == $sub.ref(0, 67481));
procedure __SMACK_nondet_long()
  returns ($r: i64);
const __SMACK_nondet_long_int: ref;
axiom (__SMACK_nondet_long_int == $sub.ref(0, 68513));
procedure __SMACK_nondet_long_int()
  returns ($r: i64);
const __SMACK_nondet_signed_long: ref;
axiom (__SMACK_nondet_signed_long == $sub.ref(0, 69545));
procedure __SMACK_nondet_signed_long()
  returns ($r: i64);
const __SMACK_nondet_signed_long_int: ref;
axiom (__SMACK_nondet_signed_long_int == $sub.ref(0, 70577));
procedure __SMACK_nondet_signed_long_int()
  returns ($r: i64);
const __SMACK_nondet_unsigned_long: ref;
axiom (__SMACK_nondet_unsigned_long == $sub.ref(0, 71609));
procedure __SMACK_nondet_unsigned_long()
  returns ($r: i64);
const __SMACK_nondet_unsigned_long_int: ref;
axiom (__SMACK_nondet_unsigned_long_int == $sub.ref(0, 72641));
procedure __SMACK_nondet_unsigned_long_int()
  returns ($r: i64);
const __SMACK_nondet_long_long: ref;
axiom (__SMACK_nondet_long_long == $sub.ref(0, 73673));
procedure __SMACK_nondet_long_long()
  returns ($r: i64);
const __SMACK_nondet_long_long_int: ref;
axiom (__SMACK_nondet_long_long_int == $sub.ref(0, 74705));
procedure __SMACK_nondet_long_long_int()
  returns ($r: i64);
const __SMACK_nondet_signed_long_long: ref;
axiom (__SMACK_nondet_signed_long_long == $sub.ref(0, 75737));
procedure __SMACK_nondet_signed_long_long()
  returns ($r: i64);
const __SMACK_nondet_signed_long_long_int: ref;
axiom (__SMACK_nondet_signed_long_long_int == $sub.ref(0, 76769));
procedure __SMACK_nondet_signed_long_long_int()
  returns ($r: i64);
const __SMACK_nondet_unsigned_long_long: ref;
axiom (__SMACK_nondet_unsigned_long_long == $sub.ref(0, 77801));
procedure __SMACK_nondet_unsigned_long_long()
  returns ($r: i64);
const __SMACK_nondet_unsigned_long_long_int: ref;
axiom (__SMACK_nondet_unsigned_long_long_int == $sub.ref(0, 78833));
procedure __SMACK_nondet_unsigned_long_long_int()
  returns ($r: i64);
const __SMACK_decls: ref;
axiom (__SMACK_decls == $sub.ref(0, 79865));
function {:inline} $bitcast.ref.ref(i: ref) returns (ref) {i}
function {:bvbuiltin "bvadd"} $add.bv128(i1: bv128, i2: bv128) returns (bv128);
function {:bvbuiltin "bvadd"} $add.bv96(i1: bv96, i2: bv96) returns (bv96);
function {:bvbuiltin "bvadd"} $add.bv88(i1: bv88, i2: bv88) returns (bv88);
function {:bvbuiltin "bvadd"} $add.bv64(i1: bv64, i2: bv64) returns (bv64);
function {:bvbuiltin "bvadd"} $add.bv56(i1: bv56, i2: bv56) returns (bv56);
function {:bvbuiltin "bvadd"} $add.bv48(i1: bv48, i2: bv48) returns (bv48);
function {:bvbuiltin "bvadd"} $add.bv40(i1: bv40, i2: bv40) returns (bv40);
function {:bvbuiltin "bvadd"} $add.bv32(i1: bv32, i2: bv32) returns (bv32);
function {:bvbuiltin "bvadd"} $add.bv24(i1: bv24, i2: bv24) returns (bv24);
function {:bvbuiltin "bvadd"} $add.bv16(i1: bv16, i2: bv16) returns (bv16);
function {:bvbuiltin "bvadd"} $add.bv8(i1: bv8, i2: bv8) returns (bv8);
function {:bvbuiltin "bvadd"} $add.bv1(i1: bv1, i2: bv1) returns (bv1);
function {:bvbuiltin "bvsub"} $sub.bv128(i1: bv128, i2: bv128) returns (bv128);
function {:bvbuiltin "bvsub"} $sub.bv96(i1: bv96, i2: bv96) returns (bv96);
function {:bvbuiltin "bvsub"} $sub.bv88(i1: bv88, i2: bv88) returns (bv88);
function {:bvbuiltin "bvsub"} $sub.bv64(i1: bv64, i2: bv64) returns (bv64);
function {:bvbuiltin "bvsub"} $sub.bv56(i1: bv56, i2: bv56) returns (bv56);
function {:bvbuiltin "bvsub"} $sub.bv48(i1: bv48, i2: bv48) returns (bv48);
function {:bvbuiltin "bvsub"} $sub.bv40(i1: bv40, i2: bv40) returns (bv40);
function {:bvbuiltin "bvsub"} $sub.bv32(i1: bv32, i2: bv32) returns (bv32);
function {:bvbuiltin "bvsub"} $sub.bv24(i1: bv24, i2: bv24) returns (bv24);
function {:bvbuiltin "bvsub"} $sub.bv16(i1: bv16, i2: bv16) returns (bv16);
function {:bvbuiltin "bvsub"} $sub.bv8(i1: bv8, i2: bv8) returns (bv8);
function {:bvbuiltin "bvsub"} $sub.bv1(i1: bv1, i2: bv1) returns (bv1);
function {:bvbuiltin "bvmul"} $mul.bv128(i1: bv128, i2: bv128) returns (bv128);
function {:bvbuiltin "bvmul"} $mul.bv96(i1: bv96, i2: bv96) returns (bv96);
function {:bvbuiltin "bvmul"} $mul.bv88(i1: bv88, i2: bv88) returns (bv88);
function {:bvbuiltin "bvmul"} $mul.bv64(i1: bv64, i2: bv64) returns (bv64);
function {:bvbuiltin "bvmul"} $mul.bv56(i1: bv56, i2: bv56) returns (bv56);
function {:bvbuiltin "bvmul"} $mul.bv48(i1: bv48, i2: bv48) returns (bv48);
function {:bvbuiltin "bvmul"} $mul.bv40(i1: bv40, i2: bv40) returns (bv40);
function {:bvbuiltin "bvmul"} $mul.bv32(i1: bv32, i2: bv32) returns (bv32);
function {:bvbuiltin "bvmul"} $mul.bv24(i1: bv24, i2: bv24) returns (bv24);
function {:bvbuiltin "bvmul"} $mul.bv16(i1: bv16, i2: bv16) returns (bv16);
function {:bvbuiltin "bvmul"} $mul.bv8(i1: bv8, i2: bv8) returns (bv8);
function {:bvbuiltin "bvmul"} $mul.bv1(i1: bv1, i2: bv1) returns (bv1);
function {:bvbuiltin "bvudiv"} $udiv.bv128(i1: bv128, i2: bv128) returns (bv128);
function {:bvbuiltin "bvudiv"} $udiv.bv96(i1: bv96, i2: bv96) returns (bv96);
function {:bvbuiltin "bvudiv"} $udiv.bv88(i1: bv88, i2: bv88) returns (bv88);
function {:bvbuiltin "bvudiv"} $udiv.bv64(i1: bv64, i2: bv64) returns (bv64);
function {:bvbuiltin "bvudiv"} $udiv.bv56(i1: bv56, i2: bv56) returns (bv56);
function {:bvbuiltin "bvudiv"} $udiv.bv48(i1: bv48, i2: bv48) returns (bv48);
function {:bvbuiltin "bvudiv"} $udiv.bv40(i1: bv40, i2: bv40) returns (bv40);
function {:bvbuiltin "bvudiv"} $udiv.bv32(i1: bv32, i2: bv32) returns (bv32);
function {:bvbuiltin "bvudiv"} $udiv.bv24(i1: bv24, i2: bv24) returns (bv24);
function {:bvbuiltin "bvudiv"} $udiv.bv16(i1: bv16, i2: bv16) returns (bv16);
function {:bvbuiltin "bvudiv"} $udiv.bv8(i1: bv8, i2: bv8) returns (bv8);
function {:bvbuiltin "bvudiv"} $udiv.bv1(i1: bv1, i2: bv1) returns (bv1);
function {:bvbuiltin "bvsdiv"} $sdiv.bv128(i1: bv128, i2: bv128) returns (bv128);
function {:bvbuiltin "bvsdiv"} $sdiv.bv96(i1: bv96, i2: bv96) returns (bv96);
function {:bvbuiltin "bvsdiv"} $sdiv.bv88(i1: bv88, i2: bv88) returns (bv88);
function {:bvbuiltin "bvsdiv"} $sdiv.bv64(i1: bv64, i2: bv64) returns (bv64);
function {:bvbuiltin "bvsdiv"} $sdiv.bv56(i1: bv56, i2: bv56) returns (bv56);
function {:bvbuiltin "bvsdiv"} $sdiv.bv48(i1: bv48, i2: bv48) returns (bv48);
function {:bvbuiltin "bvsdiv"} $sdiv.bv40(i1: bv40, i2: bv40) returns (bv40);
function {:bvbuiltin "bvsdiv"} $sdiv.bv32(i1: bv32, i2: bv32) returns (bv32);
function {:bvbuiltin "bvsdiv"} $sdiv.bv24(i1: bv24, i2: bv24) returns (bv24);
function {:bvbuiltin "bvsdiv"} $sdiv.bv16(i1: bv16, i2: bv16) returns (bv16);
function {:bvbuiltin "bvsdiv"} $sdiv.bv8(i1: bv8, i2: bv8) returns (bv8);
function {:bvbuiltin "bvsdiv"} $sdiv.bv1(i1: bv1, i2: bv1) returns (bv1);
function {:bvbuiltin "bvsmod"} $smod.bv128(i1: bv128, i2: bv128) returns (bv128);
function {:bvbuiltin "bvsmod"} $smod.bv96(i1: bv96, i2: bv96) returns (bv96);
function {:bvbuiltin "bvsmod"} $smod.bv88(i1: bv88, i2: bv88) returns (bv88);
function {:bvbuiltin "bvsmod"} $smod.bv64(i1: bv64, i2: bv64) returns (bv64);
function {:bvbuiltin "bvsmod"} $smod.bv56(i1: bv56, i2: bv56) returns (bv56);
function {:bvbuiltin "bvsmod"} $smod.bv48(i1: bv48, i2: bv48) returns (bv48);
function {:bvbuiltin "bvsmod"} $smod.bv40(i1: bv40, i2: bv40) returns (bv40);
function {:bvbuiltin "bvsmod"} $smod.bv32(i1: bv32, i2: bv32) returns (bv32);
function {:bvbuiltin "bvsmod"} $smod.bv24(i1: bv24, i2: bv24) returns (bv24);
function {:bvbuiltin "bvsmod"} $smod.bv16(i1: bv16, i2: bv16) returns (bv16);
function {:bvbuiltin "bvsmod"} $smod.bv8(i1: bv8, i2: bv8) returns (bv8);
function {:bvbuiltin "bvsmod"} $smod.bv1(i1: bv1, i2: bv1) returns (bv1);
function {:bvbuiltin "bvsrem"} $srem.bv128(i1: bv128, i2: bv128) returns (bv128);
function {:bvbuiltin "bvsrem"} $srem.bv96(i1: bv96, i2: bv96) returns (bv96);
function {:bvbuiltin "bvsrem"} $srem.bv88(i1: bv88, i2: bv88) returns (bv88);
function {:bvbuiltin "bvsrem"} $srem.bv64(i1: bv64, i2: bv64) returns (bv64);
function {:bvbuiltin "bvsrem"} $srem.bv56(i1: bv56, i2: bv56) returns (bv56);
function {:bvbuiltin "bvsrem"} $srem.bv48(i1: bv48, i2: bv48) returns (bv48);
function {:bvbuiltin "bvsrem"} $srem.bv40(i1: bv40, i2: bv40) returns (bv40);
function {:bvbuiltin "bvsrem"} $srem.bv32(i1: bv32, i2: bv32) returns (bv32);
function {:bvbuiltin "bvsrem"} $srem.bv24(i1: bv24, i2: bv24) returns (bv24);
function {:bvbuiltin "bvsrem"} $srem.bv16(i1: bv16, i2: bv16) returns (bv16);
function {:bvbuiltin "bvsrem"} $srem.bv8(i1: bv8, i2: bv8) returns (bv8);
function {:bvbuiltin "bvsrem"} $srem.bv1(i1: bv1, i2: bv1) returns (bv1);
function {:bvbuiltin "bvurem"} $urem.bv128(i1: bv128, i2: bv128) returns (bv128);
function {:bvbuiltin "bvurem"} $urem.bv96(i1: bv96, i2: bv96) returns (bv96);
function {:bvbuiltin "bvurem"} $urem.bv88(i1: bv88, i2: bv88) returns (bv88);
function {:bvbuiltin "bvurem"} $urem.bv64(i1: bv64, i2: bv64) returns (bv64);
function {:bvbuiltin "bvurem"} $urem.bv56(i1: bv56, i2: bv56) returns (bv56);
function {:bvbuiltin "bvurem"} $urem.bv48(i1: bv48, i2: bv48) returns (bv48);
function {:bvbuiltin "bvurem"} $urem.bv40(i1: bv40, i2: bv40) returns (bv40);
function {:bvbuiltin "bvurem"} $urem.bv32(i1: bv32, i2: bv32) returns (bv32);
function {:bvbuiltin "bvurem"} $urem.bv24(i1: bv24, i2: bv24) returns (bv24);
function {:bvbuiltin "bvurem"} $urem.bv16(i1: bv16, i2: bv16) returns (bv16);
function {:bvbuiltin "bvurem"} $urem.bv8(i1: bv8, i2: bv8) returns (bv8);
function {:bvbuiltin "bvurem"} $urem.bv1(i1: bv1, i2: bv1) returns (bv1);
function {:inline} $min.bv128(i1: bv128, i2: bv128) returns (bv128) {if $slt.bv128.bool(i1,i2) then i1 else i2}
function {:inline} $min.bv96(i1: bv96, i2: bv96) returns (bv96) {if $slt.bv96.bool(i1,i2) then i1 else i2}
function {:inline} $min.bv88(i1: bv88, i2: bv88) returns (bv88) {if $slt.bv88.bool(i1,i2) then i1 else i2}
function {:inline} $min.bv64(i1: bv64, i2: bv64) returns (bv64) {if $slt.bv64.bool(i1,i2) then i1 else i2}
function {:inline} $min.bv56(i1: bv56, i2: bv56) returns (bv56) {if $slt.bv56.bool(i1,i2) then i1 else i2}
function {:inline} $min.bv48(i1: bv48, i2: bv48) returns (bv48) {if $slt.bv48.bool(i1,i2) then i1 else i2}
function {:inline} $min.bv40(i1: bv40, i2: bv40) returns (bv40) {if $slt.bv40.bool(i1,i2) then i1 else i2}
function {:inline} $min.bv32(i1: bv32, i2: bv32) returns (bv32) {if $slt.bv32.bool(i1,i2) then i1 else i2}
function {:inline} $min.bv24(i1: bv24, i2: bv24) returns (bv24) {if $slt.bv24.bool(i1,i2) then i1 else i2}
function {:inline} $min.bv16(i1: bv16, i2: bv16) returns (bv16) {if $slt.bv16.bool(i1,i2) then i1 else i2}
function {:inline} $min.bv8(i1: bv8, i2: bv8) returns (bv8) {if $slt.bv8.bool(i1,i2) then i1 else i2}
function {:inline} $min.bv1(i1: bv1, i2: bv1) returns (bv1) {if $slt.bv1.bool(i1,i2) then i1 else i2}
function {:inline} $max.bv128(i1: bv128, i2: bv128) returns (bv128) {if $sgt.bv128.bool(i1,i2) then i1 else i2}
function {:inline} $max.bv96(i1: bv96, i2: bv96) returns (bv96) {if $sgt.bv96.bool(i1,i2) then i1 else i2}
function {:inline} $max.bv88(i1: bv88, i2: bv88) returns (bv88) {if $sgt.bv88.bool(i1,i2) then i1 else i2}
function {:inline} $max.bv64(i1: bv64, i2: bv64) returns (bv64) {if $sgt.bv64.bool(i1,i2) then i1 else i2}
function {:inline} $max.bv56(i1: bv56, i2: bv56) returns (bv56) {if $sgt.bv56.bool(i1,i2) then i1 else i2}
function {:inline} $max.bv48(i1: bv48, i2: bv48) returns (bv48) {if $sgt.bv48.bool(i1,i2) then i1 else i2}
function {:inline} $max.bv40(i1: bv40, i2: bv40) returns (bv40) {if $sgt.bv40.bool(i1,i2) then i1 else i2}
function {:inline} $max.bv32(i1: bv32, i2: bv32) returns (bv32) {if $sgt.bv32.bool(i1,i2) then i1 else i2}
function {:inline} $max.bv24(i1: bv24, i2: bv24) returns (bv24) {if $sgt.bv24.bool(i1,i2) then i1 else i2}
function {:inline} $max.bv16(i1: bv16, i2: bv16) returns (bv16) {if $sgt.bv16.bool(i1,i2) then i1 else i2}
function {:inline} $max.bv8(i1: bv8, i2: bv8) returns (bv8) {if $sgt.bv8.bool(i1,i2) then i1 else i2}
function {:inline} $max.bv1(i1: bv1, i2: bv1) returns (bv1) {if $sgt.bv1.bool(i1,i2) then i1 else i2}
function {:inline} $umin.bv128(i1: bv128, i2: bv128) returns (bv128) {if $ult.bv128.bool(i1,i2) then i1 else i2}
function {:inline} $umin.bv96(i1: bv96, i2: bv96) returns (bv96) {if $ult.bv96.bool(i1,i2) then i1 else i2}
function {:inline} $umin.bv88(i1: bv88, i2: bv88) returns (bv88) {if $ult.bv88.bool(i1,i2) then i1 else i2}
function {:inline} $umin.bv64(i1: bv64, i2: bv64) returns (bv64) {if $ult.bv64.bool(i1,i2) then i1 else i2}
function {:inline} $umin.bv56(i1: bv56, i2: bv56) returns (bv56) {if $ult.bv56.bool(i1,i2) then i1 else i2}
function {:inline} $umin.bv48(i1: bv48, i2: bv48) returns (bv48) {if $ult.bv48.bool(i1,i2) then i1 else i2}
function {:inline} $umin.bv40(i1: bv40, i2: bv40) returns (bv40) {if $ult.bv40.bool(i1,i2) then i1 else i2}
function {:inline} $umin.bv32(i1: bv32, i2: bv32) returns (bv32) {if $ult.bv32.bool(i1,i2) then i1 else i2}
function {:inline} $umin.bv24(i1: bv24, i2: bv24) returns (bv24) {if $ult.bv24.bool(i1,i2) then i1 else i2}
function {:inline} $umin.bv16(i1: bv16, i2: bv16) returns (bv16) {if $ult.bv16.bool(i1,i2) then i1 else i2}
function {:inline} $umin.bv8(i1: bv8, i2: bv8) returns (bv8) {if $ult.bv8.bool(i1,i2) then i1 else i2}
function {:inline} $umin.bv1(i1: bv1, i2: bv1) returns (bv1) {if $ult.bv1.bool(i1,i2) then i1 else i2}
function {:inline} $umax.bv128(i1: bv128, i2: bv128) returns (bv128) {if $ugt.bv128.bool(i1,i2) then i1 else i2}
function {:inline} $umax.bv96(i1: bv96, i2: bv96) returns (bv96) {if $ugt.bv96.bool(i1,i2) then i1 else i2}
function {:inline} $umax.bv88(i1: bv88, i2: bv88) returns (bv88) {if $ugt.bv88.bool(i1,i2) then i1 else i2}
function {:inline} $umax.bv64(i1: bv64, i2: bv64) returns (bv64) {if $ugt.bv64.bool(i1,i2) then i1 else i2}
function {:inline} $umax.bv56(i1: bv56, i2: bv56) returns (bv56) {if $ugt.bv56.bool(i1,i2) then i1 else i2}
function {:inline} $umax.bv48(i1: bv48, i2: bv48) returns (bv48) {if $ugt.bv48.bool(i1,i2) then i1 else i2}
function {:inline} $umax.bv40(i1: bv40, i2: bv40) returns (bv40) {if $ugt.bv40.bool(i1,i2) then i1 else i2}
function {:inline} $umax.bv32(i1: bv32, i2: bv32) returns (bv32) {if $ugt.bv32.bool(i1,i2) then i1 else i2}
function {:inline} $umax.bv24(i1: bv24, i2: bv24) returns (bv24) {if $ugt.bv24.bool(i1,i2) then i1 else i2}
function {:inline} $umax.bv16(i1: bv16, i2: bv16) returns (bv16) {if $ugt.bv16.bool(i1,i2) then i1 else i2}
function {:inline} $umax.bv8(i1: bv8, i2: bv8) returns (bv8) {if $ugt.bv8.bool(i1,i2) then i1 else i2}
function {:inline} $umax.bv1(i1: bv1, i2: bv1) returns (bv1) {if $ugt.bv1.bool(i1,i2) then i1 else i2}
function {:bvbuiltin "bvshl"} $shl.bv128(i1: bv128, i2: bv128) returns (bv128);
function {:bvbuiltin "bvshl"} $shl.bv96(i1: bv96, i2: bv96) returns (bv96);
function {:bvbuiltin "bvshl"} $shl.bv88(i1: bv88, i2: bv88) returns (bv88);
function {:bvbuiltin "bvshl"} $shl.bv64(i1: bv64, i2: bv64) returns (bv64);
function {:bvbuiltin "bvshl"} $shl.bv56(i1: bv56, i2: bv56) returns (bv56);
function {:bvbuiltin "bvshl"} $shl.bv48(i1: bv48, i2: bv48) returns (bv48);
function {:bvbuiltin "bvshl"} $shl.bv40(i1: bv40, i2: bv40) returns (bv40);
function {:bvbuiltin "bvshl"} $shl.bv32(i1: bv32, i2: bv32) returns (bv32);
function {:bvbuiltin "bvshl"} $shl.bv24(i1: bv24, i2: bv24) returns (bv24);
function {:bvbuiltin "bvshl"} $shl.bv16(i1: bv16, i2: bv16) returns (bv16);
function {:bvbuiltin "bvshl"} $shl.bv8(i1: bv8, i2: bv8) returns (bv8);
function {:bvbuiltin "bvshl"} $shl.bv1(i1: bv1, i2: bv1) returns (bv1);
function {:bvbuiltin "bvlshr"} $lshr.bv128(i1: bv128, i2: bv128) returns (bv128);
function {:bvbuiltin "bvlshr"} $lshr.bv96(i1: bv96, i2: bv96) returns (bv96);
function {:bvbuiltin "bvlshr"} $lshr.bv88(i1: bv88, i2: bv88) returns (bv88);
function {:bvbuiltin "bvlshr"} $lshr.bv64(i1: bv64, i2: bv64) returns (bv64);
function {:bvbuiltin "bvlshr"} $lshr.bv56(i1: bv56, i2: bv56) returns (bv56);
function {:bvbuiltin "bvlshr"} $lshr.bv48(i1: bv48, i2: bv48) returns (bv48);
function {:bvbuiltin "bvlshr"} $lshr.bv40(i1: bv40, i2: bv40) returns (bv40);
function {:bvbuiltin "bvlshr"} $lshr.bv32(i1: bv32, i2: bv32) returns (bv32);
function {:bvbuiltin "bvlshr"} $lshr.bv24(i1: bv24, i2: bv24) returns (bv24);
function {:bvbuiltin "bvlshr"} $lshr.bv16(i1: bv16, i2: bv16) returns (bv16);
function {:bvbuiltin "bvlshr"} $lshr.bv8(i1: bv8, i2: bv8) returns (bv8);
function {:bvbuiltin "bvlshr"} $lshr.bv1(i1: bv1, i2: bv1) returns (bv1);
function {:bvbuiltin "bvashr"} $ashr.bv128(i1: bv128, i2: bv128) returns (bv128);
function {:bvbuiltin "bvashr"} $ashr.bv96(i1: bv96, i2: bv96) returns (bv96);
function {:bvbuiltin "bvashr"} $ashr.bv88(i1: bv88, i2: bv88) returns (bv88);
function {:bvbuiltin "bvashr"} $ashr.bv64(i1: bv64, i2: bv64) returns (bv64);
function {:bvbuiltin "bvashr"} $ashr.bv56(i1: bv56, i2: bv56) returns (bv56);
function {:bvbuiltin "bvashr"} $ashr.bv48(i1: bv48, i2: bv48) returns (bv48);
function {:bvbuiltin "bvashr"} $ashr.bv40(i1: bv40, i2: bv40) returns (bv40);
function {:bvbuiltin "bvashr"} $ashr.bv32(i1: bv32, i2: bv32) returns (bv32);
function {:bvbuiltin "bvashr"} $ashr.bv24(i1: bv24, i2: bv24) returns (bv24);
function {:bvbuiltin "bvashr"} $ashr.bv16(i1: bv16, i2: bv16) returns (bv16);
function {:bvbuiltin "bvashr"} $ashr.bv8(i1: bv8, i2: bv8) returns (bv8);
function {:bvbuiltin "bvashr"} $ashr.bv1(i1: bv1, i2: bv1) returns (bv1);
function {:bvbuiltin "bvnot"} $not.bv128(i: bv128) returns (bv128);
function {:bvbuiltin "bvnot"} $not.bv96(i: bv96) returns (bv96);
function {:bvbuiltin "bvnot"} $not.bv88(i: bv88) returns (bv88);
function {:bvbuiltin "bvnot"} $not.bv64(i: bv64) returns (bv64);
function {:bvbuiltin "bvnot"} $not.bv56(i: bv56) returns (bv56);
function {:bvbuiltin "bvnot"} $not.bv48(i: bv48) returns (bv48);
function {:bvbuiltin "bvnot"} $not.bv40(i: bv40) returns (bv40);
function {:bvbuiltin "bvnot"} $not.bv32(i: bv32) returns (bv32);
function {:bvbuiltin "bvnot"} $not.bv24(i: bv24) returns (bv24);
function {:bvbuiltin "bvnot"} $not.bv16(i: bv16) returns (bv16);
function {:bvbuiltin "bvnot"} $not.bv8(i: bv8) returns (bv8);
function {:bvbuiltin "bvnot"} $not.bv1(i: bv1) returns (bv1);
function {:bvbuiltin "bvand"} $and.bv128(i1: bv128, i2: bv128) returns (bv128);
function {:bvbuiltin "bvand"} $and.bv96(i1: bv96, i2: bv96) returns (bv96);
function {:bvbuiltin "bvand"} $and.bv88(i1: bv88, i2: bv88) returns (bv88);
function {:bvbuiltin "bvand"} $and.bv64(i1: bv64, i2: bv64) returns (bv64);
function {:bvbuiltin "bvand"} $and.bv56(i1: bv56, i2: bv56) returns (bv56);
function {:bvbuiltin "bvand"} $and.bv48(i1: bv48, i2: bv48) returns (bv48);
function {:bvbuiltin "bvand"} $and.bv40(i1: bv40, i2: bv40) returns (bv40);
function {:bvbuiltin "bvand"} $and.bv32(i1: bv32, i2: bv32) returns (bv32);
function {:bvbuiltin "bvand"} $and.bv24(i1: bv24, i2: bv24) returns (bv24);
function {:bvbuiltin "bvand"} $and.bv16(i1: bv16, i2: bv16) returns (bv16);
function {:bvbuiltin "bvand"} $and.bv8(i1: bv8, i2: bv8) returns (bv8);
function {:bvbuiltin "bvand"} $and.bv1(i1: bv1, i2: bv1) returns (bv1);
function {:bvbuiltin "bvor"} $or.bv128(i1: bv128, i2: bv128) returns (bv128);
function {:bvbuiltin "bvor"} $or.bv96(i1: bv96, i2: bv96) returns (bv96);
function {:bvbuiltin "bvor"} $or.bv88(i1: bv88, i2: bv88) returns (bv88);
function {:bvbuiltin "bvor"} $or.bv64(i1: bv64, i2: bv64) returns (bv64);
function {:bvbuiltin "bvor"} $or.bv56(i1: bv56, i2: bv56) returns (bv56);
function {:bvbuiltin "bvor"} $or.bv48(i1: bv48, i2: bv48) returns (bv48);
function {:bvbuiltin "bvor"} $or.bv40(i1: bv40, i2: bv40) returns (bv40);
function {:bvbuiltin "bvor"} $or.bv32(i1: bv32, i2: bv32) returns (bv32);
function {:bvbuiltin "bvor"} $or.bv24(i1: bv24, i2: bv24) returns (bv24);
function {:bvbuiltin "bvor"} $or.bv16(i1: bv16, i2: bv16) returns (bv16);
function {:bvbuiltin "bvor"} $or.bv8(i1: bv8, i2: bv8) returns (bv8);
function {:bvbuiltin "bvor"} $or.bv1(i1: bv1, i2: bv1) returns (bv1);
function {:bvbuiltin "bvxor"} $xor.bv128(i1: bv128, i2: bv128) returns (bv128);
function {:bvbuiltin "bvxor"} $xor.bv96(i1: bv96, i2: bv96) returns (bv96);
function {:bvbuiltin "bvxor"} $xor.bv88(i1: bv88, i2: bv88) returns (bv88);
function {:bvbuiltin "bvxor"} $xor.bv64(i1: bv64, i2: bv64) returns (bv64);
function {:bvbuiltin "bvxor"} $xor.bv56(i1: bv56, i2: bv56) returns (bv56);
function {:bvbuiltin "bvxor"} $xor.bv48(i1: bv48, i2: bv48) returns (bv48);
function {:bvbuiltin "bvxor"} $xor.bv40(i1: bv40, i2: bv40) returns (bv40);
function {:bvbuiltin "bvxor"} $xor.bv32(i1: bv32, i2: bv32) returns (bv32);
function {:bvbuiltin "bvxor"} $xor.bv24(i1: bv24, i2: bv24) returns (bv24);
function {:bvbuiltin "bvxor"} $xor.bv16(i1: bv16, i2: bv16) returns (bv16);
function {:bvbuiltin "bvxor"} $xor.bv8(i1: bv8, i2: bv8) returns (bv8);
function {:bvbuiltin "bvxor"} $xor.bv1(i1: bv1, i2: bv1) returns (bv1);
function {:bvbuiltin "bvnand"} $nand.bv128(i1: bv128, i2: bv128) returns (bv128);
function {:bvbuiltin "bvnand"} $nand.bv96(i1: bv96, i2: bv96) returns (bv96);
function {:bvbuiltin "bvnand"} $nand.bv88(i1: bv88, i2: bv88) returns (bv88);
function {:bvbuiltin "bvnand"} $nand.bv64(i1: bv64, i2: bv64) returns (bv64);
function {:bvbuiltin "bvnand"} $nand.bv56(i1: bv56, i2: bv56) returns (bv56);
function {:bvbuiltin "bvnand"} $nand.bv48(i1: bv48, i2: bv48) returns (bv48);
function {:bvbuiltin "bvnand"} $nand.bv40(i1: bv40, i2: bv40) returns (bv40);
function {:bvbuiltin "bvnand"} $nand.bv32(i1: bv32, i2: bv32) returns (bv32);
function {:bvbuiltin "bvnand"} $nand.bv24(i1: bv24, i2: bv24) returns (bv24);
function {:bvbuiltin "bvnand"} $nand.bv16(i1: bv16, i2: bv16) returns (bv16);
function {:bvbuiltin "bvnand"} $nand.bv8(i1: bv8, i2: bv8) returns (bv8);
function {:bvbuiltin "bvnand"} $nand.bv1(i1: bv1, i2: bv1) returns (bv1);
function {:inline} $eq.bv128.bool(i1: bv128, i2: bv128) returns (bool) {i1 == i2} function {:inline} $eq.bv128(i1: bv128, i2: bv128) returns (bv1) {if i1 == i2 then 1bv1 else 0bv1}
function {:inline} $eq.bv96.bool(i1: bv96, i2: bv96) returns (bool) {i1 == i2} function {:inline} $eq.bv96(i1: bv96, i2: bv96) returns (bv1) {if i1 == i2 then 1bv1 else 0bv1}
function {:inline} $eq.bv88.bool(i1: bv88, i2: bv88) returns (bool) {i1 == i2} function {:inline} $eq.bv88(i1: bv88, i2: bv88) returns (bv1) {if i1 == i2 then 1bv1 else 0bv1}
function {:inline} $eq.bv64.bool(i1: bv64, i2: bv64) returns (bool) {i1 == i2} function {:inline} $eq.bv64(i1: bv64, i2: bv64) returns (bv1) {if i1 == i2 then 1bv1 else 0bv1}
function {:inline} $eq.bv56.bool(i1: bv56, i2: bv56) returns (bool) {i1 == i2} function {:inline} $eq.bv56(i1: bv56, i2: bv56) returns (bv1) {if i1 == i2 then 1bv1 else 0bv1}
function {:inline} $eq.bv48.bool(i1: bv48, i2: bv48) returns (bool) {i1 == i2} function {:inline} $eq.bv48(i1: bv48, i2: bv48) returns (bv1) {if i1 == i2 then 1bv1 else 0bv1}
function {:inline} $eq.bv40.bool(i1: bv40, i2: bv40) returns (bool) {i1 == i2} function {:inline} $eq.bv40(i1: bv40, i2: bv40) returns (bv1) {if i1 == i2 then 1bv1 else 0bv1}
function {:inline} $eq.bv32.bool(i1: bv32, i2: bv32) returns (bool) {i1 == i2} function {:inline} $eq.bv32(i1: bv32, i2: bv32) returns (bv1) {if i1 == i2 then 1bv1 else 0bv1}
function {:inline} $eq.bv24.bool(i1: bv24, i2: bv24) returns (bool) {i1 == i2} function {:inline} $eq.bv24(i1: bv24, i2: bv24) returns (bv1) {if i1 == i2 then 1bv1 else 0bv1}
function {:inline} $eq.bv16.bool(i1: bv16, i2: bv16) returns (bool) {i1 == i2} function {:inline} $eq.bv16(i1: bv16, i2: bv16) returns (bv1) {if i1 == i2 then 1bv1 else 0bv1}
function {:inline} $eq.bv8.bool(i1: bv8, i2: bv8) returns (bool) {i1 == i2} function {:inline} $eq.bv8(i1: bv8, i2: bv8) returns (bv1) {if i1 == i2 then 1bv1 else 0bv1}
function {:inline} $eq.bv1.bool(i1: bv1, i2: bv1) returns (bool) {i1 == i2} function {:inline} $eq.bv1(i1: bv1, i2: bv1) returns (bv1) {if i1 == i2 then 1bv1 else 0bv1}
function {:inline} $ne.bv128.bool(i1: bv128, i2: bv128) returns (bool) {i1 != i2} function {:inline} $ne.bv128(i1: bv128, i2: bv128) returns (bv1) {if i1 != i2 then 1bv1 else 0bv1}
function {:inline} $ne.bv96.bool(i1: bv96, i2: bv96) returns (bool) {i1 != i2} function {:inline} $ne.bv96(i1: bv96, i2: bv96) returns (bv1) {if i1 != i2 then 1bv1 else 0bv1}
function {:inline} $ne.bv88.bool(i1: bv88, i2: bv88) returns (bool) {i1 != i2} function {:inline} $ne.bv88(i1: bv88, i2: bv88) returns (bv1) {if i1 != i2 then 1bv1 else 0bv1}
function {:inline} $ne.bv64.bool(i1: bv64, i2: bv64) returns (bool) {i1 != i2} function {:inline} $ne.bv64(i1: bv64, i2: bv64) returns (bv1) {if i1 != i2 then 1bv1 else 0bv1}
function {:inline} $ne.bv56.bool(i1: bv56, i2: bv56) returns (bool) {i1 != i2} function {:inline} $ne.bv56(i1: bv56, i2: bv56) returns (bv1) {if i1 != i2 then 1bv1 else 0bv1}
function {:inline} $ne.bv48.bool(i1: bv48, i2: bv48) returns (bool) {i1 != i2} function {:inline} $ne.bv48(i1: bv48, i2: bv48) returns (bv1) {if i1 != i2 then 1bv1 else 0bv1}
function {:inline} $ne.bv40.bool(i1: bv40, i2: bv40) returns (bool) {i1 != i2} function {:inline} $ne.bv40(i1: bv40, i2: bv40) returns (bv1) {if i1 != i2 then 1bv1 else 0bv1}
function {:inline} $ne.bv32.bool(i1: bv32, i2: bv32) returns (bool) {i1 != i2} function {:inline} $ne.bv32(i1: bv32, i2: bv32) returns (bv1) {if i1 != i2 then 1bv1 else 0bv1}
function {:inline} $ne.bv24.bool(i1: bv24, i2: bv24) returns (bool) {i1 != i2} function {:inline} $ne.bv24(i1: bv24, i2: bv24) returns (bv1) {if i1 != i2 then 1bv1 else 0bv1}
function {:inline} $ne.bv16.bool(i1: bv16, i2: bv16) returns (bool) {i1 != i2} function {:inline} $ne.bv16(i1: bv16, i2: bv16) returns (bv1) {if i1 != i2 then 1bv1 else 0bv1}
function {:inline} $ne.bv8.bool(i1: bv8, i2: bv8) returns (bool) {i1 != i2} function {:inline} $ne.bv8(i1: bv8, i2: bv8) returns (bv1) {if i1 != i2 then 1bv1 else 0bv1}
function {:inline} $ne.bv1.bool(i1: bv1, i2: bv1) returns (bool) {i1 != i2} function {:inline} $ne.bv1(i1: bv1, i2: bv1) returns (bv1) {if i1 != i2 then 1bv1 else 0bv1}
function {:bvbuiltin "bvule"} $ule.bv128.bool(i1: bv128, i2: bv128) returns (bool); function {:inline} $ule.bv128(i1: bv128, i2: bv128) returns (bv1) {if $ule.bv128.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvule"} $ule.bv96.bool(i1: bv96, i2: bv96) returns (bool); function {:inline} $ule.bv96(i1: bv96, i2: bv96) returns (bv1) {if $ule.bv96.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvule"} $ule.bv88.bool(i1: bv88, i2: bv88) returns (bool); function {:inline} $ule.bv88(i1: bv88, i2: bv88) returns (bv1) {if $ule.bv88.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvule"} $ule.bv64.bool(i1: bv64, i2: bv64) returns (bool); function {:inline} $ule.bv64(i1: bv64, i2: bv64) returns (bv1) {if $ule.bv64.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvule"} $ule.bv56.bool(i1: bv56, i2: bv56) returns (bool); function {:inline} $ule.bv56(i1: bv56, i2: bv56) returns (bv1) {if $ule.bv56.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvule"} $ule.bv48.bool(i1: bv48, i2: bv48) returns (bool); function {:inline} $ule.bv48(i1: bv48, i2: bv48) returns (bv1) {if $ule.bv48.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvule"} $ule.bv40.bool(i1: bv40, i2: bv40) returns (bool); function {:inline} $ule.bv40(i1: bv40, i2: bv40) returns (bv1) {if $ule.bv40.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvule"} $ule.bv32.bool(i1: bv32, i2: bv32) returns (bool); function {:inline} $ule.bv32(i1: bv32, i2: bv32) returns (bv1) {if $ule.bv32.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvule"} $ule.bv24.bool(i1: bv24, i2: bv24) returns (bool); function {:inline} $ule.bv24(i1: bv24, i2: bv24) returns (bv1) {if $ule.bv24.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvule"} $ule.bv16.bool(i1: bv16, i2: bv16) returns (bool); function {:inline} $ule.bv16(i1: bv16, i2: bv16) returns (bv1) {if $ule.bv16.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvule"} $ule.bv8.bool(i1: bv8, i2: bv8) returns (bool); function {:inline} $ule.bv8(i1: bv8, i2: bv8) returns (bv1) {if $ule.bv8.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvule"} $ule.bv1.bool(i1: bv1, i2: bv1) returns (bool); function {:inline} $ule.bv1(i1: bv1, i2: bv1) returns (bv1) {if $ule.bv1.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvult"} $ult.bv128.bool(i1: bv128, i2: bv128) returns (bool); function {:inline} $ult.bv128(i1: bv128, i2: bv128) returns (bv1) {if $ult.bv128.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvult"} $ult.bv96.bool(i1: bv96, i2: bv96) returns (bool); function {:inline} $ult.bv96(i1: bv96, i2: bv96) returns (bv1) {if $ult.bv96.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvult"} $ult.bv88.bool(i1: bv88, i2: bv88) returns (bool); function {:inline} $ult.bv88(i1: bv88, i2: bv88) returns (bv1) {if $ult.bv88.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvult"} $ult.bv64.bool(i1: bv64, i2: bv64) returns (bool); function {:inline} $ult.bv64(i1: bv64, i2: bv64) returns (bv1) {if $ult.bv64.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvult"} $ult.bv56.bool(i1: bv56, i2: bv56) returns (bool); function {:inline} $ult.bv56(i1: bv56, i2: bv56) returns (bv1) {if $ult.bv56.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvult"} $ult.bv48.bool(i1: bv48, i2: bv48) returns (bool); function {:inline} $ult.bv48(i1: bv48, i2: bv48) returns (bv1) {if $ult.bv48.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvult"} $ult.bv40.bool(i1: bv40, i2: bv40) returns (bool); function {:inline} $ult.bv40(i1: bv40, i2: bv40) returns (bv1) {if $ult.bv40.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvult"} $ult.bv32.bool(i1: bv32, i2: bv32) returns (bool); function {:inline} $ult.bv32(i1: bv32, i2: bv32) returns (bv1) {if $ult.bv32.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvult"} $ult.bv24.bool(i1: bv24, i2: bv24) returns (bool); function {:inline} $ult.bv24(i1: bv24, i2: bv24) returns (bv1) {if $ult.bv24.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvult"} $ult.bv16.bool(i1: bv16, i2: bv16) returns (bool); function {:inline} $ult.bv16(i1: bv16, i2: bv16) returns (bv1) {if $ult.bv16.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvult"} $ult.bv8.bool(i1: bv8, i2: bv8) returns (bool); function {:inline} $ult.bv8(i1: bv8, i2: bv8) returns (bv1) {if $ult.bv8.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvult"} $ult.bv1.bool(i1: bv1, i2: bv1) returns (bool); function {:inline} $ult.bv1(i1: bv1, i2: bv1) returns (bv1) {if $ult.bv1.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvuge"} $uge.bv128.bool(i1: bv128, i2: bv128) returns (bool); function {:inline} $uge.bv128(i1: bv128, i2: bv128) returns (bv1) {if $uge.bv128.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvuge"} $uge.bv96.bool(i1: bv96, i2: bv96) returns (bool); function {:inline} $uge.bv96(i1: bv96, i2: bv96) returns (bv1) {if $uge.bv96.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvuge"} $uge.bv88.bool(i1: bv88, i2: bv88) returns (bool); function {:inline} $uge.bv88(i1: bv88, i2: bv88) returns (bv1) {if $uge.bv88.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvuge"} $uge.bv64.bool(i1: bv64, i2: bv64) returns (bool); function {:inline} $uge.bv64(i1: bv64, i2: bv64) returns (bv1) {if $uge.bv64.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvuge"} $uge.bv56.bool(i1: bv56, i2: bv56) returns (bool); function {:inline} $uge.bv56(i1: bv56, i2: bv56) returns (bv1) {if $uge.bv56.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvuge"} $uge.bv48.bool(i1: bv48, i2: bv48) returns (bool); function {:inline} $uge.bv48(i1: bv48, i2: bv48) returns (bv1) {if $uge.bv48.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvuge"} $uge.bv40.bool(i1: bv40, i2: bv40) returns (bool); function {:inline} $uge.bv40(i1: bv40, i2: bv40) returns (bv1) {if $uge.bv40.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvuge"} $uge.bv32.bool(i1: bv32, i2: bv32) returns (bool); function {:inline} $uge.bv32(i1: bv32, i2: bv32) returns (bv1) {if $uge.bv32.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvuge"} $uge.bv24.bool(i1: bv24, i2: bv24) returns (bool); function {:inline} $uge.bv24(i1: bv24, i2: bv24) returns (bv1) {if $uge.bv24.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvuge"} $uge.bv16.bool(i1: bv16, i2: bv16) returns (bool); function {:inline} $uge.bv16(i1: bv16, i2: bv16) returns (bv1) {if $uge.bv16.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvuge"} $uge.bv8.bool(i1: bv8, i2: bv8) returns (bool); function {:inline} $uge.bv8(i1: bv8, i2: bv8) returns (bv1) {if $uge.bv8.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvuge"} $uge.bv1.bool(i1: bv1, i2: bv1) returns (bool); function {:inline} $uge.bv1(i1: bv1, i2: bv1) returns (bv1) {if $uge.bv1.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvugt"} $ugt.bv128.bool(i1: bv128, i2: bv128) returns (bool); function {:inline} $ugt.bv128(i1: bv128, i2: bv128) returns (bv1) {if $ugt.bv128.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvugt"} $ugt.bv96.bool(i1: bv96, i2: bv96) returns (bool); function {:inline} $ugt.bv96(i1: bv96, i2: bv96) returns (bv1) {if $ugt.bv96.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvugt"} $ugt.bv88.bool(i1: bv88, i2: bv88) returns (bool); function {:inline} $ugt.bv88(i1: bv88, i2: bv88) returns (bv1) {if $ugt.bv88.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvugt"} $ugt.bv64.bool(i1: bv64, i2: bv64) returns (bool); function {:inline} $ugt.bv64(i1: bv64, i2: bv64) returns (bv1) {if $ugt.bv64.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvugt"} $ugt.bv56.bool(i1: bv56, i2: bv56) returns (bool); function {:inline} $ugt.bv56(i1: bv56, i2: bv56) returns (bv1) {if $ugt.bv56.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvugt"} $ugt.bv48.bool(i1: bv48, i2: bv48) returns (bool); function {:inline} $ugt.bv48(i1: bv48, i2: bv48) returns (bv1) {if $ugt.bv48.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvugt"} $ugt.bv40.bool(i1: bv40, i2: bv40) returns (bool); function {:inline} $ugt.bv40(i1: bv40, i2: bv40) returns (bv1) {if $ugt.bv40.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvugt"} $ugt.bv32.bool(i1: bv32, i2: bv32) returns (bool); function {:inline} $ugt.bv32(i1: bv32, i2: bv32) returns (bv1) {if $ugt.bv32.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvugt"} $ugt.bv24.bool(i1: bv24, i2: bv24) returns (bool); function {:inline} $ugt.bv24(i1: bv24, i2: bv24) returns (bv1) {if $ugt.bv24.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvugt"} $ugt.bv16.bool(i1: bv16, i2: bv16) returns (bool); function {:inline} $ugt.bv16(i1: bv16, i2: bv16) returns (bv1) {if $ugt.bv16.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvugt"} $ugt.bv8.bool(i1: bv8, i2: bv8) returns (bool); function {:inline} $ugt.bv8(i1: bv8, i2: bv8) returns (bv1) {if $ugt.bv8.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvugt"} $ugt.bv1.bool(i1: bv1, i2: bv1) returns (bool); function {:inline} $ugt.bv1(i1: bv1, i2: bv1) returns (bv1) {if $ugt.bv1.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvsle"} $sle.bv128.bool(i1: bv128, i2: bv128) returns (bool); function {:inline} $sle.bv128(i1: bv128, i2: bv128) returns (bv1) {if $sle.bv128.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvsle"} $sle.bv96.bool(i1: bv96, i2: bv96) returns (bool); function {:inline} $sle.bv96(i1: bv96, i2: bv96) returns (bv1) {if $sle.bv96.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvsle"} $sle.bv88.bool(i1: bv88, i2: bv88) returns (bool); function {:inline} $sle.bv88(i1: bv88, i2: bv88) returns (bv1) {if $sle.bv88.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvsle"} $sle.bv64.bool(i1: bv64, i2: bv64) returns (bool); function {:inline} $sle.bv64(i1: bv64, i2: bv64) returns (bv1) {if $sle.bv64.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvsle"} $sle.bv56.bool(i1: bv56, i2: bv56) returns (bool); function {:inline} $sle.bv56(i1: bv56, i2: bv56) returns (bv1) {if $sle.bv56.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvsle"} $sle.bv48.bool(i1: bv48, i2: bv48) returns (bool); function {:inline} $sle.bv48(i1: bv48, i2: bv48) returns (bv1) {if $sle.bv48.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvsle"} $sle.bv40.bool(i1: bv40, i2: bv40) returns (bool); function {:inline} $sle.bv40(i1: bv40, i2: bv40) returns (bv1) {if $sle.bv40.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvsle"} $sle.bv32.bool(i1: bv32, i2: bv32) returns (bool); function {:inline} $sle.bv32(i1: bv32, i2: bv32) returns (bv1) {if $sle.bv32.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvsle"} $sle.bv24.bool(i1: bv24, i2: bv24) returns (bool); function {:inline} $sle.bv24(i1: bv24, i2: bv24) returns (bv1) {if $sle.bv24.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvsle"} $sle.bv16.bool(i1: bv16, i2: bv16) returns (bool); function {:inline} $sle.bv16(i1: bv16, i2: bv16) returns (bv1) {if $sle.bv16.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvsle"} $sle.bv8.bool(i1: bv8, i2: bv8) returns (bool); function {:inline} $sle.bv8(i1: bv8, i2: bv8) returns (bv1) {if $sle.bv8.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvsle"} $sle.bv1.bool(i1: bv1, i2: bv1) returns (bool); function {:inline} $sle.bv1(i1: bv1, i2: bv1) returns (bv1) {if $sle.bv1.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvslt"} $slt.bv128.bool(i1: bv128, i2: bv128) returns (bool); function {:inline} $slt.bv128(i1: bv128, i2: bv128) returns (bv1) {if $slt.bv128.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvslt"} $slt.bv96.bool(i1: bv96, i2: bv96) returns (bool); function {:inline} $slt.bv96(i1: bv96, i2: bv96) returns (bv1) {if $slt.bv96.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvslt"} $slt.bv88.bool(i1: bv88, i2: bv88) returns (bool); function {:inline} $slt.bv88(i1: bv88, i2: bv88) returns (bv1) {if $slt.bv88.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvslt"} $slt.bv64.bool(i1: bv64, i2: bv64) returns (bool); function {:inline} $slt.bv64(i1: bv64, i2: bv64) returns (bv1) {if $slt.bv64.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvslt"} $slt.bv56.bool(i1: bv56, i2: bv56) returns (bool); function {:inline} $slt.bv56(i1: bv56, i2: bv56) returns (bv1) {if $slt.bv56.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvslt"} $slt.bv48.bool(i1: bv48, i2: bv48) returns (bool); function {:inline} $slt.bv48(i1: bv48, i2: bv48) returns (bv1) {if $slt.bv48.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvslt"} $slt.bv40.bool(i1: bv40, i2: bv40) returns (bool); function {:inline} $slt.bv40(i1: bv40, i2: bv40) returns (bv1) {if $slt.bv40.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvslt"} $slt.bv32.bool(i1: bv32, i2: bv32) returns (bool); function {:inline} $slt.bv32(i1: bv32, i2: bv32) returns (bv1) {if $slt.bv32.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvslt"} $slt.bv24.bool(i1: bv24, i2: bv24) returns (bool); function {:inline} $slt.bv24(i1: bv24, i2: bv24) returns (bv1) {if $slt.bv24.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvslt"} $slt.bv16.bool(i1: bv16, i2: bv16) returns (bool); function {:inline} $slt.bv16(i1: bv16, i2: bv16) returns (bv1) {if $slt.bv16.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvslt"} $slt.bv8.bool(i1: bv8, i2: bv8) returns (bool); function {:inline} $slt.bv8(i1: bv8, i2: bv8) returns (bv1) {if $slt.bv8.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvslt"} $slt.bv1.bool(i1: bv1, i2: bv1) returns (bool); function {:inline} $slt.bv1(i1: bv1, i2: bv1) returns (bv1) {if $slt.bv1.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvsge"} $sge.bv128.bool(i1: bv128, i2: bv128) returns (bool); function {:inline} $sge.bv128(i1: bv128, i2: bv128) returns (bv1) {if $sge.bv128.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvsge"} $sge.bv96.bool(i1: bv96, i2: bv96) returns (bool); function {:inline} $sge.bv96(i1: bv96, i2: bv96) returns (bv1) {if $sge.bv96.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvsge"} $sge.bv88.bool(i1: bv88, i2: bv88) returns (bool); function {:inline} $sge.bv88(i1: bv88, i2: bv88) returns (bv1) {if $sge.bv88.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvsge"} $sge.bv64.bool(i1: bv64, i2: bv64) returns (bool); function {:inline} $sge.bv64(i1: bv64, i2: bv64) returns (bv1) {if $sge.bv64.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvsge"} $sge.bv56.bool(i1: bv56, i2: bv56) returns (bool); function {:inline} $sge.bv56(i1: bv56, i2: bv56) returns (bv1) {if $sge.bv56.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvsge"} $sge.bv48.bool(i1: bv48, i2: bv48) returns (bool); function {:inline} $sge.bv48(i1: bv48, i2: bv48) returns (bv1) {if $sge.bv48.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvsge"} $sge.bv40.bool(i1: bv40, i2: bv40) returns (bool); function {:inline} $sge.bv40(i1: bv40, i2: bv40) returns (bv1) {if $sge.bv40.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvsge"} $sge.bv32.bool(i1: bv32, i2: bv32) returns (bool); function {:inline} $sge.bv32(i1: bv32, i2: bv32) returns (bv1) {if $sge.bv32.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvsge"} $sge.bv24.bool(i1: bv24, i2: bv24) returns (bool); function {:inline} $sge.bv24(i1: bv24, i2: bv24) returns (bv1) {if $sge.bv24.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvsge"} $sge.bv16.bool(i1: bv16, i2: bv16) returns (bool); function {:inline} $sge.bv16(i1: bv16, i2: bv16) returns (bv1) {if $sge.bv16.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvsge"} $sge.bv8.bool(i1: bv8, i2: bv8) returns (bool); function {:inline} $sge.bv8(i1: bv8, i2: bv8) returns (bv1) {if $sge.bv8.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvsge"} $sge.bv1.bool(i1: bv1, i2: bv1) returns (bool); function {:inline} $sge.bv1(i1: bv1, i2: bv1) returns (bv1) {if $sge.bv1.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvsgt"} $sgt.bv128.bool(i1: bv128, i2: bv128) returns (bool); function {:inline} $sgt.bv128(i1: bv128, i2: bv128) returns (bv1) {if $sgt.bv128.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvsgt"} $sgt.bv96.bool(i1: bv96, i2: bv96) returns (bool); function {:inline} $sgt.bv96(i1: bv96, i2: bv96) returns (bv1) {if $sgt.bv96.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvsgt"} $sgt.bv88.bool(i1: bv88, i2: bv88) returns (bool); function {:inline} $sgt.bv88(i1: bv88, i2: bv88) returns (bv1) {if $sgt.bv88.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvsgt"} $sgt.bv64.bool(i1: bv64, i2: bv64) returns (bool); function {:inline} $sgt.bv64(i1: bv64, i2: bv64) returns (bv1) {if $sgt.bv64.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvsgt"} $sgt.bv56.bool(i1: bv56, i2: bv56) returns (bool); function {:inline} $sgt.bv56(i1: bv56, i2: bv56) returns (bv1) {if $sgt.bv56.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvsgt"} $sgt.bv48.bool(i1: bv48, i2: bv48) returns (bool); function {:inline} $sgt.bv48(i1: bv48, i2: bv48) returns (bv1) {if $sgt.bv48.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvsgt"} $sgt.bv40.bool(i1: bv40, i2: bv40) returns (bool); function {:inline} $sgt.bv40(i1: bv40, i2: bv40) returns (bv1) {if $sgt.bv40.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvsgt"} $sgt.bv32.bool(i1: bv32, i2: bv32) returns (bool); function {:inline} $sgt.bv32(i1: bv32, i2: bv32) returns (bv1) {if $sgt.bv32.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvsgt"} $sgt.bv24.bool(i1: bv24, i2: bv24) returns (bool); function {:inline} $sgt.bv24(i1: bv24, i2: bv24) returns (bv1) {if $sgt.bv24.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvsgt"} $sgt.bv16.bool(i1: bv16, i2: bv16) returns (bool); function {:inline} $sgt.bv16(i1: bv16, i2: bv16) returns (bv1) {if $sgt.bv16.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvsgt"} $sgt.bv8.bool(i1: bv8, i2: bv8) returns (bool); function {:inline} $sgt.bv8(i1: bv8, i2: bv8) returns (bv1) {if $sgt.bv8.bool(i1,i2) then 1bv1 else 0bv1}
function {:bvbuiltin "bvsgt"} $sgt.bv1.bool(i1: bv1, i2: bv1) returns (bool); function {:inline} $sgt.bv1(i1: bv1, i2: bv1) returns (bv1) {if $sgt.bv1.bool(i1,i2) then 1bv1 else 0bv1}
function {:inline} $trunc.bv128.bv96(i: bv128) returns (bv96) {i[96:0]}
function {:inline} $trunc.bv128.bv88(i: bv128) returns (bv88) {i[88:0]}
function {:inline} $trunc.bv128.bv64(i: bv128) returns (bv64) {i[64:0]}
function {:inline} $trunc.bv128.bv56(i: bv128) returns (bv56) {i[56:0]}
function {:inline} $trunc.bv128.bv48(i: bv128) returns (bv48) {i[48:0]}
function {:inline} $trunc.bv128.bv40(i: bv128) returns (bv40) {i[40:0]}
function {:inline} $trunc.bv128.bv32(i: bv128) returns (bv32) {i[32:0]}
function {:inline} $trunc.bv128.bv24(i: bv128) returns (bv24) {i[24:0]}
function {:inline} $trunc.bv128.bv16(i: bv128) returns (bv16) {i[16:0]}
function {:inline} $trunc.bv128.bv8(i: bv128) returns (bv8) {i[8:0]}
function {:inline} $trunc.bv128.bv1(i: bv128) returns (bv1) {i[1:0]}
function {:inline} $trunc.bv96.bv88(i: bv96) returns (bv88) {i[88:0]}
function {:inline} $trunc.bv96.bv64(i: bv96) returns (bv64) {i[64:0]}
function {:inline} $trunc.bv96.bv56(i: bv96) returns (bv56) {i[56:0]}
function {:inline} $trunc.bv96.bv48(i: bv96) returns (bv48) {i[48:0]}
function {:inline} $trunc.bv96.bv40(i: bv96) returns (bv40) {i[40:0]}
function {:inline} $trunc.bv96.bv32(i: bv96) returns (bv32) {i[32:0]}
function {:inline} $trunc.bv96.bv24(i: bv96) returns (bv24) {i[24:0]}
function {:inline} $trunc.bv96.bv16(i: bv96) returns (bv16) {i[16:0]}
function {:inline} $trunc.bv96.bv8(i: bv96) returns (bv8) {i[8:0]}
function {:inline} $trunc.bv96.bv1(i: bv96) returns (bv1) {i[1:0]}
function {:inline} $trunc.bv88.bv64(i: bv88) returns (bv64) {i[64:0]}
function {:inline} $trunc.bv88.bv56(i: bv88) returns (bv56) {i[56:0]}
function {:inline} $trunc.bv88.bv48(i: bv88) returns (bv48) {i[48:0]}
function {:inline} $trunc.bv88.bv40(i: bv88) returns (bv40) {i[40:0]}
function {:inline} $trunc.bv88.bv32(i: bv88) returns (bv32) {i[32:0]}
function {:inline} $trunc.bv88.bv24(i: bv88) returns (bv24) {i[24:0]}
function {:inline} $trunc.bv88.bv16(i: bv88) returns (bv16) {i[16:0]}
function {:inline} $trunc.bv88.bv8(i: bv88) returns (bv8) {i[8:0]}
function {:inline} $trunc.bv88.bv1(i: bv88) returns (bv1) {i[1:0]}
function {:inline} $trunc.bv64.bv56(i: bv64) returns (bv56) {i[56:0]}
function {:inline} $trunc.bv64.bv48(i: bv64) returns (bv48) {i[48:0]}
function {:inline} $trunc.bv64.bv40(i: bv64) returns (bv40) {i[40:0]}
function {:inline} $trunc.bv64.bv32(i: bv64) returns (bv32) {i[32:0]}
function {:inline} $trunc.bv64.bv24(i: bv64) returns (bv24) {i[24:0]}
function {:inline} $trunc.bv64.bv16(i: bv64) returns (bv16) {i[16:0]}
function {:inline} $trunc.bv64.bv8(i: bv64) returns (bv8) {i[8:0]}
function {:inline} $trunc.bv64.bv1(i: bv64) returns (bv1) {i[1:0]}
function {:inline} $trunc.bv56.bv48(i: bv56) returns (bv48) {i[48:0]}
function {:inline} $trunc.bv56.bv40(i: bv56) returns (bv40) {i[40:0]}
function {:inline} $trunc.bv56.bv32(i: bv56) returns (bv32) {i[32:0]}
function {:inline} $trunc.bv56.bv24(i: bv56) returns (bv24) {i[24:0]}
function {:inline} $trunc.bv56.bv16(i: bv56) returns (bv16) {i[16:0]}
function {:inline} $trunc.bv56.bv8(i: bv56) returns (bv8) {i[8:0]}
function {:inline} $trunc.bv56.bv1(i: bv56) returns (bv1) {i[1:0]}
function {:inline} $trunc.bv48.bv32(i: bv48) returns (bv32) {i[32:0]}
function {:inline} $trunc.bv48.bv24(i: bv48) returns (bv24) {i[24:0]}
function {:inline} $trunc.bv48.bv16(i: bv48) returns (bv16) {i[16:0]}
function {:inline} $trunc.bv48.bv8(i: bv48) returns (bv8) {i[8:0]}
function {:inline} $trunc.bv48.bv1(i: bv48) returns (bv1) {i[1:0]}
function {:inline} $trunc.bv40.bv32(i: bv40) returns (bv32) {i[32:0]}
function {:inline} $trunc.bv40.bv24(i: bv40) returns (bv24) {i[24:0]}
function {:inline} $trunc.bv40.bv16(i: bv40) returns (bv16) {i[16:0]}
function {:inline} $trunc.bv40.bv8(i: bv40) returns (bv8) {i[8:0]}
function {:inline} $trunc.bv40.bv1(i: bv40) returns (bv1) {i[1:0]}
function {:inline} $trunc.bv32.bv24(i: bv32) returns (bv24) {i[24:0]}
function {:inline} $trunc.bv32.bv16(i: bv32) returns (bv16) {i[16:0]}
function {:inline} $trunc.bv32.bv8(i: bv32) returns (bv8) {i[8:0]}
function {:inline} $trunc.bv32.bv1(i: bv32) returns (bv1) {i[1:0]}
function {:inline} $trunc.bv24.bv16(i: bv24) returns (bv16) {i[16:0]}
function {:inline} $trunc.bv24.bv8(i: bv24) returns (bv8) {i[8:0]}
function {:inline} $trunc.bv24.bv1(i: bv24) returns (bv1) {i[1:0]}
function {:inline} $trunc.bv16.bv8(i: bv16) returns (bv8) {i[8:0]}
function {:inline} $trunc.bv16.bv1(i: bv16) returns (bv1) {i[1:0]}
function {:inline} $trunc.bv8.bv1(i: bv8) returns (bv1) {i[1:0]}
function {:inline} $zext.bv1.bv8(i: bv1) returns (bv8) {if i == 0bv1 then 0bv8 else 1bv8}
function {:inline} $zext.bv1.bv16(i: bv1) returns (bv16) {if i == 0bv1 then 0bv16 else 1bv16}
function {:inline} $zext.bv1.bv24(i: bv1) returns (bv24) {if i == 0bv1 then 0bv24 else 1bv24}
function {:inline} $zext.bv1.bv32(i: bv1) returns (bv32) {if i == 0bv1 then 0bv32 else 1bv32}
function {:inline} $zext.bv1.bv40(i: bv1) returns (bv40) {if i == 0bv1 then 0bv40 else 1bv40}
function {:inline} $zext.bv1.bv48(i: bv1) returns (bv48) {if i == 0bv1 then 0bv48 else 1bv48}
function {:inline} $zext.bv1.bv56(i: bv1) returns (bv56) {if i == 0bv1 then 0bv56 else 1bv56}
function {:inline} $zext.bv1.bv64(i: bv1) returns (bv64) {if i == 0bv1 then 0bv64 else 1bv64}
function {:inline} $zext.bv1.bv88(i: bv1) returns (bv88) {if i == 0bv1 then 0bv88 else 1bv88}
function {:inline} $zext.bv1.bv96(i: bv1) returns (bv96) {if i == 0bv1 then 0bv96 else 1bv96}
function {:inline} $zext.bv1.bv128(i: bv1) returns (bv128) {if i == 0bv1 then 0bv128 else 1bv128}
function {:bvbuiltin "(_ zero_extend 8)"} $zext.bv8.bv16(i: bv8) returns (bv16);
function {:bvbuiltin "(_ zero_extend 16)"} $zext.bv8.bv24(i: bv8) returns (bv24);
function {:bvbuiltin "(_ zero_extend 24)"} $zext.bv8.bv32(i: bv8) returns (bv32);
function {:bvbuiltin "(_ zero_extend 32)"} $zext.bv8.bv40(i: bv8) returns (bv40);
function {:bvbuiltin "(_ zero_extend 40)"} $zext.bv8.bv48(i: bv8) returns (bv48);
function {:bvbuiltin "(_ zero_extend 48)"} $zext.bv8.bv56(i: bv8) returns (bv56);
function {:bvbuiltin "(_ zero_extend 56)"} $zext.bv8.bv64(i: bv8) returns (bv64);
function {:bvbuiltin "(_ zero_extend 80)"} $zext.bv8.bv88(i: bv8) returns (bv88);
function {:bvbuiltin "(_ zero_extend 88)"} $zext.bv8.bv96(i: bv8) returns (bv96);
function {:bvbuiltin "(_ zero_extend 120)"} $zext.bv8.bv128(i: bv8) returns (bv128);
function {:bvbuiltin "(_ zero_extend 8)"} $zext.bv16.bv24(i: bv16) returns (bv24);
function {:bvbuiltin "(_ zero_extend 16)"} $zext.bv16.bv32(i: bv16) returns (bv32);
function {:bvbuiltin "(_ zero_extend 24)"} $zext.bv16.bv40(i: bv16) returns (bv40);
function {:bvbuiltin "(_ zero_extend 32)"} $zext.bv16.bv48(i: bv16) returns (bv48);
function {:bvbuiltin "(_ zero_extend 40)"} $zext.bv16.bv56(i: bv16) returns (bv56);
function {:bvbuiltin "(_ zero_extend 48)"} $zext.bv16.bv64(i: bv16) returns (bv64);
function {:bvbuiltin "(_ zero_extend 72)"} $zext.bv16.bv88(i: bv16) returns (bv88);
function {:bvbuiltin "(_ zero_extend 80)"} $zext.bv16.bv96(i: bv16) returns (bv96);
function {:bvbuiltin "(_ zero_extend 112)"} $zext.bv16.bv128(i: bv16) returns (bv128);
function {:bvbuiltin "(_ zero_extend 8)"} $zext.bv24.bv32(i: bv24) returns (bv32);
function {:bvbuiltin "(_ zero_extend 16)"} $zext.bv24.bv40(i: bv24) returns (bv40);
function {:bvbuiltin "(_ zero_extend 24)"} $zext.bv24.bv48(i: bv24) returns (bv48);
function {:bvbuiltin "(_ zero_extend 32)"} $zext.bv24.bv56(i: bv24) returns (bv56);
function {:bvbuiltin "(_ zero_extend 40)"} $zext.bv24.bv64(i: bv24) returns (bv64);
function {:bvbuiltin "(_ zero_extend 64)"} $zext.bv24.bv88(i: bv24) returns (bv88);
function {:bvbuiltin "(_ zero_extend 72)"} $zext.bv24.bv96(i: bv24) returns (bv96);
function {:bvbuiltin "(_ zero_extend 104)"} $zext.bv24.bv128(i: bv24) returns (bv128);
function {:bvbuiltin "(_ zero_extend 8)"} $zext.bv32.bv40(i: bv32) returns (bv40);
function {:bvbuiltin "(_ zero_extend 16)"} $zext.bv32.bv48(i: bv32) returns (bv48);
function {:bvbuiltin "(_ zero_extend 24)"} $zext.bv32.bv56(i: bv32) returns (bv56);
function {:bvbuiltin "(_ zero_extend 32)"} $zext.bv32.bv64(i: bv32) returns (bv64);
function {:bvbuiltin "(_ zero_extend 56)"} $zext.bv32.bv88(i: bv32) returns (bv88);
function {:bvbuiltin "(_ zero_extend 64)"} $zext.bv32.bv96(i: bv32) returns (bv96);
function {:bvbuiltin "(_ zero_extend 96)"} $zext.bv32.bv128(i: bv32) returns (bv128);
function {:bvbuiltin "(_ zero_extend 8)"} $zext.bv40.bv48(i: bv40) returns (bv48);
function {:bvbuiltin "(_ zero_extend 16)"} $zext.bv40.bv56(i: bv40) returns (bv56);
function {:bvbuiltin "(_ zero_extend 24)"} $zext.bv40.bv64(i: bv40) returns (bv64);
function {:bvbuiltin "(_ zero_extend 48)"} $zext.bv40.bv88(i: bv40) returns (bv88);
function {:bvbuiltin "(_ zero_extend 56)"} $zext.bv40.bv96(i: bv40) returns (bv96);
function {:bvbuiltin "(_ zero_extend 88)"} $zext.bv40.bv128(i: bv40) returns (bv128);
function {:bvbuiltin "(_ zero_extend 16)"} $zext.bv48.bv64(i: bv48) returns (bv64);
function {:bvbuiltin "(_ zero_extend 40)"} $zext.bv48.bv88(i: bv48) returns (bv88);
function {:bvbuiltin "(_ zero_extend 48)"} $zext.bv48.bv96(i: bv48) returns (bv96);
function {:bvbuiltin "(_ zero_extend 80)"} $zext.bv48.bv128(i: bv48) returns (bv128);
function {:bvbuiltin "(_ zero_extend 8)"} $zext.bv56.bv64(i: bv56) returns (bv64);
function {:bvbuiltin "(_ zero_extend 32)"} $zext.bv56.bv88(i: bv56) returns (bv88);
function {:bvbuiltin "(_ zero_extend 40)"} $zext.bv56.bv96(i: bv56) returns (bv96);
function {:bvbuiltin "(_ zero_extend 72)"} $zext.bv56.bv128(i: bv56) returns (bv128);
function {:bvbuiltin "(_ zero_extend 24)"} $zext.bv64.bv88(i: bv64) returns (bv88);
function {:bvbuiltin "(_ zero_extend 32)"} $zext.bv64.bv96(i: bv64) returns (bv96);
function {:bvbuiltin "(_ zero_extend 64)"} $zext.bv64.bv128(i: bv64) returns (bv128);
function {:bvbuiltin "(_ zero_extend 8)"} $zext.bv88.bv96(i: bv88) returns (bv96);
function {:bvbuiltin "(_ zero_extend 40)"} $zext.bv88.bv128(i: bv88) returns (bv128);
function {:bvbuiltin "(_ zero_extend 32)"} $zext.bv96.bv128(i: bv96) returns (bv128);
function {:inline} $sext.bv1.bv8(i: bv1) returns (bv8) {if i == 0bv1 then 0bv8 else 255bv8}
function {:inline} $sext.bv1.bv16(i: bv1) returns (bv16) {if i == 0bv1 then 0bv16 else 65535bv16}
function {:inline} $sext.bv1.bv24(i: bv1) returns (bv24) {if i == 0bv1 then 0bv24 else 16777215bv24}
function {:inline} $sext.bv1.bv32(i: bv1) returns (bv32) {if i == 0bv1 then 0bv32 else 4294967295bv32}
function {:inline} $sext.bv1.bv40(i: bv1) returns (bv40) {if i == 0bv1 then 0bv40 else 1099511627775bv40}
function {:inline} $sext.bv1.bv48(i: bv1) returns (bv48) {if i == 0bv1 then 0bv48 else 281474976710655bv48}
function {:inline} $sext.bv1.bv56(i: bv1) returns (bv56) {if i == 0bv1 then 0bv56 else 72057594037927935bv56}
function {:inline} $sext.bv1.bv64(i: bv1) returns (bv64) {if i == 0bv1 then 0bv64 else 18446744073709551615bv64}
function {:inline} $sext.bv1.bv88(i: bv1) returns (bv88) {if i == 0bv1 then 0bv88 else 309485009821345068724781055bv88}
function {:inline} $sext.bv1.bv96(i: bv1) returns (bv96) {if i == 0bv1 then 0bv96 else 79228162514264337593543950335bv96}
function {:inline} $sext.bv1.bv128(i: bv1) returns (bv128) {if i == 0bv1 then 0bv128 else 340282366920938463463374607431768211455bv128}
function {:bvbuiltin "(_ sign_extend 8)"} $sext.bv8.bv16(i: bv8) returns (bv16);
function {:bvbuiltin "(_ sign_extend 16)"} $sext.bv8.bv24(i: bv8) returns (bv24);
function {:bvbuiltin "(_ sign_extend 24)"} $sext.bv8.bv32(i: bv8) returns (bv32);
function {:bvbuiltin "(_ sign_extend 32)"} $sext.bv8.bv40(i: bv8) returns (bv40);
function {:bvbuiltin "(_ sign_extend 40)"} $sext.bv8.bv48(i: bv8) returns (bv48);
function {:bvbuiltin "(_ sign_extend 48)"} $sext.bv8.bv56(i: bv8) returns (bv56);
function {:bvbuiltin "(_ sign_extend 56)"} $sext.bv8.bv64(i: bv8) returns (bv64);
function {:bvbuiltin "(_ sign_extend 80)"} $sext.bv8.bv88(i: bv8) returns (bv88);
function {:bvbuiltin "(_ sign_extend 88)"} $sext.bv8.bv96(i: bv8) returns (bv96);
function {:bvbuiltin "(_ sign_extend 120)"} $sext.bv8.bv128(i: bv8) returns (bv128);
function {:bvbuiltin "(_ sign_extend 8)"} $sext.bv16.bv24(i: bv16) returns (bv24);
function {:bvbuiltin "(_ sign_extend 16)"} $sext.bv16.bv32(i: bv16) returns (bv32);
function {:bvbuiltin "(_ sign_extend 24)"} $sext.bv16.bv40(i: bv16) returns (bv40);
function {:bvbuiltin "(_ sign_extend 32)"} $sext.bv16.bv48(i: bv16) returns (bv48);
function {:bvbuiltin "(_ sign_extend 40)"} $sext.bv16.bv56(i: bv16) returns (bv56);
function {:bvbuiltin "(_ sign_extend 48)"} $sext.bv16.bv64(i: bv16) returns (bv64);
function {:bvbuiltin "(_ sign_extend 72)"} $sext.bv16.bv88(i: bv16) returns (bv88);
function {:bvbuiltin "(_ sign_extend 80)"} $sext.bv16.bv96(i: bv16) returns (bv96);
function {:bvbuiltin "(_ sign_extend 112)"} $sext.bv16.bv128(i: bv16) returns (bv128);
function {:bvbuiltin "(_ sign_extend 8)"} $sext.bv24.bv32(i: bv24) returns (bv32);
function {:bvbuiltin "(_ sign_extend 16)"} $sext.bv24.bv40(i: bv24) returns (bv40);
function {:bvbuiltin "(_ sign_extend 24)"} $sext.bv24.bv48(i: bv24) returns (bv48);
function {:bvbuiltin "(_ sign_extend 32)"} $sext.bv24.bv56(i: bv24) returns (bv56);
function {:bvbuiltin "(_ sign_extend 40)"} $sext.bv24.bv64(i: bv24) returns (bv64);
function {:bvbuiltin "(_ sign_extend 64)"} $sext.bv24.bv88(i: bv24) returns (bv88);
function {:bvbuiltin "(_ sign_extend 72)"} $sext.bv24.bv96(i: bv24) returns (bv96);
function {:bvbuiltin "(_ sign_extend 104)"} $sext.bv24.bv128(i: bv24) returns (bv128);
function {:bvbuiltin "(_ sign_extend 8)"} $sext.bv32.bv40(i: bv32) returns (bv40);
function {:bvbuiltin "(_ sign_extend 16)"} $sext.bv32.bv48(i: bv32) returns (bv48);
function {:bvbuiltin "(_ sign_extend 24)"} $sext.bv32.bv56(i: bv32) returns (bv56);
function {:bvbuiltin "(_ sign_extend 32)"} $sext.bv32.bv64(i: bv32) returns (bv64);
function {:bvbuiltin "(_ sign_extend 56)"} $sext.bv32.bv88(i: bv32) returns (bv88);
function {:bvbuiltin "(_ sign_extend 64)"} $sext.bv32.bv96(i: bv32) returns (bv96);
function {:bvbuiltin "(_ sign_extend 96)"} $sext.bv32.bv128(i: bv32) returns (bv128);
function {:bvbuiltin "(_ sign_extend 8)"} $sext.bv40.bv48(i: bv40) returns (bv48);
function {:bvbuiltin "(_ sign_extend 16)"} $sext.bv40.bv56(i: bv40) returns (bv56);
function {:bvbuiltin "(_ sign_extend 24)"} $sext.bv40.bv64(i: bv40) returns (bv64);
function {:bvbuiltin "(_ sign_extend 48)"} $sext.bv40.bv88(i: bv40) returns (bv88);
function {:bvbuiltin "(_ sign_extend 56)"} $sext.bv40.bv96(i: bv40) returns (bv96);
function {:bvbuiltin "(_ sign_extend 88)"} $sext.bv40.bv128(i: bv40) returns (bv128);
function {:bvbuiltin "(_ sign_extend 8)"} $sext.bv48.bv56(i: bv48) returns (bv56);
function {:bvbuiltin "(_ sign_extend 16)"} $sext.bv48.bv64(i: bv48) returns (bv64);
function {:bvbuiltin "(_ sign_extend 40)"} $sext.bv48.bv88(i: bv48) returns (bv88);
function {:bvbuiltin "(_ sign_extend 48)"} $sext.bv48.bv96(i: bv48) returns (bv96);
function {:bvbuiltin "(_ sign_extend 80)"} $sext.bv48.bv128(i: bv48) returns (bv128);
function {:bvbuiltin "(_ sign_extend 8)"} $sext.bv56.bv64(i: bv56) returns (bv64);
function {:bvbuiltin "(_ sign_extend 32)"} $sext.bv56.bv88(i: bv56) returns (bv88);
function {:bvbuiltin "(_ sign_extend 40)"} $sext.bv56.bv96(i: bv56) returns (bv96);
function {:bvbuiltin "(_ sign_extend 72)"} $sext.bv56.bv128(i: bv56) returns (bv128);
function {:bvbuiltin "(_ sign_extend 24)"} $sext.bv64.bv88(i: bv64) returns (bv88);
function {:bvbuiltin "(_ sign_extend 32)"} $sext.bv64.bv96(i: bv64) returns (bv96);
function {:bvbuiltin "(_ sign_extend 64)"} $sext.bv64.bv128(i: bv64) returns (bv128);
function {:bvbuiltin "(_ sign_extend 8)"} $sext.bv88.bv96(i: bv88) returns (bv96);
function {:bvbuiltin "(_ sign_extend 40)"} $sext.bv88.bv128(i: bv88) returns (bv128);
function {:bvbuiltin "(_ sign_extend 32)"} $sext.bv96.bv128(i: bv96) returns (bv128);
function {:inline} $add.i128(i1: i128, i2: i128) returns (i128) {i1 + i2}
function {:inline} $add.i96(i1: i96, i2: i96) returns (i96) {i1 + i2}
function {:inline} $add.i88(i1: i88, i2: i88) returns (i88) {i1 + i2}
function {:inline} $add.i64(i1: i64, i2: i64) returns (i64) {i1 + i2}
function {:inline} $add.i56(i1: i56, i2: i56) returns (i56) {i1 + i2}
function {:inline} $add.i48(i1: i48, i2: i48) returns (i48) {i1 + i2}
function {:inline} $add.i40(i1: i40, i2: i40) returns (i40) {i1 + i2}
function {:inline} $add.i32(i1: i32, i2: i32) returns (i32) {i1 + i2}
function {:inline} $add.i24(i1: i24, i2: i24) returns (i24) {i1 + i2}
function {:inline} $add.i16(i1: i16, i2: i16) returns (i16) {i1 + i2}
function {:inline} $add.i8(i1: i8, i2: i8) returns (i8) {i1 + i2}
function {:inline} $add.i1(i1: i1, i2: i1) returns (i1) {i1 + i2}
function {:inline} $sub.i128(i1: i128, i2: i128) returns (i128) {i1 - i2}
function {:inline} $sub.i96(i1: i96, i2: i96) returns (i96) {i1 - i2}
function {:inline} $sub.i88(i1: i88, i2: i88) returns (i88) {i1 - i2}
function {:inline} $sub.i64(i1: i64, i2: i64) returns (i64) {i1 - i2}
function {:inline} $sub.i56(i1: i56, i2: i56) returns (i56) {i1 - i2}
function {:inline} $sub.i48(i1: i48, i2: i48) returns (i48) {i1 - i2}
function {:inline} $sub.i40(i1: i40, i2: i40) returns (i40) {i1 - i2}
function {:inline} $sub.i32(i1: i32, i2: i32) returns (i32) {i1 - i2}
function {:inline} $sub.i24(i1: i24, i2: i24) returns (i24) {i1 - i2}
function {:inline} $sub.i16(i1: i16, i2: i16) returns (i16) {i1 - i2}
function {:inline} $sub.i8(i1: i8, i2: i8) returns (i8) {i1 - i2}
function {:inline} $sub.i1(i1: i1, i2: i1) returns (i1) {i1 - i2}
function {:inline} $mul.i128(i1: i128, i2: i128) returns (i128) {i1 * i2}
function {:inline} $mul.i96(i1: i96, i2: i96) returns (i96) {i1 * i2}
function {:inline} $mul.i88(i1: i88, i2: i88) returns (i88) {i1 * i2}
function {:inline} $mul.i64(i1: i64, i2: i64) returns (i64) {i1 * i2}
function {:inline} $mul.i56(i1: i56, i2: i56) returns (i56) {i1 * i2}
function {:inline} $mul.i48(i1: i48, i2: i48) returns (i48) {i1 * i2}
function {:inline} $mul.i40(i1: i40, i2: i40) returns (i40) {i1 * i2}
function {:inline} $mul.i32(i1: i32, i2: i32) returns (i32) {i1 * i2}
function {:inline} $mul.i24(i1: i24, i2: i24) returns (i24) {i1 * i2}
function {:inline} $mul.i16(i1: i16, i2: i16) returns (i16) {i1 * i2}
function {:inline} $mul.i8(i1: i8, i2: i8) returns (i8) {i1 * i2}
function {:inline} $mul.i1(i1: i1, i2: i1) returns (i1) {i1 * i2}
function {:builtin "div"} $div(i1: int, i2: int) returns (int);
function {:builtin "mod"} $mod(i1: int, i2: int) returns (int);
function {:builtin "rem"} $rem(i1: int, i2: int) returns (int);
function {:inline} $min(i1: int, i2: int) returns (int) {if i1 < i2 then i1 else i2}
function {:inline} $max(i1: int, i2: int) returns (int) {if i1 > i2 then i1 else i2}
function {:builtin "div"} $sdiv.i128(i1: i128, i2: i128) returns (i128);
function {:builtin "div"} $sdiv.i96(i1: i96, i2: i96) returns (i96);
function {:builtin "div"} $sdiv.i88(i1: i88, i2: i88) returns (i88);
function {:builtin "div"} $sdiv.i64(i1: i64, i2: i64) returns (i64);
function {:builtin "div"} $sdiv.i56(i1: i56, i2: i56) returns (i56);
function {:builtin "div"} $sdiv.i48(i1: i48, i2: i48) returns (i48);
function {:builtin "div"} $sdiv.i40(i1: i40, i2: i40) returns (i40);
function {:builtin "div"} $sdiv.i32(i1: i32, i2: i32) returns (i32);
function {:builtin "div"} $sdiv.i24(i1: i24, i2: i24) returns (i24);
function {:builtin "div"} $sdiv.i16(i1: i16, i2: i16) returns (i16);
function {:builtin "div"} $sdiv.i8(i1: i8, i2: i8) returns (i8);
function {:builtin "div"} $sdiv.i1(i1: i1, i2: i1) returns (i1);
function {:builtin "mod"} $smod.i128(i1: i128, i2: i128) returns (i128);
function {:builtin "mod"} $smod.i96(i1: i96, i2: i96) returns (i96);
function {:builtin "mod"} $smod.i88(i1: i88, i2: i88) returns (i88);
function {:builtin "mod"} $smod.i64(i1: i64, i2: i64) returns (i64);
function {:builtin "mod"} $smod.i56(i1: i56, i2: i56) returns (i56);
function {:builtin "mod"} $smod.i48(i1: i48, i2: i48) returns (i48);
function {:builtin "mod"} $smod.i40(i1: i40, i2: i40) returns (i40);
function {:builtin "mod"} $smod.i32(i1: i32, i2: i32) returns (i32);
function {:builtin "mod"} $smod.i24(i1: i24, i2: i24) returns (i24);
function {:builtin "mod"} $smod.i16(i1: i16, i2: i16) returns (i16);
function {:builtin "mod"} $smod.i8(i1: i8, i2: i8) returns (i8);
function {:builtin "mod"} $smod.i1(i1: i1, i2: i1) returns (i1);
function {:builtin "rem"} $srem.i128(i1: i128, i2: i128) returns (i128);
function {:builtin "rem"} $srem.i96(i1: i96, i2: i96) returns (i96);
function {:builtin "rem"} $srem.i88(i1: i88, i2: i88) returns (i88);
function {:builtin "rem"} $srem.i64(i1: i64, i2: i64) returns (i64);
function {:builtin "rem"} $srem.i56(i1: i56, i2: i56) returns (i56);
function {:builtin "rem"} $srem.i48(i1: i48, i2: i48) returns (i48);
function {:builtin "rem"} $srem.i40(i1: i40, i2: i40) returns (i40);
function {:builtin "rem"} $srem.i32(i1: i32, i2: i32) returns (i32);
function {:builtin "rem"} $srem.i24(i1: i24, i2: i24) returns (i24);
function {:builtin "rem"} $srem.i16(i1: i16, i2: i16) returns (i16);
function {:builtin "rem"} $srem.i8(i1: i8, i2: i8) returns (i8);
function {:builtin "rem"} $srem.i1(i1: i1, i2: i1) returns (i1);
function {:builtin "div"} $udiv.i128(i1: i128, i2: i128) returns (i128);
function {:builtin "div"} $udiv.i96(i1: i96, i2: i96) returns (i96);
function {:builtin "div"} $udiv.i88(i1: i88, i2: i88) returns (i88);
function {:builtin "div"} $udiv.i64(i1: i64, i2: i64) returns (i64);
function {:builtin "div"} $udiv.i56(i1: i56, i2: i56) returns (i56);
function {:builtin "div"} $udiv.i48(i1: i48, i2: i48) returns (i48);
function {:builtin "div"} $udiv.i40(i1: i40, i2: i40) returns (i40);
function {:builtin "div"} $udiv.i32(i1: i32, i2: i32) returns (i32);
function {:builtin "div"} $udiv.i24(i1: i24, i2: i24) returns (i24);
function {:builtin "div"} $udiv.i16(i1: i16, i2: i16) returns (i16);
function {:builtin "div"} $udiv.i8(i1: i8, i2: i8) returns (i8);
function {:builtin "div"} $udiv.i1(i1: i1, i2: i1) returns (i1);
function {:builtin "rem"} $urem.i128(i1: i128, i2: i128) returns (i128);
function {:builtin "rem"} $urem.i96(i1: i96, i2: i96) returns (i96);
function {:builtin "rem"} $urem.i88(i1: i88, i2: i88) returns (i88);
function {:builtin "rem"} $urem.i64(i1: i64, i2: i64) returns (i64);
function {:builtin "rem"} $urem.i56(i1: i56, i2: i56) returns (i56);
function {:builtin "rem"} $urem.i48(i1: i48, i2: i48) returns (i48);
function {:builtin "rem"} $urem.i40(i1: i40, i2: i40) returns (i40);
function {:builtin "rem"} $urem.i32(i1: i32, i2: i32) returns (i32);
function {:builtin "rem"} $urem.i24(i1: i24, i2: i24) returns (i24);
function {:builtin "rem"} $urem.i16(i1: i16, i2: i16) returns (i16);
function {:builtin "rem"} $urem.i8(i1: i8, i2: i8) returns (i8);
function {:builtin "rem"} $urem.i1(i1: i1, i2: i1) returns (i1);
function {:inline} $smin.i128(i1: i128, i2: i128) returns (i128) {$min(i1,i2)}
function {:inline} $smin.i96(i1: i96, i2: i96) returns (i96) {$min(i1,i2)}
function {:inline} $smin.i88(i1: i88, i2: i88) returns (i88) {$min(i1,i2)}
function {:inline} $smin.i64(i1: i64, i2: i64) returns (i64) {$min(i1,i2)}
function {:inline} $smin.i56(i1: i56, i2: i56) returns (i56) {$min(i1,i2)}
function {:inline} $smin.i48(i1: i48, i2: i48) returns (i48) {$min(i1,i2)}
function {:inline} $smin.i40(i1: i40, i2: i40) returns (i40) {$min(i1,i2)}
function {:inline} $smin.i32(i1: i32, i2: i32) returns (i32) {$min(i1,i2)}
function {:inline} $smin.i24(i1: i24, i2: i24) returns (i24) {$min(i1,i2)}
function {:inline} $smin.i16(i1: i16, i2: i16) returns (i16) {$min(i1,i2)}
function {:inline} $smin.i8(i1: i8, i2: i8) returns (i8) {$min(i1,i2)}
function {:inline} $smin.i1(i1: i1, i2: i1) returns (i1) {$min(i1,i2)}
function {:inline} $smax.i128(i1: i128, i2: i128) returns (i128) {$max(i1,i2)}
function {:inline} $smax.i96(i1: i96, i2: i96) returns (i96) {$max(i1,i2)}
function {:inline} $smax.i88(i1: i88, i2: i88) returns (i88) {$max(i1,i2)}
function {:inline} $smax.i64(i1: i64, i2: i64) returns (i64) {$max(i1,i2)}
function {:inline} $smax.i56(i1: i56, i2: i56) returns (i56) {$max(i1,i2)}
function {:inline} $smax.i48(i1: i48, i2: i48) returns (i48) {$max(i1,i2)}
function {:inline} $smax.i40(i1: i40, i2: i40) returns (i40) {$max(i1,i2)}
function {:inline} $smax.i32(i1: i32, i2: i32) returns (i32) {$max(i1,i2)}
function {:inline} $smax.i24(i1: i24, i2: i24) returns (i24) {$max(i1,i2)}
function {:inline} $smax.i16(i1: i16, i2: i16) returns (i16) {$max(i1,i2)}
function {:inline} $smax.i8(i1: i8, i2: i8) returns (i8) {$max(i1,i2)}
function {:inline} $smax.i1(i1: i1, i2: i1) returns (i1) {$max(i1,i2)}
function {:inline} $umin.i128(i1: i128, i2: i128) returns (i128) {$min(i1,i2)}
function {:inline} $umin.i96(i1: i96, i2: i96) returns (i96) {$min(i1,i2)}
function {:inline} $umin.i88(i1: i88, i2: i88) returns (i88) {$min(i1,i2)}
function {:inline} $umin.i64(i1: i64, i2: i64) returns (i64) {$min(i1,i2)}
function {:inline} $umin.i56(i1: i56, i2: i56) returns (i56) {$min(i1,i2)}
function {:inline} $umin.i48(i1: i48, i2: i48) returns (i48) {$min(i1,i2)}
function {:inline} $umin.i40(i1: i40, i2: i40) returns (i40) {$min(i1,i2)}
function {:inline} $umin.i32(i1: i32, i2: i32) returns (i32) {$min(i1,i2)}
function {:inline} $umin.i24(i1: i24, i2: i24) returns (i24) {$min(i1,i2)}
function {:inline} $umin.i16(i1: i16, i2: i16) returns (i16) {$min(i1,i2)}
function {:inline} $umin.i8(i1: i8, i2: i8) returns (i8) {$min(i1,i2)}
function {:inline} $umin.i1(i1: i1, i2: i1) returns (i1) {$min(i1,i2)}
function {:inline} $umax.i128(i1: i128, i2: i128) returns (i128) {$max(i1,i2)}
function {:inline} $umax.i96(i1: i96, i2: i96) returns (i96) {$max(i1,i2)}
function {:inline} $umax.i88(i1: i88, i2: i88) returns (i88) {$max(i1,i2)}
function {:inline} $umax.i64(i1: i64, i2: i64) returns (i64) {$max(i1,i2)}
function {:inline} $umax.i56(i1: i56, i2: i56) returns (i56) {$max(i1,i2)}
function {:inline} $umax.i48(i1: i48, i2: i48) returns (i48) {$max(i1,i2)}
function {:inline} $umax.i40(i1: i40, i2: i40) returns (i40) {$max(i1,i2)}
function {:inline} $umax.i32(i1: i32, i2: i32) returns (i32) {$max(i1,i2)}
function {:inline} $umax.i24(i1: i24, i2: i24) returns (i24) {$max(i1,i2)}
function {:inline} $umax.i16(i1: i16, i2: i16) returns (i16) {$max(i1,i2)}
function {:inline} $umax.i8(i1: i8, i2: i8) returns (i8) {$max(i1,i2)}
function {:inline} $umax.i1(i1: i1, i2: i1) returns (i1) {$max(i1,i2)}
function $shl.i128(i1: i128, i2: i128) returns (i128);
function $shl.i96(i1: i96, i2: i96) returns (i96);
function $shl.i88(i1: i88, i2: i88) returns (i88);
function $shl.i64(i1: i64, i2: i64) returns (i64);
function $shl.i56(i1: i56, i2: i56) returns (i56);
function $shl.i48(i1: i48, i2: i48) returns (i48);
function $shl.i40(i1: i40, i2: i40) returns (i40);
function $shl.i32(i1: i32, i2: i32) returns (i32);
function $shl.i24(i1: i24, i2: i24) returns (i24);
function $shl.i16(i1: i16, i2: i16) returns (i16);
function $shl.i8(i1: i8, i2: i8) returns (i8);
function $shl.i1(i1: i1, i2: i1) returns (i1);
function $lshr.i128(i1: i128, i2: i128) returns (i128);
function $lshr.i96(i1: i96, i2: i96) returns (i96);
function $lshr.i88(i1: i88, i2: i88) returns (i88);
function $lshr.i64(i1: i64, i2: i64) returns (i64);
function $lshr.i56(i1: i56, i2: i56) returns (i56);
function $lshr.i48(i1: i48, i2: i48) returns (i48);
function $lshr.i40(i1: i40, i2: i40) returns (i40);
function $lshr.i32(i1: i32, i2: i32) returns (i32);
function $lshr.i24(i1: i24, i2: i24) returns (i24);
function $lshr.i16(i1: i16, i2: i16) returns (i16);
function $lshr.i8(i1: i8, i2: i8) returns (i8);
function $lshr.i1(i1: i1, i2: i1) returns (i1);
function $ashr.i128(i1: i128, i2: i128) returns (i128);
function $ashr.i96(i1: i96, i2: i96) returns (i96);
function $ashr.i88(i1: i88, i2: i88) returns (i88);
function $ashr.i64(i1: i64, i2: i64) returns (i64);
function $ashr.i56(i1: i56, i2: i56) returns (i56);
function $ashr.i48(i1: i48, i2: i48) returns (i48);
function $ashr.i40(i1: i40, i2: i40) returns (i40);
function $ashr.i32(i1: i32, i2: i32) returns (i32);
function $ashr.i24(i1: i24, i2: i24) returns (i24);
function $ashr.i16(i1: i16, i2: i16) returns (i16);
function $ashr.i8(i1: i8, i2: i8) returns (i8);
function $ashr.i1(i1: i1, i2: i1) returns (i1);
function $not.i128(i: i128) returns (i128);
function $not.i96(i: i96) returns (i96);
function $not.i88(i: i88) returns (i88);
function $not.i64(i: i64) returns (i64);
function $not.i56(i: i56) returns (i56);
function $not.i48(i: i48) returns (i48);
function $not.i40(i: i40) returns (i40);
function $not.i32(i: i32) returns (i32);
function $not.i24(i: i24) returns (i24);
function $not.i16(i: i16) returns (i16);
function $not.i8(i: i8) returns (i8);
function $not.i1(i: i1) returns (i1);
function $and.i128(i1: i128, i2: i128) returns (i128);
function $and.i96(i1: i96, i2: i96) returns (i96);
function $and.i88(i1: i88, i2: i88) returns (i88);
function $and.i64(i1: i64, i2: i64) returns (i64);
function $and.i56(i1: i56, i2: i56) returns (i56);
function $and.i48(i1: i48, i2: i48) returns (i48);
function $and.i40(i1: i40, i2: i40) returns (i40);
function $and.i32(i1: i32, i2: i32) returns (i32);
function $and.i24(i1: i24, i2: i24) returns (i24);
function $and.i16(i1: i16, i2: i16) returns (i16);
function $and.i8(i1: i8, i2: i8) returns (i8);
function $and.i1(i1: i1, i2: i1) returns (i1);
function $or.i128(i1: i128, i2: i128) returns (i128);
function $or.i96(i1: i96, i2: i96) returns (i96);
function $or.i88(i1: i88, i2: i88) returns (i88);
function $or.i64(i1: i64, i2: i64) returns (i64);
function $or.i56(i1: i56, i2: i56) returns (i56);
function $or.i48(i1: i48, i2: i48) returns (i48);
function $or.i40(i1: i40, i2: i40) returns (i40);
function $or.i32(i1: i32, i2: i32) returns (i32);
function $or.i24(i1: i24, i2: i24) returns (i24);
function $or.i16(i1: i16, i2: i16) returns (i16);
function $or.i8(i1: i8, i2: i8) returns (i8);
function $or.i1(i1: i1, i2: i1) returns (i1);
function $xor.i128(i1: i128, i2: i128) returns (i128);
function $xor.i96(i1: i96, i2: i96) returns (i96);
function $xor.i88(i1: i88, i2: i88) returns (i88);
function $xor.i64(i1: i64, i2: i64) returns (i64);
function $xor.i56(i1: i56, i2: i56) returns (i56);
function $xor.i48(i1: i48, i2: i48) returns (i48);
function $xor.i40(i1: i40, i2: i40) returns (i40);
function $xor.i32(i1: i32, i2: i32) returns (i32);
function $xor.i24(i1: i24, i2: i24) returns (i24);
function $xor.i16(i1: i16, i2: i16) returns (i16);
function $xor.i8(i1: i8, i2: i8) returns (i8);
function $xor.i1(i1: i1, i2: i1) returns (i1);
function $nand.i128(i1: i128, i2: i128) returns (i128);
function $nand.i96(i1: i96, i2: i96) returns (i96);
function $nand.i88(i1: i88, i2: i88) returns (i88);
function $nand.i64(i1: i64, i2: i64) returns (i64);
function $nand.i56(i1: i56, i2: i56) returns (i56);
function $nand.i48(i1: i48, i2: i48) returns (i48);
function $nand.i40(i1: i40, i2: i40) returns (i40);
function $nand.i32(i1: i32, i2: i32) returns (i32);
function $nand.i24(i1: i24, i2: i24) returns (i24);
function $nand.i16(i1: i16, i2: i16) returns (i16);
function $nand.i8(i1: i8, i2: i8) returns (i8);
function $nand.i1(i1: i1, i2: i1) returns (i1);
function {:inline} $eq.i128.bool(i1: i128, i2: i128) returns (bool) {i1 == i2} function {:inline} $eq.i128(i1: i128, i2: i128) returns (i1) {if i1 == i2 then 1 else 0}
function {:inline} $eq.i96.bool(i1: i96, i2: i96) returns (bool) {i1 == i2} function {:inline} $eq.i96(i1: i96, i2: i96) returns (i1) {if i1 == i2 then 1 else 0}
function {:inline} $eq.i88.bool(i1: i88, i2: i88) returns (bool) {i1 == i2} function {:inline} $eq.i88(i1: i88, i2: i88) returns (i1) {if i1 == i2 then 1 else 0}
function {:inline} $eq.i64.bool(i1: i64, i2: i64) returns (bool) {i1 == i2} function {:inline} $eq.i64(i1: i64, i2: i64) returns (i1) {if i1 == i2 then 1 else 0}
function {:inline} $eq.i56.bool(i1: i56, i2: i56) returns (bool) {i1 == i2} function {:inline} $eq.i56(i1: i56, i2: i56) returns (i1) {if i1 == i2 then 1 else 0}
function {:inline} $eq.i48.bool(i1: i48, i2: i48) returns (bool) {i1 == i2} function {:inline} $eq.i48(i1: i48, i2: i48) returns (i1) {if i1 == i2 then 1 else 0}
function {:inline} $eq.i40.bool(i1: i40, i2: i40) returns (bool) {i1 == i2} function {:inline} $eq.i40(i1: i40, i2: i40) returns (i1) {if i1 == i2 then 1 else 0}
function {:inline} $eq.i32.bool(i1: i32, i2: i32) returns (bool) {i1 == i2} function {:inline} $eq.i32(i1: i32, i2: i32) returns (i1) {if i1 == i2 then 1 else 0}
function {:inline} $eq.i24.bool(i1: i24, i2: i24) returns (bool) {i1 == i2} function {:inline} $eq.i24(i1: i24, i2: i24) returns (i1) {if i1 == i2 then 1 else 0}
function {:inline} $eq.i16.bool(i1: i16, i2: i16) returns (bool) {i1 == i2} function {:inline} $eq.i16(i1: i16, i2: i16) returns (i1) {if i1 == i2 then 1 else 0}
function {:inline} $eq.i8.bool(i1: i8, i2: i8) returns (bool) {i1 == i2} function {:inline} $eq.i8(i1: i8, i2: i8) returns (i1) {if i1 == i2 then 1 else 0}
function {:inline} $eq.i1.bool(i1: i1, i2: i1) returns (bool) {i1 == i2} function {:inline} $eq.i1(i1: i1, i2: i1) returns (i1) {if i1 == i2 then 1 else 0}
function {:inline} $ne.i128.bool(i1: i128, i2: i128) returns (bool) {i1 != i2} function {:inline} $ne.i128(i1: i128, i2: i128) returns (i1) {if i1 != i2 then 1 else 0}
function {:inline} $ne.i96.bool(i1: i96, i2: i96) returns (bool) {i1 != i2} function {:inline} $ne.i96(i1: i96, i2: i96) returns (i1) {if i1 != i2 then 1 else 0}
function {:inline} $ne.i88.bool(i1: i88, i2: i88) returns (bool) {i1 != i2} function {:inline} $ne.i88(i1: i88, i2: i88) returns (i1) {if i1 != i2 then 1 else 0}
function {:inline} $ne.i64.bool(i1: i64, i2: i64) returns (bool) {i1 != i2} function {:inline} $ne.i64(i1: i64, i2: i64) returns (i1) {if i1 != i2 then 1 else 0}
function {:inline} $ne.i56.bool(i1: i56, i2: i56) returns (bool) {i1 != i2} function {:inline} $ne.i56(i1: i56, i2: i56) returns (i1) {if i1 != i2 then 1 else 0}
function {:inline} $ne.i48.bool(i1: i48, i2: i48) returns (bool) {i1 != i2} function {:inline} $ne.i48(i1: i48, i2: i48) returns (i1) {if i1 != i2 then 1 else 0}
function {:inline} $ne.i40.bool(i1: i40, i2: i40) returns (bool) {i1 != i2} function {:inline} $ne.i40(i1: i40, i2: i40) returns (i1) {if i1 != i2 then 1 else 0}
function {:inline} $ne.i32.bool(i1: i32, i2: i32) returns (bool) {i1 != i2} function {:inline} $ne.i32(i1: i32, i2: i32) returns (i1) {if i1 != i2 then 1 else 0}
function {:inline} $ne.i24.bool(i1: i24, i2: i24) returns (bool) {i1 != i2} function {:inline} $ne.i24(i1: i24, i2: i24) returns (i1) {if i1 != i2 then 1 else 0}
function {:inline} $ne.i16.bool(i1: i16, i2: i16) returns (bool) {i1 != i2} function {:inline} $ne.i16(i1: i16, i2: i16) returns (i1) {if i1 != i2 then 1 else 0}
function {:inline} $ne.i8.bool(i1: i8, i2: i8) returns (bool) {i1 != i2} function {:inline} $ne.i8(i1: i8, i2: i8) returns (i1) {if i1 != i2 then 1 else 0}
function {:inline} $ne.i1.bool(i1: i1, i2: i1) returns (bool) {i1 != i2} function {:inline} $ne.i1(i1: i1, i2: i1) returns (i1) {if i1 != i2 then 1 else 0}
function {:inline} $ule.i128.bool(i1: i128, i2: i128) returns (bool) {i1 <= i2} function {:inline} $ule.i128(i1: i128, i2: i128) returns (i1) {if i1 <= i2 then 1 else 0}
function {:inline} $ule.i96.bool(i1: i96, i2: i96) returns (bool) {i1 <= i2} function {:inline} $ule.i96(i1: i96, i2: i96) returns (i1) {if i1 <= i2 then 1 else 0}
function {:inline} $ule.i88.bool(i1: i88, i2: i88) returns (bool) {i1 <= i2} function {:inline} $ule.i88(i1: i88, i2: i88) returns (i1) {if i1 <= i2 then 1 else 0}
function {:inline} $ule.i64.bool(i1: i64, i2: i64) returns (bool) {i1 <= i2} function {:inline} $ule.i64(i1: i64, i2: i64) returns (i1) {if i1 <= i2 then 1 else 0}
function {:inline} $ule.i56.bool(i1: i56, i2: i56) returns (bool) {i1 <= i2} function {:inline} $ule.i56(i1: i56, i2: i56) returns (i1) {if i1 <= i2 then 1 else 0}
function {:inline} $ule.i48.bool(i1: i48, i2: i48) returns (bool) {i1 <= i2} function {:inline} $ule.i48(i1: i48, i2: i48) returns (i1) {if i1 <= i2 then 1 else 0}
function {:inline} $ule.i40.bool(i1: i40, i2: i40) returns (bool) {i1 <= i2} function {:inline} $ule.i40(i1: i40, i2: i40) returns (i1) {if i1 <= i2 then 1 else 0}
function {:inline} $ule.i32.bool(i1: i32, i2: i32) returns (bool) {i1 <= i2} function {:inline} $ule.i32(i1: i32, i2: i32) returns (i1) {if i1 <= i2 then 1 else 0}
function {:inline} $ule.i24.bool(i1: i24, i2: i24) returns (bool) {i1 <= i2} function {:inline} $ule.i24(i1: i24, i2: i24) returns (i1) {if i1 <= i2 then 1 else 0}
function {:inline} $ule.i16.bool(i1: i16, i2: i16) returns (bool) {i1 <= i2} function {:inline} $ule.i16(i1: i16, i2: i16) returns (i1) {if i1 <= i2 then 1 else 0}
function {:inline} $ule.i8.bool(i1: i8, i2: i8) returns (bool) {i1 <= i2} function {:inline} $ule.i8(i1: i8, i2: i8) returns (i1) {if i1 <= i2 then 1 else 0}
function {:inline} $ule.i1.bool(i1: i1, i2: i1) returns (bool) {i1 <= i2} function {:inline} $ule.i1(i1: i1, i2: i1) returns (i1) {if i1 <= i2 then 1 else 0}
function {:inline} $ult.i128.bool(i1: i128, i2: i128) returns (bool) {i1 < i2} function {:inline} $ult.i128(i1: i128, i2: i128) returns (i1) {if i1 < i2 then 1 else 0}
function {:inline} $ult.i96.bool(i1: i96, i2: i96) returns (bool) {i1 < i2} function {:inline} $ult.i96(i1: i96, i2: i96) returns (i1) {if i1 < i2 then 1 else 0}
function {:inline} $ult.i88.bool(i1: i88, i2: i88) returns (bool) {i1 < i2} function {:inline} $ult.i88(i1: i88, i2: i88) returns (i1) {if i1 < i2 then 1 else 0}
function {:inline} $ult.i64.bool(i1: i64, i2: i64) returns (bool) {i1 < i2} function {:inline} $ult.i64(i1: i64, i2: i64) returns (i1) {if i1 < i2 then 1 else 0}
function {:inline} $ult.i56.bool(i1: i56, i2: i56) returns (bool) {i1 < i2} function {:inline} $ult.i56(i1: i56, i2: i56) returns (i1) {if i1 < i2 then 1 else 0}
function {:inline} $ult.i48.bool(i1: i48, i2: i48) returns (bool) {i1 < i2} function {:inline} $ult.i48(i1: i48, i2: i48) returns (i1) {if i1 < i2 then 1 else 0}
function {:inline} $ult.i40.bool(i1: i40, i2: i40) returns (bool) {i1 < i2} function {:inline} $ult.i40(i1: i40, i2: i40) returns (i1) {if i1 < i2 then 1 else 0}
function {:inline} $ult.i32.bool(i1: i32, i2: i32) returns (bool) {i1 < i2} function {:inline} $ult.i32(i1: i32, i2: i32) returns (i1) {if i1 < i2 then 1 else 0}
function {:inline} $ult.i24.bool(i1: i24, i2: i24) returns (bool) {i1 < i2} function {:inline} $ult.i24(i1: i24, i2: i24) returns (i1) {if i1 < i2 then 1 else 0}
function {:inline} $ult.i16.bool(i1: i16, i2: i16) returns (bool) {i1 < i2} function {:inline} $ult.i16(i1: i16, i2: i16) returns (i1) {if i1 < i2 then 1 else 0}
function {:inline} $ult.i8.bool(i1: i8, i2: i8) returns (bool) {i1 < i2} function {:inline} $ult.i8(i1: i8, i2: i8) returns (i1) {if i1 < i2 then 1 else 0}
function {:inline} $ult.i1.bool(i1: i1, i2: i1) returns (bool) {i1 < i2} function {:inline} $ult.i1(i1: i1, i2: i1) returns (i1) {if i1 < i2 then 1 else 0}
function {:inline} $uge.i128.bool(i1: i128, i2: i128) returns (bool) {i1 >= i2} function {:inline} $uge.i128(i1: i128, i2: i128) returns (i1) {if i1 >= i2 then 1 else 0}
function {:inline} $uge.i96.bool(i1: i96, i2: i96) returns (bool) {i1 >= i2} function {:inline} $uge.i96(i1: i96, i2: i96) returns (i1) {if i1 >= i2 then 1 else 0}
function {:inline} $uge.i88.bool(i1: i88, i2: i88) returns (bool) {i1 >= i2} function {:inline} $uge.i88(i1: i88, i2: i88) returns (i1) {if i1 >= i2 then 1 else 0}
function {:inline} $uge.i64.bool(i1: i64, i2: i64) returns (bool) {i1 >= i2} function {:inline} $uge.i64(i1: i64, i2: i64) returns (i1) {if i1 >= i2 then 1 else 0}
function {:inline} $uge.i56.bool(i1: i56, i2: i56) returns (bool) {i1 >= i2} function {:inline} $uge.i56(i1: i56, i2: i56) returns (i1) {if i1 >= i2 then 1 else 0}
function {:inline} $uge.i48.bool(i1: i48, i2: i48) returns (bool) {i1 >= i2} function {:inline} $uge.i48(i1: i48, i2: i48) returns (i1) {if i1 >= i2 then 1 else 0}
function {:inline} $uge.i40.bool(i1: i40, i2: i40) returns (bool) {i1 >= i2} function {:inline} $uge.i40(i1: i40, i2: i40) returns (i1) {if i1 >= i2 then 1 else 0}
function {:inline} $uge.i32.bool(i1: i32, i2: i32) returns (bool) {i1 >= i2} function {:inline} $uge.i32(i1: i32, i2: i32) returns (i1) {if i1 >= i2 then 1 else 0}
function {:inline} $uge.i24.bool(i1: i24, i2: i24) returns (bool) {i1 >= i2} function {:inline} $uge.i24(i1: i24, i2: i24) returns (i1) {if i1 >= i2 then 1 else 0}
function {:inline} $uge.i16.bool(i1: i16, i2: i16) returns (bool) {i1 >= i2} function {:inline} $uge.i16(i1: i16, i2: i16) returns (i1) {if i1 >= i2 then 1 else 0}
function {:inline} $uge.i8.bool(i1: i8, i2: i8) returns (bool) {i1 >= i2} function {:inline} $uge.i8(i1: i8, i2: i8) returns (i1) {if i1 >= i2 then 1 else 0}
function {:inline} $uge.i1.bool(i1: i1, i2: i1) returns (bool) {i1 >= i2} function {:inline} $uge.i1(i1: i1, i2: i1) returns (i1) {if i1 >= i2 then 1 else 0}
function {:inline} $ugt.i128.bool(i1: i128, i2: i128) returns (bool) {i1 > i2} function {:inline} $ugt.i128(i1: i128, i2: i128) returns (i1) {if i1 > i2 then 1 else 0}
function {:inline} $ugt.i96.bool(i1: i96, i2: i96) returns (bool) {i1 > i2} function {:inline} $ugt.i96(i1: i96, i2: i96) returns (i1) {if i1 > i2 then 1 else 0}
function {:inline} $ugt.i88.bool(i1: i88, i2: i88) returns (bool) {i1 > i2} function {:inline} $ugt.i88(i1: i88, i2: i88) returns (i1) {if i1 > i2 then 1 else 0}
function {:inline} $ugt.i64.bool(i1: i64, i2: i64) returns (bool) {i1 > i2} function {:inline} $ugt.i64(i1: i64, i2: i64) returns (i1) {if i1 > i2 then 1 else 0}
function {:inline} $ugt.i56.bool(i1: i56, i2: i56) returns (bool) {i1 > i2} function {:inline} $ugt.i56(i1: i56, i2: i56) returns (i1) {if i1 > i2 then 1 else 0}
function {:inline} $ugt.i48.bool(i1: i48, i2: i48) returns (bool) {i1 > i2} function {:inline} $ugt.i48(i1: i48, i2: i48) returns (i1) {if i1 > i2 then 1 else 0}
function {:inline} $ugt.i40.bool(i1: i40, i2: i40) returns (bool) {i1 > i2} function {:inline} $ugt.i40(i1: i40, i2: i40) returns (i1) {if i1 > i2 then 1 else 0}
function {:inline} $ugt.i32.bool(i1: i32, i2: i32) returns (bool) {i1 > i2} function {:inline} $ugt.i32(i1: i32, i2: i32) returns (i1) {if i1 > i2 then 1 else 0}
function {:inline} $ugt.i24.bool(i1: i24, i2: i24) returns (bool) {i1 > i2} function {:inline} $ugt.i24(i1: i24, i2: i24) returns (i1) {if i1 > i2 then 1 else 0}
function {:inline} $ugt.i16.bool(i1: i16, i2: i16) returns (bool) {i1 > i2} function {:inline} $ugt.i16(i1: i16, i2: i16) returns (i1) {if i1 > i2 then 1 else 0}
function {:inline} $ugt.i8.bool(i1: i8, i2: i8) returns (bool) {i1 > i2} function {:inline} $ugt.i8(i1: i8, i2: i8) returns (i1) {if i1 > i2 then 1 else 0}
function {:inline} $ugt.i1.bool(i1: i1, i2: i1) returns (bool) {i1 > i2} function {:inline} $ugt.i1(i1: i1, i2: i1) returns (i1) {if i1 > i2 then 1 else 0}
function {:inline} $sle.i128.bool(i1: i128, i2: i128) returns (bool) {i1 <= i2} function {:inline} $sle.i128(i1: i128, i2: i128) returns (i1) {if i1 <= i2 then 1 else 0}
function {:inline} $sle.i96.bool(i1: i96, i2: i96) returns (bool) {i1 <= i2} function {:inline} $sle.i96(i1: i96, i2: i96) returns (i1) {if i1 <= i2 then 1 else 0}
function {:inline} $sle.i88.bool(i1: i88, i2: i88) returns (bool) {i1 <= i2} function {:inline} $sle.i88(i1: i88, i2: i88) returns (i1) {if i1 <= i2 then 1 else 0}
function {:inline} $sle.i64.bool(i1: i64, i2: i64) returns (bool) {i1 <= i2} function {:inline} $sle.i64(i1: i64, i2: i64) returns (i1) {if i1 <= i2 then 1 else 0}
function {:inline} $sle.i56.bool(i1: i56, i2: i56) returns (bool) {i1 <= i2} function {:inline} $sle.i56(i1: i56, i2: i56) returns (i1) {if i1 <= i2 then 1 else 0}
function {:inline} $sle.i48.bool(i1: i48, i2: i48) returns (bool) {i1 <= i2} function {:inline} $sle.i48(i1: i48, i2: i48) returns (i1) {if i1 <= i2 then 1 else 0}
function {:inline} $sle.i40.bool(i1: i40, i2: i40) returns (bool) {i1 <= i2} function {:inline} $sle.i40(i1: i40, i2: i40) returns (i1) {if i1 <= i2 then 1 else 0}
function {:inline} $sle.i32.bool(i1: i32, i2: i32) returns (bool) {i1 <= i2} function {:inline} $sle.i32(i1: i32, i2: i32) returns (i1) {if i1 <= i2 then 1 else 0}
function {:inline} $sle.i24.bool(i1: i24, i2: i24) returns (bool) {i1 <= i2} function {:inline} $sle.i24(i1: i24, i2: i24) returns (i1) {if i1 <= i2 then 1 else 0}
function {:inline} $sle.i16.bool(i1: i16, i2: i16) returns (bool) {i1 <= i2} function {:inline} $sle.i16(i1: i16, i2: i16) returns (i1) {if i1 <= i2 then 1 else 0}
function {:inline} $sle.i8.bool(i1: i8, i2: i8) returns (bool) {i1 <= i2} function {:inline} $sle.i8(i1: i8, i2: i8) returns (i1) {if i1 <= i2 then 1 else 0}
function {:inline} $sle.i1.bool(i1: i1, i2: i1) returns (bool) {i1 <= i2} function {:inline} $sle.i1(i1: i1, i2: i1) returns (i1) {if i1 <= i2 then 1 else 0}
function {:inline} $slt.i128.bool(i1: i128, i2: i128) returns (bool) {i1 < i2} function {:inline} $slt.i128(i1: i128, i2: i128) returns (i1) {if i1 < i2 then 1 else 0}
function {:inline} $slt.i96.bool(i1: i96, i2: i96) returns (bool) {i1 < i2} function {:inline} $slt.i96(i1: i96, i2: i96) returns (i1) {if i1 < i2 then 1 else 0}
function {:inline} $slt.i88.bool(i1: i88, i2: i88) returns (bool) {i1 < i2} function {:inline} $slt.i88(i1: i88, i2: i88) returns (i1) {if i1 < i2 then 1 else 0}
function {:inline} $slt.i64.bool(i1: i64, i2: i64) returns (bool) {i1 < i2} function {:inline} $slt.i64(i1: i64, i2: i64) returns (i1) {if i1 < i2 then 1 else 0}
function {:inline} $slt.i56.bool(i1: i56, i2: i56) returns (bool) {i1 < i2} function {:inline} $slt.i56(i1: i56, i2: i56) returns (i1) {if i1 < i2 then 1 else 0}
function {:inline} $slt.i48.bool(i1: i48, i2: i48) returns (bool) {i1 < i2} function {:inline} $slt.i48(i1: i48, i2: i48) returns (i1) {if i1 < i2 then 1 else 0}
function {:inline} $slt.i40.bool(i1: i40, i2: i40) returns (bool) {i1 < i2} function {:inline} $slt.i40(i1: i40, i2: i40) returns (i1) {if i1 < i2 then 1 else 0}
function {:inline} $slt.i32.bool(i1: i32, i2: i32) returns (bool) {i1 < i2} function {:inline} $slt.i32(i1: i32, i2: i32) returns (i1) {if i1 < i2 then 1 else 0}
function {:inline} $slt.i24.bool(i1: i24, i2: i24) returns (bool) {i1 < i2} function {:inline} $slt.i24(i1: i24, i2: i24) returns (i1) {if i1 < i2 then 1 else 0}
function {:inline} $slt.i16.bool(i1: i16, i2: i16) returns (bool) {i1 < i2} function {:inline} $slt.i16(i1: i16, i2: i16) returns (i1) {if i1 < i2 then 1 else 0}
function {:inline} $slt.i8.bool(i1: i8, i2: i8) returns (bool) {i1 < i2} function {:inline} $slt.i8(i1: i8, i2: i8) returns (i1) {if i1 < i2 then 1 else 0}
function {:inline} $slt.i1.bool(i1: i1, i2: i1) returns (bool) {i1 < i2} function {:inline} $slt.i1(i1: i1, i2: i1) returns (i1) {if i1 < i2 then 1 else 0}
function {:inline} $sge.i128.bool(i1: i128, i2: i128) returns (bool) {i1 >= i2} function {:inline} $sge.i128(i1: i128, i2: i128) returns (i1) {if i1 >= i2 then 1 else 0}
function {:inline} $sge.i96.bool(i1: i96, i2: i96) returns (bool) {i1 >= i2} function {:inline} $sge.i96(i1: i96, i2: i96) returns (i1) {if i1 >= i2 then 1 else 0}
function {:inline} $sge.i88.bool(i1: i88, i2: i88) returns (bool) {i1 >= i2} function {:inline} $sge.i88(i1: i88, i2: i88) returns (i1) {if i1 >= i2 then 1 else 0}
function {:inline} $sge.i64.bool(i1: i64, i2: i64) returns (bool) {i1 >= i2} function {:inline} $sge.i64(i1: i64, i2: i64) returns (i1) {if i1 >= i2 then 1 else 0}
function {:inline} $sge.i56.bool(i1: i56, i2: i56) returns (bool) {i1 >= i2} function {:inline} $sge.i56(i1: i56, i2: i56) returns (i1) {if i1 >= i2 then 1 else 0}
function {:inline} $sge.i48.bool(i1: i48, i2: i48) returns (bool) {i1 >= i2} function {:inline} $sge.i48(i1: i48, i2: i48) returns (i1) {if i1 >= i2 then 1 else 0}
function {:inline} $sge.i40.bool(i1: i40, i2: i40) returns (bool) {i1 >= i2} function {:inline} $sge.i40(i1: i40, i2: i40) returns (i1) {if i1 >= i2 then 1 else 0}
function {:inline} $sge.i32.bool(i1: i32, i2: i32) returns (bool) {i1 >= i2} function {:inline} $sge.i32(i1: i32, i2: i32) returns (i1) {if i1 >= i2 then 1 else 0}
function {:inline} $sge.i24.bool(i1: i24, i2: i24) returns (bool) {i1 >= i2} function {:inline} $sge.i24(i1: i24, i2: i24) returns (i1) {if i1 >= i2 then 1 else 0}
function {:inline} $sge.i16.bool(i1: i16, i2: i16) returns (bool) {i1 >= i2} function {:inline} $sge.i16(i1: i16, i2: i16) returns (i1) {if i1 >= i2 then 1 else 0}
function {:inline} $sge.i8.bool(i1: i8, i2: i8) returns (bool) {i1 >= i2} function {:inline} $sge.i8(i1: i8, i2: i8) returns (i1) {if i1 >= i2 then 1 else 0}
function {:inline} $sge.i1.bool(i1: i1, i2: i1) returns (bool) {i1 >= i2} function {:inline} $sge.i1(i1: i1, i2: i1) returns (i1) {if i1 >= i2 then 1 else 0}
function {:inline} $sgt.i128.bool(i1: i128, i2: i128) returns (bool) {i1 > i2} function {:inline} $sgt.i128(i1: i128, i2: i128) returns (i1) {if i1 > i2 then 1 else 0}
function {:inline} $sgt.i96.bool(i1: i96, i2: i96) returns (bool) {i1 > i2} function {:inline} $sgt.i96(i1: i96, i2: i96) returns (i1) {if i1 > i2 then 1 else 0}
function {:inline} $sgt.i88.bool(i1: i88, i2: i88) returns (bool) {i1 > i2} function {:inline} $sgt.i88(i1: i88, i2: i88) returns (i1) {if i1 > i2 then 1 else 0}
function {:inline} $sgt.i64.bool(i1: i64, i2: i64) returns (bool) {i1 > i2} function {:inline} $sgt.i64(i1: i64, i2: i64) returns (i1) {if i1 > i2 then 1 else 0}
function {:inline} $sgt.i56.bool(i1: i56, i2: i56) returns (bool) {i1 > i2} function {:inline} $sgt.i56(i1: i56, i2: i56) returns (i1) {if i1 > i2 then 1 else 0}
function {:inline} $sgt.i48.bool(i1: i48, i2: i48) returns (bool) {i1 > i2} function {:inline} $sgt.i48(i1: i48, i2: i48) returns (i1) {if i1 > i2 then 1 else 0}
function {:inline} $sgt.i40.bool(i1: i40, i2: i40) returns (bool) {i1 > i2} function {:inline} $sgt.i40(i1: i40, i2: i40) returns (i1) {if i1 > i2 then 1 else 0}
function {:inline} $sgt.i32.bool(i1: i32, i2: i32) returns (bool) {i1 > i2} function {:inline} $sgt.i32(i1: i32, i2: i32) returns (i1) {if i1 > i2 then 1 else 0}
function {:inline} $sgt.i24.bool(i1: i24, i2: i24) returns (bool) {i1 > i2} function {:inline} $sgt.i24(i1: i24, i2: i24) returns (i1) {if i1 > i2 then 1 else 0}
function {:inline} $sgt.i16.bool(i1: i16, i2: i16) returns (bool) {i1 > i2} function {:inline} $sgt.i16(i1: i16, i2: i16) returns (i1) {if i1 > i2 then 1 else 0}
function {:inline} $sgt.i8.bool(i1: i8, i2: i8) returns (bool) {i1 > i2} function {:inline} $sgt.i8(i1: i8, i2: i8) returns (i1) {if i1 > i2 then 1 else 0}
function {:inline} $sgt.i1.bool(i1: i1, i2: i1) returns (bool) {i1 > i2} function {:inline} $sgt.i1(i1: i1, i2: i1) returns (i1) {if i1 > i2 then 1 else 0}
axiom $and.i1(0,0) == 0;
axiom $and.i1(0,1) == 0;
axiom $and.i1(1,0) == 0;
axiom $and.i1(1,1) == 1;
axiom $or.i1(0,0) == 0;
axiom $or.i1(0,1) == 1;
axiom $or.i1(1,0) == 1;
axiom $or.i1(1,1) == 1;
axiom $xor.i1(0,0) == 0;
axiom $xor.i1(0,1) == 1;
axiom $xor.i1(1,0) == 1;
axiom $xor.i1(1,1) == 0;
axiom($and.i32(32, 16) == 0);
function {:inline} $trunc.i128.i96(i: i128) returns (i96) {i}
function {:inline} $trunc.i128.i88(i: i128) returns (i88) {i}
function {:inline} $trunc.i128.i64(i: i128) returns (i64) {i}
function {:inline} $trunc.i128.i56(i: i128) returns (i56) {i}
function {:inline} $trunc.i128.i48(i: i128) returns (i48) {i}
function {:inline} $trunc.i128.i40(i: i128) returns (i40) {i}
function {:inline} $trunc.i128.i32(i: i128) returns (i32) {i}
function {:inline} $trunc.i128.i24(i: i128) returns (i24) {i}
function {:inline} $trunc.i128.i16(i: i128) returns (i16) {i}
function {:inline} $trunc.i128.i8(i: i128) returns (i8) {i}
function {:inline} $trunc.i128.i1(i: i128) returns (i1) {i}
function {:inline} $trunc.i96.i64(i: i96) returns (i64) {i}
function {:inline} $trunc.i96.i88(i: i96) returns (i88) {i}
function {:inline} $trunc.i96.i56(i: i96) returns (i56) {i}
function {:inline} $trunc.i96.i48(i: i96) returns (i48) {i}
function {:inline} $trunc.i96.i40(i: i96) returns (i40) {i}
function {:inline} $trunc.i96.i32(i: i96) returns (i32) {i}
function {:inline} $trunc.i96.i24(i: i96) returns (i24) {i}
function {:inline} $trunc.i96.i16(i: i96) returns (i16) {i}
function {:inline} $trunc.i96.i8(i: i96) returns (i8) {i}
function {:inline} $trunc.i96.i1(i: i96) returns (i1) {i}
function {:inline} $trunc.i88.i64(i: i88) returns (i64) {i}
function {:inline} $trunc.i88.i88(i: i88) returns (i88) {i}
function {:inline} $trunc.i88.i56(i: i88) returns (i56) {i}
function {:inline} $trunc.i88.i48(i: i88) returns (i48) {i}
function {:inline} $trunc.i88.i40(i: i88) returns (i40) {i}
function {:inline} $trunc.i88.i32(i: i88) returns (i32) {i}
function {:inline} $trunc.i88.i24(i: i88) returns (i24) {i}
function {:inline} $trunc.i88.i16(i: i88) returns (i16) {i}
function {:inline} $trunc.i88.i8(i: i88) returns (i8) {i}
function {:inline} $trunc.i88.i1(i: i88) returns (i1) {i}
function {:inline} $trunc.i64.i56(i: i64) returns (i56) {i}
function {:inline} $trunc.i64.i48(i: i64) returns (i48) {i}
function {:inline} $trunc.i64.i40(i: i64) returns (i40) {i}
function {:inline} $trunc.i64.i32(i: i64) returns (i32) {i}
function {:inline} $trunc.i64.i24(i: i64) returns (i24) {i}
function {:inline} $trunc.i64.i16(i: i64) returns (i16) {i}
function {:inline} $trunc.i64.i8(i: i64) returns (i8) {i}
function {:inline} $trunc.i64.i1(i: i64) returns (i1) {i}
function {:inline} $trunc.i56.i48(i: i56) returns (i48) {i}
function {:inline} $trunc.i56.i40(i: i56) returns (i40) {i}
function {:inline} $trunc.i56.i32(i: i56) returns (i32) {i}
function {:inline} $trunc.i56.i24(i: i56) returns (i24) {i}
function {:inline} $trunc.i56.i16(i: i56) returns (i16) {i}
function {:inline} $trunc.i56.i8(i: i56) returns (i8) {i}
function {:inline} $trunc.i56.i1(i: i56) returns (i1) {i}
function {:inline} $trunc.i48.i40(i: i48) returns (i40) {i}
function {:inline} $trunc.i48.i32(i: i48) returns (i32) {i}
function {:inline} $trunc.i48.i24(i: i48) returns (i24) {i}
function {:inline} $trunc.i48.i16(i: i48) returns (i16) {i}
function {:inline} $trunc.i48.i8(i: i48) returns (i8) {i}
function {:inline} $trunc.i48.i1(i: i48) returns (i1) {i}
function {:inline} $trunc.i40.i32(i: i40) returns (i32) {i}
function {:inline} $trunc.i40.i24(i: i40) returns (i24) {i}
function {:inline} $trunc.i40.i16(i: i40) returns (i16) {i}
function {:inline} $trunc.i40.i8(i: i40) returns (i8) {i}
function {:inline} $trunc.i40.i1(i: i40) returns (i1) {i}
function {:inline} $trunc.i32.i24(i: i32) returns (i24) {i}
function {:inline} $trunc.i32.i16(i: i32) returns (i16) {i}
function {:inline} $trunc.i32.i8(i: i32) returns (i8) {i}
function {:inline} $trunc.i32.i1(i: i32) returns (i1) {i}
function {:inline} $trunc.i24.i16(i: i24) returns (i16) {i}
function {:inline} $trunc.i24.i8(i: i24) returns (i8) {i}
function {:inline} $trunc.i24.i1(i: i24) returns (i1) {i}
function {:inline} $trunc.i16.i8(i: i16) returns (i8) {i}
function {:inline} $trunc.i16.i1(i: i16) returns (i1) {i}
function {:inline} $trunc.i8.i1(i: i8) returns (i1) {i}
function {:inline} $zext.i1.i8(i: i1) returns (i8) {i}
function {:inline} $zext.i1.i16(i: i1) returns (i16) {i}
function {:inline} $zext.i1.i24(i: i1) returns (i24) {i}
function {:inline} $zext.i1.i32(i: i1) returns (i32) {i}
function {:inline} $zext.i1.i40(i: i1) returns (i40) {i}
function {:inline} $zext.i1.i48(i: i1) returns (i48) {i}
function {:inline} $zext.i1.i56(i: i1) returns (i56) {i}
function {:inline} $zext.i1.i64(i: i1) returns (i64) {i}
function {:inline} $zext.i1.i88(i: i1) returns (i88) {i}
function {:inline} $zext.i1.i96(i: i1) returns (i96) {i}
function {:inline} $zext.i1.i128(i: i1) returns (i128) {i}
function {:inline} $zext.i8.i16(i: i8) returns (i16) {i}
function {:inline} $zext.i8.i24(i: i8) returns (i24) {i}
function {:inline} $zext.i8.i32(i: i8) returns (i32) {i}
function {:inline} $zext.i8.i40(i: i8) returns (i40) {i}
function {:inline} $zext.i8.i48(i: i8) returns (i48) {i}
function {:inline} $zext.i8.i56(i: i8) returns (i56) {i}
function {:inline} $zext.i8.i64(i: i8) returns (i64) {i}
function {:inline} $zext.i8.i88(i: i8) returns (i88) {i}
function {:inline} $zext.i8.i96(i: i8) returns (i96) {i}
function {:inline} $zext.i8.i128(i: i8) returns (i128) {i}
function {:inline} $zext.i16.i24(i: i16) returns (i24) {i}
function {:inline} $zext.i16.i32(i: i16) returns (i32) {i}
function {:inline} $zext.i16.i40(i: i16) returns (i40) {i}
function {:inline} $zext.i16.i48(i: i16) returns (i48) {i}
function {:inline} $zext.i16.i56(i: i16) returns (i56) {i}
function {:inline} $zext.i16.i64(i: i16) returns (i64) {i}
function {:inline} $zext.i16.i88(i: i16) returns (i88) {i}
function {:inline} $zext.i16.i96(i: i16) returns (i96) {i}
function {:inline} $zext.i16.i128(i: i16) returns (i128) {i}
function {:inline} $zext.i24.i32(i: i24) returns (i32) {i}
function {:inline} $zext.i24.i40(i: i24) returns (i40) {i}
function {:inline} $zext.i24.i48(i: i24) returns (i48) {i}
function {:inline} $zext.i24.i56(i: i24) returns (i56) {i}
function {:inline} $zext.i24.i64(i: i24) returns (i64) {i}
function {:inline} $zext.i24.i88(i: i24) returns (i88) {i}
function {:inline} $zext.i24.i96(i: i24) returns (i96) {i}
function {:inline} $zext.i24.i128(i: i24) returns (i128) {i}
function {:inline} $zext.i32.i40(i: i32) returns (i40) {i}
function {:inline} $zext.i32.i48(i: i32) returns (i48) {i}
function {:inline} $zext.i32.i56(i: i32) returns (i56) {i}
function {:inline} $zext.i32.i64(i: i32) returns (i64) {i}
function {:inline} $zext.i32.i88(i: i32) returns (i88) {i}
function {:inline} $zext.i32.i96(i: i32) returns (i96) {i}
function {:inline} $zext.i32.i128(i: i32) returns (i128) {i}
function {:inline} $zext.i40.i48(i: i40) returns (i48) {i}
function {:inline} $zext.i40.i56(i: i40) returns (i56) {i}
function {:inline} $zext.i40.i64(i: i40) returns (i64) {i}
function {:inline} $zext.i40.i88(i: i40) returns (i88) {i}
function {:inline} $zext.i40.i96(i: i40) returns (i96) {i}
function {:inline} $zext.i40.i128(i: i40) returns (i128) {i}
function {:inline} $zext.i48.i56(i: i48) returns (i56) {i}
function {:inline} $zext.i48.i64(i: i48) returns (i64) {i}
function {:inline} $zext.i48.i88(i: i48) returns (i88) {i}
function {:inline} $zext.i48.i96(i: i48) returns (i96) {i}
function {:inline} $zext.i48.i128(i: i48) returns (i128) {i}
function {:inline} $zext.i56.i64(i: i56) returns (i64) {i}
function {:inline} $zext.i56.i88(i: i56) returns (i88) {i}
function {:inline} $zext.i56.i96(i: i56) returns (i96) {i}
function {:inline} $zext.i56.i128(i: i56) returns (i128) {i}
function {:inline} $zext.i64.i88(i: i64) returns (i88) {i}
function {:inline} $zext.i64.i96(i: i64) returns (i96) {i}
function {:inline} $zext.i64.i128(i: i64) returns (i128) {i}
function {:inline} $zext.i88.i96(i: i88) returns (i96) {i}
function {:inline} $zext.i88.i128(i: i88) returns (i128) {i}
function {:inline} $zext.i96.i128(i: i96) returns (i128) {i}
function {:inline} $sext.i1.i8(i: i1) returns (i8) {i}
function {:inline} $sext.i1.i16(i: i1) returns (i16) {i}
function {:inline} $sext.i1.i24(i: i1) returns (i24) {i}
function {:inline} $sext.i1.i32(i: i1) returns (i32) {i}
function {:inline} $sext.i1.i40(i: i1) returns (i40) {i}
function {:inline} $sext.i1.i48(i: i1) returns (i48) {i}
function {:inline} $sext.i1.i56(i: i1) returns (i56) {i}
function {:inline} $sext.i1.i64(i: i1) returns (i64) {i}
function {:inline} $sext.i1.i88(i: i1) returns (i88) {i}
function {:inline} $sext.i1.i96(i: i1) returns (i96) {i}
function {:inline} $sext.i1.i128(i: i1) returns (i128) {i}
function {:inline} $sext.i8.i16(i: i8) returns (i16) {i}
function {:inline} $sext.i8.i24(i: i8) returns (i24) {i}
function {:inline} $sext.i8.i32(i: i8) returns (i32) {i}
function {:inline} $sext.i8.i40(i: i8) returns (i40) {i}
function {:inline} $sext.i8.i48(i: i8) returns (i48) {i}
function {:inline} $sext.i8.i56(i: i8) returns (i56) {i}
function {:inline} $sext.i8.i64(i: i8) returns (i64) {i}
function {:inline} $sext.i8.i88(i: i8) returns (i88) {i}
function {:inline} $sext.i8.i96(i: i8) returns (i96) {i}
function {:inline} $sext.i8.i128(i: i8) returns (i128) {i}
function {:inline} $sext.i16.i24(i: i16) returns (i24) {i}
function {:inline} $sext.i16.i32(i: i16) returns (i32) {i}
function {:inline} $sext.i16.i40(i: i16) returns (i40) {i}
function {:inline} $sext.i16.i48(i: i16) returns (i48) {i}
function {:inline} $sext.i16.i56(i: i16) returns (i56) {i}
function {:inline} $sext.i16.i64(i: i16) returns (i64) {i}
function {:inline} $sext.i16.i88(i: i16) returns (i88) {i}
function {:inline} $sext.i16.i96(i: i16) returns (i96) {i}
function {:inline} $sext.i16.i128(i: i16) returns (i128) {i}
function {:inline} $sext.i24.i32(i: i24) returns (i32) {i}
function {:inline} $sext.i24.i40(i: i24) returns (i40) {i}
function {:inline} $sext.i24.i48(i: i24) returns (i48) {i}
function {:inline} $sext.i24.i56(i: i24) returns (i56) {i}
function {:inline} $sext.i24.i64(i: i24) returns (i64) {i}
function {:inline} $sext.i24.i88(i: i24) returns (i88) {i}
function {:inline} $sext.i24.i96(i: i24) returns (i96) {i}
function {:inline} $sext.i24.i128(i: i24) returns (i128) {i}
function {:inline} $sext.i32.i40(i: i32) returns (i40) {i}
function {:inline} $sext.i32.i48(i: i32) returns (i48) {i}
function {:inline} $sext.i32.i56(i: i32) returns (i56) {i}
function {:inline} $sext.i32.i64(i: i32) returns (i64) {i}
function {:inline} $sext.i32.i88(i: i32) returns (i88) {i}
function {:inline} $sext.i32.i96(i: i32) returns (i96) {i}
function {:inline} $sext.i32.i128(i: i32) returns (i128) {i}
function {:inline} $sext.i40.i48(i: i40) returns (i48) {i}
function {:inline} $sext.i40.i56(i: i40) returns (i56) {i}
function {:inline} $sext.i40.i64(i: i40) returns (i64) {i}
function {:inline} $sext.i40.i88(i: i40) returns (i88) {i}
function {:inline} $sext.i40.i96(i: i40) returns (i96) {i}
function {:inline} $sext.i40.i128(i: i40) returns (i128) {i}
function {:inline} $sext.i48.i56(i: i48) returns (i56) {i}
function {:inline} $sext.i48.i64(i: i48) returns (i64) {i}
function {:inline} $sext.i48.i88(i: i48) returns (i88) {i}
function {:inline} $sext.i48.i96(i: i48) returns (i96) {i}
function {:inline} $sext.i48.i128(i: i48) returns (i128) {i}
function {:inline} $sext.i56.i64(i: i56) returns (i64) {i}
function {:inline} $sext.i56.i88(i: i56) returns (i88) {i}
function {:inline} $sext.i56.i96(i: i56) returns (i96) {i}
function {:inline} $sext.i56.i128(i: i56) returns (i128) {i}
function {:inline} $sext.i64.i88(i: i64) returns (i88) {i}
function {:inline} $sext.i64.i96(i: i64) returns (i96) {i}
function {:inline} $sext.i64.i128(i: i64) returns (i128) {i}
function {:inline} $sext.i88.i96(i: i88) returns (i96) {i}
function {:inline} $sext.i88.i128(i: i88) returns (i128) {i}
function {:inline} $sext.i96.i128(i: i96) returns (i128) {i}
function $fp(ipart:int, fpart:int, epart:int) returns (float);
function $fadd.float(f1:float, f2:float) returns (float);
function $fsub.float(f1:float, f2:float) returns (float);
function $fmul.float(f1:float, f2:float) returns (float);
function $fdiv.float(f1:float, f2:float) returns (float);
function $frem.float(f1:float, f2:float) returns (float);
function $ffalse.float(f1:float, f2:float) returns (i1);
function $ftrue.float(f1:float, f2:float) returns (i1);
function {:inline} $foeq.float(f1:float, f2:float) returns (i1) { if $foeq.bool(f1,f2) then 1 else 0 }
function $foeq.bool(f1:float, f2:float) returns (bool);
function $foge.float(f1:float, f2:float) returns (i1);
function $fogt.float(f1:float, f2:float) returns (i1);
function $fole.float(f1:float, f2:float) returns (i1);
function $folt.float(f1:float, f2:float) returns (i1);
function $fone.float(f1:float, f2:float) returns (i1);
function $ford.float(f1:float, f2:float) returns (i1);
function $fueq.float(f1:float, f2:float) returns (i1);
function $fuge.float(f1:float, f2:float) returns (i1);
function $fugt.float(f1:float, f2:float) returns (i1);
function $fule.float(f1:float, f2:float) returns (i1);
function $fult.float(f1:float, f2:float) returns (i1);
function $fune.float(f1:float, f2:float) returns (i1);
function $funo.float(f1:float, f2:float) returns (i1);
function $fp2si.float.i128(f:float) returns (i128);
function $fp2ui.float.i128(f:float) returns (i128);
function $si2fp.i128.float(i:i128) returns (float);
function $ui2fp.i128.float(i:i128) returns (float);
function $fp2si.float.i96(f:float) returns (i96);
function $fp2ui.float.i96(f:float) returns (i96);
function $si2fp.i96.float(i:i96) returns (float);
function $ui2fp.i96.float(i:i96) returns (float);
function $fp2si.float.i88(f:float) returns (i88);
function $fp2ui.float.i88(f:float) returns (i88);
function $si2fp.i88.float(i:i88) returns (float);
function $ui2fp.i88.float(i:i88) returns (float);
function $fp2si.float.i64(f:float) returns (i64);
function $fp2ui.float.i64(f:float) returns (i64);
function $si2fp.i64.float(i:i64) returns (float);
function $ui2fp.i64.float(i:i64) returns (float);
function $fp2si.float.i56(f:float) returns (i56);
function $fp2ui.float.i56(f:float) returns (i56);
function $si2fp.i56.float(i:i56) returns (float);
function $ui2fp.i56.float(i:i56) returns (float);
function $fp2si.float.i48(f:float) returns (i48);
function $fp2ui.float.i48(f:float) returns (i48);
function $si2fp.i48.float(i:i48) returns (float);
function $ui2fp.i48.float(i:i48) returns (float);
function $fp2si.float.i40(f:float) returns (i40);
function $fp2ui.float.i40(f:float) returns (i40);
function $si2fp.i40.float(i:i40) returns (float);
function $ui2fp.i40.float(i:i40) returns (float);
function $fp2si.float.i32(f:float) returns (i32);
function $fp2ui.float.i32(f:float) returns (i32);
function $si2fp.i32.float(i:i32) returns (float);
function $ui2fp.i32.float(i:i32) returns (float);
function $fp2si.float.i24(f:float) returns (i24);
function $fp2ui.float.i24(f:float) returns (i24);
function $si2fp.i24.float(i:i24) returns (float);
function $ui2fp.i24.float(i:i24) returns (float);
function $fp2si.float.i16(f:float) returns (i16);
function $fp2ui.float.i16(f:float) returns (i16);
function $si2fp.i16.float(i:i16) returns (float);
function $ui2fp.i16.float(i:i16) returns (float);
function $fp2si.float.i8(f:float) returns (i8);
function $fp2ui.float.i8(f:float) returns (i8);
function $si2fp.i8.float(i:i8) returns (float);
function $ui2fp.i8.float(i:i8) returns (float);
function $fptrunc.float.float(f:float) returns (float);
function $fpext.float.float(f:float) returns (float);
function $fp2si.float.bv128(f:float) returns (bv128);
function $fp2ui.float.bv128(f:float) returns (bv128);
function $si2fp.bv128.float(i:bv128) returns (float);
function $ui2fp.bv128.float(i:bv128) returns (float);
function $fp2si.float.bv96(f:float) returns (bv96);
function $fp2ui.float.bv96(f:float) returns (bv96);
function $si2fp.bv96.float(i:bv96) returns (float);
function $ui2fp.bv96.float(i:bv96) returns (float);
function $fp2si.float.bv88(f:float) returns (bv88);
function $fp2ui.float.bv88(f:float) returns (bv88);
function $si2fp.bv88.float(i:bv88) returns (float);
function $ui2fp.bv88.float(i:bv88) returns (float);
function $fp2si.float.bv64(f:float) returns (bv64);
function $fp2ui.float.bv64(f:float) returns (bv64);
function $si2fp.bv64.float(i:bv64) returns (float);
function $ui2fp.bv64.float(i:bv64) returns (float);
function $fp2si.float.bv56(f:float) returns (bv56);
function $fp2ui.float.bv56(f:float) returns (bv56);
function $si2fp.bv56.float(i:bv56) returns (float);
function $ui2fp.bv56.float(i:bv56) returns (float);
function $fp2si.float.bv48(f:float) returns (bv48);
function $fp2ui.float.bv48(f:float) returns (bv48);
function $si2fp.bv48.float(i:bv48) returns (float);
function $ui2fp.bv48.float(i:bv48) returns (float);
function $fp2si.float.bv40(f:float) returns (bv40);
function $fp2ui.float.bv40(f:float) returns (bv40);
function $si2fp.bv40.float(i:bv40) returns (float);
function $ui2fp.bv40.float(i:bv40) returns (float);
function $fp2si.float.bv32(f:float) returns (bv32);
function $fp2ui.float.bv32(f:float) returns (bv32);
function $si2fp.bv32.float(i:bv32) returns (float);
function $ui2fp.bv32.float(i:bv32) returns (float);
function $fp2si.float.bv24(f:float) returns (bv24);
function $fp2ui.float.bv24(f:float) returns (bv24);
function $si2fp.bv24.float(i:bv24) returns (float);
function $ui2fp.bv24.float(i:bv24) returns (float);
function $fp2si.float.bv16(f:float) returns (bv16);
function $fp2ui.float.bv16(f:float) returns (bv16);
function $si2fp.bv16.float(i:bv16) returns (float);
function $ui2fp.bv16.float(i:bv16) returns (float);
function $fp2si.float.bv8(f:float) returns (bv8);
function $fp2ui.float.bv8(f:float) returns (bv8);
function $si2fp.bv8.float(i:bv8) returns (float);
function $ui2fp.bv8.float(i:bv8) returns (float);
const $GLOBALS_BOTTOM: ref;
const $EXTERNS_BOTTOM: ref;
const $MALLOC_TOP: ref;
function {:inline} $isExternal(p: ref) returns (bool) {$slt.ref.bool(p,$EXTERNS_BOTTOM)}
function {:inline} $load.i128(M: [ref] i128, p: ref) returns (i128) { M[p] }
function {:inline} $load.i96(M: [ref] i96, p: ref) returns (i96) { M[p] }
function {:inline} $load.i88(M: [ref] i88, p: ref) returns (i88) { M[p] }
function {:inline} $load.i64(M: [ref] i64, p: ref) returns (i64) { M[p] }
function {:inline} $load.i56(M: [ref] i56, p: ref) returns (i56) { M[p] }
function {:inline} $load.i48(M: [ref] i48, p: ref) returns (i48) { M[p] }
function {:inline} $load.i40(M: [ref] i40, p: ref) returns (i40) { M[p] }
function {:inline} $load.i32(M: [ref] i32, p: ref) returns (i32) { M[p] }
function {:inline} $load.i24(M: [ref] i24, p: ref) returns (i24) { M[p] }
function {:inline} $load.i16(M: [ref] i16, p: ref) returns (i16) { M[p] }
function {:inline} $load.i8(M: [ref] i8, p: ref) returns (i8) { M[p] }
function {:inline} $load.bv128(M: [ref] bv128, p: ref) returns (bv128) { M[p] }
function {:inline} $load.bv96(M: [ref] bv96, p: ref) returns (bv96) { M[p] }
function {:inline} $load.bv88(M: [ref] bv88, p: ref) returns (bv88) { M[p] }
function {:inline} $load.bv64(M: [ref] bv64, p: ref) returns (bv64) { M[p] }
function {:inline} $load.bv56(M: [ref] bv56, p: ref) returns (bv56) { M[p] }
function {:inline} $load.bv48(M: [ref] bv48, p: ref) returns (bv48) { M[p] }
function {:inline} $load.bv40(M: [ref] bv40, p: ref) returns (bv40) { M[p] }
function {:inline} $load.bv32(M: [ref] bv32, p: ref) returns (bv32) { M[p] }
function {:inline} $load.bv24(M: [ref] bv24, p: ref) returns (bv24) { M[p] }
function {:inline} $load.bv16(M: [ref] bv16, p: ref) returns (bv16) { M[p] }
function {:inline} $load.bv8(M: [ref] bv8, p: ref) returns (bv8) { M[p] }
function {:inline} $load.bytes.bv128(M: [ref] bv8, p: ref) returns (bv128){ $load.bytes.bv64(M, $add.ref(p, $8.ref)) ++ $load.bytes.bv64(M, p) }
function {:inline} $load.bytes.bv96(M: [ref] bv8, p: ref) returns (bv96){ $load.bytes.bv64(M, $add.ref(p, $4.ref)) ++ $load.bytes.bv32(M, p) }
function {:inline} $load.bytes.bv88(M: [ref] bv8, p: ref) returns (bv88){ $load.bytes.bv56(M, $add.ref(p, $4.ref)) ++ $load.bytes.bv32(M, p) }
function {:inline} $load.bytes.bv64(M: [ref] bv8, p: ref) returns (bv64){ $load.bytes.bv32(M, $add.ref(p, $4.ref)) ++ $load.bytes.bv32(M, p) }
function {:inline} $load.bytes.bv56(M: [ref] bv8, p: ref) returns (bv56){ $load.bytes.bv24(M, $add.ref(p, $4.ref)) ++ $load.bytes.bv32(M, p) }
function {:inline} $load.bytes.bv48(M: [ref] bv8, p: ref) returns (bv48){ $load.bytes.bv16(M, $add.ref(p, $4.ref)) ++ $load.bytes.bv32(M, p) }
function {:inline} $load.bytes.bv40(M: [ref] bv8, p: ref) returns (bv40){ M[$add.ref(p, $4.ref)] ++ $load.bytes.bv32(M, p) }
function {:inline} $load.bytes.bv32(M: [ref] bv8, p: ref) returns (bv32){ M[$add.ref(p, $3.ref)] ++ M[$add.ref(p, $2.ref)] ++ M[$add.ref(p, $1.ref)]++M[p] }
function {:inline} $load.bytes.bv24(M: [ref] bv8, p: ref) returns (bv24){ M[$add.ref(p, $2.ref)] ++ M[$add.ref(p, $1.ref)]++M[p] }
function {:inline} $load.bytes.bv16(M: [ref] bv8, p: ref) returns (bv16){ M[$add.ref(p, $1.ref)] ++ M[p] }
function {:inline} $load.bytes.bv8(M: [ref] bv8, p: ref) returns (bv8) { M[p] }
function {:inline} $store.i128(M: [ref] i128, p: ref, v: i128) returns ([ref] i128) { M[p := v] }
function {:inline} $store.i96(M: [ref] i96, p: ref, v: i96) returns ([ref] i96) { M[p := v] }
function {:inline} $store.i88(M: [ref] i88, p: ref, v: i88) returns ([ref] i88) { M[p := v] }
function {:inline} $store.i64(M: [ref] i64, p: ref, v: i64) returns ([ref] i64) { M[p := v] }
function {:inline} $store.i56(M: [ref] i56, p: ref, v: i56) returns ([ref] i56) { M[p := v] }
function {:inline} $store.i48(M: [ref] i48, p: ref, v: i48) returns ([ref] i48) { M[p := v] }
function {:inline} $store.i40(M: [ref] i40, p: ref, v: i40) returns ([ref] i40) { M[p := v] }
function {:inline} $store.i32(M: [ref] i32, p: ref, v: i32) returns ([ref] i32) { M[p := v] }
function {:inline} $store.i24(M: [ref] i24, p: ref, v: i24) returns ([ref] i24) { M[p := v] }
function {:inline} $store.i16(M: [ref] i16, p: ref, v: i16) returns ([ref] i16) { M[p := v] }
function {:inline} $store.i8(M: [ref] i8, p: ref, v: i8) returns ([ref] i8) { M[p := v] }
function {:inline} $store.bv128(M: [ref] bv128, p: ref, v: bv128) returns ([ref] bv128) { M[p := v] }
function {:inline} $store.bv96(M: [ref] bv96, p: ref, v: bv96) returns ([ref] bv96) { M[p := v] }
function {:inline} $store.bv88(M: [ref] bv88, p: ref, v: bv88) returns ([ref] bv88) { M[p := v] }
function {:inline} $store.bv64(M: [ref] bv64, p: ref, v: bv64) returns ([ref] bv64) { M[p := v] }
function {:inline} $store.bv56(M: [ref] bv56, p: ref, v: bv56) returns ([ref] bv56) { M[p := v] }
function {:inline} $store.bv48(M: [ref] bv48, p: ref, v: bv48) returns ([ref] bv48) { M[p := v] }
function {:inline} $store.bv40(M: [ref] bv40, p: ref, v: bv40) returns ([ref] bv40) { M[p := v] }
function {:inline} $store.bv32(M: [ref] bv32, p: ref, v: bv32) returns ([ref] bv32) { M[p := v] }
function {:inline} $store.bv24(M: [ref] bv24, p: ref, v: bv24) returns ([ref] bv24) { M[p := v] }
function {:inline} $store.bv16(M: [ref] bv16, p: ref, v: bv16) returns ([ref] bv16) { M[p := v] }
function {:inline} $store.bv8(M: [ref] bv8, p: ref, v: bv8) returns ([ref] bv8) { M[p := v] }
function {:inline} $store.bytes.bv128(M:[ref]bv8, p:ref, v:bv128) returns ([ref]bv8){M[p := v[8:0]][$add.ref(p, $1.ref) := v[16:8]][$add.ref(p, $2.ref) := v[24:16]][$add.ref(p, $3.ref) := v[32:24]][$add.ref(p, $4.ref) := v[40:32]][$add.ref(p, $5.ref) := v[48:40]][$add.ref(p, $6.ref) := v[56:48]][$add.ref(p, $7.ref) := v[64:56]][$add.ref(p, $7.ref) := v[72:64]][$add.ref(p, $8.ref) := v[80:72]][$add.ref(p, $9.ref) := v[88:80]][$add.ref(p, $10.ref) := v[96:88]][$add.ref(p, $11.ref) := v[104:96]][$add.ref(p, $12.ref) := v[112:104]][$add.ref(p, $13.ref) := v[120:112]][$add.ref(p, $14.ref) := v[128:120]]}
function {:inline} $store.bytes.bv96(M:[ref]bv8, p:ref, v:bv96) returns ([ref]bv8){M[p := v[8:0]][$add.ref(p, $1.ref) := v[16:8]][$add.ref(p, $2.ref) := v[24:16]][$add.ref(p, $3.ref) := v[32:24]][$add.ref(p, $4.ref) := v[40:32]][$add.ref(p, $5.ref) := v[48:40]][$add.ref(p, $6.ref) := v[56:48]][$add.ref(p, $7.ref) := v[64:56]][$add.ref(p, $7.ref) := v[72:64]][$add.ref(p, $8.ref) := v[80:72]][$add.ref(p, $9.ref) := v[88:80]][$add.ref(p, $10.ref) := v[96:88]]}
function {:inline} $store.bytes.bv88(M:[ref]bv8, p:ref, v:bv88) returns ([ref]bv8){M[p := v[8:0]][$add.ref(p, $1.ref) := v[16:8]][$add.ref(p, $2.ref) := v[24:16]][$add.ref(p, $3.ref) := v[32:24]][$add.ref(p, $4.ref) := v[40:32]][$add.ref(p, $5.ref) := v[48:40]][$add.ref(p, $6.ref) := v[56:48]][$add.ref(p, $7.ref) := v[64:56]][$add.ref(p, $7.ref) := v[72:64]][$add.ref(p, $8.ref) := v[80:72]][$add.ref(p, $9.ref) := v[88:80]]}
function {:inline} $store.bytes.bv64(M:[ref]bv8, p:ref, v:bv64) returns ([ref]bv8){M[p := v[8:0]][$add.ref(p, $1.ref) := v[16:8]][$add.ref(p, $2.ref) := v[24:16]][$add.ref(p, $3.ref) := v[32:24]][$add.ref(p, $4.ref) := v[40:32]][$add.ref(p, $5.ref) := v[48:40]][$add.ref(p, $6.ref) := v[56:48]][$add.ref(p, $7.ref) := v[64:56]]}
function {:inline} $store.bytes.bv56(M:[ref]bv8, p:ref, v:bv56) returns ([ref]bv8){M[p := v[8:0]][$add.ref(p, $1.ref) := v[16:8]][$add.ref(p, $2.ref) := v[24:16]][$add.ref(p, $3.ref) := v[32:24]][$add.ref(p, $4.ref) := v[40:32]][$add.ref(p, $5.ref) := v[48:40]][$add.ref(p, $6.ref) := v[56:48]]}
function {:inline} $store.bytes.bv48(M:[ref]bv8, p:ref, v:bv48) returns ([ref]bv8){M[p := v[8:0]][$add.ref(p, $1.ref) := v[16:8]][$add.ref(p, $2.ref) := v[24:16]][$add.ref(p, $3.ref) := v[32:24]][$add.ref(p, $4.ref) := v[40:32]][$add.ref(p, $5.ref) := v[48:40]]}
function {:inline} $store.bytes.bv40(M:[ref]bv8, p:ref, v:bv40) returns ([ref]bv8){M[p := v[8:0]][$add.ref(p, $1.ref) := v[16:8]][$add.ref(p, $2.ref) := v[24:16]][$add.ref(p, $3.ref) := v[32:24]][$add.ref(p, $4.ref) := v[40:32]]}
function {:inline} $store.bytes.bv32(M:[ref]bv8, p:ref, v:bv32) returns ([ref]bv8) {M[p := v[8:0]][$add.ref(p, $1.ref) := v[16:8]][$add.ref(p, $2.ref) := v[24:16]][$add.ref(p, $3.ref) := v[32:24]]}
function {:inline} $store.bytes.bv24(M:[ref]bv8, p:ref, v:bv24) returns ([ref]bv8) {M[p := v[8:0]][$add.ref(p, $1.ref) := v[16:8]][$add.ref(p, $2.ref) := v[24:16]]}
function {:inline} $store.bytes.bv16(M:[ref]bv8, p:ref, v:bv16) returns ([ref]bv8) {M[p := v[8:0]][$add.ref(p, $1.ref) := v[16:8]]}
function {:inline} $store.bytes.bv8(M:[ref]bv8, p:ref, v:bv8) returns ([ref]bv8) {M[p := v]}
function {:inline} $load.ref(M: [ref] ref, p: ref) returns (ref) { M[p] }
function {:inline} $store.ref(M: [ref] ref, p: ref, v: ref) returns ([ref] ref) { M[p := v] }
function {:inline} $load.float(M: [ref] float, p: ref) returns (float) { M[p] }
function {:inline} $store.float(M: [ref] float, p: ref, v: float) returns ([ref] float) { M[p := v] }
type $mop;
procedure boogie_si_record_mop(m: $mop);
const $MOP: $mop;
procedure boogie_si_record_bool (i: bool);
procedure boogie_si_record_i1 (i: i1);
procedure boogie_si_record_i8 (i: i8);
procedure boogie_si_record_i16 (i: i16);
procedure boogie_si_record_i24 (i: i24);
procedure boogie_si_record_i32 (i: i32);
procedure boogie_si_record_i40 (i: i40);
procedure boogie_si_record_i48 (i: i48);
procedure boogie_si_record_i56 (i: i56);
procedure boogie_si_record_i64 (i: i64);
procedure boogie_si_record_i88 (i: i88);
procedure boogie_si_record_i96 (i: i96);
procedure boogie_si_record_i128 (i: i128);
procedure boogie_si_record_bv1 (i: bv1);
procedure boogie_si_record_bv8 (i: bv8);
procedure boogie_si_record_bv16 (i: bv16);
procedure boogie_si_record_bv24 (i: bv24);
procedure boogie_si_record_bv32 (i: bv32);
procedure boogie_si_record_bv40 (i: bv40);
procedure boogie_si_record_bv48 (i: bv48);
procedure boogie_si_record_bv56 (i: bv56);
procedure boogie_si_record_bv64 (i: bv64);
procedure boogie_si_record_bv88 (i: bv88);
procedure boogie_si_record_bv96 (i: bv96);
procedure boogie_si_record_bv128 (i: bv128);
procedure boogie_si_record_ref (i: ref);
procedure boogie_si_record_float (i: float);
var $exn: bool;
var $exnv: int;
function $extractvalue(p: int, i: int) returns (int);

procedure $alloc(n: ref) returns (p: ref)
{
  call p := $$alloc(n);
}

procedure $malloc(n: ref) returns (p: ref)
{
  call p := $$alloc(n);
}

var $CurrAddr:ref;

procedure {:inline 1} $$alloc(n: ref) returns (p: ref)
modifies $CurrAddr;
{
  assume $sge.ref.bool(n, $0.ref);
  if ($sgt.ref.bool(n, $0.ref)) {
    p := $CurrAddr;
    havoc $CurrAddr;
    assume $sge.ref.bool($sub.ref($CurrAddr, n), p);
    assume $sgt.ref.bool($CurrAddr, $0.ref) && $slt.ref.bool($CurrAddr, $MALLOC_TOP);
  } else {
    p := $0.ref;
  }
}

procedure $free(p: ref);

const __SMACK_top_decl: ref;
axiom (__SMACK_top_decl == $sub.ref(0, 80897));
procedure __SMACK_top_decl.ref($p0: ref);
const __SMACK_init_func_memory_model: ref;
axiom (__SMACK_init_func_memory_model == $sub.ref(0, 81929));
procedure __SMACK_init_func_memory_model()
{
$bb0:
  assume {:sourceloc "/mnt/local/smack-project/smack/share/smack/lib/smack.c", 1782, 3} true;
  assume {:verifier.code 1} true;
  $CurrAddr := $1024.ref;
  assume {:sourceloc "/mnt/local/smack-project/smack/share/smack/lib/smack.c", 1787, 1} true;
  assume {:verifier.code 0} true;
  $exn := false;
  return;
}
const llvm.dbg.value: ref;
axiom (llvm.dbg.value == $sub.ref(0, 82961));
procedure llvm.dbg.value($p0: ref, $i1: i64, $p2: ref, $p3: ref);
const __SMACK_static_init: ref;
axiom (__SMACK_static_init == $sub.ref(0, 83993));
procedure __SMACK_static_init()
{
$bb0:
  $M.4 := 0;
  call {:cexpr "LDV_IN_INTERRUPT"} boogie_si_record_i32(0);
  $M.3 := 1;
  call {:cexpr "ldv_mutex"} boogie_si_record_i32(1);
  $M.0 := $store.ref($M.0, llvm.used, __mod_author149);
  $M.0 := $store.ref($M.0, $add.ref(llvm.used, 8), __mod_description150);
  $M.0 := $store.ref($M.0, $add.ref(llvm.used, 16), __mod_license151);
  $M.0 := $store.ref($M.0, $add.ref(llvm.used, 24), __mod_alias152);
  $M.0 := $store.i8($M.0, __mod_author149, 97);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author149, 1), 117);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author149, 2), 116);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author149, 3), 104);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author149, 4), 111);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author149, 5), 114);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author149, 6), 61);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author149, 7), 67);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author149, 8), 108);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author149, 9), 105);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author149, 10), 102);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author149, 11), 102);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author149, 12), 32);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author149, 13), 67);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author149, 14), 97);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author149, 15), 105);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author149, 16), 0);
  $M.0 := $store.i8($M.0, __mod_description150, 100);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description150, 1), 101);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description150, 2), 115);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description150, 3), 99);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description150, 4), 114);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description150, 5), 105);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description150, 6), 112);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description150, 7), 116);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description150, 8), 105);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description150, 9), 111);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description150, 10), 110);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description150, 11), 61);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description150, 12), 65);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description150, 13), 110);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description150, 14), 97);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description150, 15), 108);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description150, 16), 111);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description150, 17), 103);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description150, 18), 32);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description150, 19), 68);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description150, 20), 101);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description150, 21), 118);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description150, 22), 105);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description150, 23), 99);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description150, 24), 101);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description150, 25), 115);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description150, 26), 32);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description150, 27), 97);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description150, 28), 100);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description150, 29), 53);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description150, 30), 57);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description150, 31), 51);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description150, 32), 48);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description150, 33), 32);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description150, 34), 100);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description150, 35), 114);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description150, 36), 105);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description150, 37), 118);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description150, 38), 101);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description150, 39), 114);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description150, 40), 0);
  $M.0 := $store.i8($M.0, __mod_license151, 108);
  $M.0 := $store.i8($M.0, $add.ref(__mod_license151, 1), 105);
  $M.0 := $store.i8($M.0, $add.ref(__mod_license151, 2), 99);
  $M.0 := $store.i8($M.0, $add.ref(__mod_license151, 3), 101);
  $M.0 := $store.i8($M.0, $add.ref(__mod_license151, 4), 110);
  $M.0 := $store.i8($M.0, $add.ref(__mod_license151, 5), 115);
  $M.0 := $store.i8($M.0, $add.ref(__mod_license151, 6), 101);
  $M.0 := $store.i8($M.0, $add.ref(__mod_license151, 7), 61);
  $M.0 := $store.i8($M.0, $add.ref(__mod_license151, 8), 71);
  $M.0 := $store.i8($M.0, $add.ref(__mod_license151, 9), 80);
  $M.0 := $store.i8($M.0, $add.ref(__mod_license151, 10), 76);
  $M.0 := $store.i8($M.0, $add.ref(__mod_license151, 11), 32);
  $M.0 := $store.i8($M.0, $add.ref(__mod_license151, 12), 118);
  $M.0 := $store.i8($M.0, $add.ref(__mod_license151, 13), 50);
  $M.0 := $store.i8($M.0, $add.ref(__mod_license151, 14), 0);
  $M.0 := $store.i8($M.0, __mod_alias152, 97);
  $M.0 := $store.i8($M.0, $add.ref(__mod_alias152, 1), 108);
  $M.0 := $store.i8($M.0, $add.ref(__mod_alias152, 2), 105);
  $M.0 := $store.i8($M.0, $add.ref(__mod_alias152, 3), 97);
  $M.0 := $store.i8($M.0, $add.ref(__mod_alias152, 4), 115);
  $M.0 := $store.i8($M.0, $add.ref(__mod_alias152, 5), 61);
  $M.0 := $store.i8($M.0, $add.ref(__mod_alias152, 6), 115);
  $M.0 := $store.i8($M.0, $add.ref(__mod_alias152, 7), 112);
  $M.0 := $store.i8($M.0, $add.ref(__mod_alias152, 8), 105);
  $M.0 := $store.i8($M.0, $add.ref(__mod_alias152, 9), 58);
  $M.0 := $store.i8($M.0, $add.ref(__mod_alias152, 10), 97);
  $M.0 := $store.i8($M.0, $add.ref(__mod_alias152, 11), 100);
  $M.0 := $store.i8($M.0, $add.ref(__mod_alias152, 12), 53);
  $M.0 := $store.i8($M.0, $add.ref(__mod_alias152, 13), 57);
  $M.0 := $store.i8($M.0, $add.ref(__mod_alias152, 14), 51);
  $M.0 := $store.i8($M.0, $add.ref(__mod_alias152, 15), 48);
  $M.0 := $store.i8($M.0, $add.ref(__mod_alias152, 16), 0);
  $M.0 := $store.ref($M.0, iio_dev_attr_dds, .str.2);
  $M.0 := $store.i16($M.0, $add.ref(iio_dev_attr_dds, 8), 128);
  $M.0 := $store.ref($M.0, $add.ref(iio_dev_attr_dds, 16), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(iio_dev_attr_dds, 24), ad5930_set_parameter);
  $M.0 := $store.i64($M.0, $add.ref(iio_dev_attr_dds, 32), 0);
  $M.0 := $store.ref($M.0, $add.ref(iio_dev_attr_dds, 40), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(iio_dev_attr_dds, 40), 8), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(iio_dev_attr_dds, 56), $0.ref);
  $M.0 := $store.ref($M.0, ad5930_attributes, iio_dev_attr_dds);
  $M.0 := $store.ref($M.0, $add.ref(ad5930_attributes, 8), $0.ref);
  $M.0 := $store.ref($M.0, ad5930_attribute_group, $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(ad5930_attribute_group, 8), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(ad5930_attribute_group, 16), ad5930_attributes);
  $M.0 := $store.ref($M.0, ad5930_info, __this_module);
  $M.0 := $store.ref($M.0, $add.ref(ad5930_info, 8), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(ad5930_info, 16), ad5930_attribute_group);
  $M.0 := $store.ref($M.0, $add.ref(ad5930_info, 24), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(ad5930_info, 32), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(ad5930_info, 40), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(ad5930_info, 48), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(ad5930_info, 56), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(ad5930_info, 64), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(ad5930_info, 72), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(ad5930_info, 80), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(ad5930_info, 88), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(ad5930_info, 96), $0.ref);
  $M.6 := $0.ref;
  $M.7 := ad5930_probe;
  $M.8 := ad5930_remove;
  $M.9 := $0.ref;
  $M.10 := $0.ref;
  $M.11 := $0.ref;
  $M.12 := .str;
  $M.13 := $0.ref;
  $M.14 := __this_module;
  $M.15 := $0.ref;
  $M.16 := 0;
  $M.17 := $0.ref;
  $M.18 := $0.ref;
  $M.19 := $0.ref;
  $M.20 := $0.ref;
  $M.21 := $0.ref;
  $M.22 := $0.ref;
  $M.23 := $0.ref;
  $M.24 := $0.ref;
  $M.25 := $0.ref;
  $M.5 := 0;
  call {:cexpr "res_ad5930_probe_1"} boogie_si_record_i32(0);
  $exn := false;
  return;
}
procedure $memset.i8(M: [ref] i8, dst: ref, val: i8, len: ref, align: ref, isvolatile: bool) returns (M.ret: [ref] i8)
{
  assume (forall x: ref :: $sle.ref.bool(dst,x) && $slt.ref.bool(x,$add.ref(dst,len)) ==> M.ret[x] == val);
  assume (forall x: ref :: $slt.ref.bool(x,dst) ==> M.ret[x] == M[x]);
  assume (forall x: ref :: $sle.ref.bool($add.ref(dst,len),x) ==> M.ret[x] == M[x]);
}

const $u0: ref;
procedure $initialize()
{
  call __SMACK_static_init();
  call __SMACK_init_func_memory_model();
  return;
}
