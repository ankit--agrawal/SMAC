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

// Memory maps (5 regions)
var $M.0: [ref] i8;
var $M.1: i32;
var $M.2: i32;
var $M.3: [ref] i32;
var $M.4: [ref] i32;

// Memory address bounds
axiom ($GLOBALS_BOTTOM == $sub.ref(0, 101955));
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
const {:count 3} llvm.used: ref;
axiom (llvm.used == $sub.ref(0, 3104));
const {:count 32} __mod_description185: ref;
axiom (__mod_description185 == $sub.ref(0, 4160));
const {:count 25} __mod_author186: ref;
axiom (__mod_author186 == $sub.ref(0, 5209));
const {:count 12} __mod_license187: ref;
axiom (__mod_license187 == $sub.ref(0, 6245));
const {:count 11} broadcom_tbl: ref;
axiom (broadcom_tbl == $sub.ref(0, 7357));
const bcm5241_driver: ref;
axiom (bcm5241_driver == $sub.ref(0, 8629));
const bcmac131_driver: ref;
axiom (bcmac131_driver == $sub.ref(0, 9901));
const bcm57780_driver: ref;
axiom (bcm57780_driver == $sub.ref(0, 11173));
const bcm50610m_driver: ref;
axiom (bcm50610m_driver == $sub.ref(0, 12445));
const bcm50610_driver: ref;
axiom (bcm50610_driver == $sub.ref(0, 13717));
const bcm5482_driver: ref;
axiom (bcm5482_driver == $sub.ref(0, 14989));
const bcm5481_driver: ref;
axiom (bcm5481_driver == $sub.ref(0, 16261));
const bcm5464_driver: ref;
axiom (bcm5464_driver == $sub.ref(0, 17533));
const bcm5461_driver: ref;
axiom (bcm5461_driver == $sub.ref(0, 18805));
const bcm5421_driver: ref;
axiom (bcm5421_driver == $sub.ref(0, 20077));
const bcm5411_driver: ref;
axiom (bcm5411_driver == $sub.ref(0, 21349));
const .str: ref;
axiom (.str == $sub.ref(0, 22390));
const __this_module: ref;
axiom (__this_module == $sub.ref(0, 32776));
const {:count 17} .str.1: ref;
axiom (.str.1 == $sub.ref(0, 23431));
const {:count 17} .str.2: ref;
axiom (.str.2 == $sub.ref(0, 24472));
const {:count 17} .str.3: ref;
axiom (.str.3 == $sub.ref(0, 25513));
const {:count 17} .str.4: ref;
axiom (.str.4 == $sub.ref(0, 26554));
const {:count 17} .str.5: ref;
axiom (.str.5 == $sub.ref(0, 27595));
const {:count 18} .str.6: ref;
axiom (.str.6 == $sub.ref(0, 28637));
const {:count 19} .str.7: ref;
axiom (.str.7 == $sub.ref(0, 29680));
const {:count 18} .str.8: ref;
axiom (.str.8 == $sub.ref(0, 30722));
const {:count 18} .str.9: ref;
axiom (.str.9 == $sub.ref(0, 31764));
const {:count 17} .str.10: ref;
axiom (.str.10 == $sub.ref(0, 32805));
const {:count 14} .str.2.15: ref;
axiom (.str.2.15 == $sub.ref(0, 33843));
const broadcom_init: ref;
axiom (broadcom_init == $sub.ref(0, 34875));
procedure broadcom_init()
  returns ($r: i32)
{
  var $i0: i32;
  var $i1: i1;
  var $i3: i32;
  var $i4: i1;
  var $i6: i32;
  var $i7: i1;
  var $i9: i32;
  var $i10: i1;
  var $i12: i32;
  var $i13: i1;
  var $i15: i32;
  var $i16: i1;
  var $i18: i32;
  var $i19: i1;
  var $i21: i32;
  var $i22: i1;
  var $i24: i32;
  var $i25: i1;
  var $i27: i32;
  var $i28: i1;
  var $i30: i32;
  var $i31: i1;
  var $i29: i32;
  var $i26: i32;
  var $i23: i32;
  var $i20: i32;
  var $i17: i32;
  var $i14: i32;
  var $i11: i32;
  var $i8: i32;
  var $i5: i32;
  var $i2: i32;
  var $i32: i32;
$bb0:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4675, 9} true;
  assume {:verifier.code 0} true;
  call $i0 := phy_driver_register(bcm5411_driver);
  // WARNING: %1 = call i32 @phy_driver_register(%struct.phy_driver* @bcm5411_driver), !dbg !3808, !verifier.code !3811
  call {:cexpr "ret"} boogie_si_record_i32($i0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4677, 7} true;
  assume {:verifier.code 0} true;
  $i1 := $ne.i32($i0, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4677, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i1} true;
  goto $bb1, $bb2;
$bb1:
  assume ($i1 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4678, 5} true;
  assume {:verifier.code 0} true;
  $i2 := $i0;
  goto $bb3;
$bb2:
  assume !(($i1 == 1));
  assume {:verifier.code 0} true;
  goto $bb4;
$bb3:
  assume {:verifier.code 0} true;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4804, 3} true;
  assume {:verifier.code 0} true;
  $i32 := $i2;
  goto $bb45;
$bb4:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4683, 9} true;
  assume {:verifier.code 0} true;
  call $i3 := phy_driver_register(bcm5421_driver);
  // WARNING: %6 = call i32 @phy_driver_register(%struct.phy_driver* @bcm5421_driver), !dbg !3820, !verifier.code !3811
  call {:cexpr "ret"} boogie_si_record_i32($i3);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4685, 7} true;
  assume {:verifier.code 0} true;
  $i4 := $ne.i32($i3, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4685, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i4} true;
  goto $bb5, $bb6;
$bb5:
  assume ($i4 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4686, 5} true;
  assume {:verifier.code 0} true;
  $i5 := $i3;
  goto $bb7;
$bb6:
  assume !(($i4 == 1));
  assume {:verifier.code 0} true;
  goto $bb8;
$bb7:
  assume {:verifier.code 0} true;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4801, 3} true;
  assume {:verifier.code 0} true;
  call phy_driver_unregister(bcm5411_driver);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4802, 3} true;
  assume {:verifier.code 0} true;
  $i2 := $i5;
  goto $bb3;
$bb8:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4691, 9} true;
  assume {:verifier.code 0} true;
  call $i6 := phy_driver_register(bcm5461_driver);
  // WARNING: %11 = call i32 @phy_driver_register(%struct.phy_driver* @bcm5461_driver), !dbg !3827, !verifier.code !3811
  call {:cexpr "ret"} boogie_si_record_i32($i6);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4693, 7} true;
  assume {:verifier.code 0} true;
  $i7 := $ne.i32($i6, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4693, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i7} true;
  goto $bb9, $bb10;
$bb9:
  assume ($i7 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4694, 5} true;
  assume {:verifier.code 0} true;
  $i8 := $i6;
  goto $bb11;
$bb10:
  assume !(($i7 == 1));
  assume {:verifier.code 0} true;
  goto $bb12;
$bb11:
  assume {:verifier.code 0} true;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4797, 3} true;
  assume {:verifier.code 0} true;
  call phy_driver_unregister(bcm5421_driver);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4798, 3} true;
  assume {:verifier.code 0} true;
  $i5 := $i8;
  goto $bb7;
$bb12:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4699, 9} true;
  assume {:verifier.code 0} true;
  call $i9 := phy_driver_register(bcm5464_driver);
  // WARNING: %16 = call i32 @phy_driver_register(%struct.phy_driver* @bcm5464_driver), !dbg !3834, !verifier.code !3811
  call {:cexpr "ret"} boogie_si_record_i32($i9);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4701, 7} true;
  assume {:verifier.code 0} true;
  $i10 := $ne.i32($i9, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4701, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i10} true;
  goto $bb13, $bb14;
$bb13:
  assume ($i10 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4702, 5} true;
  assume {:verifier.code 0} true;
  $i11 := $i9;
  goto $bb15;
$bb14:
  assume !(($i10 == 1));
  assume {:verifier.code 0} true;
  goto $bb16;
$bb15:
  assume {:verifier.code 0} true;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4793, 3} true;
  assume {:verifier.code 0} true;
  call phy_driver_unregister(bcm5461_driver);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4794, 3} true;
  assume {:verifier.code 0} true;
  $i8 := $i11;
  goto $bb11;
$bb16:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4707, 9} true;
  assume {:verifier.code 0} true;
  call $i12 := phy_driver_register(bcm5481_driver);
  // WARNING: %21 = call i32 @phy_driver_register(%struct.phy_driver* @bcm5481_driver), !dbg !3841, !verifier.code !3811
  call {:cexpr "ret"} boogie_si_record_i32($i12);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4709, 7} true;
  assume {:verifier.code 0} true;
  $i13 := $ne.i32($i12, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4709, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i13} true;
  goto $bb17, $bb18;
$bb17:
  assume ($i13 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4710, 5} true;
  assume {:verifier.code 0} true;
  $i14 := $i12;
  goto $bb19;
$bb18:
  assume !(($i13 == 1));
  assume {:verifier.code 0} true;
  goto $bb20;
$bb19:
  assume {:verifier.code 0} true;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4789, 3} true;
  assume {:verifier.code 0} true;
  call phy_driver_unregister(bcm5464_driver);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4790, 3} true;
  assume {:verifier.code 0} true;
  $i11 := $i14;
  goto $bb15;
$bb20:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4715, 9} true;
  assume {:verifier.code 0} true;
  call $i15 := phy_driver_register(bcm5482_driver);
  // WARNING: %26 = call i32 @phy_driver_register(%struct.phy_driver* @bcm5482_driver), !dbg !3848, !verifier.code !3811
  call {:cexpr "ret"} boogie_si_record_i32($i15);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4717, 7} true;
  assume {:verifier.code 0} true;
  $i16 := $ne.i32($i15, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4717, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i16} true;
  goto $bb21, $bb22;
$bb21:
  assume ($i16 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4718, 5} true;
  assume {:verifier.code 0} true;
  $i17 := $i15;
  goto $bb23;
$bb22:
  assume !(($i16 == 1));
  assume {:verifier.code 0} true;
  goto $bb24;
$bb23:
  assume {:verifier.code 0} true;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4785, 3} true;
  assume {:verifier.code 0} true;
  call phy_driver_unregister(bcm5481_driver);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4786, 3} true;
  assume {:verifier.code 0} true;
  $i14 := $i17;
  goto $bb19;
$bb24:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4723, 9} true;
  assume {:verifier.code 0} true;
  call $i18 := phy_driver_register(bcm50610_driver);
  // WARNING: %31 = call i32 @phy_driver_register(%struct.phy_driver* @bcm50610_driver), !dbg !3855, !verifier.code !3811
  call {:cexpr "ret"} boogie_si_record_i32($i18);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4725, 7} true;
  assume {:verifier.code 0} true;
  $i19 := $ne.i32($i18, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4725, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i19} true;
  goto $bb25, $bb26;
$bb25:
  assume ($i19 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4726, 5} true;
  assume {:verifier.code 0} true;
  $i20 := $i18;
  goto $bb27;
$bb26:
  assume !(($i19 == 1));
  assume {:verifier.code 0} true;
  goto $bb28;
$bb27:
  assume {:verifier.code 0} true;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4781, 3} true;
  assume {:verifier.code 0} true;
  call phy_driver_unregister(bcm5482_driver);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4782, 3} true;
  assume {:verifier.code 0} true;
  $i17 := $i20;
  goto $bb23;
$bb28:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4731, 9} true;
  assume {:verifier.code 0} true;
  call $i21 := phy_driver_register(bcm50610m_driver);
  // WARNING: %36 = call i32 @phy_driver_register(%struct.phy_driver* @bcm50610m_driver), !dbg !3862, !verifier.code !3811
  call {:cexpr "ret"} boogie_si_record_i32($i21);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4733, 7} true;
  assume {:verifier.code 0} true;
  $i22 := $ne.i32($i21, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4733, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i22} true;
  goto $bb29, $bb30;
$bb29:
  assume ($i22 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4734, 5} true;
  assume {:verifier.code 0} true;
  $i23 := $i21;
  goto $bb31;
$bb30:
  assume !(($i22 == 1));
  assume {:verifier.code 0} true;
  goto $bb32;
$bb31:
  assume {:verifier.code 0} true;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4777, 3} true;
  assume {:verifier.code 0} true;
  call phy_driver_unregister(bcm50610_driver);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4778, 3} true;
  assume {:verifier.code 0} true;
  $i20 := $i23;
  goto $bb27;
$bb32:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4739, 9} true;
  assume {:verifier.code 0} true;
  call $i24 := phy_driver_register(bcm57780_driver);
  // WARNING: %41 = call i32 @phy_driver_register(%struct.phy_driver* @bcm57780_driver), !dbg !3869, !verifier.code !3811
  call {:cexpr "ret"} boogie_si_record_i32($i24);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4741, 7} true;
  assume {:verifier.code 0} true;
  $i25 := $ne.i32($i24, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4741, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i25} true;
  goto $bb33, $bb34;
$bb33:
  assume ($i25 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4742, 5} true;
  assume {:verifier.code 0} true;
  $i26 := $i24;
  goto $bb35;
$bb34:
  assume !(($i25 == 1));
  assume {:verifier.code 0} true;
  goto $bb36;
$bb35:
  assume {:verifier.code 0} true;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4773, 3} true;
  assume {:verifier.code 0} true;
  call phy_driver_unregister(bcm50610m_driver);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4774, 3} true;
  assume {:verifier.code 0} true;
  $i23 := $i26;
  goto $bb31;
$bb36:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4747, 9} true;
  assume {:verifier.code 0} true;
  call $i27 := phy_driver_register(bcmac131_driver);
  // WARNING: %46 = call i32 @phy_driver_register(%struct.phy_driver* @bcmac131_driver), !dbg !3876, !verifier.code !3811
  call {:cexpr "ret"} boogie_si_record_i32($i27);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4749, 7} true;
  assume {:verifier.code 0} true;
  $i28 := $ne.i32($i27, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4749, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i28} true;
  goto $bb37, $bb38;
$bb37:
  assume ($i28 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4750, 5} true;
  assume {:verifier.code 0} true;
  $i29 := $i27;
  goto $bb39;
$bb38:
  assume !(($i28 == 1));
  assume {:verifier.code 0} true;
  goto $bb40;
$bb39:
  assume {:verifier.code 0} true;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4769, 3} true;
  assume {:verifier.code 0} true;
  call phy_driver_unregister(bcm57780_driver);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4770, 3} true;
  assume {:verifier.code 0} true;
  $i26 := $i29;
  goto $bb35;
$bb40:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4755, 9} true;
  assume {:verifier.code 0} true;
  call $i30 := phy_driver_register(bcm5241_driver);
  // WARNING: %51 = call i32 @phy_driver_register(%struct.phy_driver* @bcm5241_driver), !dbg !3883, !verifier.code !3811
  call {:cexpr "ret"} boogie_si_record_i32($i30);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4757, 7} true;
  assume {:verifier.code 0} true;
  $i31 := $ne.i32($i30, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4757, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i31} true;
  goto $bb41, $bb42;
$bb41:
  assume ($i31 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4758, 5} true;
  assume {:verifier.code 0} true;
  goto $bb43;
$bb42:
  assume !(($i31 == 1));
  assume {:verifier.code 0} true;
  goto $bb44;
$bb43:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4765, 3} true;
  assume {:verifier.code 0} true;
  call phy_driver_unregister(bcmac131_driver);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4766, 3} true;
  assume {:verifier.code 0} true;
  $i29 := $i30;
  goto $bb39;
$bb44:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4762, 3} true;
  assume {:verifier.code 0} true;
  $i32 := $i30;
  goto $bb45;
$bb45:
  assume {:verifier.code 0} true;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4806, 1} true;
  assume {:verifier.code 0} true;
  $r := $i32;
  $exn := false;
  return;
}
const phy_driver_register: ref;
axiom (phy_driver_register == $sub.ref(0, 35907));
procedure phy_driver_register($p0: ref)
  returns ($r: i32);
const phy_driver_unregister: ref;
axiom (phy_driver_unregister == $sub.ref(0, 36939));
procedure phy_driver_unregister($p0: ref);
const bcm54xx_config_init: ref;
axiom (bcm54xx_config_init == $sub.ref(0, 37971));
procedure bcm54xx_config_init($p0: ref)
  returns ($r: i32)
{
  var $i1: i32;
  var $i2: i1;
  var $i4: i32;
  var $i5: i16;
  var $i6: i32;
  var $i7: i1;
  var $i8: i16;
  var $i9: i32;
  var $i10: i1;
  var $p11: ref;
  var $p12: ref;
  var $i13: i64;
  var $i14: i64;
  var $p15: ref;
  var $i16: i32;
  var $p17: ref;
  var $p18: ref;
  var $p19: ref;
  var $i20: i32;
  var $i21: i32;
  var $i22: i1;
  var $p23: ref;
  var $p24: ref;
  var $i25: i64;
  var $i26: i64;
  var $p27: ref;
  var $i28: i32;
  var $p29: ref;
  var $p30: ref;
  var $p31: ref;
  var $i32: i32;
  var $i33: i32;
  var $i34: i1;
  var $i35: i64;
  var $i36: i64;
  var $p37: ref;
  var $i38: i32;
  var $i39: i32;
  var $i40: i1;
  var $i41: i32;
  var $i42: i64;
  var $i43: i64;
  var $p44: ref;
  var $i45: i32;
  var $i46: i32;
  var $i47: i1;
  var $i48: i64;
  var $i49: i64;
  var $p50: ref;
  var $i51: i32;
  var $i52: i32;
  var $i53: i1;
  var $i54: i64;
  var $i55: i64;
  var $p56: ref;
  var $i57: i32;
  var $i58: i32;
  var $i59: i1;
  var $i60: i32;
  var $i3: i32;
$bb0:
  // WARNING: call void @llvm.dbg.value(metadata %struct.phy_device* %0, i64 0, metadata !3924, metadata !3813), !dbg !3925, !verifier.code !3811
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3807, 9} true;
  assume {:verifier.code 0} true;
  call $i1 := phy_read($p0, 16);
  // WARNING: %2 = call i32 @phy_read(%struct.phy_device* %0, i32 16), !dbg !3814, !verifier.code !3811
  call {:cexpr "reg"} boogie_si_record_i32($i1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3809, 11} true;
  assume {:verifier.code 0} true;
  $i2 := $slt.i32($i1, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3809, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i2} true;
  goto $bb1, $bb2;
$bb1:
  assume ($i2 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3810, 5} true;
  assume {:verifier.code 0} true;
  $i3 := $i1;
  goto $bb3;
$bb2:
  assume !(($i2 == 1));
  assume {:verifier.code 0} true;
  goto $bb4;
$bb3:
  assume {:verifier.code 0} true;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3916, 1} true;
  assume {:verifier.code 0} true;
  $r := $i3;
  $exn := false;
  return;
$bb4:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3815, 13} true;
  assume {:verifier.code 0} true;
  $i4 := $or.i32($i1, 4096);
  // WARNING: %7 = or i32 %2, 4096, !dbg !3824, !verifier.code !3811
  call {:cexpr "reg"} boogie_si_record_i32($i4);
  // WARNING: call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !3931, metadata !3813), !dbg !3932, !verifier.code !3811
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3817, 16} true;
  assume {:verifier.code 0} true;
  $i5 := $trunc.i32.i16($i4);
  // WARNING: %8 = trunc i32 %7 to i16, !dbg !3828, !verifier.code !3811
  call {:cexpr "__cil_tmp6"} boogie_si_record_i16($i5);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3818, 9} true;
  assume {:verifier.code 0} true;
  call $i6 := phy_write($p0, 16, $i5);
  // WARNING: %9 = call i32 @phy_write(%struct.phy_device* %0, i32 16, i16 zeroext %8), !dbg !3831, !verifier.code !3811
  call {:cexpr "err"} boogie_si_record_i32($i6);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3820, 11} true;
  assume {:verifier.code 0} true;
  $i7 := $slt.i32($i6, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3820, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i7} true;
  goto $bb5, $bb6;
$bb5:
  assume ($i7 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3821, 5} true;
  assume {:verifier.code 0} true;
  $i3 := $i6;
  goto $bb3;
$bb6:
  assume !(($i7 == 1));
  assume {:verifier.code 0} true;
  goto $bb7;
$bb7:
  // WARNING: call void @llvm.dbg.value(metadata i32 -15, i64 0, metadata !3931, metadata !3813), !dbg !3932, !verifier.code !3811
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3828, 16} true;
  assume {:verifier.code 0} true;
  $i8 := $trunc.i32.i16($sub.i32(0, 15));
  // WARNING: %14 = trunc i32 -15 to i16, !dbg !3841, !verifier.code !3811
  call {:cexpr "__cil_tmp8"} boogie_si_record_i16($i8);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3829, 9} true;
  assume {:verifier.code 0} true;
  call $i9 := phy_write($p0, 27, $i8);
  // WARNING: %15 = call i32 @phy_write(%struct.phy_device* %0, i32 27, i16 zeroext %14), !dbg !3845, !verifier.code !3811
  call {:cexpr "err"} boogie_si_record_i32($i9);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3831, 11} true;
  assume {:verifier.code 0} true;
  $i10 := $slt.i32($i9, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3831, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i10} true;
  goto $bb8, $bb9;
$bb8:
  assume ($i10 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3832, 5} true;
  assume {:verifier.code 0} true;
  $i3 := $i9;
  goto $bb3;
$bb9:
  assume !(($i10 == 1));
  assume {:verifier.code 0} true;
  goto $bb10;
$bb10:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3837, 16} true;
  assume {:verifier.code 0} true;
  $p11 := $bitcast.ref.ref($p0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3837, 16} true;
  assume {:verifier.code 0} true;
  $p12 := $load.ref($M.0, $p11);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3838, 17} true;
  assume {:verifier.code 0} true;
  $i13 := $p2i.ref.i64($p12);
  // WARNING: %22 = ptrtoint %struct.phy_driver* %21 to i64, !dbg !3855, !verifier.code !3811
  call {:cexpr "__cil_tmp10"} boogie_si_record_i64($i13);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3839, 29} true;
  assume {:verifier.code 0} true;
  $i14 := $add.i64($i13, 16);
  // WARNING: %23 = add i64 %22, 16, !dbg !3858, !verifier.code !3811
  call {:cexpr "__cil_tmp11"} boogie_si_record_i64($i14);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3840, 19} true;
  assume {:verifier.code 0} true;
  $p15 := $i2p.i64.ref($i14);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3840, 17} true;
  assume {:verifier.code 0} true;
  $i16 := $load.i32($M.0, $p15);
  // WARNING: %25 = load i32, i32* %24, align 4, !dbg !3862, !verifier.code !3811
  call {:cexpr "__cil_tmp12"} boogie_si_record_i32($i16);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3841, 17} true;
  assume {:verifier.code 0} true;
  $p17 := $bitcast.ref.ref($p0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3841, 17} true;
  assume {:verifier.code 0} true;
  $p18 := $load.ref($M.0, $p17);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3842, 17} true;
  assume {:verifier.code 0} true;
  $p19 := $bitcast.ref.ref($p18);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3842, 17} true;
  assume {:verifier.code 0} true;
  $i20 := $load.i32($M.0, $p19);
  // WARNING: %29 = load i32, i32* %28, align 4, !dbg !3868, !verifier.code !3811
  call {:cexpr "__cil_tmp14"} boogie_si_record_i32($i20);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3843, 29} true;
  assume {:verifier.code 0} true;
  $i21 := $and.i32($i20, $i16);
  // WARNING: %30 = and i32 %29, %25, !dbg !3871, !verifier.code !3811
  call {:cexpr "__cil_tmp15"} boogie_si_record_i32($i21);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3844, 19} true;
  assume {:verifier.code 0} true;
  $i22 := $eq.i32($i21, 21216608);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3844, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i22} true;
  goto $bb11, $bb12;
$bb11:
  assume ($i22 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3845, 5} true;
  assume {:verifier.code 0} true;
  goto $bb13;
$bb12:
  assume !(($i22 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3848, 19} true;
  assume {:verifier.code 0} true;
  $p23 := $bitcast.ref.ref($p0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3848, 19} true;
  assume {:verifier.code 0} true;
  $p24 := $load.ref($M.0, $p23);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3849, 19} true;
  assume {:verifier.code 0} true;
  $i25 := $p2i.ref.i64($p24);
  // WARNING: %36 = ptrtoint %struct.phy_driver* %35 to i64, !dbg !3884, !verifier.code !3811
  call {:cexpr "__cil_tmp17"} boogie_si_record_i64($i25);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3850, 31} true;
  assume {:verifier.code 0} true;
  $i26 := $add.i64($i25, 16);
  // WARNING: %37 = add i64 %36, 16, !dbg !3887, !verifier.code !3811
  call {:cexpr "__cil_tmp18"} boogie_si_record_i64($i26);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3851, 21} true;
  assume {:verifier.code 0} true;
  $p27 := $i2p.i64.ref($i26);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3851, 19} true;
  assume {:verifier.code 0} true;
  $i28 := $load.i32($M.0, $p27);
  // WARNING: %39 = load i32, i32* %38, align 4, !dbg !3891, !verifier.code !3811
  call {:cexpr "__cil_tmp19"} boogie_si_record_i32($i28);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3852, 19} true;
  assume {:verifier.code 0} true;
  $p29 := $bitcast.ref.ref($p0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3852, 19} true;
  assume {:verifier.code 0} true;
  $p30 := $load.ref($M.0, $p29);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3853, 19} true;
  assume {:verifier.code 0} true;
  $p31 := $bitcast.ref.ref($p30);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3853, 19} true;
  assume {:verifier.code 0} true;
  $i32 := $load.i32($M.0, $p31);
  // WARNING: %43 = load i32, i32* %42, align 4, !dbg !3897, !verifier.code !3811
  call {:cexpr "__cil_tmp21"} boogie_si_record_i32($i32);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3854, 31} true;
  assume {:verifier.code 0} true;
  $i33 := $and.i32($i32, $i28);
  // WARNING: %44 = and i32 %43, %39, !dbg !3900, !verifier.code !3811
  call {:cexpr "__cil_tmp22"} boogie_si_record_i32($i33);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3855, 21} true;
  assume {:verifier.code 0} true;
  $i34 := $eq.i32($i33, 21216624);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3855, 9} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i34} true;
  goto $bb14, $bb15;
$bb13:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3858, 21} true;
  assume {:verifier.code 0} true;
  $i35 := $p2i.ref.i64($p0);
  // WARNING: %48 = ptrtoint %struct.phy_device* %0 to i64, !dbg !3908, !verifier.code !3811
  call {:cexpr "__cil_tmp23"} boogie_si_record_i64($i35);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3859, 33} true;
  assume {:verifier.code 0} true;
  $i36 := $add.i64($i35, 792);
  // WARNING: %49 = add i64 %48, 792, !dbg !3913, !verifier.code !3811
  call {:cexpr "__cil_tmp24"} boogie_si_record_i64($i36);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3860, 23} true;
  assume {:verifier.code 0} true;
  $p37 := $i2p.i64.ref($i36);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3860, 21} true;
  assume {:verifier.code 0} true;
  $i38 := $load.i32($M.0, $p37);
  // WARNING: %51 = load i32, i32* %50, align 4, !dbg !3917, !verifier.code !3811
  call {:cexpr "__cil_tmp25"} boogie_si_record_i32($i38);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3861, 23} true;
  assume {:verifier.code 0} true;
  $i39 := $and.i32($i38, 16384);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3861, 23} true;
  assume {:verifier.code 0} true;
  $i40 := $ne.i32($i39, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3861, 11} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i40} true;
  goto $bb16, $bb17;
$bb14:
  assume ($i34 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3855, 35} true;
  assume {:verifier.code 0} true;
  goto $bb13;
$bb15:
  assume !(($i34 == 1));
  assume {:verifier.code 0} true;
  goto $bb19;
$bb16:
  assume ($i40 == 1);
  // WARNING: call void @llvm.dbg.value(metadata i16 11, i64 0, metadata !4037, metadata !3813), !dbg !4038, !verifier.code !3811
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3865, 9} true;
  assume {:verifier.code 0} true;
  call $i41 := bcm54xx_shadow_write($p0, 11, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3867, 7} true;
  assume {:verifier.code 0} true;
  goto $bb18;
$bb17:
  assume !(($i40 == 1));
  assume {:verifier.code 0} true;
  goto $bb18;
$bb18:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3871, 5} true;
  assume {:verifier.code 0} true;
  goto $bb19;
$bb19:
  assume {:verifier.code 0} true;
  goto $bb20;
$bb20:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3878, 17} true;
  assume {:verifier.code 0} true;
  $i42 := $p2i.ref.i64($p0);
  // WARNING: %61 = ptrtoint %struct.phy_device* %0 to i64, !dbg !3932, !verifier.code !3811
  call {:cexpr "__cil_tmp28"} boogie_si_record_i64($i42);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3879, 29} true;
  assume {:verifier.code 0} true;
  $i43 := $add.i64($i42, 792);
  // WARNING: %62 = add i64 %61, 792, !dbg !3936, !verifier.code !3811
  call {:cexpr "__cil_tmp29"} boogie_si_record_i64($i43);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3880, 19} true;
  assume {:verifier.code 0} true;
  $p44 := $i2p.i64.ref($i43);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3880, 17} true;
  assume {:verifier.code 0} true;
  $i45 := $load.i32($M.0, $p44);
  // WARNING: %64 = load i32, i32* %63, align 4, !dbg !3940, !verifier.code !3811
  call {:cexpr "__cil_tmp30"} boogie_si_record_i32($i45);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3881, 19} true;
  assume {:verifier.code 0} true;
  $i46 := $and.i32($i45, 1024);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3881, 19} true;
  assume {:verifier.code 0} true;
  $i47 := $ne.i32($i46, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3881, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i47} true;
  goto $bb21, $bb22;
$bb21:
  assume ($i47 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3883, 5} true;
  assume {:verifier.code 0} true;
  call bcm54xx_adjust_rxrefclk($p0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3885, 3} true;
  assume {:verifier.code 0} true;
  goto $bb23;
$bb22:
  assume !(($i47 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3887, 19} true;
  assume {:verifier.code 0} true;
  $i48 := $p2i.ref.i64($p0);
  // WARNING: %69 = ptrtoint %struct.phy_device* %0 to i64, !dbg !3950, !verifier.code !3811
  call {:cexpr "__cil_tmp31"} boogie_si_record_i64($i48);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3888, 31} true;
  assume {:verifier.code 0} true;
  $i49 := $add.i64($i48, 792);
  // WARNING: %70 = add i64 %69, 792, !dbg !3955, !verifier.code !3811
  call {:cexpr "__cil_tmp32"} boogie_si_record_i64($i49);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3889, 21} true;
  assume {:verifier.code 0} true;
  $p50 := $i2p.i64.ref($i49);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3889, 19} true;
  assume {:verifier.code 0} true;
  $i51 := $load.i32($M.0, $p50);
  // WARNING: %72 = load i32, i32* %71, align 4, !dbg !3959, !verifier.code !3811
  call {:cexpr "__cil_tmp33"} boogie_si_record_i32($i51);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3890, 21} true;
  assume {:verifier.code 0} true;
  $i52 := $and.i32($i51, 32768);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3890, 21} true;
  assume {:verifier.code 0} true;
  $i53 := $ne.i32($i52, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3890, 9} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i53} true;
  goto $bb24, $bb25;
$bb23:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3912, 3} true;
  assume {:verifier.code 0} true;
  call $i60 := bcm54xx_phydsp_config($p0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3914, 3} true;
  assume {:verifier.code 0} true;
  $i3 := 0;
  goto $bb3;
$bb24:
  assume ($i53 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3892, 7} true;
  assume {:verifier.code 0} true;
  call bcm54xx_adjust_rxrefclk($p0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3894, 5} true;
  assume {:verifier.code 0} true;
  goto $bb26;
$bb25:
  assume !(($i53 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3896, 21} true;
  assume {:verifier.code 0} true;
  $i54 := $p2i.ref.i64($p0);
  // WARNING: %77 = ptrtoint %struct.phy_device* %0 to i64, !dbg !3969, !verifier.code !3811
  call {:cexpr "__cil_tmp34"} boogie_si_record_i64($i54);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3897, 33} true;
  assume {:verifier.code 0} true;
  $i55 := $add.i64($i54, 792);
  // WARNING: %78 = add i64 %77, 792, !dbg !3974, !verifier.code !3811
  call {:cexpr "__cil_tmp35"} boogie_si_record_i64($i55);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3898, 23} true;
  assume {:verifier.code 0} true;
  $p56 := $i2p.i64.ref($i55);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3898, 21} true;
  assume {:verifier.code 0} true;
  $i57 := $load.i32($M.0, $p56);
  // WARNING: %80 = load i32, i32* %79, align 4, !dbg !3978, !verifier.code !3811
  call {:cexpr "__cil_tmp36"} boogie_si_record_i32($i57);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3899, 23} true;
  assume {:verifier.code 0} true;
  $i58 := $and.i32($i57, 512);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3899, 23} true;
  assume {:verifier.code 0} true;
  $i59 := $ne.i32($i58, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3899, 11} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i59} true;
  goto $bb27, $bb28;
$bb26:
  assume {:verifier.code 0} true;
  goto $bb23;
$bb27:
  assume ($i59 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3901, 9} true;
  assume {:verifier.code 0} true;
  call bcm54xx_adjust_rxrefclk($p0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3903, 7} true;
  assume {:verifier.code 0} true;
  goto $bb29;
$bb28:
  assume !(($i59 == 1));
  assume {:verifier.code 0} true;
  goto $bb29;
$bb29:
  assume {:verifier.code 0} true;
  goto $bb26;
}
const genphy_config_aneg: ref;
axiom (genphy_config_aneg == $sub.ref(0, 39003));
procedure genphy_config_aneg($p0: ref)
  returns ($r: i32);
const genphy_read_status: ref;
axiom (genphy_read_status == $sub.ref(0, 40035));
procedure genphy_read_status($p0: ref)
  returns ($r: i32);
const bcm54xx_ack_interrupt: ref;
axiom (bcm54xx_ack_interrupt == $sub.ref(0, 41067));
procedure bcm54xx_ack_interrupt($p0: ref)
  returns ($r: i32)
{
  var $i1: i32;
  var $i2: i1;
  var $i3: i32;
$bb0:
  // WARNING: call void @llvm.dbg.value(metadata %struct.phy_device* %0, i64 0, metadata !4107, metadata !3813), !dbg !4108, !verifier.code !3811
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4089, 9} true;
  assume {:verifier.code 0} true;
  call $i1 := phy_read($p0, 26);
  // WARNING: %2 = call i32 @phy_read(%struct.phy_device* %0, i32 26), !dbg !3814, !verifier.code !3811
  call {:cexpr "reg"} boogie_si_record_i32($i1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4091, 11} true;
  assume {:verifier.code 0} true;
  $i2 := $slt.i32($i1, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4091, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i2} true;
  goto $bb1, $bb2;
$bb1:
  assume ($i2 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4092, 5} true;
  assume {:verifier.code 0} true;
  $i3 := $i1;
  goto $bb3;
$bb2:
  assume !(($i2 == 1));
  assume {:verifier.code 0} true;
  goto $bb4;
$bb3:
  assume {:verifier.code 0} true;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4098, 1} true;
  assume {:verifier.code 0} true;
  $r := $i3;
  $exn := false;
  return;
$bb4:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4096, 3} true;
  assume {:verifier.code 0} true;
  $i3 := 0;
  goto $bb3;
}
const bcm54xx_config_intr: ref;
axiom (bcm54xx_config_intr == $sub.ref(0, 42099));
procedure bcm54xx_config_intr($p0: ref)
  returns ($r: i32)
{
  var $i1: i32;
  var $i2: i1;
  var $i4: i64;
  var $i5: i64;
  var $p6: ref;
  var $i7: i32;
  var $i8: i1;
  var $i9: i32;
  var $i11: i32;
  var $i10: i32;
  var $i12: i16;
  var $i13: i32;
  var $i3: i32;
$bb0:
  // WARNING: call void @llvm.dbg.value(metadata %struct.phy_device* %0, i64 0, metadata !4124, metadata !3813), !dbg !4125, !verifier.code !3811
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4112, 9} true;
  assume {:verifier.code 0} true;
  call $i1 := phy_read($p0, 16);
  // WARNING: %2 = call i32 @phy_read(%struct.phy_device* %0, i32 16), !dbg !3814, !verifier.code !3811
  call {:cexpr "reg"} boogie_si_record_i32($i1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4114, 11} true;
  assume {:verifier.code 0} true;
  $i2 := $slt.i32($i1, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4114, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i2} true;
  goto $bb1, $bb2;
$bb1:
  assume ($i2 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4115, 5} true;
  assume {:verifier.code 0} true;
  $i3 := $i1;
  goto $bb3;
$bb2:
  assume !(($i2 == 1));
  assume {:verifier.code 0} true;
  goto $bb4;
$bb3:
  assume {:verifier.code 0} true;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4136, 1} true;
  assume {:verifier.code 0} true;
  $r := $i3;
  $exn := false;
  return;
$bb4:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4120, 16} true;
  assume {:verifier.code 0} true;
  $i4 := $p2i.ref.i64($p0);
  // WARNING: %7 = ptrtoint %struct.phy_device* %0 to i64, !dbg !3824, !verifier.code !3811
  call {:cexpr "__cil_tmp5"} boogie_si_record_i64($i4);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4121, 27} true;
  assume {:verifier.code 0} true;
  $i5 := $add.i64($i4, 824);
  // WARNING: %8 = add i64 %7, 824, !dbg !3828, !verifier.code !3811
  call {:cexpr "__cil_tmp6"} boogie_si_record_i64($i5);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4122, 18} true;
  assume {:verifier.code 0} true;
  $p6 := $i2p.i64.ref($i5);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4122, 16} true;
  assume {:verifier.code 0} true;
  $i7 := $load.i32($M.0, $p6);
  // WARNING: %10 = load i32, i32* %9, align 4, !dbg !3832, !verifier.code !3811
  call {:cexpr "__cil_tmp7"} boogie_si_record_i32($i7);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4123, 18} true;
  assume {:verifier.code 0} true;
  $i8 := $eq.i32($i7, $sub.i32(0, 2147483648));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4123, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i8} true;
  goto $bb5, $bb6;
$bb5:
  assume ($i8 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4124, 15} true;
  assume {:verifier.code 0} true;
  $i9 := $and.i32($i1, $sub.i32(0, 4097));
  // WARNING: %13 = and i32 %2, -4097, !dbg !3838, !verifier.code !3811
  call {:cexpr "reg"} boogie_si_record_i32($i9);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4125, 3} true;
  assume {:verifier.code 0} true;
  $i10 := $i9;
  goto $bb7;
$bb6:
  assume !(($i8 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4126, 15} true;
  assume {:verifier.code 0} true;
  $i11 := $or.i32($i1, 4096);
  // WARNING: %15 = or i32 %2, 4096, !dbg !3841, !verifier.code !3811
  call {:cexpr "reg"} boogie_si_record_i32($i11);
  assume {:verifier.code 0} true;
  $i10 := $i11;
  goto $bb7;
$bb7:
  assume {:verifier.code 0} true;
  // WARNING: %.01 = phi i32 [ %13, %12 ], [ %15, %14 ], !verifier.code !3811
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4131, 16} true;
  assume {:verifier.code 0} true;
  $i12 := $trunc.i32.i16($i10);
  // WARNING: %17 = trunc i32 %.01 to i16, !dbg !3845, !verifier.code !3811
  call {:cexpr "__cil_tmp9"} boogie_si_record_i16($i12);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4132, 9} true;
  assume {:verifier.code 0} true;
  call $i13 := phy_write($p0, 16, $i12);
  // WARNING: %18 = call i32 @phy_write(%struct.phy_device* %0, i32 16, i16 zeroext %17), !dbg !3849, !verifier.code !3811
  call {:cexpr "err"} boogie_si_record_i32($i13);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4134, 3} true;
  assume {:verifier.code 0} true;
  $i3 := $i13;
  goto $bb3;
}
const phy_read: ref;
axiom (phy_read == $sub.ref(0, 43131));
procedure phy_read($p0: ref, $i1: i32)
  returns ($r: i32)
{
  var $i2: i64;
  var $i3: i64;
  var $p4: ref;
  var $p5: ref;
  var $i6: i64;
  var $i7: i64;
  var $p8: ref;
  var $i9: i32;
  var $i10: i32;
$bb0:
  // WARNING: call void @llvm.dbg.value(metadata %struct.phy_device* %0, i64 0, metadata !4171, metadata !3813), !dbg !4172, !verifier.code !3811
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3126, 16} true;
  assume {:verifier.code 0} true;
  $i2 := $p2i.ref.i64($p0);
  // WARNING: %3 = ptrtoint %struct.phy_device* %0 to i64, !dbg !3816, !verifier.code !3813
  call {:cexpr "__cil_tmp4"} boogie_si_record_i64($i2);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3127, 27} true;
  assume {:verifier.code 0} true;
  $i3 := $add.i64($i2, 8);
  // WARNING: %4 = add i64 %3, 8, !dbg !3821, !verifier.code !3813
  call {:cexpr "__cil_tmp5"} boogie_si_record_i64($i3);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3128, 18} true;
  assume {:verifier.code 0} true;
  $p4 := $i2p.i64.ref($i3);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3128, 16} true;
  assume {:verifier.code 0} true;
  $p5 := $load.ref($M.0, $p4);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3129, 16} true;
  assume {:verifier.code 0} true;
  $i6 := $p2i.ref.i64($p0);
  // WARNING: %7 = ptrtoint %struct.phy_device* %0 to i64, !dbg !3828, !verifier.code !3813
  call {:cexpr "__cil_tmp7"} boogie_si_record_i64($i6);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3130, 27} true;
  assume {:verifier.code 0} true;
  $i7 := $add.i64($i6, 800);
  // WARNING: %8 = add i64 %7, 800, !dbg !3831, !verifier.code !3813
  call {:cexpr "__cil_tmp8"} boogie_si_record_i64($i7);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3131, 18} true;
  assume {:verifier.code 0} true;
  $p8 := $i2p.i64.ref($i7);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3131, 16} true;
  assume {:verifier.code 0} true;
  $i9 := $load.i32($M.0, $p8);
  // WARNING: %10 = load i32, i32* %9, align 4, !dbg !3835, !verifier.code !3813
  call {:cexpr "__cil_tmp9"} boogie_si_record_i32($i9);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3132, 13} true;
  assume {:verifier.code 0} true;
  call $i10 := mdiobus_read($p5, $i9, $i1);
  // WARNING: %11 = call i32 @mdiobus_read(%struct.mii_bus* %6, i32 %10, i32 %1), !dbg !3838, !verifier.code !3813
  call {:cexpr "tmp___7"} boogie_si_record_i32($i10);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3134, 3} true;
  assume {:verifier.code 0} true;
  $r := $i10;
  $exn := false;
  return;
}
const phy_write: ref;
axiom (phy_write == $sub.ref(0, 44163));
procedure phy_write($p0: ref, $i1: i32, $i2: i16)
  returns ($r: i32)
{
  var $i3: i64;
  var $i4: i64;
  var $p5: ref;
  var $p6: ref;
  var $i7: i64;
  var $i8: i64;
  var $p9: ref;
  var $i10: i32;
  var $i11: i32;
$bb0:
  // WARNING: call void @llvm.dbg.value(metadata %struct.phy_device* %0, i64 0, metadata !4204, metadata !3813), !dbg !4205, !verifier.code !3811
  // WARNING: call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !4206, metadata !3813), !dbg !4207, !verifier.code !3811
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3149, 16} true;
  assume {:verifier.code 0} true;
  $i3 := $p2i.ref.i64($p0);
  // WARNING: %4 = ptrtoint %struct.phy_device* %0 to i64, !dbg !3818, !verifier.code !3813
  call {:cexpr "__cil_tmp5"} boogie_si_record_i64($i3);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3150, 27} true;
  assume {:verifier.code 0} true;
  $i4 := $add.i64($i3, 8);
  // WARNING: %5 = add i64 %4, 8, !dbg !3823, !verifier.code !3813
  call {:cexpr "__cil_tmp6"} boogie_si_record_i64($i4);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3151, 18} true;
  assume {:verifier.code 0} true;
  $p5 := $i2p.i64.ref($i4);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3151, 16} true;
  assume {:verifier.code 0} true;
  $p6 := $load.ref($M.0, $p5);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3152, 16} true;
  assume {:verifier.code 0} true;
  $i7 := $p2i.ref.i64($p0);
  // WARNING: %8 = ptrtoint %struct.phy_device* %0 to i64, !dbg !3830, !verifier.code !3813
  call {:cexpr "__cil_tmp8"} boogie_si_record_i64($i7);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3153, 27} true;
  assume {:verifier.code 0} true;
  $i8 := $add.i64($i7, 800);
  // WARNING: %9 = add i64 %8, 800, !dbg !3833, !verifier.code !3813
  call {:cexpr "__cil_tmp9"} boogie_si_record_i64($i8);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3154, 19} true;
  assume {:verifier.code 0} true;
  $p9 := $i2p.i64.ref($i8);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3154, 17} true;
  assume {:verifier.code 0} true;
  $i10 := $load.i32($M.0, $p9);
  // WARNING: %11 = load i32, i32* %10, align 4, !dbg !3837, !verifier.code !3813
  call {:cexpr "__cil_tmp10"} boogie_si_record_i32($i10);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3155, 13} true;
  assume {:verifier.code 0} true;
  call $i11 := mdiobus_write($p6, $i10, $i1, $i2);
  // WARNING: %12 = call i32 @mdiobus_write(%struct.mii_bus* %7, i32 %11, i32 %1, i16 zeroext %2), !dbg !3840, !verifier.code !3813
  call {:cexpr "tmp___7"} boogie_si_record_i32($i11);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3157, 3} true;
  assume {:verifier.code 0} true;
  $r := $i11;
  $exn := false;
  return;
}
const mdiobus_write: ref;
axiom (mdiobus_write == $sub.ref(0, 45195));
procedure mdiobus_write($p0: ref, $i1: i32, $i2: i32, $i3: i16)
  returns ($r: i32);
const mdiobus_read: ref;
axiom (mdiobus_read == $sub.ref(0, 46227));
procedure mdiobus_read($p0: ref, $i1: i32, $i2: i32)
  returns ($r: i32);
const bcm54xx_shadow_write: ref;
axiom (bcm54xx_shadow_write == $sub.ref(0, 47259));
procedure bcm54xx_shadow_write($p0: ref, $i1: i16, $i2: i16)
  returns ($r: i32)
{
  var $i3: i32;
  var $i4: i32;
  var $i5: i32;
  var $i6: i32;
  var $i7: i32;
  var $i8: i32;
  var $i9: i32;
  var $i10: i16;
  var $i11: i32;
$bb0:
  // WARNING: call void @llvm.dbg.value(metadata %struct.phy_device* %0, i64 0, metadata !4239, metadata !3813), !dbg !4240, !verifier.code !3811
  // WARNING: call void @llvm.dbg.value(metadata i16 %1, i64 0, metadata !4241, metadata !3813), !dbg !4242, !verifier.code !3811
  // WARNING: call void @llvm.dbg.value(metadata i16 %2, i64 0, metadata !4243, metadata !3813), !dbg !4244, !verifier.code !3811
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3226, 16} true;
  assume {:verifier.code 0} true;
  $i3 := $zext.i16.i32($i2);
  // WARNING: %4 = zext i16 %2 to i32, !dbg !3820, !verifier.code !3813
  call {:cexpr "__cil_tmp6"} boogie_si_record_i32($i3);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3227, 27} true;
  assume {:verifier.code 0} true;
  $i4 := $and.i32($i3, 1023);
  // WARNING: %5 = and i32 %4, 1023, !dbg !3825, !verifier.code !3813
  call {:cexpr "__cil_tmp7"} boogie_si_record_i32($i4);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3228, 16} true;
  assume {:verifier.code 0} true;
  $i5 := $zext.i16.i32($i1);
  // WARNING: %6 = zext i16 %1 to i32, !dbg !3828, !verifier.code !3813
  call {:cexpr "__cil_tmp8"} boogie_si_record_i32($i5);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3229, 27} true;
  assume {:verifier.code 0} true;
  $i6 := $and.i32($i5, 31);
  // WARNING: %7 = and i32 %6, 31, !dbg !3831, !verifier.code !3813
  call {:cexpr "__cil_tmp9"} boogie_si_record_i32($i6);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3230, 28} true;
  assume {:verifier.code 0} true;
  $i7 := $shl.i32($i6, 10);
  // WARNING: %8 = shl i32 %7, 10, !dbg !3834, !verifier.code !3813
  call {:cexpr "__cil_tmp10"} boogie_si_record_i32($i7);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3231, 23} true;
  assume {:verifier.code 0} true;
  $i8 := $or.i32(32768, $i7);
  // WARNING: %9 = or i32 32768, %8, !dbg !3837, !verifier.code !3813
  call {:cexpr "__cil_tmp11"} boogie_si_record_i32($i8);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3232, 29} true;
  assume {:verifier.code 0} true;
  $i9 := $or.i32($i8, $i4);
  // WARNING: %10 = or i32 %9, %5, !dbg !3840, !verifier.code !3813
  call {:cexpr "__cil_tmp12"} boogie_si_record_i32($i9);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3233, 17} true;
  assume {:verifier.code 0} true;
  $i10 := $trunc.i32.i16($i9);
  // WARNING: %11 = trunc i32 %10 to i16, !dbg !3843, !verifier.code !3813
  call {:cexpr "__cil_tmp13"} boogie_si_record_i16($i10);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3234, 13} true;
  assume {:verifier.code 0} true;
  call $i11 := phy_write($p0, 28, $i10);
  // WARNING: %12 = call i32 @phy_write(%struct.phy_device* %0, i32 28, i16 zeroext %11), !dbg !3846, !verifier.code !3813
  call {:cexpr "tmp___7"} boogie_si_record_i32($i11);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3236, 3} true;
  assume {:verifier.code 0} true;
  $r := $i11;
  $exn := false;
  return;
}
const bcm54xx_adjust_rxrefclk: ref;
axiom (bcm54xx_adjust_rxrefclk == $sub.ref(0, 48291));
procedure bcm54xx_adjust_rxrefclk($p0: ref)
{
  var $p1: ref;
  var $p2: ref;
  var $i3: i64;
  var $i4: i64;
  var $p5: ref;
  var $i6: i32;
  var $p7: ref;
  var $p8: ref;
  var $p9: ref;
  var $i10: i32;
  var $i11: i32;
  var $i12: i1;
  var $p13: ref;
  var $p14: ref;
  var $i15: i64;
  var $i16: i64;
  var $p17: ref;
  var $i18: i32;
  var $p19: ref;
  var $p20: ref;
  var $p21: ref;
  var $i22: i32;
  var $i23: i32;
  var $i24: i1;
  var $p25: ref;
  var $p26: ref;
  var $i27: i64;
  var $i28: i64;
  var $p29: ref;
  var $i30: i32;
  var $p31: ref;
  var $p32: ref;
  var $p33: ref;
  var $i34: i32;
  var $i35: i32;
  var $i36: i1;
  var $i37: i32;
  var $i38: i1;
  var $p39: ref;
  var $p40: ref;
  var $i41: i64;
  var $i42: i64;
  var $p43: ref;
  var $i44: i32;
  var $p45: ref;
  var $p46: ref;
  var $p47: ref;
  var $i48: i32;
  var $i49: i32;
  var $i50: i1;
  var $p51: ref;
  var $p52: ref;
  var $i53: i64;
  var $i54: i64;
  var $p55: ref;
  var $i56: i32;
  var $p57: ref;
  var $p58: ref;
  var $p59: ref;
  var $i60: i32;
  var $i61: i32;
  var $i62: i1;
  var $p63: ref;
  var $p64: ref;
  var $i65: i64;
  var $i66: i64;
  var $p67: ref;
  var $i68: i32;
  var $i69: i32;
  var $p70: ref;
  var $p71: ref;
  var $p72: ref;
  var $i73: i32;
  var $i74: i32;
  var $i75: i1;
  var $i78: i64;
  var $i79: i64;
  var $p80: ref;
  var $i81: i32;
  var $i82: i32;
  var $i83: i1;
  var $i84: i32;
  var $i85: i32;
  var $i86: i8;
  var $i76: i32;
  var $i77: i8;
  var $i87: i1;
  var $i88: i32;
  var $i90: i64;
  var $i91: i64;
  var $p92: ref;
  var $i93: i32;
  var $i94: i32;
  var $i95: i1;
  var $i96: i32;
  var $i98: i32;
  var $i97: i32;
  var $i89: i32;
  var $i99: i64;
  var $i100: i64;
  var $p101: ref;
  var $i102: i32;
  var $i103: i32;
  var $i104: i1;
  var $i105: i32;
  var $i106: i32;
  var $i107: i1;
  var $i108: i16;
  var $i109: i32;
  var $i110: i32;
  var $i111: i1;
  var $i112: i1;
  var $i113: i32;
  var $i115: i64;
  var $i116: i64;
  var $p117: ref;
  var $i118: i32;
  var $i119: i32;
  var $i120: i1;
  var $i121: i32;
  var $i123: i32;
  var $i122: i32;
  var $i114: i32;
  var $i124: i1;
  var $i125: i16;
  var $i126: i32;
$bb0:
  // WARNING: call void @llvm.dbg.value(metadata %struct.phy_device* %0, i64 0, metadata !4278, metadata !3813), !dbg !4279, !verifier.code !3811
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3590, 16} true;
  assume {:verifier.code 0} true;
  $p1 := $bitcast.ref.ref($p0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3590, 16} true;
  assume {:verifier.code 0} true;
  $p2 := $load.ref($M.0, $p1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3591, 16} true;
  assume {:verifier.code 0} true;
  $i3 := $p2i.ref.i64($p2);
  // WARNING: %4 = ptrtoint %struct.phy_driver* %3 to i64, !dbg !3819, !verifier.code !3811
  call {:cexpr "__cil_tmp6"} boogie_si_record_i64($i3);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3592, 27} true;
  assume {:verifier.code 0} true;
  $i4 := $add.i64($i3, 16);
  // WARNING: %5 = add i64 %4, 16, !dbg !3822, !verifier.code !3811
  call {:cexpr "__cil_tmp7"} boogie_si_record_i64($i4);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3593, 18} true;
  assume {:verifier.code 0} true;
  $p5 := $i2p.i64.ref($i4);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3593, 16} true;
  assume {:verifier.code 0} true;
  $i6 := $load.i32($M.0, $p5);
  // WARNING: %7 = load i32, i32* %6, align 4, !dbg !3826, !verifier.code !3811
  call {:cexpr "__cil_tmp8"} boogie_si_record_i32($i6);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3594, 16} true;
  assume {:verifier.code 0} true;
  $p7 := $bitcast.ref.ref($p0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3594, 16} true;
  assume {:verifier.code 0} true;
  $p8 := $load.ref($M.0, $p7);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3595, 17} true;
  assume {:verifier.code 0} true;
  $p9 := $bitcast.ref.ref($p8);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3595, 17} true;
  assume {:verifier.code 0} true;
  $i10 := $load.i32($M.0, $p9);
  // WARNING: %11 = load i32, i32* %10, align 4, !dbg !3832, !verifier.code !3811
  call {:cexpr "__cil_tmp10"} boogie_si_record_i32($i10);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3596, 29} true;
  assume {:verifier.code 0} true;
  $i11 := $and.i32($i10, $i6);
  // WARNING: %12 = and i32 %11, %7, !dbg !3835, !verifier.code !3811
  call {:cexpr "__cil_tmp11"} boogie_si_record_i32($i11);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3597, 19} true;
  assume {:verifier.code 0} true;
  $i12 := $ne.i32($i11, 56778128);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3597, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i12} true;
  goto $bb1, $bb2;
$bb1:
  assume ($i12 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3599, 19} true;
  assume {:verifier.code 0} true;
  $p13 := $bitcast.ref.ref($p0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3599, 19} true;
  assume {:verifier.code 0} true;
  $p14 := $load.ref($M.0, $p13);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3600, 19} true;
  assume {:verifier.code 0} true;
  $i15 := $p2i.ref.i64($p14);
  // WARNING: %17 = ptrtoint %struct.phy_driver* %16 to i64, !dbg !3846, !verifier.code !3811
  call {:cexpr "__cil_tmp13"} boogie_si_record_i64($i15);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3601, 31} true;
  assume {:verifier.code 0} true;
  $i16 := $add.i64($i15, 16);
  // WARNING: %18 = add i64 %17, 16, !dbg !3849, !verifier.code !3811
  call {:cexpr "__cil_tmp14"} boogie_si_record_i64($i16);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3602, 21} true;
  assume {:verifier.code 0} true;
  $p17 := $i2p.i64.ref($i16);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3602, 19} true;
  assume {:verifier.code 0} true;
  $i18 := $load.i32($M.0, $p17);
  // WARNING: %20 = load i32, i32* %19, align 4, !dbg !3853, !verifier.code !3811
  call {:cexpr "__cil_tmp15"} boogie_si_record_i32($i18);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3603, 19} true;
  assume {:verifier.code 0} true;
  $p19 := $bitcast.ref.ref($p0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3603, 19} true;
  assume {:verifier.code 0} true;
  $p20 := $load.ref($M.0, $p19);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3604, 19} true;
  assume {:verifier.code 0} true;
  $p21 := $bitcast.ref.ref($p20);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3604, 19} true;
  assume {:verifier.code 0} true;
  $i22 := $load.i32($M.0, $p21);
  // WARNING: %24 = load i32, i32* %23, align 4, !dbg !3859, !verifier.code !3811
  call {:cexpr "__cil_tmp17"} boogie_si_record_i32($i22);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3605, 31} true;
  assume {:verifier.code 0} true;
  $i23 := $and.i32($i22, $i18);
  // WARNING: %25 = and i32 %24, %20, !dbg !3862, !verifier.code !3811
  call {:cexpr "__cil_tmp18"} boogie_si_record_i32($i23);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3606, 21} true;
  assume {:verifier.code 0} true;
  $i24 := $ne.i32($i23, 21216608);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3606, 9} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i24} true;
  goto $bb3, $bb4;
$bb2:
  assume !(($i12 == 1));
  assume {:verifier.code 0} true;
  goto $bb10;
$bb3:
  assume ($i24 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3608, 21} true;
  assume {:verifier.code 0} true;
  $p25 := $bitcast.ref.ref($p0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3608, 21} true;
  assume {:verifier.code 0} true;
  $p26 := $load.ref($M.0, $p25);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3609, 21} true;
  assume {:verifier.code 0} true;
  $i27 := $p2i.ref.i64($p26);
  // WARNING: %30 = ptrtoint %struct.phy_driver* %29 to i64, !dbg !3873, !verifier.code !3811
  call {:cexpr "__cil_tmp20"} boogie_si_record_i64($i27);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3610, 33} true;
  assume {:verifier.code 0} true;
  $i28 := $add.i64($i27, 16);
  // WARNING: %31 = add i64 %30, 16, !dbg !3876, !verifier.code !3811
  call {:cexpr "__cil_tmp21"} boogie_si_record_i64($i28);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3611, 23} true;
  assume {:verifier.code 0} true;
  $p29 := $i2p.i64.ref($i28);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3611, 21} true;
  assume {:verifier.code 0} true;
  $i30 := $load.i32($M.0, $p29);
  // WARNING: %33 = load i32, i32* %32, align 4, !dbg !3880, !verifier.code !3811
  call {:cexpr "__cil_tmp22"} boogie_si_record_i32($i30);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3612, 21} true;
  assume {:verifier.code 0} true;
  $p31 := $bitcast.ref.ref($p0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3612, 21} true;
  assume {:verifier.code 0} true;
  $p32 := $load.ref($M.0, $p31);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3613, 21} true;
  assume {:verifier.code 0} true;
  $p33 := $bitcast.ref.ref($p32);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3613, 21} true;
  assume {:verifier.code 0} true;
  $i34 := $load.i32($M.0, $p33);
  // WARNING: %37 = load i32, i32* %36, align 4, !dbg !3886, !verifier.code !3811
  call {:cexpr "__cil_tmp24"} boogie_si_record_i32($i34);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3614, 33} true;
  assume {:verifier.code 0} true;
  $i35 := $and.i32($i34, $i30);
  // WARNING: %38 = and i32 %37, %33, !dbg !3889, !verifier.code !3811
  call {:cexpr "__cil_tmp25"} boogie_si_record_i32($i35);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3615, 23} true;
  assume {:verifier.code 0} true;
  $i36 := $ne.i32($i35, 21216624);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3615, 11} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i36} true;
  goto $bb5, $bb6;
$bb4:
  assume !(($i24 == 1));
  assume {:verifier.code 0} true;
  goto $bb9;
$bb5:
  assume ($i36 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3616, 9} true;
  assume {:verifier.code 0} true;
  goto $bb7;
$bb6:
  assume !(($i36 == 1));
  assume {:verifier.code 0} true;
  goto $bb8;
$bb7:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3766, 1} true;
  assume {:verifier.code 0} true;
  $exn := false;
  return;
$bb8:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3621, 5} true;
  assume {:verifier.code 0} true;
  goto $bb9;
$bb9:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3625, 3} true;
  assume {:verifier.code 0} true;
  goto $bb10;
$bb10:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3631, 9} true;
  assume {:verifier.code 0} true;
  call $i37 := bcm54xx_shadow_read($p0, 5);
  // WARNING: %47 = call i32 @bcm54xx_shadow_read(%struct.phy_device* %0, i16 zeroext 5), !dbg !3901, !verifier.code !3811
  call {:cexpr "val"} boogie_si_record_i32($i37);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3633, 11} true;
  assume {:verifier.code 0} true;
  $i38 := $slt.i32($i37, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3633, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i38} true;
  goto $bb11, $bb12;
$bb11:
  assume ($i38 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3634, 5} true;
  assume {:verifier.code 0} true;
  goto $bb7;
$bb12:
  assume !(($i38 == 1));
  assume {:verifier.code 0} true;
  goto $bb13;
$bb13:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3640, 17} true;
  assume {:verifier.code 0} true;
  $p39 := $bitcast.ref.ref($p0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3640, 17} true;
  assume {:verifier.code 0} true;
  $p40 := $load.ref($M.0, $p39);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3641, 17} true;
  assume {:verifier.code 0} true;
  $i41 := $p2i.ref.i64($p40);
  // WARNING: %54 = ptrtoint %struct.phy_driver* %53 to i64, !dbg !3916, !verifier.code !3811
  call {:cexpr "__cil_tmp28"} boogie_si_record_i64($i41);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3642, 29} true;
  assume {:verifier.code 0} true;
  $i42 := $add.i64($i41, 16);
  // WARNING: %55 = add i64 %54, 16, !dbg !3919, !verifier.code !3811
  call {:cexpr "__cil_tmp29"} boogie_si_record_i64($i42);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3643, 19} true;
  assume {:verifier.code 0} true;
  $p43 := $i2p.i64.ref($i42);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3643, 17} true;
  assume {:verifier.code 0} true;
  $i44 := $load.i32($M.0, $p43);
  // WARNING: %57 = load i32, i32* %56, align 4, !dbg !3923, !verifier.code !3811
  call {:cexpr "__cil_tmp30"} boogie_si_record_i32($i44);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3644, 17} true;
  assume {:verifier.code 0} true;
  $p45 := $bitcast.ref.ref($p0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3644, 17} true;
  assume {:verifier.code 0} true;
  $p46 := $load.ref($M.0, $p45);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3645, 17} true;
  assume {:verifier.code 0} true;
  $p47 := $bitcast.ref.ref($p46);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3645, 17} true;
  assume {:verifier.code 0} true;
  $i48 := $load.i32($M.0, $p47);
  // WARNING: %61 = load i32, i32* %60, align 4, !dbg !3929, !verifier.code !3811
  call {:cexpr "__cil_tmp32"} boogie_si_record_i32($i48);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3646, 29} true;
  assume {:verifier.code 0} true;
  $i49 := $and.i32($i48, $i44);
  // WARNING: %62 = and i32 %61, %57, !dbg !3932, !verifier.code !3811
  call {:cexpr "__cil_tmp33"} boogie_si_record_i32($i49);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3647, 19} true;
  assume {:verifier.code 0} true;
  $i50 := $eq.i32($i49, 21216608);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3647, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i50} true;
  goto $bb14, $bb15;
$bb14:
  assume ($i50 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3648, 5} true;
  assume {:verifier.code 0} true;
  goto $bb16;
$bb15:
  assume !(($i50 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3651, 19} true;
  assume {:verifier.code 0} true;
  $p51 := $bitcast.ref.ref($p0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3651, 19} true;
  assume {:verifier.code 0} true;
  $p52 := $load.ref($M.0, $p51);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3652, 19} true;
  assume {:verifier.code 0} true;
  $i53 := $p2i.ref.i64($p52);
  // WARNING: %68 = ptrtoint %struct.phy_driver* %67 to i64, !dbg !3945, !verifier.code !3811
  call {:cexpr "__cil_tmp35"} boogie_si_record_i64($i53);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3653, 31} true;
  assume {:verifier.code 0} true;
  $i54 := $add.i64($i53, 16);
  // WARNING: %69 = add i64 %68, 16, !dbg !3948, !verifier.code !3811
  call {:cexpr "__cil_tmp36"} boogie_si_record_i64($i54);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3654, 21} true;
  assume {:verifier.code 0} true;
  $p55 := $i2p.i64.ref($i54);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3654, 19} true;
  assume {:verifier.code 0} true;
  $i56 := $load.i32($M.0, $p55);
  // WARNING: %71 = load i32, i32* %70, align 4, !dbg !3952, !verifier.code !3811
  call {:cexpr "__cil_tmp37"} boogie_si_record_i32($i56);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3655, 19} true;
  assume {:verifier.code 0} true;
  $p57 := $bitcast.ref.ref($p0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3655, 19} true;
  assume {:verifier.code 0} true;
  $p58 := $load.ref($M.0, $p57);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3656, 19} true;
  assume {:verifier.code 0} true;
  $p59 := $bitcast.ref.ref($p58);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3656, 19} true;
  assume {:verifier.code 0} true;
  $i60 := $load.i32($M.0, $p59);
  // WARNING: %75 = load i32, i32* %74, align 4, !dbg !3958, !verifier.code !3811
  call {:cexpr "__cil_tmp39"} boogie_si_record_i32($i60);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3657, 31} true;
  assume {:verifier.code 0} true;
  $i61 := $and.i32($i60, $i56);
  // WARNING: %76 = and i32 %75, %71, !dbg !3961, !verifier.code !3811
  call {:cexpr "__cil_tmp40"} boogie_si_record_i32($i61);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3658, 21} true;
  assume {:verifier.code 0} true;
  $i62 := $eq.i32($i61, 21216624);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3658, 9} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i62} true;
  goto $bb17, $bb18;
$bb16:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3661, 21} true;
  assume {:verifier.code 0} true;
  $p63 := $bitcast.ref.ref($p0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3661, 21} true;
  assume {:verifier.code 0} true;
  $p64 := $load.ref($M.0, $p63);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3662, 21} true;
  assume {:verifier.code 0} true;
  $i65 := $p2i.ref.i64($p64);
  // WARNING: %82 = ptrtoint %struct.phy_driver* %81 to i64, !dbg !3974, !verifier.code !3811
  call {:cexpr "__cil_tmp42"} boogie_si_record_i64($i65);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3663, 33} true;
  assume {:verifier.code 0} true;
  $i66 := $add.i64($i65, 16);
  // WARNING: %83 = add i64 %82, 16, !dbg !3977, !verifier.code !3811
  call {:cexpr "__cil_tmp43"} boogie_si_record_i64($i66);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3664, 23} true;
  assume {:verifier.code 0} true;
  $p67 := $i2p.i64.ref($i66);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3664, 21} true;
  assume {:verifier.code 0} true;
  $i68 := $load.i32($M.0, $p67);
  // WARNING: %85 = load i32, i32* %84, align 4, !dbg !3981, !verifier.code !3811
  call {:cexpr "__cil_tmp44"} boogie_si_record_i32($i68);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3665, 21} true;
  assume {:verifier.code 0} true;
  $i69 := $xor.i32($i68, $sub.i32(0, 1));
  // WARNING: %86 = xor i32 %85, -1, !dbg !3984, !verifier.code !3811
  call {:cexpr "__cil_tmp45"} boogie_si_record_i32($i69);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3666, 21} true;
  assume {:verifier.code 0} true;
  $p70 := $bitcast.ref.ref($p0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3666, 21} true;
  assume {:verifier.code 0} true;
  $p71 := $load.ref($M.0, $p70);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3667, 21} true;
  assume {:verifier.code 0} true;
  $p72 := $bitcast.ref.ref($p71);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3667, 21} true;
  assume {:verifier.code 0} true;
  $i73 := $load.i32($M.0, $p72);
  // WARNING: %90 = load i32, i32* %89, align 4, !dbg !3990, !verifier.code !3811
  call {:cexpr "__cil_tmp47"} boogie_si_record_i32($i73);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3668, 33} true;
  assume {:verifier.code 0} true;
  $i74 := $and.i32($i73, $i69);
  // WARNING: %91 = and i32 %90, %86, !dbg !3993, !verifier.code !3811
  call {:cexpr "__cil_tmp48"} boogie_si_record_i32($i74);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3669, 23} true;
  assume {:verifier.code 0} true;
  $i75 := $uge.i32($i74, 3);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3669, 11} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i75} true;
  goto $bb19, $bb20;
$bb17:
  assume ($i62 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3658, 35} true;
  assume {:verifier.code 0} true;
  goto $bb16;
$bb18:
  assume !(($i62 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3675, 12} true;
  assume {:verifier.code 0} true;
  goto $bb22;
$bb19:
  assume ($i75 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3671, 7} true;
  assume {:verifier.code 0} true;
  goto $bb21;
$bb20:
  assume !(($i75 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3672, 9} true;
  assume {:verifier.code 0} true;
  goto $bb22;
$bb21:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3675, 5} true;
  assume {:verifier.code 0} true;
  $i76, $i77 := $i37, 0;
  goto $bb23;
$bb22:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3678, 21} true;
  assume {:verifier.code 0} true;
  $i78 := $p2i.ref.i64($p0);
  // WARNING: %98 = ptrtoint %struct.phy_device* %0 to i64, !dbg !4005, !verifier.code !3811
  call {:cexpr "__cil_tmp49"} boogie_si_record_i64($i78);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3679, 33} true;
  assume {:verifier.code 0} true;
  $i79 := $add.i64($i78, 792);
  // WARNING: %99 = add i64 %98, 792, !dbg !4010, !verifier.code !3811
  call {:cexpr "__cil_tmp50"} boogie_si_record_i64($i79);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3680, 23} true;
  assume {:verifier.code 0} true;
  $p80 := $i2p.i64.ref($i79);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3680, 21} true;
  assume {:verifier.code 0} true;
  $i81 := $load.i32($M.0, $p80);
  // WARNING: %101 = load i32, i32* %100, align 4, !dbg !4014, !verifier.code !3811
  call {:cexpr "__cil_tmp51"} boogie_si_record_i32($i81);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3681, 23} true;
  assume {:verifier.code 0} true;
  $i82 := $and.i32($i81, 1024);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3681, 23} true;
  assume {:verifier.code 0} true;
  $i83 := $ne.i32($i82, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3681, 11} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i83} true;
  goto $bb24, $bb25;
$bb23:
  assume {:verifier.code 0} true;
  assume {:verifier.code 0} true;
  assume {:verifier.code 0} true;
  goto $bb27;
$bb24:
  assume ($i83 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3682, 19} true;
  assume {:verifier.code 0} true;
  $i84 := $and.i32($i37, $sub.i32(0, 2));
  // WARNING: %105 = and i32 %47, -2, !dbg !4020, !verifier.code !3811
  call {:cexpr "val"} boogie_si_record_i32($i84);
  // WARNING: call void @llvm.dbg.value(metadata i32 %105, i64 0, metadata !4371, metadata !3813), !dbg !4372, !verifier.code !3811
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3684, 7} true;
  assume {:verifier.code 0} true;
  $i85, $i86 := $i84, 0;
  goto $bb26;
$bb25:
  assume !(($i83 == 1));
  assume {:verifier.code 0} true;
  $i85, $i86 := $i37, 1;
  goto $bb26;
$bb26:
  assume {:verifier.code 0} true;
  assume {:verifier.code 0} true;
  assume {:verifier.code 0} true;
  $i76, $i77 := $i85, $i86;
  goto $bb23;
$bb27:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3692, 9} true;
  assume {:verifier.code 0} true;
  $i87 := $trunc.i8.i1($i77);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3692, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i87} true;
  goto $bb28, $bb29;
$bb28:
  assume ($i87 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3696, 19} true;
  assume {:verifier.code 0} true;
  $i90 := $p2i.ref.i64($p0);
  // WARNING: %114 = ptrtoint %struct.phy_device* %0 to i64, !dbg !4029, !verifier.code !3811
  call {:cexpr "__cil_tmp52"} boogie_si_record_i64($i90);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3697, 31} true;
  assume {:verifier.code 0} true;
  $i91 := $add.i64($i90, 792);
  // WARNING: %115 = add i64 %114, 792, !dbg !4034, !verifier.code !3811
  call {:cexpr "__cil_tmp53"} boogie_si_record_i64($i91);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3698, 21} true;
  assume {:verifier.code 0} true;
  $p92 := $i2p.i64.ref($i91);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3698, 19} true;
  assume {:verifier.code 0} true;
  $i93 := $load.i32($M.0, $p92);
  // WARNING: %117 = load i32, i32* %116, align 4, !dbg !4038, !verifier.code !3811
  call {:cexpr "__cil_tmp54"} boogie_si_record_i32($i93);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3699, 21} true;
  assume {:verifier.code 0} true;
  $i94 := $and.i32($i93, 512);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3699, 21} true;
  assume {:verifier.code 0} true;
  $i95 := $ne.i32($i94, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3699, 9} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i95} true;
  goto $bb31, $bb32;
$bb29:
  assume !(($i87 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3693, 15} true;
  assume {:verifier.code 0} true;
  $i88 := $and.i32($i76, $sub.i32(0, 3));
  // WARNING: %112 = and i32 %.12, -3, !dbg !4026, !verifier.code !3811
  call {:cexpr "val"} boogie_si_record_i32($i88);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3694, 3} true;
  assume {:verifier.code 0} true;
  $i89 := $i88;
  goto $bb30;
$bb30:
  assume {:verifier.code 0} true;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3707, 17} true;
  assume {:verifier.code 0} true;
  $i99 := $p2i.ref.i64($p0);
  // WARNING: %126 = ptrtoint %struct.phy_device* %0 to i64, !dbg !4049, !verifier.code !3811
  call {:cexpr "__cil_tmp55"} boogie_si_record_i64($i99);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3708, 29} true;
  assume {:verifier.code 0} true;
  $i100 := $add.i64($i99, 792);
  // WARNING: %127 = add i64 %126, 792, !dbg !4053, !verifier.code !3811
  call {:cexpr "__cil_tmp56"} boogie_si_record_i64($i100);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3709, 19} true;
  assume {:verifier.code 0} true;
  $p101 := $i2p.i64.ref($i100);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3709, 17} true;
  assume {:verifier.code 0} true;
  $i102 := $load.i32($M.0, $p101);
  // WARNING: %129 = load i32, i32* %128, align 4, !dbg !4057, !verifier.code !3811
  call {:cexpr "__cil_tmp57"} boogie_si_record_i32($i102);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3710, 19} true;
  assume {:verifier.code 0} true;
  $i103 := $and.i32($i102, 32768);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3710, 19} true;
  assume {:verifier.code 0} true;
  $i104 := $ne.i32($i103, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3710, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i104} true;
  goto $bb34, $bb35;
$bb31:
  assume ($i95 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3700, 17} true;
  assume {:verifier.code 0} true;
  $i96 := $and.i32($i76, $sub.i32(0, 3));
  // WARNING: %121 = and i32 %.12, -3, !dbg !4044, !verifier.code !3811
  call {:cexpr "val"} boogie_si_record_i32($i96);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3701, 5} true;
  assume {:verifier.code 0} true;
  $i97 := $i96;
  goto $bb33;
$bb32:
  assume !(($i95 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3702, 17} true;
  assume {:verifier.code 0} true;
  $i98 := $or.i32($i76, 2);
  // WARNING: %123 = or i32 %.12, 2, !dbg !4047, !verifier.code !3811
  call {:cexpr "val"} boogie_si_record_i32($i98);
  assume {:verifier.code 0} true;
  $i97 := $i98;
  goto $bb33;
$bb33:
  assume {:verifier.code 0} true;
  assume {:verifier.code 0} true;
  $i89 := $i97;
  goto $bb30;
$bb34:
  assume ($i104 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3711, 15} true;
  assume {:verifier.code 0} true;
  $i105 := $or.i32($i89, 4);
  // WARNING: %133 = or i32 %.3, 4, !dbg !4063, !verifier.code !3811
  call {:cexpr "val"} boogie_si_record_i32($i105);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3712, 3} true;
  assume {:verifier.code 0} true;
  $i106 := $i105;
  goto $bb36;
$bb35:
  assume !(($i104 == 1));
  assume {:verifier.code 0} true;
  $i106 := $i89;
  goto $bb36;
$bb36:
  assume {:verifier.code 0} true;
  // WARNING: %.4 = phi i32 [ %133, %132 ], [ %.3, %134 ], !verifier.code !3811
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3718, 12} true;
  assume {:verifier.code 0} true;
  $i107 := $ne.i32($i37, $i106);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3718, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i107} true;
  goto $bb37, $bb38;
$bb37:
  assume ($i107 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3721, 19} true;
  assume {:verifier.code 0} true;
  $i108 := $trunc.i32.i16($i106);
  // WARNING: %138 = trunc i32 %.4 to i16, !dbg !4074, !verifier.code !3811
  call {:cexpr "__cil_tmp60"} boogie_si_record_i16($i108);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3722, 5} true;
  assume {:verifier.code 0} true;
  call $i109 := bcm54xx_shadow_write($p0, 5, $i108);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3724, 3} true;
  assume {:verifier.code 0} true;
  goto $bb39;
$bb38:
  assume !(($i107 == 1));
  assume {:verifier.code 0} true;
  goto $bb39;
$bb39:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3730, 9} true;
  assume {:verifier.code 0} true;
  call $i110 := bcm54xx_shadow_read($p0, 10);
  // WARNING: %142 = call i32 @bcm54xx_shadow_read(%struct.phy_device* %0, i16 zeroext 10), !dbg !4083, !verifier.code !3811
  call {:cexpr "val"} boogie_si_record_i32($i110);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3732, 11} true;
  assume {:verifier.code 0} true;
  $i111 := $slt.i32($i110, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3732, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i111} true;
  goto $bb40, $bb41;
$bb40:
  assume ($i111 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3733, 5} true;
  assume {:verifier.code 0} true;
  goto $bb7;
$bb41:
  assume !(($i111 == 1));
  assume {:verifier.code 0} true;
  goto $bb42;
$bb42:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3738, 9} true;
  assume {:verifier.code 0} true;
  $i112 := $trunc.i8.i1($i77);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3738, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i112} true;
  goto $bb43, $bb44;
$bb43:
  assume ($i112 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3742, 19} true;
  assume {:verifier.code 0} true;
  $i115 := $p2i.ref.i64($p0);
  // WARNING: %151 = ptrtoint %struct.phy_device* %0 to i64, !dbg !4096, !verifier.code !3811
  call {:cexpr "__cil_tmp62"} boogie_si_record_i64($i115);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3743, 31} true;
  assume {:verifier.code 0} true;
  $i116 := $add.i64($i115, 792);
  // WARNING: %152 = add i64 %151, 792, !dbg !4101, !verifier.code !3811
  call {:cexpr "__cil_tmp63"} boogie_si_record_i64($i116);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3744, 21} true;
  assume {:verifier.code 0} true;
  $p117 := $i2p.i64.ref($i116);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3744, 19} true;
  assume {:verifier.code 0} true;
  $i118 := $load.i32($M.0, $p117);
  // WARNING: %154 = load i32, i32* %153, align 4, !dbg !4105, !verifier.code !3811
  call {:cexpr "__cil_tmp64"} boogie_si_record_i32($i118);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3745, 21} true;
  assume {:verifier.code 0} true;
  $i119 := $and.i32($i118, 512);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3745, 21} true;
  assume {:verifier.code 0} true;
  $i120 := $ne.i32($i119, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3745, 9} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i120} true;
  goto $bb46, $bb47;
$bb44:
  assume !(($i112 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3739, 15} true;
  assume {:verifier.code 0} true;
  $i113 := $or.i32($i110, 32);
  // WARNING: %149 = or i32 %142, 32, !dbg !4093, !verifier.code !3811
  call {:cexpr "val"} boogie_si_record_i32($i113);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3740, 3} true;
  assume {:verifier.code 0} true;
  $i114 := $i113;
  goto $bb45;
$bb45:
  assume {:verifier.code 0} true;
  // WARNING: %.6 = phi i32 [ %.5, %161 ], [ %149, %148 ], !verifier.code !3811
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3754, 12} true;
  assume {:verifier.code 0} true;
  $i124 := $ne.i32($i110, $i114);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3754, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i124} true;
  goto $bb49, $bb50;
$bb46:
  assume ($i120 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3746, 17} true;
  assume {:verifier.code 0} true;
  $i121 := $or.i32($i110, 32);
  // WARNING: %158 = or i32 %142, 32, !dbg !4111, !verifier.code !3811
  call {:cexpr "val"} boogie_si_record_i32($i121);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3747, 5} true;
  assume {:verifier.code 0} true;
  $i122 := $i121;
  goto $bb48;
$bb47:
  assume !(($i120 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3748, 17} true;
  assume {:verifier.code 0} true;
  $i123 := $and.i32($i110, $sub.i32(0, 33));
  // WARNING: %160 = and i32 %142, -33, !dbg !4114, !verifier.code !3811
  call {:cexpr "val"} boogie_si_record_i32($i123);
  assume {:verifier.code 0} true;
  $i122 := $i123;
  goto $bb48;
$bb48:
  assume {:verifier.code 0} true;
  assume {:verifier.code 0} true;
  $i114 := $i122;
  goto $bb45;
$bb49:
  assume ($i124 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3757, 19} true;
  assume {:verifier.code 0} true;
  $i125 := $trunc.i32.i16($i114);
  // WARNING: %165 = trunc i32 %.6 to i16, !dbg !4124, !verifier.code !3811
  call {:cexpr "__cil_tmp67"} boogie_si_record_i16($i125);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3758, 5} true;
  assume {:verifier.code 0} true;
  call $i126 := bcm54xx_shadow_write($p0, 10, $i125);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3760, 3} true;
  assume {:verifier.code 0} true;
  goto $bb51;
$bb50:
  assume !(($i124 == 1));
  assume {:verifier.code 0} true;
  goto $bb51;
$bb51:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3764, 3} true;
  assume {:verifier.code 0} true;
  goto $bb7;
}
const bcm54xx_phydsp_config: ref;
axiom (bcm54xx_phydsp_config == $sub.ref(0, 49323));
procedure bcm54xx_phydsp_config($p0: ref)
  returns ($r: i32)
{
  var $i1: i32;
  var $i2: i1;
  var $p4: ref;
  var $p5: ref;
  var $i6: i64;
  var $i7: i64;
  var $p8: ref;
  var $i9: i32;
  var $p10: ref;
  var $p11: ref;
  var $p12: ref;
  var $i13: i32;
  var $i14: i32;
  var $i15: i1;
  var $p16: ref;
  var $p17: ref;
  var $i18: i64;
  var $i19: i64;
  var $p20: ref;
  var $i21: i32;
  var $p22: ref;
  var $p23: ref;
  var $p24: ref;
  var $i25: i32;
  var $i26: i32;
  var $i27: i1;
  var $i28: i32;
  var $i29: i1;
  var $p31: ref;
  var $p32: ref;
  var $p33: ref;
  var $i34: i32;
  var $i35: i1;
  var $i36: i32;
  var $i37: i1;
  var $i38: i32;
  var $i39: i32;
  var $p40: ref;
  var $p41: ref;
  var $i42: i64;
  var $i43: i64;
  var $p44: ref;
  var $i45: i32;
  var $p46: ref;
  var $p47: ref;
  var $p48: ref;
  var $i49: i32;
  var $i50: i32;
  var $i51: i1;
  var $i52: i32;
  var $i53: i1;
  var $i54: i32;
  var $i55: i16;
  var $i56: i32;
  var $i57: i32;
  var $i30: i32;
  var $i58: i32;
  var $i59: i1;
  var $i60: i32;
  var $i3: i32;
$bb0:
  // WARNING: call void @llvm.dbg.value(metadata %struct.phy_device* %0, i64 0, metadata !4602, metadata !3813), !dbg !4603, !verifier.code !3811
  // WARNING: call void @llvm.dbg.value(metadata i16 0, i64 0, metadata !4604, metadata !3813), !dbg !4605, !verifier.code !3811
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3417, 9} true;
  assume {:verifier.code 0} true;
  call $i1 := bcm54xx_auxctl_write($p0, 0, 3072);
  // WARNING: %2 = call i32 @bcm54xx_auxctl_write(%struct.phy_device* %0, i16 zeroext 0, i16 zeroext 3072), !dbg !3816, !verifier.code !3811
  call {:cexpr "err"} boogie_si_record_i32($i1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3419, 11} true;
  assume {:verifier.code 0} true;
  $i2 := $slt.i32($i1, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3419, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i2} true;
  goto $bb1, $bb2;
$bb1:
  assume ($i2 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3420, 5} true;
  assume {:verifier.code 0} true;
  $i3 := $i1;
  goto $bb3;
$bb2:
  assume !(($i2 == 1));
  assume {:verifier.code 0} true;
  goto $bb4;
$bb3:
  assume {:verifier.code 0} true;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3518, 1} true;
  assume {:verifier.code 0} true;
  $r := $i3;
  $exn := false;
  return;
$bb4:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3425, 16} true;
  assume {:verifier.code 0} true;
  $p4 := $bitcast.ref.ref($p0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3425, 16} true;
  assume {:verifier.code 0} true;
  $p5 := $load.ref($M.0, $p4);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3426, 16} true;
  assume {:verifier.code 0} true;
  $i6 := $p2i.ref.i64($p5);
  // WARNING: %9 = ptrtoint %struct.phy_driver* %8 to i64, !dbg !3830, !verifier.code !3811
  call {:cexpr "__cil_tmp9"} boogie_si_record_i64($i6);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3427, 28} true;
  assume {:verifier.code 0} true;
  $i7 := $add.i64($i6, 16);
  // WARNING: %10 = add i64 %9, 16, !dbg !3833, !verifier.code !3811
  call {:cexpr "__cil_tmp10"} boogie_si_record_i64($i7);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3428, 19} true;
  assume {:verifier.code 0} true;
  $p8 := $i2p.i64.ref($i7);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3428, 17} true;
  assume {:verifier.code 0} true;
  $i9 := $load.i32($M.0, $p8);
  // WARNING: %12 = load i32, i32* %11, align 4, !dbg !3837, !verifier.code !3811
  call {:cexpr "__cil_tmp11"} boogie_si_record_i32($i9);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3429, 17} true;
  assume {:verifier.code 0} true;
  $p10 := $bitcast.ref.ref($p0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3429, 17} true;
  assume {:verifier.code 0} true;
  $p11 := $load.ref($M.0, $p10);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3430, 17} true;
  assume {:verifier.code 0} true;
  $p12 := $bitcast.ref.ref($p11);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3430, 17} true;
  assume {:verifier.code 0} true;
  $i13 := $load.i32($M.0, $p12);
  // WARNING: %16 = load i32, i32* %15, align 4, !dbg !3843, !verifier.code !3811
  call {:cexpr "__cil_tmp13"} boogie_si_record_i32($i13);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3431, 29} true;
  assume {:verifier.code 0} true;
  $i14 := $and.i32($i13, $i9);
  // WARNING: %17 = and i32 %16, %12, !dbg !3846, !verifier.code !3811
  call {:cexpr "__cil_tmp14"} boogie_si_record_i32($i14);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3432, 19} true;
  assume {:verifier.code 0} true;
  $i15 := $eq.i32($i14, 21216608);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3432, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i15} true;
  goto $bb5, $bb6;
$bb5:
  assume ($i15 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3433, 5} true;
  assume {:verifier.code 0} true;
  goto $bb7;
$bb6:
  assume !(($i15 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3436, 19} true;
  assume {:verifier.code 0} true;
  $p16 := $bitcast.ref.ref($p0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3436, 19} true;
  assume {:verifier.code 0} true;
  $p17 := $load.ref($M.0, $p16);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3437, 19} true;
  assume {:verifier.code 0} true;
  $i18 := $p2i.ref.i64($p17);
  // WARNING: %23 = ptrtoint %struct.phy_driver* %22 to i64, !dbg !3859, !verifier.code !3811
  call {:cexpr "__cil_tmp16"} boogie_si_record_i64($i18);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3438, 31} true;
  assume {:verifier.code 0} true;
  $i19 := $add.i64($i18, 16);
  // WARNING: %24 = add i64 %23, 16, !dbg !3862, !verifier.code !3811
  call {:cexpr "__cil_tmp17"} boogie_si_record_i64($i19);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3439, 21} true;
  assume {:verifier.code 0} true;
  $p20 := $i2p.i64.ref($i19);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3439, 19} true;
  assume {:verifier.code 0} true;
  $i21 := $load.i32($M.0, $p20);
  // WARNING: %26 = load i32, i32* %25, align 4, !dbg !3866, !verifier.code !3811
  call {:cexpr "__cil_tmp18"} boogie_si_record_i32($i21);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3440, 19} true;
  assume {:verifier.code 0} true;
  $p22 := $bitcast.ref.ref($p0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3440, 19} true;
  assume {:verifier.code 0} true;
  $p23 := $load.ref($M.0, $p22);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3441, 19} true;
  assume {:verifier.code 0} true;
  $p24 := $bitcast.ref.ref($p23);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3441, 19} true;
  assume {:verifier.code 0} true;
  $i25 := $load.i32($M.0, $p24);
  // WARNING: %30 = load i32, i32* %29, align 4, !dbg !3872, !verifier.code !3811
  call {:cexpr "__cil_tmp20"} boogie_si_record_i32($i25);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3442, 31} true;
  assume {:verifier.code 0} true;
  $i26 := $and.i32($i25, $i21);
  // WARNING: %31 = and i32 %30, %26, !dbg !3875, !verifier.code !3811
  call {:cexpr "__cil_tmp21"} boogie_si_record_i32($i26);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3443, 21} true;
  assume {:verifier.code 0} true;
  $i27 := $eq.i32($i26, 21216624);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3443, 9} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i27} true;
  goto $bb8, $bb9;
$bb7:
  // WARNING: call void @llvm.dbg.value(metadata i16 3848, i64 0, metadata !4675, metadata !3813), !dbg !4676, !verifier.code !3811
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3448, 13} true;
  assume {:verifier.code 0} true;
  call $i28 := bcm54xx_exp_write($p0, 3848, 1);
  // WARNING: %35 = call i32 @bcm54xx_exp_write(%struct.phy_device* %0, i16 zeroext 3848, i16 zeroext 1), !dbg !3887, !verifier.code !3811
  call {:cexpr "err"} boogie_si_record_i32($i28);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3450, 15} true;
  assume {:verifier.code 0} true;
  $i29 := $slt.i32($i28, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3450, 11} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i29} true;
  goto $bb10, $bb11;
$bb8:
  assume ($i27 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3443, 35} true;
  assume {:verifier.code 0} true;
  goto $bb7;
$bb9:
  assume !(($i27 == 1));
  assume {:verifier.code 0} true;
  $i39 := $i1;
  goto $bb20;
$bb10:
  assume ($i29 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3451, 9} true;
  assume {:verifier.code 0} true;
  $i30 := $i28;
  goto $bb12;
$bb11:
  assume !(($i29 == 1));
  assume {:verifier.code 0} true;
  goto $bb13;
$bb12:
  assume {:verifier.code 0} true;
  // WARNING: %.3 = phi i32 [ %35, %37 ], [ %46, %48 ], [ %.1, %71 ], [ %.2, %78 ], !verifier.code !3811
  // WARNING: call void @llvm.dbg.value(metadata i16 0, i64 0, metadata !4755, metadata !3813), !dbg !4756, !verifier.code !3811
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3509, 10} true;
  assume {:verifier.code 0} true;
  call $i58 := bcm54xx_auxctl_write($p0, 0, 1024);
  // WARNING: %80 = call i32 @bcm54xx_auxctl_write(%struct.phy_device* %0, i16 zeroext 0, i16 zeroext 1024), !dbg !3967, !verifier.code !3811
  call {:cexpr "err2"} boogie_si_record_i32($i58);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3511, 7} true;
  assume {:verifier.code 0} true;
  $i59 := $ne.i32($i30, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3511, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i59} true;
  goto $bb28, $bb29;
$bb13:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3456, 21} true;
  assume {:verifier.code 0} true;
  $p31 := $bitcast.ref.ref($p0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3456, 21} true;
  assume {:verifier.code 0} true;
  $p32 := $load.ref($M.0, $p31);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3457, 21} true;
  assume {:verifier.code 0} true;
  $p33 := $bitcast.ref.ref($p32);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3457, 21} true;
  assume {:verifier.code 0} true;
  $i34 := $load.i32($M.0, $p33);
  // WARNING: %43 = load i32, i32* %42, align 4, !dbg !3899, !verifier.code !3811
  call {:cexpr "__cil_tmp25"} boogie_si_record_i32($i34);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3458, 23} true;
  assume {:verifier.code 0} true;
  $i35 := $eq.i32($i34, 21216608);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3458, 11} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i35} true;
  goto $bb14, $bb15;
$bb14:
  assume ($i35 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3460, 15} true;
  assume {:verifier.code 0} true;
  call $i36 := bcm50610_a0_workaround($p0);
  // WARNING: %46 = call i32 @bcm50610_a0_workaround(%struct.phy_device* %0), !dbg !3905, !verifier.code !3811
  call {:cexpr "err"} boogie_si_record_i32($i36);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3462, 17} true;
  assume {:verifier.code 0} true;
  $i37 := $slt.i32($i36, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3462, 13} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i37} true;
  goto $bb16, $bb17;
$bb15:
  assume !(($i35 == 1));
  assume {:verifier.code 0} true;
  $i38 := $i28;
  goto $bb19;
$bb16:
  assume ($i37 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3463, 11} true;
  assume {:verifier.code 0} true;
  $i30 := $i36;
  goto $bb12;
$bb17:
  assume !(($i37 == 1));
  assume {:verifier.code 0} true;
  goto $bb18;
$bb18:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3467, 7} true;
  assume {:verifier.code 0} true;
  $i38 := $i36;
  goto $bb19;
$bb19:
  assume {:verifier.code 0} true;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3471, 5} true;
  assume {:verifier.code 0} true;
  $i39 := $i38;
  goto $bb20;
$bb20:
  assume {:verifier.code 0} true;
  assume {:verifier.code 0} true;
  goto $bb21;
$bb21:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3478, 17} true;
  assume {:verifier.code 0} true;
  $p40 := $bitcast.ref.ref($p0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3478, 17} true;
  assume {:verifier.code 0} true;
  $p41 := $load.ref($M.0, $p40);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3479, 17} true;
  assume {:verifier.code 0} true;
  $i42 := $p2i.ref.i64($p41);
  // WARNING: %58 = ptrtoint %struct.phy_driver* %57 to i64, !dbg !3919, !verifier.code !3811
  call {:cexpr "__cil_tmp27"} boogie_si_record_i64($i42);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3480, 29} true;
  assume {:verifier.code 0} true;
  $i43 := $add.i64($i42, 16);
  // WARNING: %59 = add i64 %58, 16, !dbg !3922, !verifier.code !3811
  call {:cexpr "__cil_tmp28"} boogie_si_record_i64($i43);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3481, 19} true;
  assume {:verifier.code 0} true;
  $p44 := $i2p.i64.ref($i43);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3481, 17} true;
  assume {:verifier.code 0} true;
  $i45 := $load.i32($M.0, $p44);
  // WARNING: %61 = load i32, i32* %60, align 4, !dbg !3926, !verifier.code !3811
  call {:cexpr "__cil_tmp29"} boogie_si_record_i32($i45);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3482, 17} true;
  assume {:verifier.code 0} true;
  $p46 := $bitcast.ref.ref($p0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3482, 17} true;
  assume {:verifier.code 0} true;
  $p47 := $load.ref($M.0, $p46);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3483, 17} true;
  assume {:verifier.code 0} true;
  $p48 := $bitcast.ref.ref($p47);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3483, 17} true;
  assume {:verifier.code 0} true;
  $i49 := $load.i32($M.0, $p48);
  // WARNING: %65 = load i32, i32* %64, align 4, !dbg !3932, !verifier.code !3811
  call {:cexpr "__cil_tmp31"} boogie_si_record_i32($i49);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3484, 29} true;
  assume {:verifier.code 0} true;
  $i50 := $and.i32($i49, $i45);
  // WARNING: %66 = and i32 %65, %61, !dbg !3935, !verifier.code !3811
  call {:cexpr "__cil_tmp32"} boogie_si_record_i32($i50);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3485, 19} true;
  assume {:verifier.code 0} true;
  $i51 := $eq.i32($i50, 56778128);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3485, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i51} true;
  goto $bb22, $bb23;
$bb22:
  assume ($i51 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3488, 11} true;
  assume {:verifier.code 0} true;
  call $i52 := bcm54xx_exp_read($p0, 3957);
  // WARNING: %69 = call i32 @bcm54xx_exp_read(%struct.phy_device* %0, i16 zeroext 3957), !dbg !3943, !verifier.code !3811
  call {:cexpr "val"} boogie_si_record_i32($i52);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3490, 13} true;
  assume {:verifier.code 0} true;
  $i53 := $slt.i32($i52, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3490, 9} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i53} true;
  goto $bb24, $bb25;
$bb23:
  assume !(($i51 == 1));
  assume {:verifier.code 0} true;
  $i57 := $i39;
  goto $bb27;
$bb24:
  assume ($i53 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3491, 7} true;
  assume {:verifier.code 0} true;
  $i30 := $i39;
  goto $bb12;
$bb25:
  assume !(($i53 == 1));
  assume {:verifier.code 0} true;
  goto $bb26;
$bb26:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3496, 15} true;
  assume {:verifier.code 0} true;
  $i54 := $or.i32($i52, 1);
  // WARNING: %74 = or i32 %69, 1, !dbg !3953, !verifier.code !3811
  call {:cexpr "val"} boogie_si_record_i32($i54);
  // WARNING: call void @llvm.dbg.value(metadata i32 %74, i64 0, metadata !4738, metadata !3813), !dbg !4739, !verifier.code !3811
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3498, 19} true;
  assume {:verifier.code 0} true;
  $i55 := $trunc.i32.i16($i54);
  // WARNING: %75 = trunc i32 %74 to i16, !dbg !3957, !verifier.code !3811
  call {:cexpr "__cil_tmp35"} boogie_si_record_i16($i55);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3499, 11} true;
  assume {:verifier.code 0} true;
  call $i56 := bcm54xx_exp_write($p0, 3957, $i55);
  // WARNING: %76 = call i32 @bcm54xx_exp_write(%struct.phy_device* %0, i16 zeroext 3957, i16 zeroext %75), !dbg !3960, !verifier.code !3811
  call {:cexpr "err"} boogie_si_record_i32($i56);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3501, 3} true;
  assume {:verifier.code 0} true;
  $i57 := $i56;
  goto $bb27;
$bb27:
  assume {:verifier.code 0} true;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3504, 3} true;
  assume {:verifier.code 0} true;
  $i30 := $i57;
  goto $bb12;
$bb28:
  assume ($i59 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3513, 3} true;
  assume {:verifier.code 0} true;
  $i60 := $i30;
  goto $bb30;
$bb29:
  assume !(($i59 == 1));
  assume {:verifier.code 0} true;
  $i60 := $i58;
  goto $bb30;
$bb30:
  assume {:verifier.code 0} true;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3516, 3} true;
  assume {:verifier.code 0} true;
  $i3 := $i60;
  goto $bb3;
}
const bcm54xx_auxctl_write: ref;
axiom (bcm54xx_auxctl_write == $sub.ref(0, 50355));
procedure bcm54xx_auxctl_write($p0: ref, $i1: i16, $i2: i16)
  returns ($r: i32)
{
  var $i3: i32;
  var $i4: i32;
  var $i5: i32;
  var $i6: i16;
  var $i7: i32;
$bb0:
  // WARNING: call void @llvm.dbg.value(metadata %struct.phy_device* %0, i64 0, metadata !4773, metadata !3813), !dbg !4774, !verifier.code !3811
  // WARNING: call void @llvm.dbg.value(metadata i16 %1, i64 0, metadata !4775, metadata !3813), !dbg !4776, !verifier.code !3811
  // WARNING: call void @llvm.dbg.value(metadata i16 %2, i64 0, metadata !4777, metadata !3813), !dbg !4778, !verifier.code !3811
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3304, 16} true;
  assume {:verifier.code 0} true;
  $i3 := $zext.i16.i32($i2);
  // WARNING: %4 = zext i16 %2 to i32, !dbg !3820, !verifier.code !3813
  call {:cexpr "__cil_tmp6"} boogie_si_record_i32($i3);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3305, 16} true;
  assume {:verifier.code 0} true;
  $i4 := $zext.i16.i32($i1);
  // WARNING: %5 = zext i16 %1 to i32, !dbg !3825, !verifier.code !3813
  call {:cexpr "__cil_tmp7"} boogie_si_record_i32($i4);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3306, 27} true;
  assume {:verifier.code 0} true;
  $i5 := $or.i32($i4, $i3);
  // WARNING: %6 = or i32 %5, %4, !dbg !3828, !verifier.code !3813
  call {:cexpr "__cil_tmp8"} boogie_si_record_i32($i5);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3307, 16} true;
  assume {:verifier.code 0} true;
  $i6 := $trunc.i32.i16($i5);
  // WARNING: %7 = trunc i32 %6 to i16, !dbg !3831, !verifier.code !3813
  call {:cexpr "__cil_tmp9"} boogie_si_record_i16($i6);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3308, 13} true;
  assume {:verifier.code 0} true;
  call $i7 := phy_write($p0, 24, $i6);
  // WARNING: %8 = call i32 @phy_write(%struct.phy_device* %0, i32 24, i16 zeroext %7), !dbg !3834, !verifier.code !3813
  call {:cexpr "tmp___7"} boogie_si_record_i32($i7);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3310, 3} true;
  assume {:verifier.code 0} true;
  $r := $i7;
  $exn := false;
  return;
}
const bcm54xx_exp_write: ref;
axiom (bcm54xx_exp_write == $sub.ref(0, 51387));
procedure bcm54xx_exp_write($p0: ref, $i1: i16, $i2: i16)
  returns ($r: i32)
{
  var $i3: i32;
  var $i4: i1;
  var $i6: i32;
  var $i7: i32;
  var $i5: i32;
$bb0:
  // WARNING: call void @llvm.dbg.value(metadata %struct.phy_device* %0, i64 0, metadata !4800, metadata !3813), !dbg !4801, !verifier.code !3811
  // WARNING: call void @llvm.dbg.value(metadata i16 %1, i64 0, metadata !4802, metadata !3813), !dbg !4803, !verifier.code !3811
  // WARNING: call void @llvm.dbg.value(metadata i16 %2, i64 0, metadata !4804, metadata !3813), !dbg !4805, !verifier.code !3811
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3276, 9} true;
  assume {:verifier.code 0} true;
  call $i3 := phy_write($p0, 23, $i1);
  // WARNING: %4 = call i32 @phy_write(%struct.phy_device* %0, i32 23, i16 zeroext %1), !dbg !3820, !verifier.code !3813
  call {:cexpr "ret"} boogie_si_record_i32($i3);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3278, 11} true;
  assume {:verifier.code 0} true;
  $i4 := $slt.i32($i3, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3278, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i4} true;
  goto $bb1, $bb2;
$bb1:
  assume ($i4 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3279, 5} true;
  assume {:verifier.code 0} true;
  $i5 := $i3;
  goto $bb3;
$bb2:
  assume !(($i4 == 1));
  assume {:verifier.code 0} true;
  goto $bb4;
$bb3:
  assume {:verifier.code 0} true;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3292, 1} true;
  assume {:verifier.code 0} true;
  $r := $i5;
  $exn := false;
  return;
$bb4:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3285, 9} true;
  assume {:verifier.code 0} true;
  call $i6 := phy_write($p0, 21, $i2);
  // WARNING: %9 = call i32 @phy_write(%struct.phy_device* %0, i32 21, i16 zeroext %2), !dbg !3832, !verifier.code !3813
  call {:cexpr "ret"} boogie_si_record_i32($i6);
  // WARNING: call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !4811, metadata !3813), !dbg !4812, !verifier.code !3811
  // WARNING: call void @llvm.dbg.value(metadata i32 23, i64 0, metadata !4822, metadata !3813), !dbg !4823, !verifier.code !3811
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3288, 3} true;
  assume {:verifier.code 0} true;
  call $i7 := phy_write($p0, 23, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3290, 3} true;
  assume {:verifier.code 0} true;
  $i5 := $i6;
  goto $bb3;
}
const bcm50610_a0_workaround: ref;
axiom (bcm50610_a0_workaround == $sub.ref(0, 52419));
procedure bcm50610_a0_workaround($p0: ref)
  returns ($r: i32)
{
  var $i1: i32;
  var $i2: i1;
  var $i4: i32;
  var $i5: i1;
  var $i6: i32;
  var $i7: i1;
  var $i8: i32;
  var $i9: i1;
  var $i10: i32;
  var $i3: i32;
$bb0:
  // WARNING: call void @llvm.dbg.value(metadata %struct.phy_device* %0, i64 0, metadata !4830, metadata !3813), !dbg !4831, !verifier.code !3811
  // WARNING: call void @llvm.dbg.value(metadata i16 31, i64 0, metadata !4832, metadata !3813), !dbg !4833, !verifier.code !3811
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3330, 9} true;
  assume {:verifier.code 0} true;
  call $i1 := bcm54xx_exp_write($p0, 31, 768);
  // WARNING: %2 = call i32 @bcm54xx_exp_write(%struct.phy_device* %0, i16 zeroext 31, i16 zeroext 768), !dbg !3816, !verifier.code !3811
  call {:cexpr "err"} boogie_si_record_i32($i1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3332, 11} true;
  assume {:verifier.code 0} true;
  $i2 := $slt.i32($i1, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3332, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i2} true;
  goto $bb1, $bb2;
$bb1:
  assume ($i2 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3333, 5} true;
  assume {:verifier.code 0} true;
  $i3 := $i1;
  goto $bb3;
$bb2:
  assume !(($i2 == 1));
  assume {:verifier.code 0} true;
  goto $bb4;
$bb3:
  assume {:verifier.code 0} true;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3374, 1} true;
  assume {:verifier.code 0} true;
  $r := $i3;
  $exn := false;
  return;
$bb4:
  // WARNING: call void @llvm.dbg.value(metadata i16 24607, i64 0, metadata !4846, metadata !3813), !dbg !4847, !verifier.code !3811
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3340, 9} true;
  assume {:verifier.code 0} true;
  call $i4 := bcm54xx_exp_write($p0, 24607, 2);
  // WARNING: %7 = call i32 @bcm54xx_exp_write(%struct.phy_device* %0, i16 zeroext 24607, i16 zeroext 2), !dbg !3830, !verifier.code !3811
  call {:cexpr "err"} boogie_si_record_i32($i4);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3342, 11} true;
  assume {:verifier.code 0} true;
  $i5 := $slt.i32($i4, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3342, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i5} true;
  goto $bb5, $bb6;
$bb5:
  assume ($i5 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3343, 5} true;
  assume {:verifier.code 0} true;
  $i3 := $i4;
  goto $bb3;
$bb6:
  assume !(($i5 == 1));
  assume {:verifier.code 0} true;
  goto $bb7;
$bb7:
  // WARNING: call void @llvm.dbg.value(metadata i16 3957, i64 0, metadata !4857, metadata !3813), !dbg !4858, !verifier.code !3811
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3350, 9} true;
  assume {:verifier.code 0} true;
  call $i6 := bcm54xx_exp_write($p0, 3957, 60);
  // WARNING: %12 = call i32 @bcm54xx_exp_write(%struct.phy_device* %0, i16 zeroext 3957, i16 zeroext 60), !dbg !3841, !verifier.code !3811
  call {:cexpr "err"} boogie_si_record_i32($i6);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3352, 11} true;
  assume {:verifier.code 0} true;
  $i7 := $slt.i32($i6, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3352, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i7} true;
  goto $bb8, $bb9;
$bb8:
  assume ($i7 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3353, 5} true;
  assume {:verifier.code 0} true;
  $i3 := $i6;
  goto $bb3;
$bb9:
  assume !(($i7 == 1));
  assume {:verifier.code 0} true;
  goto $bb10;
$bb10:
  // WARNING: call void @llvm.dbg.value(metadata i16 3990, i64 0, metadata !4868, metadata !3813), !dbg !4869, !verifier.code !3811
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3360, 9} true;
  assume {:verifier.code 0} true;
  call $i8 := bcm54xx_exp_write($p0, 3990, 16);
  // WARNING: %17 = call i32 @bcm54xx_exp_write(%struct.phy_device* %0, i16 zeroext 3990, i16 zeroext 16), !dbg !3852, !verifier.code !3811
  call {:cexpr "err"} boogie_si_record_i32($i8);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3362, 11} true;
  assume {:verifier.code 0} true;
  $i9 := $slt.i32($i8, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3362, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i9} true;
  goto $bb11, $bb12;
$bb11:
  assume ($i9 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3363, 5} true;
  assume {:verifier.code 0} true;
  $i3 := $i8;
  goto $bb3;
$bb12:
  assume !(($i9 == 1));
  assume {:verifier.code 0} true;
  goto $bb13;
$bb13:
  // WARNING: call void @llvm.dbg.value(metadata i16 3991, i64 0, metadata !4879, metadata !3813), !dbg !4880, !verifier.code !3811
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3370, 9} true;
  assume {:verifier.code 0} true;
  call $i10 := bcm54xx_exp_write($p0, 3991, 3084);
  // WARNING: %22 = call i32 @bcm54xx_exp_write(%struct.phy_device* %0, i16 zeroext 3991, i16 zeroext 3084), !dbg !3863, !verifier.code !3811
  call {:cexpr "err"} boogie_si_record_i32($i10);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3372, 3} true;
  assume {:verifier.code 0} true;
  $i3 := $i10;
  goto $bb3;
}
const bcm54xx_exp_read: ref;
axiom (bcm54xx_exp_read == $sub.ref(0, 53451));
procedure bcm54xx_exp_read($p0: ref, $i1: i16)
  returns ($r: i32)
{
  var $i2: i32;
  var $i3: i1;
  var $i5: i32;
  var $i6: i32;
  var $i4: i32;
$bb0:
  // WARNING: call void @llvm.dbg.value(metadata %struct.phy_device* %0, i64 0, metadata !4890, metadata !3813), !dbg !4891, !verifier.code !3811
  // WARNING: call void @llvm.dbg.value(metadata i16 %1, i64 0, metadata !4892, metadata !3813), !dbg !4893, !verifier.code !3811
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3249, 9} true;
  assume {:verifier.code 0} true;
  call $i2 := phy_write($p0, 23, $i1);
  // WARNING: %3 = call i32 @phy_write(%struct.phy_device* %0, i32 23, i16 zeroext %1), !dbg !3818, !verifier.code !3813
  call {:cexpr "val"} boogie_si_record_i32($i2);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3251, 11} true;
  assume {:verifier.code 0} true;
  $i3 := $slt.i32($i2, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3251, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i3} true;
  goto $bb1, $bb2;
$bb1:
  assume ($i3 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3252, 5} true;
  assume {:verifier.code 0} true;
  $i4 := $i2;
  goto $bb3;
$bb2:
  assume !(($i3 == 1));
  assume {:verifier.code 0} true;
  goto $bb4;
$bb3:
  assume {:verifier.code 0} true;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3265, 1} true;
  assume {:verifier.code 0} true;
  $r := $i4;
  $exn := false;
  return;
$bb4:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3258, 9} true;
  assume {:verifier.code 0} true;
  call $i5 := phy_read($p0, 21);
  // WARNING: %8 = call i32 @phy_read(%struct.phy_device* %0, i32 21), !dbg !3830, !verifier.code !3813
  call {:cexpr "val"} boogie_si_record_i32($i5);
  // WARNING: call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !4899, metadata !3813), !dbg !4900, !verifier.code !3811
  // WARNING: call void @llvm.dbg.value(metadata i32 23, i64 0, metadata !4910, metadata !3813), !dbg !4911, !verifier.code !3811
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3261, 3} true;
  assume {:verifier.code 0} true;
  call $i6 := phy_write($p0, 23, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3263, 3} true;
  assume {:verifier.code 0} true;
  $i4 := $i5;
  goto $bb3;
}
const bcm54xx_shadow_read: ref;
axiom (bcm54xx_shadow_read == $sub.ref(0, 54483));
procedure bcm54xx_shadow_read($p0: ref, $i1: i16)
  returns ($r: i32)
{
  var $i2: i32;
  var $i3: i32;
  var $i4: i32;
  var $i5: i16;
  var $i6: i32;
  var $i7: i32;
  var $i8: i32;
$bb0:
  // WARNING: call void @llvm.dbg.value(metadata %struct.phy_device* %0, i64 0, metadata !4918, metadata !3813), !dbg !4919, !verifier.code !3811
  // WARNING: call void @llvm.dbg.value(metadata i16 %1, i64 0, metadata !4920, metadata !3813), !dbg !4921, !verifier.code !3811
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3200, 16} true;
  assume {:verifier.code 0} true;
  $i2 := $zext.i16.i32($i1);
  // WARNING: %3 = zext i16 %1 to i32, !dbg !3818, !verifier.code !3813
  call {:cexpr "__cil_tmp5"} boogie_si_record_i32($i2);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3201, 27} true;
  assume {:verifier.code 0} true;
  $i3 := $and.i32($i2, 31);
  // WARNING: %4 = and i32 %3, 31, !dbg !3823, !verifier.code !3813
  call {:cexpr "__cil_tmp6"} boogie_si_record_i32($i3);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3202, 27} true;
  assume {:verifier.code 0} true;
  $i4 := $shl.i32($i3, 10);
  // WARNING: %5 = shl i32 %4, 10, !dbg !3826, !verifier.code !3813
  call {:cexpr "__cil_tmp7"} boogie_si_record_i32($i4);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3203, 16} true;
  assume {:verifier.code 0} true;
  $i5 := $trunc.i32.i16($i4);
  // WARNING: %6 = trunc i32 %5 to i16, !dbg !3829, !verifier.code !3813
  call {:cexpr "__cil_tmp8"} boogie_si_record_i16($i5);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3204, 3} true;
  assume {:verifier.code 0} true;
  call $i6 := phy_write($p0, 28, $i5);
  // WARNING: %7 = call i32 @phy_write(%struct.phy_device* %0, i32 28, i16 zeroext %6), !dbg !3832, !verifier.code !3813
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3206, 13} true;
  assume {:verifier.code 0} true;
  call $i7 := phy_read($p0, 28);
  // WARNING: %8 = call i32 @phy_read(%struct.phy_device* %0, i32 28), !dbg !3835, !verifier.code !3813
  call {:cexpr "tmp___7"} boogie_si_record_i32($i7);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3208, 19} true;
  assume {:verifier.code 0} true;
  $i8 := $and.i32($i7, 1023);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3208, 3} true;
  assume {:verifier.code 0} true;
  $r := $i8;
  $exn := false;
  return;
}
const bcm5481_config_aneg: ref;
axiom (bcm5481_config_aneg == $sub.ref(0, 55515));
procedure bcm5481_config_aneg($p0: ref)
  returns ($r: i32)
{
  var $i1: i32;
  var $i2: i64;
  var $i3: i64;
  var $p4: ref;
  var $i5: i32;
  var $i6: i1;
  var $i7: i32;
  var $i8: i16;
  var $i9: i32;
  var $i10: i32;
  var $i11: i16;
  var $i12: i32;
  var $i13: i32;
  var $i14: i16;
  var $i15: i32;
  var $i16: i32;
  var $i17: i16;
  var $i18: i32;
$bb0:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4159, 9} true;
  assume {:verifier.code 0} true;
  call $i1 := genphy_config_aneg($p0);
  // WARNING: %2 = call i32 @genphy_config_aneg(%struct.phy_device* %0), !dbg !3812, !verifier.code !3811
  call {:cexpr "ret"} boogie_si_record_i32($i1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4162, 16} true;
  assume {:verifier.code 0} true;
  $i2 := $p2i.ref.i64($p0);
  // WARNING: %3 = ptrtoint %struct.phy_device* %0 to i64, !dbg !3817, !verifier.code !3811
  call {:cexpr "__cil_tmp5"} boogie_si_record_i64($i2);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4163, 27} true;
  assume {:verifier.code 0} true;
  $i3 := $add.i64($i2, 796);
  // WARNING: %4 = add i64 %3, 796, !dbg !3821, !verifier.code !3811
  call {:cexpr "__cil_tmp6"} boogie_si_record_i64($i3);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4164, 18} true;
  assume {:verifier.code 0} true;
  $p4 := $i2p.i64.ref($i3);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4164, 16} true;
  assume {:verifier.code 0} true;
  $i5 := $load.i32($M.0, $p4);
  // WARNING: %6 = load i32, i32* %5, align 4, !dbg !3825, !verifier.code !3811
  call {:cexpr "__cil_tmp7"} boogie_si_record_i32($i5);
  // WARNING: call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !4963, metadata !3813), !dbg !4964, !verifier.code !3811
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4166, 18} true;
  assume {:verifier.code 0} true;
  $i6 := $eq.i32($i5, 8);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4166, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i6} true;
  goto $bb1, $bb2;
$bb1:
  assume ($i6 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4169, 21} true;
  assume {:verifier.code 0} true;
  $i7 := $or.i32(7, 28672);
  // WARNING: %9 = or i32 7, 28672, !dbg !3835, !verifier.code !3811
  call {:cexpr "__cil_tmp10"} boogie_si_record_i32($i7);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4170, 11} true;
  assume {:verifier.code 0} true;
  $i8 := $trunc.i32.i16($i7);
  // WARNING: %10 = trunc i32 %9 to i16, !dbg !3840, !verifier.code !3811
  call {:cexpr "reg"} boogie_si_record_i16($i8);
  // WARNING: call void @llvm.dbg.value(metadata i16 %10, i64 0, metadata !4978, metadata !3813), !dbg !4979, !verifier.code !3811
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4172, 5} true;
  assume {:verifier.code 0} true;
  call $i9 := phy_write($p0, 24, $i8);
  // WARNING: %11 = call i32 @phy_write(%struct.phy_device* %0, i32 24, i16 zeroext %10), !dbg !3845, !verifier.code !3811
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4174, 15} true;
  assume {:verifier.code 0} true;
  call $i10 := phy_read($p0, 24);
  // WARNING: %12 = call i32 @phy_read(%struct.phy_device* %0, i32 24), !dbg !3848, !verifier.code !3811
  call {:cexpr "tmp___7"} boogie_si_record_i32($i10);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4175, 11} true;
  assume {:verifier.code 0} true;
  $i11 := $trunc.i32.i16($i10);
  // WARNING: %13 = trunc i32 %12 to i16, !dbg !3851, !verifier.code !3811
  call {:cexpr "reg"} boogie_si_record_i16($i11);
  // WARNING: call void @llvm.dbg.value(metadata i16 %13, i64 0, metadata !4978, metadata !3813), !dbg !4979, !verifier.code !3811
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4177, 19} true;
  assume {:verifier.code 0} true;
  $i12 := $zext.i16.i32($i11);
  // WARNING: %14 = zext i16 %13 to i32, !dbg !3854, !verifier.code !3811
  call {:cexpr "__cil_tmp14"} boogie_si_record_i32($i12);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4178, 31} true;
  assume {:verifier.code 0} true;
  $i13 := $or.i32($i12, 256);
  // WARNING: %15 = or i32 %14, 256, !dbg !3857, !verifier.code !3811
  call {:cexpr "__cil_tmp15"} boogie_si_record_i32($i13);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4179, 11} true;
  assume {:verifier.code 0} true;
  $i14 := $trunc.i32.i16($i13);
  // WARNING: %16 = trunc i32 %15 to i16, !dbg !3860, !verifier.code !3811
  call {:cexpr "reg"} boogie_si_record_i16($i14);
  // WARNING: call void @llvm.dbg.value(metadata i16 %16, i64 0, metadata !4978, metadata !3813), !dbg !4979, !verifier.code !3811
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4181, 19} true;
  assume {:verifier.code 0} true;
  $i15 := $zext.i16.i32($i14);
  // WARNING: %17 = zext i16 %16 to i32, !dbg !3863, !verifier.code !3811
  call {:cexpr "__cil_tmp17"} boogie_si_record_i32($i15);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4182, 31} true;
  assume {:verifier.code 0} true;
  $i16 := $or.i32($i15, 32768);
  // WARNING: %18 = or i32 %17, 32768, !dbg !3866, !verifier.code !3811
  call {:cexpr "__cil_tmp18"} boogie_si_record_i32($i16);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4183, 11} true;
  assume {:verifier.code 0} true;
  $i17 := $trunc.i32.i16($i16);
  // WARNING: %19 = trunc i32 %18 to i16, !dbg !3869, !verifier.code !3811
  call {:cexpr "reg"} boogie_si_record_i16($i17);
  // WARNING: call void @llvm.dbg.value(metadata i16 %19, i64 0, metadata !4978, metadata !3813), !dbg !4979, !verifier.code !3811
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4185, 5} true;
  assume {:verifier.code 0} true;
  call $i18 := phy_write($p0, 24, $i17);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4187, 3} true;
  assume {:verifier.code 0} true;
  goto $bb3;
$bb2:
  assume !(($i6 == 1));
  assume {:verifier.code 0} true;
  goto $bb3;
$bb3:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4191, 3} true;
  assume {:verifier.code 0} true;
  $r := $i1;
  $exn := false;
  return;
}
const bcm5482_config_init: ref;
axiom (bcm5482_config_init == $sub.ref(0, 56547));
procedure bcm5482_config_init($p0: ref)
  returns ($r: i32)
{
  var $i1: i32;
  var $i2: i64;
  var $i3: i64;
  var $p4: ref;
  var $i5: i32;
  var $i6: i32;
  var $i7: i1;
  var $i8: i32;
  var $i9: i32;
  var $i10: i32;
  var $i11: i16;
  var $i12: i32;
  var $i13: i16;
  var $i14: i32;
  var $i15: i1;
  var $i17: i16;
  var $i18: i32;
  var $i19: i32;
  var $i20: i16;
  var $i21: i32;
  var $i22: i1;
  var $i23: i16;
  var $i24: i32;
  var $i25: i1;
  var $i26: i16;
  var $i27: i32;
  var $i28: i16;
  var $i29: i32;
  var $i30: i1;
  var $i31: i32;
  var $i32: i32;
  var $i33: i16;
  var $i34: i32;
  var $i35: i32;
  var $i36: i16;
  var $i37: i32;
  var $i38: i64;
  var $i39: i64;
  var $p40: ref;
  var $i41: i64;
  var $i42: i64;
  var $p43: ref;
  var $i44: i64;
  var $i45: i64;
  var $p46: ref;
  var $i47: i32;
  var $i16: i32;
$bb0:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3954, 9} true;
  assume {:verifier.code 0} true;
  call $i1 := bcm54xx_config_init($p0);
  // WARNING: %2 = call i32 @bcm54xx_config_init(%struct.phy_device* %0), !dbg !3812, !verifier.code !3811
  call {:cexpr "err"} boogie_si_record_i32($i1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3957, 16} true;
  assume {:verifier.code 0} true;
  $i2 := $p2i.ref.i64($p0);
  // WARNING: %3 = ptrtoint %struct.phy_device* %0 to i64, !dbg !3817, !verifier.code !3811
  call {:cexpr "__cil_tmp4"} boogie_si_record_i64($i2);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3958, 27} true;
  assume {:verifier.code 0} true;
  $i3 := $add.i64($i2, 792);
  // WARNING: %4 = add i64 %3, 792, !dbg !3821, !verifier.code !3811
  call {:cexpr "__cil_tmp5"} boogie_si_record_i64($i3);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3959, 18} true;
  assume {:verifier.code 0} true;
  $p4 := $i2p.i64.ref($i3);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3959, 16} true;
  assume {:verifier.code 0} true;
  $i5 := $load.i32($M.0, $p4);
  // WARNING: %6 = load i32, i32* %5, align 4, !dbg !3825, !verifier.code !3811
  call {:cexpr "__cil_tmp6"} boogie_si_record_i32($i5);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3960, 18} true;
  assume {:verifier.code 0} true;
  $i6 := $and.i32($i5, 2);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3960, 18} true;
  assume {:verifier.code 0} true;
  $i7 := $ne.i32($i6, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3960, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i7} true;
  goto $bb1, $bb2;
$bb1:
  assume ($i7 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3963, 11} true;
  assume {:verifier.code 0} true;
  call $i8 := bcm54xx_shadow_read($p0, 20);
  // WARNING: %10 = call i32 @bcm54xx_shadow_read(%struct.phy_device* %0, i16 zeroext 20), !dbg !3833, !verifier.code !3811
  call {:cexpr "reg"} boogie_si_record_i32($i8);
  // WARNING: call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !5039, metadata !3813), !dbg !5040, !verifier.code !3811
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3965, 22} true;
  assume {:verifier.code 0} true;
  $i9 := $or.i32($i8, 8);
  // WARNING: %11 = or i32 %10, 8, !dbg !3840, !verifier.code !3811
  call {:cexpr "__cil_tmp9"} boogie_si_record_i32($i9);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3966, 30} true;
  assume {:verifier.code 0} true;
  $i10 := $or.i32($i9, 1);
  // WARNING: %12 = or i32 %11, 1, !dbg !3843, !verifier.code !3811
  call {:cexpr "__cil_tmp10"} boogie_si_record_i32($i10);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3967, 19} true;
  assume {:verifier.code 0} true;
  $i11 := $trunc.i32.i16($i10);
  // WARNING: %13 = trunc i32 %12 to i16, !dbg !3846, !verifier.code !3811
  call {:cexpr "__cil_tmp11"} boogie_si_record_i16($i11);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3968, 5} true;
  assume {:verifier.code 0} true;
  call $i12 := bcm54xx_shadow_write($p0, 20, $i11);
  // WARNING: %14 = call i32 @bcm54xx_shadow_write(%struct.phy_device* %0, i16 zeroext 20, i16 zeroext %13), !dbg !3849, !verifier.code !3811
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3970, 19} true;
  assume {:verifier.code 0} true;
  $i13 := $trunc.i32.i16(3605);
  // WARNING: %15 = trunc i32 3605 to i16, !dbg !3850, !verifier.code !3811
  call {:cexpr "__cil_tmp12"} boogie_si_record_i16($i13);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3971, 11} true;
  assume {:verifier.code 0} true;
  call $i14 := bcm54xx_exp_read($p0, $i13);
  // WARNING: %16 = call i32 @bcm54xx_exp_read(%struct.phy_device* %0, i16 zeroext %15), !dbg !3853, !verifier.code !3811
  call {:cexpr "err"} boogie_si_record_i32($i14);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3973, 13} true;
  assume {:verifier.code 0} true;
  $i15 := $slt.i32($i14, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3973, 9} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i15} true;
  goto $bb3, $bb4;
$bb2:
  assume !(($i7 == 1));
  assume {:verifier.code 0} true;
  $i47 := $i1;
  goto $bb16;
$bb3:
  assume ($i15 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3974, 7} true;
  assume {:verifier.code 0} true;
  $i16 := $i14;
  goto $bb5;
$bb4:
  assume !(($i15 == 1));
  assume {:verifier.code 0} true;
  goto $bb6;
$bb5:
  assume {:verifier.code 0} true;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4039, 1} true;
  assume {:verifier.code 0} true;
  $r := $i16;
  $exn := false;
  return;
$bb6:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3979, 19} true;
  assume {:verifier.code 0} true;
  $i17 := $trunc.i32.i16(3605);
  // WARNING: %21 = trunc i32 3605 to i16, !dbg !3859, !verifier.code !3811
  call {:cexpr "__cil_tmp13"} boogie_si_record_i16($i17);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3980, 23} true;
  assume {:verifier.code 0} true;
  $i18 := $or.i32($i14, 2);
  // WARNING: %22 = or i32 %16, 2, !dbg !3863, !verifier.code !3811
  call {:cexpr "__cil_tmp14"} boogie_si_record_i32($i18);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3981, 31} true;
  assume {:verifier.code 0} true;
  $i19 := $or.i32($i18, 1);
  // WARNING: %23 = or i32 %22, 1, !dbg !3866, !verifier.code !3811
  call {:cexpr "__cil_tmp15"} boogie_si_record_i32($i19);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3982, 19} true;
  assume {:verifier.code 0} true;
  $i20 := $trunc.i32.i16($i19);
  // WARNING: %24 = trunc i32 %23 to i16, !dbg !3869, !verifier.code !3811
  call {:cexpr "__cil_tmp16"} boogie_si_record_i16($i20);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3983, 11} true;
  assume {:verifier.code 0} true;
  call $i21 := bcm54xx_exp_write($p0, $i17, $i20);
  // WARNING: %25 = call i32 @bcm54xx_exp_write(%struct.phy_device* %0, i16 zeroext %21, i16 zeroext %24), !dbg !3872, !verifier.code !3811
  call {:cexpr "err"} boogie_si_record_i32($i21);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3985, 13} true;
  assume {:verifier.code 0} true;
  $i22 := $slt.i32($i21, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3985, 9} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i22} true;
  goto $bb7, $bb8;
$bb7:
  assume ($i22 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3986, 7} true;
  assume {:verifier.code 0} true;
  $i16 := $i21;
  goto $bb5;
$bb8:
  assume !(($i22 == 1));
  assume {:verifier.code 0} true;
  goto $bb9;
$bb9:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3992, 19} true;
  assume {:verifier.code 0} true;
  $i23 := $trunc.i32.i16(3584);
  // WARNING: %30 = trunc i32 3584 to i16, !dbg !3878, !verifier.code !3811
  call {:cexpr "__cil_tmp17"} boogie_si_record_i16($i23);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3993, 11} true;
  assume {:verifier.code 0} true;
  call $i24 := bcm54xx_exp_read($p0, $i23);
  // WARNING: %31 = call i32 @bcm54xx_exp_read(%struct.phy_device* %0, i16 zeroext %30), !dbg !3882, !verifier.code !3811
  call {:cexpr "err"} boogie_si_record_i32($i24);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3995, 13} true;
  assume {:verifier.code 0} true;
  $i25 := $slt.i32($i24, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3995, 9} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i25} true;
  goto $bb10, $bb11;
$bb10:
  assume ($i25 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 3996, 7} true;
  assume {:verifier.code 0} true;
  $i16 := $i24;
  goto $bb5;
$bb11:
  assume !(($i25 == 1));
  assume {:verifier.code 0} true;
  goto $bb12;
$bb12:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4001, 19} true;
  assume {:verifier.code 0} true;
  $i26 := $trunc.i32.i16(3584);
  // WARNING: %36 = trunc i32 3584 to i16, !dbg !3888, !verifier.code !3811
  call {:cexpr "__cil_tmp18"} boogie_si_record_i16($i26);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4002, 23} true;
  assume {:verifier.code 0} true;
  $i27 := $and.i32($i24, $sub.i32(0, 2049));
  // WARNING: %37 = and i32 %31, -2049, !dbg !3892, !verifier.code !3811
  call {:cexpr "__cil_tmp19"} boogie_si_record_i32($i27);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4003, 19} true;
  assume {:verifier.code 0} true;
  $i28 := $trunc.i32.i16($i27);
  // WARNING: %38 = trunc i32 %37 to i16, !dbg !3895, !verifier.code !3811
  call {:cexpr "__cil_tmp20"} boogie_si_record_i16($i28);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4004, 11} true;
  assume {:verifier.code 0} true;
  call $i29 := bcm54xx_exp_write($p0, $i26, $i28);
  // WARNING: %39 = call i32 @bcm54xx_exp_write(%struct.phy_device* %0, i16 zeroext %36, i16 zeroext %38), !dbg !3898, !verifier.code !3811
  call {:cexpr "err"} boogie_si_record_i32($i29);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4006, 13} true;
  assume {:verifier.code 0} true;
  $i30 := $slt.i32($i29, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4006, 9} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i30} true;
  goto $bb13, $bb14;
$bb13:
  assume ($i30 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4007, 7} true;
  assume {:verifier.code 0} true;
  $i16 := $i29;
  goto $bb5;
$bb14:
  assume !(($i30 == 1));
  assume {:verifier.code 0} true;
  goto $bb15;
$bb15:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4013, 11} true;
  assume {:verifier.code 0} true;
  call $i31 := bcm54xx_shadow_read($p0, 31);
  // WARNING: %44 = call i32 @bcm54xx_shadow_read(%struct.phy_device* %0, i16 zeroext 31), !dbg !3906, !verifier.code !3811
  call {:cexpr "reg"} boogie_si_record_i32($i31);
  // WARNING: call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !5039, metadata !3813), !dbg !5040, !verifier.code !3811
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4015, 23} true;
  assume {:verifier.code 0} true;
  $i32 := $or.i32($i31, 1);
  // WARNING: %45 = or i32 %44, 1, !dbg !3910, !verifier.code !3811
  call {:cexpr "__cil_tmp23"} boogie_si_record_i32($i32);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4016, 19} true;
  assume {:verifier.code 0} true;
  $i33 := $trunc.i32.i16($i32);
  // WARNING: %46 = trunc i32 %45 to i16, !dbg !3913, !verifier.code !3811
  call {:cexpr "__cil_tmp24"} boogie_si_record_i16($i33);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4017, 5} true;
  assume {:verifier.code 0} true;
  call $i34 := bcm54xx_shadow_write($p0, 31, $i33);
  // WARNING: %47 = call i32 @bcm54xx_shadow_write(%struct.phy_device* %0, i16 zeroext 31, i16 zeroext %46), !dbg !3916, !verifier.code !3811
  // WARNING: call void @llvm.dbg.value(metadata i16 13, i64 0, metadata !5120, metadata !3813), !dbg !5121, !verifier.code !3811
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4020, 21} true;
  assume {:verifier.code 0} true;
  $i35 := $or.i32(3, 16);
  // WARNING: %48 = or i32 3, 16, !dbg !3921, !verifier.code !3811
  call {:cexpr "__cil_tmp27"} boogie_si_record_i32($i35);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4021, 19} true;
  assume {:verifier.code 0} true;
  $i36 := $trunc.i32.i16($i35);
  // WARNING: %49 = trunc i32 %48 to i16, !dbg !3924, !verifier.code !3811
  call {:cexpr "__cil_tmp28"} boogie_si_record_i16($i36);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4022, 5} true;
  assume {:verifier.code 0} true;
  call $i37 := bcm54xx_shadow_write($p0, 13, $i36);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4023, 19} true;
  assume {:verifier.code 0} true;
  $i38 := $p2i.ref.i64($p0);
  // WARNING: %51 = ptrtoint %struct.phy_device* %0 to i64, !dbg !3928, !verifier.code !3811
  call {:cexpr "__cil_tmp29"} boogie_si_record_i64($i38);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4024, 31} true;
  assume {:verifier.code 0} true;
  $i39 := $add.i64($i38, 836);
  // WARNING: %52 = add i64 %51, 836, !dbg !3931, !verifier.code !3811
  call {:cexpr "__cil_tmp30"} boogie_si_record_i64($i39);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4025, 7} true;
  assume {:verifier.code 0} true;
  $p40 := $i2p.i64.ref($i39);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4025, 27} true;
  assume {:verifier.code 0} true;
  $M.0 := $store.i32($M.0, $p40, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4026, 19} true;
  assume {:verifier.code 0} true;
  $i41 := $p2i.ref.i64($p0);
  // WARNING: %54 = ptrtoint %struct.phy_device* %0 to i64, !dbg !3936, !verifier.code !3811
  call {:cexpr "__cil_tmp31"} boogie_si_record_i64($i41);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4027, 31} true;
  assume {:verifier.code 0} true;
  $i42 := $add.i64($i41, 804);
  // WARNING: %55 = add i64 %54, 804, !dbg !3939, !verifier.code !3811
  call {:cexpr "__cil_tmp32"} boogie_si_record_i64($i42);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4028, 7} true;
  assume {:verifier.code 0} true;
  $p43 := $i2p.i64.ref($i42);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4028, 27} true;
  assume {:verifier.code 0} true;
  $M.0 := $store.i32($M.0, $p43, 1000);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4029, 19} true;
  assume {:verifier.code 0} true;
  $i44 := $p2i.ref.i64($p0);
  // WARNING: %57 = ptrtoint %struct.phy_device* %0 to i64, !dbg !3944, !verifier.code !3811
  call {:cexpr "__cil_tmp33"} boogie_si_record_i64($i44);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4030, 31} true;
  assume {:verifier.code 0} true;
  $i45 := $add.i64($i44, 808);
  // WARNING: %58 = add i64 %57, 808, !dbg !3947, !verifier.code !3811
  call {:cexpr "__cil_tmp34"} boogie_si_record_i64($i45);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4031, 7} true;
  assume {:verifier.code 0} true;
  $p46 := $i2p.i64.ref($i45);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4031, 27} true;
  assume {:verifier.code 0} true;
  $M.0 := $store.i32($M.0, $p46, 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4033, 3} true;
  assume {:verifier.code 0} true;
  $i47 := $i29;
  goto $bb16;
$bb16:
  assume {:verifier.code 0} true;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4037, 3} true;
  assume {:verifier.code 0} true;
  $i16 := $i47;
  goto $bb5;
}
const bcm5482_read_status: ref;
axiom (bcm5482_read_status == $sub.ref(0, 57579));
procedure bcm5482_read_status($p0: ref)
  returns ($r: i32)
{
  var $i1: i32;
  var $i2: i64;
  var $i3: i64;
  var $p4: ref;
  var $i5: i32;
  var $i6: i32;
  var $i7: i1;
  var $i8: i64;
  var $i9: i64;
  var $p10: ref;
  var $i11: i32;
  var $i12: i1;
  var $i13: i64;
  var $i14: i64;
  var $p15: ref;
  var $i16: i64;
  var $i17: i64;
  var $p18: ref;
$bb0:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4054, 9} true;
  assume {:verifier.code 0} true;
  call $i1 := genphy_read_status($p0);
  // WARNING: %2 = call i32 @genphy_read_status(%struct.phy_device* %0), !dbg !3812, !verifier.code !3811
  call {:cexpr "err"} boogie_si_record_i32($i1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4057, 16} true;
  assume {:verifier.code 0} true;
  $i2 := $p2i.ref.i64($p0);
  // WARNING: %3 = ptrtoint %struct.phy_device* %0 to i64, !dbg !3817, !verifier.code !3811
  call {:cexpr "__cil_tmp3"} boogie_si_record_i64($i2);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4058, 27} true;
  assume {:verifier.code 0} true;
  $i3 := $add.i64($i2, 792);
  // WARNING: %4 = add i64 %3, 792, !dbg !3821, !verifier.code !3811
  call {:cexpr "__cil_tmp4"} boogie_si_record_i64($i3);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4059, 18} true;
  assume {:verifier.code 0} true;
  $p4 := $i2p.i64.ref($i3);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4059, 16} true;
  assume {:verifier.code 0} true;
  $i5 := $load.i32($M.0, $p4);
  // WARNING: %6 = load i32, i32* %5, align 4, !dbg !3825, !verifier.code !3811
  call {:cexpr "__cil_tmp5"} boogie_si_record_i32($i5);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4060, 18} true;
  assume {:verifier.code 0} true;
  $i6 := $and.i32($i5, 2);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4060, 18} true;
  assume {:verifier.code 0} true;
  $i7 := $ne.i32($i6, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4060, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i7} true;
  goto $bb1, $bb2;
$bb1:
  assume ($i7 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4062, 18} true;
  assume {:verifier.code 0} true;
  $i8 := $p2i.ref.i64($p0);
  // WARNING: %10 = ptrtoint %struct.phy_device* %0 to i64, !dbg !3831, !verifier.code !3811
  call {:cexpr "__cil_tmp6"} boogie_si_record_i64($i8);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4063, 29} true;
  assume {:verifier.code 0} true;
  $i9 := $add.i64($i8, 820);
  // WARNING: %11 = add i64 %10, 820, !dbg !3836, !verifier.code !3811
  call {:cexpr "__cil_tmp7"} boogie_si_record_i64($i9);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4064, 11} true;
  assume {:verifier.code 0} true;
  $p10 := $i2p.i64.ref($i9);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4064, 9} true;
  assume {:verifier.code 0} true;
  $i11 := $load.i32($M.0, $p10);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4064, 9} true;
  assume {:verifier.code 0} true;
  $i12 := $ne.i32($i11, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4064, 9} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i12} true;
  goto $bb3, $bb4;
$bb2:
  assume !(($i7 == 1));
  assume {:verifier.code 0} true;
  goto $bb6;
$bb3:
  assume ($i12 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4065, 20} true;
  assume {:verifier.code 0} true;
  $i13 := $p2i.ref.i64($p0);
  // WARNING: %16 = ptrtoint %struct.phy_device* %0 to i64, !dbg !3843, !verifier.code !3811
  call {:cexpr "__cil_tmp8"} boogie_si_record_i64($i13);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4066, 31} true;
  assume {:verifier.code 0} true;
  $i14 := $add.i64($i13, 804);
  // WARNING: %17 = add i64 %16, 804, !dbg !3847, !verifier.code !3811
  call {:cexpr "__cil_tmp9"} boogie_si_record_i64($i14);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4067, 9} true;
  assume {:verifier.code 0} true;
  $p15 := $i2p.i64.ref($i14);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4067, 28} true;
  assume {:verifier.code 0} true;
  $M.0 := $store.i32($M.0, $p15, 1000);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4068, 21} true;
  assume {:verifier.code 0} true;
  $i16 := $p2i.ref.i64($p0);
  // WARNING: %19 = ptrtoint %struct.phy_device* %0 to i64, !dbg !3852, !verifier.code !3811
  call {:cexpr "__cil_tmp10"} boogie_si_record_i64($i16);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4069, 33} true;
  assume {:verifier.code 0} true;
  $i17 := $add.i64($i16, 808);
  // WARNING: %20 = add i64 %19, 808, !dbg !3855, !verifier.code !3811
  call {:cexpr "__cil_tmp11"} boogie_si_record_i64($i17);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4070, 9} true;
  assume {:verifier.code 0} true;
  $p18 := $i2p.i64.ref($i17);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4070, 29} true;
  assume {:verifier.code 0} true;
  $M.0 := $store.i32($M.0, $p18, 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4071, 5} true;
  assume {:verifier.code 0} true;
  goto $bb5;
$bb4:
  assume !(($i12 == 1));
  assume {:verifier.code 0} true;
  goto $bb5;
$bb5:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4075, 3} true;
  assume {:verifier.code 0} true;
  goto $bb6;
$bb6:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4079, 3} true;
  assume {:verifier.code 0} true;
  $r := $i1;
  $exn := false;
  return;
}
const brcm_fet_config_init: ref;
axiom (brcm_fet_config_init == $sub.ref(0, 58611));
procedure brcm_fet_config_init($p0: ref)
  returns ($r: i32)
{
  var $i1: i32;
  var $i2: i1;
  var $i4: i32;
  var $i5: i1;
  var $i6: i16;
  var $i7: i32;
  var $i8: i1;
  var $i9: i32;
  var $i10: i1;
  var $i11: i32;
  var $i12: i16;
  var $i13: i32;
  var $i14: i1;
  var $i15: i32;
  var $i16: i1;
  var $i18: i32;
  var $i19: i32;
  var $i20: i16;
  var $i21: i32;
  var $i22: i1;
  var $i23: i32;
  var $i24: i1;
  var $i25: i64;
  var $i26: i64;
  var $p27: ref;
  var $i28: i32;
  var $i29: i32;
  var $i30: i1;
  var $i31: i32;
  var $i32: i32;
  var $i17: i32;
  var $i33: i16;
  var $i34: i32;
  var $i35: i1;
  var $i36: i32;
  var $i3: i32;
$bb0:
  // WARNING: call void @llvm.dbg.value(metadata %struct.phy_device* %0, i64 0, metadata !5213, metadata !3813), !dbg !5214, !verifier.code !3811
  // WARNING: call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !5215, metadata !3813), !dbg !5216, !verifier.code !3811
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4247, 9} true;
  assume {:verifier.code 0} true;
  call $i1 := phy_write($p0, 0, $sub.i16(0, 32768));
  // WARNING: %2 = call i32 @phy_write(%struct.phy_device* %0, i32 0, i16 zeroext -32768), !dbg !3816, !verifier.code !3811
  call {:cexpr "err"} boogie_si_record_i32($i1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4249, 11} true;
  assume {:verifier.code 0} true;
  $i2 := $slt.i32($i1, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4249, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i2} true;
  goto $bb1, $bb2;
$bb1:
  assume ($i2 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4250, 5} true;
  assume {:verifier.code 0} true;
  $i3 := $i1;
  goto $bb3;
$bb2:
  assume !(($i2 == 1));
  assume {:verifier.code 0} true;
  goto $bb4;
$bb3:
  assume {:verifier.code 0} true;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4349, 1} true;
  assume {:verifier.code 0} true;
  $r := $i3;
  $exn := false;
  return;
$bb4:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4256, 9} true;
  assume {:verifier.code 0} true;
  call $i4 := phy_read($p0, 26);
  // WARNING: %7 = call i32 @phy_read(%struct.phy_device* %0, i32 26), !dbg !3828, !verifier.code !3811
  call {:cexpr "reg"} boogie_si_record_i32($i4);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4258, 11} true;
  assume {:verifier.code 0} true;
  $i5 := $slt.i32($i4, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4258, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i5} true;
  goto $bb5, $bb6;
$bb5:
  assume ($i5 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4259, 5} true;
  assume {:verifier.code 0} true;
  $i3 := $i4;
  goto $bb3;
$bb6:
  assume !(($i5 == 1));
  assume {:verifier.code 0} true;
  goto $bb7;
$bb7:
  // WARNING: call void @llvm.dbg.value(metadata i32 20224, i64 0, metadata !5233, metadata !3813), !dbg !5234, !verifier.code !3811
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4266, 17} true;
  assume {:verifier.code 0} true;
  $i6 := $trunc.i32.i16(20224);
  // WARNING: %12 = trunc i32 20224 to i16, !dbg !3839, !verifier.code !3811
  call {:cexpr "__cil_tmp10"} boogie_si_record_i16($i6);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4267, 9} true;
  assume {:verifier.code 0} true;
  call $i7 := phy_write($p0, 26, $i6);
  // WARNING: %13 = call i32 @phy_write(%struct.phy_device* %0, i32 26, i16 zeroext %12), !dbg !3843, !verifier.code !3811
  call {:cexpr "err"} boogie_si_record_i32($i7);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4269, 11} true;
  assume {:verifier.code 0} true;
  $i8 := $slt.i32($i7, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4269, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i8} true;
  goto $bb8, $bb9;
$bb8:
  assume ($i8 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4270, 5} true;
  assume {:verifier.code 0} true;
  $i3 := $i7;
  goto $bb3;
$bb9:
  assume !(($i8 == 1));
  assume {:verifier.code 0} true;
  goto $bb10;
$bb10:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4276, 14} true;
  assume {:verifier.code 0} true;
  call $i9 := phy_read($p0, 31);
  // WARNING: %18 = call i32 @phy_read(%struct.phy_device* %0, i32 31), !dbg !3851, !verifier.code !3811
  call {:cexpr "brcmtest"} boogie_si_record_i32($i9);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4278, 16} true;
  assume {:verifier.code 0} true;
  $i10 := $slt.i32($i9, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4278, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i10} true;
  goto $bb11, $bb12;
$bb11:
  assume ($i10 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4279, 5} true;
  assume {:verifier.code 0} true;
  $i3 := $i9;
  goto $bb3;
$bb12:
  assume !(($i10 == 1));
  assume {:verifier.code 0} true;
  goto $bb13;
$bb13:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4284, 18} true;
  assume {:verifier.code 0} true;
  $i11 := $or.i32($i9, 128);
  // WARNING: %23 = or i32 %18, 128, !dbg !3860, !verifier.code !3811
  call {:cexpr "reg"} boogie_si_record_i32($i11);
  // WARNING: call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !5233, metadata !3813), !dbg !5234, !verifier.code !3811
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4286, 17} true;
  assume {:verifier.code 0} true;
  $i12 := $trunc.i32.i16($i11);
  // WARNING: %24 = trunc i32 %23 to i16, !dbg !3864, !verifier.code !3811
  call {:cexpr "__cil_tmp13"} boogie_si_record_i16($i12);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4287, 9} true;
  assume {:verifier.code 0} true;
  call $i13 := phy_write($p0, 31, $i12);
  // WARNING: %25 = call i32 @phy_write(%struct.phy_device* %0, i32 31, i16 zeroext %24), !dbg !3867, !verifier.code !3811
  call {:cexpr "err"} boogie_si_record_i32($i13);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4289, 11} true;
  assume {:verifier.code 0} true;
  $i14 := $slt.i32($i13, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4289, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i14} true;
  goto $bb14, $bb15;
$bb14:
  assume ($i14 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4290, 5} true;
  assume {:verifier.code 0} true;
  $i3 := $i13;
  goto $bb3;
$bb15:
  assume !(($i14 == 1));
  assume {:verifier.code 0} true;
  goto $bb16;
$bb16:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4296, 9} true;
  assume {:verifier.code 0} true;
  call $i15 := phy_read($p0, 26);
  // WARNING: %30 = call i32 @phy_read(%struct.phy_device* %0, i32 26), !dbg !3875, !verifier.code !3811
  call {:cexpr "reg"} boogie_si_record_i32($i15);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4298, 11} true;
  assume {:verifier.code 0} true;
  $i16 := $slt.i32($i15, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4298, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i16} true;
  goto $bb17, $bb18;
$bb17:
  assume ($i16 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4300, 5} true;
  assume {:verifier.code 0} true;
  $i17 := $i15;
  goto $bb19;
$bb18:
  assume !(($i16 == 1));
  assume {:verifier.code 0} true;
  goto $bb20;
$bb19:
  assume {:verifier.code 0} true;
  // WARNING: %.1 = phi i32 [ %30, %32 ], [ %38, %40 ], [ %43, %45 ], [ %.01, %57 ], !verifier.code !3811
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4339, 17} true;
  assume {:verifier.code 0} true;
  $i33 := $trunc.i32.i16($i9);
  // WARNING: %59 = trunc i32 %18 to i16, !dbg !3924, !verifier.code !3811
  call {:cexpr "__cil_tmp21"} boogie_si_record_i16($i33);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4340, 10} true;
  assume {:verifier.code 0} true;
  call $i34 := phy_write($p0, 31, $i33);
  // WARNING: %60 = call i32 @phy_write(%struct.phy_device* %0, i32 31, i16 zeroext %59), !dbg !3928, !verifier.code !3811
  call {:cexpr "err2"} boogie_si_record_i32($i34);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4342, 9} true;
  assume {:verifier.code 0} true;
  $i35 := $ne.i32($i17, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4342, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i35} true;
  goto $bb30, $bb31;
$bb20:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4305, 13} true;
  assume {:verifier.code 0} true;
  $i18 := $and.i32($i15, $sub.i32(0, 4));
  // WARNING: %35 = and i32 %30, -4, !dbg !3882, !verifier.code !3811
  call {:cexpr "reg"} boogie_si_record_i32($i18);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4306, 13} true;
  assume {:verifier.code 0} true;
  $i19 := $or.i32($i18, 1);
  // WARNING: %36 = or i32 %35, 1, !dbg !3884, !verifier.code !3811
  call {:cexpr "reg"} boogie_si_record_i32($i19);
  // WARNING: call void @llvm.dbg.value(metadata i32 %36, i64 0, metadata !5233, metadata !3813), !dbg !5234, !verifier.code !3811
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4308, 17} true;
  assume {:verifier.code 0} true;
  $i20 := $trunc.i32.i16($i19);
  // WARNING: %37 = trunc i32 %36 to i16, !dbg !3887, !verifier.code !3811
  call {:cexpr "__cil_tmp16"} boogie_si_record_i16($i20);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4309, 9} true;
  assume {:verifier.code 0} true;
  call $i21 := phy_write($p0, 26, $i20);
  // WARNING: %38 = call i32 @phy_write(%struct.phy_device* %0, i32 26, i16 zeroext %37), !dbg !3890, !verifier.code !3811
  call {:cexpr "err"} boogie_si_record_i32($i21);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4311, 11} true;
  assume {:verifier.code 0} true;
  $i22 := $slt.i32($i21, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4311, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i22} true;
  goto $bb21, $bb22;
$bb21:
  assume ($i22 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4312, 5} true;
  assume {:verifier.code 0} true;
  $i17 := $i21;
  goto $bb19;
$bb22:
  assume !(($i22 == 1));
  assume {:verifier.code 0} true;
  goto $bb23;
$bb23:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4317, 9} true;
  assume {:verifier.code 0} true;
  call $i23 := brcm_phy_setbits($p0, 16, 16384);
  // WARNING: %43 = call i32 @brcm_phy_setbits(%struct.phy_device* %0, i32 16, i32 16384), !dbg !3896, !verifier.code !3811
  call {:cexpr "err"} boogie_si_record_i32($i23);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4319, 11} true;
  assume {:verifier.code 0} true;
  $i24 := $slt.i32($i23, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4319, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i24} true;
  goto $bb24, $bb25;
$bb24:
  assume ($i24 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4320, 5} true;
  assume {:verifier.code 0} true;
  $i17 := $i23;
  goto $bb19;
$bb25:
  assume !(($i24 == 1));
  assume {:verifier.code 0} true;
  goto $bb26;
$bb26:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4325, 17} true;
  assume {:verifier.code 0} true;
  $i25 := $p2i.ref.i64($p0);
  // WARNING: %48 = ptrtoint %struct.phy_device* %0 to i64, !dbg !3903, !verifier.code !3811
  call {:cexpr "__cil_tmp17"} boogie_si_record_i64($i25);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4326, 29} true;
  assume {:verifier.code 0} true;
  $i26 := $add.i64($i25, 792);
  // WARNING: %49 = add i64 %48, 792, !dbg !3907, !verifier.code !3811
  call {:cexpr "__cil_tmp18"} boogie_si_record_i64($i26);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4327, 19} true;
  assume {:verifier.code 0} true;
  $p27 := $i2p.i64.ref($i26);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4327, 17} true;
  assume {:verifier.code 0} true;
  $i28 := $load.i32($M.0, $p27);
  // WARNING: %51 = load i32, i32* %50, align 4, !dbg !3911, !verifier.code !3811
  call {:cexpr "__cil_tmp19"} boogie_si_record_i32($i28);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4328, 19} true;
  assume {:verifier.code 0} true;
  $i29 := $and.i32($i28, 512);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4328, 19} true;
  assume {:verifier.code 0} true;
  $i30 := $ne.i32($i29, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4328, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i30} true;
  goto $bb27, $bb28;
$bb27:
  assume ($i30 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4330, 11} true;
  assume {:verifier.code 0} true;
  call $i31 := brcm_phy_setbits($p0, 27, 32);
  // WARNING: %55 = call i32 @brcm_phy_setbits(%struct.phy_device* %0, i32 27, i32 32), !dbg !3917, !verifier.code !3811
  call {:cexpr "err"} boogie_si_record_i32($i31);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4332, 3} true;
  assume {:verifier.code 0} true;
  $i32 := $i31;
  goto $bb29;
$bb28:
  assume !(($i30 == 1));
  assume {:verifier.code 0} true;
  $i32 := $i23;
  goto $bb29;
$bb29:
  assume {:verifier.code 0} true;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4335, 3} true;
  assume {:verifier.code 0} true;
  $i17 := $i32;
  goto $bb19;
$bb30:
  assume ($i35 == 1);
  assume {:verifier.code 0} true;
  $i36 := $i17;
  goto $bb32;
$bb31:
  assume !(($i35 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4344, 3} true;
  assume {:verifier.code 0} true;
  $i36 := $i34;
  goto $bb32;
$bb32:
  assume {:verifier.code 0} true;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4347, 3} true;
  assume {:verifier.code 0} true;
  $i3 := $i36;
  goto $bb3;
}
const brcm_fet_ack_interrupt: ref;
axiom (brcm_fet_ack_interrupt == $sub.ref(0, 59643));
procedure brcm_fet_ack_interrupt($p0: ref)
  returns ($r: i32)
{
  var $i1: i32;
  var $i2: i1;
  var $i3: i32;
$bb0:
  // WARNING: call void @llvm.dbg.value(metadata %struct.phy_device* %0, i64 0, metadata !5342, metadata !3813), !dbg !5343, !verifier.code !3811
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4357, 9} true;
  assume {:verifier.code 0} true;
  call $i1 := phy_read($p0, 26);
  // WARNING: %2 = call i32 @phy_read(%struct.phy_device* %0, i32 26), !dbg !3814, !verifier.code !3811
  call {:cexpr "reg"} boogie_si_record_i32($i1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4359, 11} true;
  assume {:verifier.code 0} true;
  $i2 := $slt.i32($i1, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4359, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i2} true;
  goto $bb1, $bb2;
$bb1:
  assume ($i2 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4360, 5} true;
  assume {:verifier.code 0} true;
  $i3 := $i1;
  goto $bb3;
$bb2:
  assume !(($i2 == 1));
  assume {:verifier.code 0} true;
  goto $bb4;
$bb3:
  assume {:verifier.code 0} true;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4366, 1} true;
  assume {:verifier.code 0} true;
  $r := $i3;
  $exn := false;
  return;
$bb4:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4364, 3} true;
  assume {:verifier.code 0} true;
  $i3 := 0;
  goto $bb3;
}
const brcm_fet_config_intr: ref;
axiom (brcm_fet_config_intr == $sub.ref(0, 60675));
procedure brcm_fet_config_intr($p0: ref)
  returns ($r: i32)
{
  var $i1: i32;
  var $i2: i1;
  var $i4: i64;
  var $i5: i64;
  var $p6: ref;
  var $i7: i32;
  var $i8: i1;
  var $i9: i32;
  var $i11: i32;
  var $i10: i32;
  var $i12: i16;
  var $i13: i32;
  var $i3: i32;
$bb0:
  // WARNING: call void @llvm.dbg.value(metadata %struct.phy_device* %0, i64 0, metadata !5359, metadata !3813), !dbg !5360, !verifier.code !3811
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4380, 9} true;
  assume {:verifier.code 0} true;
  call $i1 := phy_read($p0, 26);
  // WARNING: %2 = call i32 @phy_read(%struct.phy_device* %0, i32 26), !dbg !3814, !verifier.code !3811
  call {:cexpr "reg"} boogie_si_record_i32($i1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4382, 11} true;
  assume {:verifier.code 0} true;
  $i2 := $slt.i32($i1, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4382, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i2} true;
  goto $bb1, $bb2;
$bb1:
  assume ($i2 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4383, 5} true;
  assume {:verifier.code 0} true;
  $i3 := $i1;
  goto $bb3;
$bb2:
  assume !(($i2 == 1));
  assume {:verifier.code 0} true;
  goto $bb4;
$bb3:
  assume {:verifier.code 0} true;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4404, 1} true;
  assume {:verifier.code 0} true;
  $r := $i3;
  $exn := false;
  return;
$bb4:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4388, 16} true;
  assume {:verifier.code 0} true;
  $i4 := $p2i.ref.i64($p0);
  // WARNING: %7 = ptrtoint %struct.phy_device* %0 to i64, !dbg !3824, !verifier.code !3811
  call {:cexpr "__cil_tmp5"} boogie_si_record_i64($i4);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4389, 27} true;
  assume {:verifier.code 0} true;
  $i5 := $add.i64($i4, 824);
  // WARNING: %8 = add i64 %7, 824, !dbg !3828, !verifier.code !3811
  call {:cexpr "__cil_tmp6"} boogie_si_record_i64($i5);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4390, 18} true;
  assume {:verifier.code 0} true;
  $p6 := $i2p.i64.ref($i5);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4390, 16} true;
  assume {:verifier.code 0} true;
  $i7 := $load.i32($M.0, $p6);
  // WARNING: %10 = load i32, i32* %9, align 4, !dbg !3832, !verifier.code !3811
  call {:cexpr "__cil_tmp7"} boogie_si_record_i32($i7);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4391, 18} true;
  assume {:verifier.code 0} true;
  $i8 := $eq.i32($i7, $sub.i32(0, 2147483648));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4391, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i8} true;
  goto $bb5, $bb6;
$bb5:
  assume ($i8 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4392, 15} true;
  assume {:verifier.code 0} true;
  $i9 := $and.i32($i1, $sub.i32(0, 257));
  // WARNING: %13 = and i32 %2, -257, !dbg !3838, !verifier.code !3811
  call {:cexpr "reg"} boogie_si_record_i32($i9);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4393, 3} true;
  assume {:verifier.code 0} true;
  $i10 := $i9;
  goto $bb7;
$bb6:
  assume !(($i8 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4394, 15} true;
  assume {:verifier.code 0} true;
  $i11 := $or.i32($i1, 256);
  // WARNING: %15 = or i32 %2, 256, !dbg !3841, !verifier.code !3811
  call {:cexpr "reg"} boogie_si_record_i32($i11);
  assume {:verifier.code 0} true;
  $i10 := $i11;
  goto $bb7;
$bb7:
  assume {:verifier.code 0} true;
  // WARNING: %.01 = phi i32 [ %13, %12 ], [ %15, %14 ], !verifier.code !3811
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4399, 16} true;
  assume {:verifier.code 0} true;
  $i12 := $trunc.i32.i16($i10);
  // WARNING: %17 = trunc i32 %.01 to i16, !dbg !3845, !verifier.code !3811
  call {:cexpr "__cil_tmp9"} boogie_si_record_i16($i12);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4400, 9} true;
  assume {:verifier.code 0} true;
  call $i13 := phy_write($p0, 26, $i12);
  // WARNING: %18 = call i32 @phy_write(%struct.phy_device* %0, i32 26, i16 zeroext %17), !dbg !3849, !verifier.code !3811
  call {:cexpr "err"} boogie_si_record_i32($i13);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4402, 3} true;
  assume {:verifier.code 0} true;
  $i3 := $i13;
  goto $bb3;
}
const brcm_phy_setbits: ref;
axiom (brcm_phy_setbits == $sub.ref(0, 61707));
procedure brcm_phy_setbits($p0: ref, $i1: i32, $i2: i32)
  returns ($r: i32)
{
  var $i3: i32;
  var $i4: i1;
  var $i6: i32;
  var $i7: i16;
  var $i8: i32;
  var $i5: i32;
$bb0:
  // WARNING: call void @llvm.dbg.value(metadata %struct.phy_device* %0, i64 0, metadata !5406, metadata !3813), !dbg !5407, !verifier.code !3811
  // WARNING: call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !5408, metadata !3813), !dbg !5409, !verifier.code !3811
  // WARNING: call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !5410, metadata !3813), !dbg !5411, !verifier.code !3811
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4205, 9} true;
  assume {:verifier.code 0} true;
  call $i3 := phy_read($p0, $i1);
  // WARNING: %4 = call i32 @phy_read(%struct.phy_device* %0, i32 %1), !dbg !3820, !verifier.code !3813
  call {:cexpr "val"} boogie_si_record_i32($i3);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4207, 11} true;
  assume {:verifier.code 0} true;
  $i4 := $slt.i32($i3, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4207, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i4} true;
  goto $bb1, $bb2;
$bb1:
  assume ($i4 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4208, 5} true;
  assume {:verifier.code 0} true;
  $i5 := $i3;
  goto $bb3;
$bb2:
  assume !(($i4 == 1));
  assume {:verifier.code 0} true;
  goto $bb4;
$bb3:
  assume {:verifier.code 0} true;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4220, 1} true;
  assume {:verifier.code 0} true;
  $r := $i5;
  $exn := false;
  return;
$bb4:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4214, 20} true;
  assume {:verifier.code 0} true;
  $i6 := $or.i32($i3, $i2);
  // WARNING: %9 = or i32 %4, %2, !dbg !3832, !verifier.code !3813
  call {:cexpr "__cil_tmp8"} boogie_si_record_i32($i6);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4215, 16} true;
  assume {:verifier.code 0} true;
  $i7 := $trunc.i32.i16($i6);
  // WARNING: %10 = trunc i32 %9 to i16, !dbg !3836, !verifier.code !3813
  call {:cexpr "__cil_tmp9"} boogie_si_record_i16($i7);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4216, 13} true;
  assume {:verifier.code 0} true;
  call $i8 := phy_write($p0, $i1, $i7);
  // WARNING: %11 = call i32 @phy_write(%struct.phy_device* %0, i32 %1, i16 zeroext %10), !dbg !3839, !verifier.code !3813
  call {:cexpr "tmp___7"} boogie_si_record_i32($i8);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4218, 3} true;
  assume {:verifier.code 0} true;
  $i5 := $i8;
  goto $bb3;
}
const broadcom_exit: ref;
axiom (broadcom_exit == $sub.ref(0, 62739));
procedure broadcom_exit()
{
$bb0:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4813, 3} true;
  assume {:verifier.code 0} true;
  call phy_driver_unregister(bcm5241_driver);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4814, 3} true;
  assume {:verifier.code 0} true;
  call phy_driver_unregister(bcmac131_driver);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4815, 3} true;
  assume {:verifier.code 0} true;
  call phy_driver_unregister(bcm57780_driver);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4816, 3} true;
  assume {:verifier.code 0} true;
  call phy_driver_unregister(bcm50610m_driver);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4817, 3} true;
  assume {:verifier.code 0} true;
  call phy_driver_unregister(bcm50610_driver);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4818, 3} true;
  assume {:verifier.code 0} true;
  call phy_driver_unregister(bcm5482_driver);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4819, 3} true;
  assume {:verifier.code 0} true;
  call phy_driver_unregister(bcm5481_driver);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4820, 3} true;
  assume {:verifier.code 0} true;
  call phy_driver_unregister(bcm5464_driver);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4821, 3} true;
  assume {:verifier.code 0} true;
  call phy_driver_unregister(bcm5461_driver);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4822, 3} true;
  assume {:verifier.code 0} true;
  call phy_driver_unregister(bcm5421_driver);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4823, 3} true;
  assume {:verifier.code 0} true;
  call phy_driver_unregister(bcm5411_driver);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4825, 3} true;
  assume {:verifier.code 0} true;
  $exn := false;
  return;
}
const main: ref;
axiom (main == $sub.ref(0, 63771));
procedure main()
{
  var $i0: i32;
  var $i1: i1;
  var $i2: i32;
  var $i3: i1;
  var $i4: i32;
  var $i5: i1;
  var $i6: i1;
  var $i7: i1;
  var $i8: i1;
  var $i9: i1;
  var $i10: i1;
  var $i11: i1;
  var $i12: i1;
  var $i13: i1;
  var $i14: i1;
  var $i15: i1;
  var $i16: i1;
  var $i17: i1;
  var $i18: i1;
  var $i19: i1;
  var $i20: i1;
  var $i21: i1;
  var $i22: i1;
  var $i23: i1;
  var $i24: i1;
  var $i25: i1;
  var $i26: i1;
  var $i27: i1;
  var $i28: i1;
  var $i29: i1;
  var $i30: i1;
  var $i31: i1;
  var $i32: i1;
  var $i33: i1;
  var $i34: i1;
  var $i35: i1;
  var $i36: i1;
  var $i37: i1;
  var $i38: i1;
  var $i39: i1;
  var $i40: i32;
  var $i41: i32;
  var $i42: i32;
  var $i43: i32;
  var $i44: i32;
  var $i45: i32;
  var $i46: i32;
  var $i47: i32;
  var $i48: i32;
  var $i49: i32;
  var $i50: i32;
  var $i51: i32;
  var $i52: i32;
  var $i53: i32;
  var $i54: i32;
  var $i55: i32;
  var $i56: i32;
  var $i57: i32;
  var $i58: i32;
  var $i59: i32;
  var $i60: i32;
  var $i61: i32;
  var $i62: i32;
  var $i63: i32;
  var $i64: i32;
  var $i65: i32;
  var $i66: i32;
  var $i67: i32;
  var $i68: i32;
  var $i69: i32;
  var $i70: i32;
  var $i71: i32;
  var $i72: i32;
  var $i73: i32;
  var $i74: i32;
$bb0:
  call $initialize();
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4874, 20} true;
  assume {:verifier.code 0} true;
  call {:cexpr "smack:entry:main"} boogie_si_record_ref(main);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4874, 20} true;
  assume {:verifier.code 0} true;
  $M.1 := 1;
  call {:cexpr "LDV_IN_INTERRUPT"} boogie_si_record_i32(1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4875, 3} true;
  assume {:verifier.code 0} true;
  call ldv_initialize();
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4876, 13} true;
  assume {:verifier.code 0} true;
  call $i0 := broadcom_init();
  // WARNING: %1 = call i32 @broadcom_init(), !dbg !3813, !verifier.code !3811
  call {:cexpr "tmp___7"} boogie_si_record_i32($i0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4878, 7} true;
  assume {:verifier.code 0} true;
  $i1 := $ne.i32($i0, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4878, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i1} true;
  goto $bb1, $bb2;
$bb1:
  assume ($i1 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4879, 5} true;
  assume {:verifier.code 0} true;
  goto $bb3;
$bb2:
  assume !(($i1 == 1));
  assume {:verifier.code 0} true;
  goto $bb4;
$bb3:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5195, 3} true;
  assume {:verifier.code 0} true;
  call ldv_check_final_state();
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5197, 3} true;
  assume {:verifier.code 0} true;
  $exn := false;
  return;
$bb4:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4884, 3} true;
  assume {:verifier.code 0} true;
  goto $bb5;
$bb5:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4884, 13} true;
  assume {:verifier.code 0} true;
  goto $bb6;
$bb6:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4887, 15} true;
  assume {:verifier.code 1} true;
  call $i2 := __VERIFIER_nondet_int();
  call {:cexpr "smack:ext:__VERIFIER_nondet_int"} boogie_si_record_i32($i2);
  // WARNING: %8 = call i32 @__VERIFIER_nondet_int(), !dbg !3826, !verifier.code !3829
  call {:cexpr "tmp___9"} boogie_si_record_i32($i2);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4889, 9} true;
  assume {:verifier.code 0} true;
  $i3 := $ne.i32($i2, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4889, 9} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i3} true;
  goto $bb7, $bb8;
$bb7:
  assume ($i3 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4891, 5} true;
  assume {:verifier.code 0} true;
  goto $bb9;
$bb8:
  assume !(($i3 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4892, 7} true;
  assume {:verifier.code 0} true;
  goto $bb10;
$bb9:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4895, 15} true;
  assume {:verifier.code 1} true;
  call $i4 := __VERIFIER_nondet_int();
  call {:cexpr "smack:ext:__VERIFIER_nondet_int"} boogie_si_record_i32($i4);
  // WARNING: %13 = call i32 @__VERIFIER_nondet_int(), !dbg !3839, !verifier.code !3829
  call {:cexpr "tmp___8"} boogie_si_record_i32($i4);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4897, 17} true;
  assume {:verifier.code 0} true;
  $i5 := $eq.i32($i4, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4897, 9} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i5} true;
  goto $bb11, $bb12;
$bb10:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5191, 3} true;
  assume {:verifier.code 0} true;
  call broadcom_exit();
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5192, 3} true;
  assume {:verifier.code 0} true;
  goto $bb3;
$bb11:
  assume ($i5 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4898, 7} true;
  assume {:verifier.code 0} true;
  goto $bb13;
$bb12:
  assume !(($i5 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4900, 17} true;
  assume {:verifier.code 0} true;
  $i6 := $eq.i32($i4, 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4900, 9} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i6} true;
  goto $bb14, $bb15;
$bb13:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5007, 9} true;
  assume {:verifier.code 0} true;
  call $i40 := bcm54xx_config_init($u0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5009, 9} true;
  assume {:verifier.code 0} true;
  goto $bb120;
$bb14:
  assume ($i6 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4901, 7} true;
  assume {:verifier.code 0} true;
  goto $bb16;
$bb15:
  assume !(($i6 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4903, 17} true;
  assume {:verifier.code 0} true;
  $i7 := $eq.i32($i4, 2);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4903, 9} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i7} true;
  goto $bb17, $bb18;
$bb16:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5012, 9} true;
  assume {:verifier.code 0} true;
  call $i41 := bcm54xx_ack_interrupt($u0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5014, 9} true;
  assume {:verifier.code 0} true;
  goto $bb120;
$bb17:
  assume ($i7 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4904, 7} true;
  assume {:verifier.code 0} true;
  goto $bb19;
$bb18:
  assume !(($i7 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4906, 17} true;
  assume {:verifier.code 0} true;
  $i8 := $eq.i32($i4, 3);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4906, 9} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i8} true;
  goto $bb20, $bb21;
$bb19:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5017, 9} true;
  assume {:verifier.code 0} true;
  call $i42 := bcm54xx_config_intr($u0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5019, 9} true;
  assume {:verifier.code 0} true;
  goto $bb120;
$bb20:
  assume ($i8 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4907, 7} true;
  assume {:verifier.code 0} true;
  goto $bb22;
$bb21:
  assume !(($i8 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4909, 17} true;
  assume {:verifier.code 0} true;
  $i9 := $eq.i32($i4, 4);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4909, 9} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i9} true;
  goto $bb23, $bb24;
$bb22:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5022, 9} true;
  assume {:verifier.code 0} true;
  call $i43 := bcm54xx_config_init($u0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5024, 9} true;
  assume {:verifier.code 0} true;
  goto $bb120;
$bb23:
  assume ($i9 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4910, 7} true;
  assume {:verifier.code 0} true;
  goto $bb25;
$bb24:
  assume !(($i9 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4912, 17} true;
  assume {:verifier.code 0} true;
  $i10 := $eq.i32($i4, 5);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4912, 9} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i10} true;
  goto $bb26, $bb27;
$bb25:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5027, 9} true;
  assume {:verifier.code 0} true;
  call $i44 := bcm54xx_ack_interrupt($u0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5029, 9} true;
  assume {:verifier.code 0} true;
  goto $bb120;
$bb26:
  assume ($i10 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4913, 7} true;
  assume {:verifier.code 0} true;
  goto $bb28;
$bb27:
  assume !(($i10 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4915, 17} true;
  assume {:verifier.code 0} true;
  $i11 := $eq.i32($i4, 6);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4915, 9} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i11} true;
  goto $bb29, $bb30;
$bb28:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5032, 9} true;
  assume {:verifier.code 0} true;
  call $i45 := bcm54xx_config_intr($u0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5034, 9} true;
  assume {:verifier.code 0} true;
  goto $bb120;
$bb29:
  assume ($i11 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4916, 7} true;
  assume {:verifier.code 0} true;
  goto $bb31;
$bb30:
  assume !(($i11 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4918, 17} true;
  assume {:verifier.code 0} true;
  $i12 := $eq.i32($i4, 7);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4918, 9} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i12} true;
  goto $bb32, $bb33;
$bb31:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5037, 9} true;
  assume {:verifier.code 0} true;
  call $i46 := bcm54xx_config_init($u0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5039, 9} true;
  assume {:verifier.code 0} true;
  goto $bb120;
$bb32:
  assume ($i12 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4919, 7} true;
  assume {:verifier.code 0} true;
  goto $bb34;
$bb33:
  assume !(($i12 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4921, 17} true;
  assume {:verifier.code 0} true;
  $i13 := $eq.i32($i4, 8);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4921, 9} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i13} true;
  goto $bb35, $bb36;
$bb34:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5042, 9} true;
  assume {:verifier.code 0} true;
  call $i47 := bcm54xx_ack_interrupt($u0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5044, 9} true;
  assume {:verifier.code 0} true;
  goto $bb120;
$bb35:
  assume ($i13 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4922, 7} true;
  assume {:verifier.code 0} true;
  goto $bb37;
$bb36:
  assume !(($i13 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4924, 17} true;
  assume {:verifier.code 0} true;
  $i14 := $eq.i32($i4, 9);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4924, 9} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i14} true;
  goto $bb38, $bb39;
$bb37:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5047, 9} true;
  assume {:verifier.code 0} true;
  call $i48 := bcm54xx_config_intr($u0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5049, 9} true;
  assume {:verifier.code 0} true;
  goto $bb120;
$bb38:
  assume ($i14 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4925, 7} true;
  assume {:verifier.code 0} true;
  goto $bb40;
$bb39:
  assume !(($i14 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4927, 17} true;
  assume {:verifier.code 0} true;
  $i15 := $eq.i32($i4, 10);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4927, 9} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i15} true;
  goto $bb41, $bb42;
$bb40:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5052, 9} true;
  assume {:verifier.code 0} true;
  call $i49 := bcm54xx_config_init($u0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5054, 9} true;
  assume {:verifier.code 0} true;
  goto $bb120;
$bb41:
  assume ($i15 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4928, 7} true;
  assume {:verifier.code 0} true;
  goto $bb43;
$bb42:
  assume !(($i15 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4930, 17} true;
  assume {:verifier.code 0} true;
  $i16 := $eq.i32($i4, 11);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4930, 9} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i16} true;
  goto $bb44, $bb45;
$bb43:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5057, 9} true;
  assume {:verifier.code 0} true;
  call $i50 := bcm54xx_ack_interrupt($u0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5059, 9} true;
  assume {:verifier.code 0} true;
  goto $bb120;
$bb44:
  assume ($i16 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4931, 7} true;
  assume {:verifier.code 0} true;
  goto $bb46;
$bb45:
  assume !(($i16 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4933, 17} true;
  assume {:verifier.code 0} true;
  $i17 := $eq.i32($i4, 12);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4933, 9} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i17} true;
  goto $bb47, $bb48;
$bb46:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5062, 9} true;
  assume {:verifier.code 0} true;
  call $i51 := bcm54xx_config_intr($u0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5064, 9} true;
  assume {:verifier.code 0} true;
  goto $bb120;
$bb47:
  assume ($i17 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4934, 7} true;
  assume {:verifier.code 0} true;
  goto $bb49;
$bb48:
  assume !(($i17 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4936, 17} true;
  assume {:verifier.code 0} true;
  $i18 := $eq.i32($i4, 13);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4936, 9} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i18} true;
  goto $bb50, $bb51;
$bb49:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5067, 9} true;
  assume {:verifier.code 0} true;
  call $i52 := bcm54xx_config_init($u0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5069, 9} true;
  assume {:verifier.code 0} true;
  goto $bb120;
$bb50:
  assume ($i18 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4937, 7} true;
  assume {:verifier.code 0} true;
  goto $bb52;
$bb51:
  assume !(($i18 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4939, 17} true;
  assume {:verifier.code 0} true;
  $i19 := $eq.i32($i4, 14);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4939, 9} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i19} true;
  goto $bb53, $bb54;
$bb52:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5072, 9} true;
  assume {:verifier.code 0} true;
  call $i53 := bcm5481_config_aneg($u0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5074, 9} true;
  assume {:verifier.code 0} true;
  goto $bb120;
$bb53:
  assume ($i19 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4940, 7} true;
  assume {:verifier.code 0} true;
  goto $bb55;
$bb54:
  assume !(($i19 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4942, 17} true;
  assume {:verifier.code 0} true;
  $i20 := $eq.i32($i4, 15);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4942, 9} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i20} true;
  goto $bb56, $bb57;
$bb55:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5077, 9} true;
  assume {:verifier.code 0} true;
  call $i54 := bcm54xx_ack_interrupt($u0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5079, 9} true;
  assume {:verifier.code 0} true;
  goto $bb120;
$bb56:
  assume ($i20 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4943, 7} true;
  assume {:verifier.code 0} true;
  goto $bb58;
$bb57:
  assume !(($i20 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4945, 17} true;
  assume {:verifier.code 0} true;
  $i21 := $eq.i32($i4, 16);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4945, 9} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i21} true;
  goto $bb59, $bb60;
$bb58:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5082, 9} true;
  assume {:verifier.code 0} true;
  call $i55 := bcm54xx_config_intr($u0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5084, 9} true;
  assume {:verifier.code 0} true;
  goto $bb120;
$bb59:
  assume ($i21 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4946, 7} true;
  assume {:verifier.code 0} true;
  goto $bb61;
$bb60:
  assume !(($i21 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4948, 17} true;
  assume {:verifier.code 0} true;
  $i22 := $eq.i32($i4, 17);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4948, 9} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i22} true;
  goto $bb62, $bb63;
$bb61:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5087, 9} true;
  assume {:verifier.code 0} true;
  call $i56 := bcm5482_config_init($u0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5089, 9} true;
  assume {:verifier.code 0} true;
  goto $bb120;
$bb62:
  assume ($i22 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4949, 7} true;
  assume {:verifier.code 0} true;
  goto $bb64;
$bb63:
  assume !(($i22 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4951, 17} true;
  assume {:verifier.code 0} true;
  $i23 := $eq.i32($i4, 18);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4951, 9} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i23} true;
  goto $bb65, $bb66;
$bb64:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5092, 9} true;
  assume {:verifier.code 0} true;
  call $i57 := bcm5482_read_status($u0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5094, 9} true;
  assume {:verifier.code 0} true;
  goto $bb120;
$bb65:
  assume ($i23 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4952, 7} true;
  assume {:verifier.code 0} true;
  goto $bb67;
$bb66:
  assume !(($i23 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4954, 17} true;
  assume {:verifier.code 0} true;
  $i24 := $eq.i32($i4, 19);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4954, 9} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i24} true;
  goto $bb68, $bb69;
$bb67:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5097, 9} true;
  assume {:verifier.code 0} true;
  call $i58 := bcm54xx_ack_interrupt($u0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5099, 9} true;
  assume {:verifier.code 0} true;
  goto $bb120;
$bb68:
  assume ($i24 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4955, 7} true;
  assume {:verifier.code 0} true;
  goto $bb70;
$bb69:
  assume !(($i24 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4957, 17} true;
  assume {:verifier.code 0} true;
  $i25 := $eq.i32($i4, 20);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4957, 9} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i25} true;
  goto $bb71, $bb72;
$bb70:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5102, 9} true;
  assume {:verifier.code 0} true;
  call $i59 := bcm54xx_config_intr($u0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5104, 9} true;
  assume {:verifier.code 0} true;
  goto $bb120;
$bb71:
  assume ($i25 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4958, 7} true;
  assume {:verifier.code 0} true;
  goto $bb73;
$bb72:
  assume !(($i25 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4960, 17} true;
  assume {:verifier.code 0} true;
  $i26 := $eq.i32($i4, 21);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4960, 9} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i26} true;
  goto $bb74, $bb75;
$bb73:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5107, 9} true;
  assume {:verifier.code 0} true;
  call $i60 := bcm54xx_config_init($u0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5109, 9} true;
  assume {:verifier.code 0} true;
  goto $bb120;
$bb74:
  assume ($i26 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4961, 7} true;
  assume {:verifier.code 0} true;
  goto $bb76;
$bb75:
  assume !(($i26 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4963, 17} true;
  assume {:verifier.code 0} true;
  $i27 := $eq.i32($i4, 22);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4963, 9} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i27} true;
  goto $bb77, $bb78;
$bb76:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5112, 9} true;
  assume {:verifier.code 0} true;
  call $i61 := bcm54xx_ack_interrupt($u0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5114, 9} true;
  assume {:verifier.code 0} true;
  goto $bb120;
$bb77:
  assume ($i27 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4964, 7} true;
  assume {:verifier.code 0} true;
  goto $bb79;
$bb78:
  assume !(($i27 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4966, 17} true;
  assume {:verifier.code 0} true;
  $i28 := $eq.i32($i4, 23);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4966, 9} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i28} true;
  goto $bb80, $bb81;
$bb79:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5117, 9} true;
  assume {:verifier.code 0} true;
  call $i62 := bcm54xx_config_intr($u0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5119, 9} true;
  assume {:verifier.code 0} true;
  goto $bb120;
$bb80:
  assume ($i28 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4967, 7} true;
  assume {:verifier.code 0} true;
  goto $bb82;
$bb81:
  assume !(($i28 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4969, 17} true;
  assume {:verifier.code 0} true;
  $i29 := $eq.i32($i4, 24);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4969, 9} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i29} true;
  goto $bb83, $bb84;
$bb82:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5122, 9} true;
  assume {:verifier.code 0} true;
  call $i63 := bcm54xx_config_init($u0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5124, 9} true;
  assume {:verifier.code 0} true;
  goto $bb120;
$bb83:
  assume ($i29 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4970, 7} true;
  assume {:verifier.code 0} true;
  goto $bb85;
$bb84:
  assume !(($i29 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4972, 17} true;
  assume {:verifier.code 0} true;
  $i30 := $eq.i32($i4, 25);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4972, 9} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i30} true;
  goto $bb86, $bb87;
$bb85:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5127, 9} true;
  assume {:verifier.code 0} true;
  call $i64 := bcm54xx_ack_interrupt($u0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5129, 9} true;
  assume {:verifier.code 0} true;
  goto $bb120;
$bb86:
  assume ($i30 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4973, 7} true;
  assume {:verifier.code 0} true;
  goto $bb88;
$bb87:
  assume !(($i30 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4975, 17} true;
  assume {:verifier.code 0} true;
  $i31 := $eq.i32($i4, 26);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4975, 9} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i31} true;
  goto $bb89, $bb90;
$bb88:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5132, 9} true;
  assume {:verifier.code 0} true;
  call $i65 := bcm54xx_config_intr($u0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5134, 9} true;
  assume {:verifier.code 0} true;
  goto $bb120;
$bb89:
  assume ($i31 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4976, 7} true;
  assume {:verifier.code 0} true;
  goto $bb91;
$bb90:
  assume !(($i31 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4978, 17} true;
  assume {:verifier.code 0} true;
  $i32 := $eq.i32($i4, 27);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4978, 9} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i32} true;
  goto $bb92, $bb93;
$bb91:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5137, 9} true;
  assume {:verifier.code 0} true;
  call $i66 := bcm54xx_config_init($u0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5139, 9} true;
  assume {:verifier.code 0} true;
  goto $bb120;
$bb92:
  assume ($i32 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4979, 7} true;
  assume {:verifier.code 0} true;
  goto $bb94;
$bb93:
  assume !(($i32 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4981, 17} true;
  assume {:verifier.code 0} true;
  $i33 := $eq.i32($i4, 28);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4981, 9} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i33} true;
  goto $bb95, $bb96;
$bb94:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5142, 9} true;
  assume {:verifier.code 0} true;
  call $i67 := bcm54xx_ack_interrupt($u0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5144, 9} true;
  assume {:verifier.code 0} true;
  goto $bb120;
$bb95:
  assume ($i33 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4982, 7} true;
  assume {:verifier.code 0} true;
  goto $bb97;
$bb96:
  assume !(($i33 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4984, 17} true;
  assume {:verifier.code 0} true;
  $i34 := $eq.i32($i4, 29);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4984, 9} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i34} true;
  goto $bb98, $bb99;
$bb97:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5147, 9} true;
  assume {:verifier.code 0} true;
  call $i68 := bcm54xx_config_intr($u0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5149, 9} true;
  assume {:verifier.code 0} true;
  goto $bb120;
$bb98:
  assume ($i34 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4985, 7} true;
  assume {:verifier.code 0} true;
  goto $bb100;
$bb99:
  assume !(($i34 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4987, 17} true;
  assume {:verifier.code 0} true;
  $i35 := $eq.i32($i4, 30);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4987, 9} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i35} true;
  goto $bb101, $bb102;
$bb100:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5152, 9} true;
  assume {:verifier.code 0} true;
  call $i69 := brcm_fet_config_init($u0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5154, 9} true;
  assume {:verifier.code 0} true;
  goto $bb120;
$bb101:
  assume ($i35 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4988, 7} true;
  assume {:verifier.code 0} true;
  goto $bb103;
$bb102:
  assume !(($i35 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4990, 17} true;
  assume {:verifier.code 0} true;
  $i36 := $eq.i32($i4, 31);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4990, 9} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i36} true;
  goto $bb104, $bb105;
$bb103:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5157, 9} true;
  assume {:verifier.code 0} true;
  call $i70 := brcm_fet_ack_interrupt($u0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5159, 9} true;
  assume {:verifier.code 0} true;
  goto $bb120;
$bb104:
  assume ($i36 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4991, 7} true;
  assume {:verifier.code 0} true;
  goto $bb106;
$bb105:
  assume !(($i36 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4993, 17} true;
  assume {:verifier.code 0} true;
  $i37 := $eq.i32($i4, 32);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4993, 9} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i37} true;
  goto $bb107, $bb108;
$bb106:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5162, 9} true;
  assume {:verifier.code 0} true;
  call $i71 := brcm_fet_config_intr($u0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5164, 9} true;
  assume {:verifier.code 0} true;
  goto $bb120;
$bb107:
  assume ($i37 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4994, 7} true;
  assume {:verifier.code 0} true;
  goto $bb109;
$bb108:
  assume !(($i37 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4996, 17} true;
  assume {:verifier.code 0} true;
  $i38 := $eq.i32($i4, 33);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4996, 9} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i38} true;
  goto $bb110, $bb111;
$bb109:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5167, 9} true;
  assume {:verifier.code 0} true;
  call $i72 := brcm_fet_config_init($u0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5169, 9} true;
  assume {:verifier.code 0} true;
  goto $bb120;
$bb110:
  assume ($i38 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4997, 7} true;
  assume {:verifier.code 0} true;
  goto $bb112;
$bb111:
  assume !(($i38 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4999, 17} true;
  assume {:verifier.code 0} true;
  $i39 := $eq.i32($i4, 34);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4999, 9} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i39} true;
  goto $bb113, $bb114;
$bb112:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5172, 9} true;
  assume {:verifier.code 0} true;
  call $i73 := brcm_fet_ack_interrupt($u0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5174, 9} true;
  assume {:verifier.code 0} true;
  goto $bb120;
$bb113:
  assume ($i39 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5000, 7} true;
  assume {:verifier.code 0} true;
  goto $bb115;
$bb114:
  assume !(($i39 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5003, 7} true;
  assume {:verifier.code 0} true;
  goto $bb116;
$bb115:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5177, 9} true;
  assume {:verifier.code 0} true;
  call $i74 := brcm_fet_config_intr($u0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5179, 9} true;
  assume {:verifier.code 0} true;
  goto $bb120;
$bb116:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5181, 9} true;
  assume {:verifier.code 0} true;
  goto $bb120;
$bb117:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5004, 11} true;
  assume {:verifier.code 0} true;
  assume {:branchcond 0} true;
  goto $bb118, $bb119;
$bb118:
  assume (0 == 1);
  assume {:verifier.code 0} true;
  assume false;
$bb119:
  assume !((0 == 1));
  assume {:verifier.code 0} true;
  assume false;
$bb120:
  assume {:verifier.code 0} true;
  goto $bb121;
$bb121:
  assume {:verifier.code 0} true;
  goto $bb122;
$bb122:
  assume {:verifier.code 0} true;
  goto $bb123;
$bb123:
  assume {:verifier.code 0} true;
  goto $bb124;
$bb124:
  assume {:verifier.code 0} true;
  goto $bb125;
$bb125:
  assume {:verifier.code 0} true;
  goto $bb126;
$bb126:
  assume {:verifier.code 0} true;
  goto $bb127;
$bb127:
  assume {:verifier.code 0} true;
  goto $bb128;
$bb128:
  assume {:verifier.code 0} true;
  goto $bb129;
$bb129:
  assume {:verifier.code 0} true;
  goto $bb130;
$bb130:
  assume {:verifier.code 0} true;
  goto $bb131;
$bb131:
  assume {:verifier.code 0} true;
  goto $bb132;
$bb132:
  assume {:verifier.code 0} true;
  goto $bb133;
$bb133:
  assume {:verifier.code 0} true;
  goto $bb134;
$bb134:
  assume {:verifier.code 0} true;
  goto $bb135;
$bb135:
  assume {:verifier.code 0} true;
  goto $bb136;
$bb136:
  assume {:verifier.code 0} true;
  goto $bb137;
$bb137:
  assume {:verifier.code 0} true;
  goto $bb138;
$bb138:
  assume {:verifier.code 0} true;
  goto $bb139;
$bb139:
  assume {:verifier.code 0} true;
  goto $bb140;
$bb140:
  assume {:verifier.code 0} true;
  goto $bb141;
$bb141:
  assume {:verifier.code 0} true;
  goto $bb142;
$bb142:
  assume {:verifier.code 0} true;
  goto $bb143;
$bb143:
  assume {:verifier.code 0} true;
  goto $bb144;
$bb144:
  assume {:verifier.code 0} true;
  goto $bb145;
$bb145:
  assume {:verifier.code 0} true;
  goto $bb146;
$bb146:
  assume {:verifier.code 0} true;
  goto $bb147;
$bb147:
  assume {:verifier.code 0} true;
  goto $bb148;
$bb148:
  assume {:verifier.code 0} true;
  goto $bb149;
$bb149:
  assume {:verifier.code 0} true;
  goto $bb150;
$bb150:
  assume {:verifier.code 0} true;
  goto $bb151;
$bb151:
  assume {:verifier.code 0} true;
  goto $bb152;
$bb152:
  assume {:verifier.code 0} true;
  goto $bb153;
$bb153:
  assume {:verifier.code 0} true;
  goto $bb154;
$bb154:
  assume {:verifier.code 0} true;
  goto $bb155;
$bb155:
  assume {:verifier.code 0} true;
  goto $bb156;
$bb156:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 4884, 3} true;
  assume {:verifier.code 0} true;
  goto $bb5;
}
const ldv_initialize: ref;
axiom (ldv_initialize == $sub.ref(0, 64803));
procedure ldv_initialize();
const ldv_check_final_state: ref;
axiom (ldv_check_final_state == $sub.ref(0, 65835));
procedure ldv_check_final_state()
{
  var $i0: i32;
  var $i1: i1;
$bb0:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5332, 7} true;
  assume {:verifier.code 0} true;
  $i0 := $M.2;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5332, 17} true;
  assume {:verifier.code 0} true;
  $i1 := $eq.i32($i0, 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5332, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i1} true;
  goto $bb1, $bb2;
$bb1:
  assume ($i1 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5334, 3} true;
  assume {:verifier.code 0} true;
  goto $bb3;
$bb2:
  assume !(($i1 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5336, 5} true;
  assume {:verifier.code 0} true;
  call ldv_blast_assert();
  assume {:verifier.code 0} true;
  goto $bb3;
$bb3:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5339, 3} true;
  assume {:verifier.code 0} true;
  $exn := false;
  return;
}
const ldv_blast_assert: ref;
axiom (ldv_blast_assert == $sub.ref(0, 66867));
procedure ldv_blast_assert()
{
$bb0:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5203, 3} true;
  assume {:verifier.code 0} true;
  goto $bb1;
$bb1:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5204, 10} true;
  assume {:verifier.code 1} true;
  call __VERIFIER_error();
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--net--phy--broadcom.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-mKHLbd.c", 5206, 1} true;
  assume {:verifier.code 0} true;
  $exn := false;
  return;
}
const __VERIFIER_assume: ref;
axiom (__VERIFIER_assume == $sub.ref(0, 67899));
procedure __VERIFIER_assume($i0: i32)
{
$bb0:
  // WARNING: call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !5801, metadata !3813), !dbg !5802, !verifier.code !3811
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
axiom (__SMACK_code == $sub.ref(0, 68931));
procedure __SMACK_code.ref($p0: ref);
procedure __SMACK_code.ref.i32($p0: ref, p.1: i32);
const __SMACK_dummy: ref;
axiom (__SMACK_dummy == $sub.ref(0, 69963));
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
axiom (__VERIFIER_error == $sub.ref(0, 70995));
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
axiom (__SMACK_nondet_char == $sub.ref(0, 72027));
procedure __SMACK_nondet_char()
  returns ($r: i8);
const __SMACK_nondet_signed_char: ref;
axiom (__SMACK_nondet_signed_char == $sub.ref(0, 73059));
procedure __SMACK_nondet_signed_char()
  returns ($r: i8);
const __SMACK_nondet_unsigned_char: ref;
axiom (__SMACK_nondet_unsigned_char == $sub.ref(0, 74091));
procedure __SMACK_nondet_unsigned_char()
  returns ($r: i8);
const __SMACK_nondet_short: ref;
axiom (__SMACK_nondet_short == $sub.ref(0, 75123));
procedure __SMACK_nondet_short()
  returns ($r: i16);
const __SMACK_nondet_signed_short: ref;
axiom (__SMACK_nondet_signed_short == $sub.ref(0, 76155));
procedure __SMACK_nondet_signed_short()
  returns ($r: i16);
const __SMACK_nondet_signed_short_int: ref;
axiom (__SMACK_nondet_signed_short_int == $sub.ref(0, 77187));
procedure __SMACK_nondet_signed_short_int()
  returns ($r: i16);
const __SMACK_nondet_unsigned_short: ref;
axiom (__SMACK_nondet_unsigned_short == $sub.ref(0, 78219));
procedure __SMACK_nondet_unsigned_short()
  returns ($r: i16);
const __SMACK_nondet_unsigned_short_int: ref;
axiom (__SMACK_nondet_unsigned_short_int == $sub.ref(0, 79251));
procedure __SMACK_nondet_unsigned_short_int()
  returns ($r: i16);
const __VERIFIER_nondet_int: ref;
axiom (__VERIFIER_nondet_int == $sub.ref(0, 80283));
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
  // WARNING: %1 = call i32 @__SMACK_nondet_int(), !dbg !3808, !verifier.code !3809
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
axiom (__SMACK_nondet_int == $sub.ref(0, 81315));
procedure __SMACK_nondet_int()
  returns ($r: i32);
const __SMACK_nondet_signed_int: ref;
axiom (__SMACK_nondet_signed_int == $sub.ref(0, 82347));
procedure __SMACK_nondet_signed_int()
  returns ($r: i32);
const __SMACK_nondet_unsigned: ref;
axiom (__SMACK_nondet_unsigned == $sub.ref(0, 83379));
procedure __SMACK_nondet_unsigned()
  returns ($r: i32);
const __SMACK_nondet_unsigned_int: ref;
axiom (__SMACK_nondet_unsigned_int == $sub.ref(0, 84411));
procedure __SMACK_nondet_unsigned_int()
  returns ($r: i32);
const __SMACK_nondet_long: ref;
axiom (__SMACK_nondet_long == $sub.ref(0, 85443));
procedure __SMACK_nondet_long()
  returns ($r: i64);
const __SMACK_nondet_long_int: ref;
axiom (__SMACK_nondet_long_int == $sub.ref(0, 86475));
procedure __SMACK_nondet_long_int()
  returns ($r: i64);
const __SMACK_nondet_signed_long: ref;
axiom (__SMACK_nondet_signed_long == $sub.ref(0, 87507));
procedure __SMACK_nondet_signed_long()
  returns ($r: i64);
const __SMACK_nondet_signed_long_int: ref;
axiom (__SMACK_nondet_signed_long_int == $sub.ref(0, 88539));
procedure __SMACK_nondet_signed_long_int()
  returns ($r: i64);
const __SMACK_nondet_unsigned_long: ref;
axiom (__SMACK_nondet_unsigned_long == $sub.ref(0, 89571));
procedure __SMACK_nondet_unsigned_long()
  returns ($r: i64);
const __SMACK_nondet_unsigned_long_int: ref;
axiom (__SMACK_nondet_unsigned_long_int == $sub.ref(0, 90603));
procedure __SMACK_nondet_unsigned_long_int()
  returns ($r: i64);
const __SMACK_nondet_long_long: ref;
axiom (__SMACK_nondet_long_long == $sub.ref(0, 91635));
procedure __SMACK_nondet_long_long()
  returns ($r: i64);
const __SMACK_nondet_long_long_int: ref;
axiom (__SMACK_nondet_long_long_int == $sub.ref(0, 92667));
procedure __SMACK_nondet_long_long_int()
  returns ($r: i64);
const __SMACK_nondet_signed_long_long: ref;
axiom (__SMACK_nondet_signed_long_long == $sub.ref(0, 93699));
procedure __SMACK_nondet_signed_long_long()
  returns ($r: i64);
const __SMACK_nondet_signed_long_long_int: ref;
axiom (__SMACK_nondet_signed_long_long_int == $sub.ref(0, 94731));
procedure __SMACK_nondet_signed_long_long_int()
  returns ($r: i64);
const __SMACK_nondet_unsigned_long_long: ref;
axiom (__SMACK_nondet_unsigned_long_long == $sub.ref(0, 95763));
procedure __SMACK_nondet_unsigned_long_long()
  returns ($r: i64);
const __SMACK_nondet_unsigned_long_long_int: ref;
axiom (__SMACK_nondet_unsigned_long_long_int == $sub.ref(0, 96795));
procedure __SMACK_nondet_unsigned_long_long_int()
  returns ($r: i64);
const __SMACK_decls: ref;
axiom (__SMACK_decls == $sub.ref(0, 97827));
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
axiom (__SMACK_top_decl == $sub.ref(0, 98859));
procedure __SMACK_top_decl.ref($p0: ref);
const __SMACK_init_func_memory_model: ref;
axiom (__SMACK_init_func_memory_model == $sub.ref(0, 99891));
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
axiom (llvm.dbg.value == $sub.ref(0, 100923));
procedure llvm.dbg.value($p0: ref, $i1: i64, $p2: ref, $p3: ref);
const __SMACK_static_init: ref;
axiom (__SMACK_static_init == $sub.ref(0, 101955));
procedure __SMACK_static_init()
{
$bb0:
  $M.1 := 0;
  call {:cexpr "LDV_IN_INTERRUPT"} boogie_si_record_i32(0);
  $M.2 := 1;
  call {:cexpr "ldv_mutex"} boogie_si_record_i32(1);
  $M.0 := $store.ref($M.0, llvm.used, __mod_description185);
  $M.0 := $store.ref($M.0, $add.ref(llvm.used, 8), __mod_author186);
  $M.0 := $store.ref($M.0, $add.ref(llvm.used, 16), __mod_license187);
  $M.0 := $store.i8($M.0, __mod_description185, 100);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description185, 1), 101);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description185, 2), 115);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description185, 3), 99);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description185, 4), 114);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description185, 5), 105);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description185, 6), 112);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description185, 7), 116);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description185, 8), 105);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description185, 9), 111);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description185, 10), 110);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description185, 11), 61);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description185, 12), 66);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description185, 13), 114);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description185, 14), 111);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description185, 15), 97);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description185, 16), 100);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description185, 17), 99);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description185, 18), 111);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description185, 19), 109);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description185, 20), 32);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description185, 21), 80);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description185, 22), 72);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description185, 23), 89);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description185, 24), 32);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description185, 25), 100);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description185, 26), 114);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description185, 27), 105);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description185, 28), 118);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description185, 29), 101);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description185, 30), 114);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description185, 31), 0);
  $M.0 := $store.i8($M.0, __mod_author186, 97);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author186, 1), 117);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author186, 2), 116);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author186, 3), 104);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author186, 4), 111);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author186, 5), 114);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author186, 6), 61);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author186, 7), 77);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author186, 8), 97);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author186, 9), 99);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author186, 10), 105);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author186, 11), 101);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author186, 12), 106);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author186, 13), 32);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author186, 14), 87);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author186, 15), 46);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author186, 16), 32);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author186, 17), 82);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author186, 18), 111);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author186, 19), 122);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author186, 20), 121);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author186, 21), 99);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author186, 22), 107);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author186, 23), 105);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author186, 24), 0);
  $M.0 := $store.i8($M.0, __mod_license187, 108);
  $M.0 := $store.i8($M.0, $add.ref(__mod_license187, 1), 105);
  $M.0 := $store.i8($M.0, $add.ref(__mod_license187, 2), 99);
  $M.0 := $store.i8($M.0, $add.ref(__mod_license187, 3), 101);
  $M.0 := $store.i8($M.0, $add.ref(__mod_license187, 4), 110);
  $M.0 := $store.i8($M.0, $add.ref(__mod_license187, 5), 115);
  $M.0 := $store.i8($M.0, $add.ref(__mod_license187, 6), 101);
  $M.0 := $store.i8($M.0, $add.ref(__mod_license187, 7), 61);
  $M.0 := $store.i8($M.0, $add.ref(__mod_license187, 8), 71);
  $M.0 := $store.i8($M.0, $add.ref(__mod_license187, 9), 80);
  $M.0 := $store.i8($M.0, $add.ref(__mod_license187, 10), 76);
  $M.0 := $store.i8($M.0, $add.ref(__mod_license187, 11), 0);
  $M.3 := $store.i32($M.3, broadcom_tbl, 2121840);
  $M.4 := $store.i32($M.4, $add.ref(broadcom_tbl, 4), $sub.i32(0, 16));
  $M.3 := $store.i32($M.3, $add.ref(broadcom_tbl, 8), 2121952);
  $M.4 := $store.i32($M.4, $add.ref($add.ref(broadcom_tbl, 8), 4), $sub.i32(0, 16));
  $M.3 := $store.i32($M.3, $add.ref(broadcom_tbl, 16), 2121920);
  $M.4 := $store.i32($M.4, $add.ref($add.ref(broadcom_tbl, 16), 4), $sub.i32(0, 16));
  $M.3 := $store.i32($M.3, $add.ref(broadcom_tbl, 24), 2121904);
  $M.4 := $store.i32($M.4, $add.ref($add.ref(broadcom_tbl, 24), 4), $sub.i32(0, 16));
  $M.3 := $store.i32($M.3, $add.ref(broadcom_tbl, 32), 21216432);
  $M.4 := $store.i32($M.4, $add.ref($add.ref(broadcom_tbl, 32), 4), $sub.i32(0, 16));
  $M.3 := $store.i32($M.3, $add.ref(broadcom_tbl, 40), 21216432);
  $M.4 := $store.i32($M.4, $add.ref($add.ref(broadcom_tbl, 40), 4), $sub.i32(0, 16));
  $M.3 := $store.i32($M.3, $add.ref(broadcom_tbl, 48), 21216608);
  $M.4 := $store.i32($M.4, $add.ref($add.ref(broadcom_tbl, 48), 4), $sub.i32(0, 16));
  $M.3 := $store.i32($M.3, $add.ref(broadcom_tbl, 56), 21216624);
  $M.4 := $store.i32($M.4, $add.ref($add.ref(broadcom_tbl, 56), 4), $sub.i32(0, 16));
  $M.3 := $store.i32($M.3, $add.ref(broadcom_tbl, 64), 56778128);
  $M.4 := $store.i32($M.4, $add.ref($add.ref(broadcom_tbl, 64), 4), $sub.i32(0, 16));
  $M.3 := $store.i32($M.3, $add.ref(broadcom_tbl, 72), 21216368);
  $M.4 := $store.i32($M.4, $add.ref($add.ref(broadcom_tbl, 72), 4), $sub.i32(0, 16));
  $M.3 := $store.i32($M.3, $add.ref(broadcom_tbl, 80), 21216304);
  $M.4 := $store.i32($M.4, $add.ref($add.ref(broadcom_tbl, 80), 4), $sub.i32(0, 16));
  $M.0 := $store.i32($M.0, bcm5241_driver, 21216304);
  $M.0 := $store.ref($M.0, $add.ref(bcm5241_driver, 8), .str.10);
  $M.0 := $store.i32($M.0, $add.ref(bcm5241_driver, 16), $sub.i32(0, 16));
  $M.0 := $store.i32($M.0, $add.ref(bcm5241_driver, 20), 25295);
  $M.0 := $store.i32($M.0, $add.ref(bcm5241_driver, 24), 3);
  $M.0 := $store.ref($M.0, $add.ref(bcm5241_driver, 32), brcm_fet_config_init);
  $M.0 := $store.ref($M.0, $add.ref(bcm5241_driver, 40), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm5241_driver, 48), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm5241_driver, 56), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm5241_driver, 64), genphy_config_aneg);
  $M.0 := $store.ref($M.0, $add.ref(bcm5241_driver, 72), genphy_read_status);
  $M.0 := $store.ref($M.0, $add.ref(bcm5241_driver, 80), brcm_fet_ack_interrupt);
  $M.0 := $store.ref($M.0, $add.ref(bcm5241_driver, 88), brcm_fet_config_intr);
  $M.0 := $store.ref($M.0, $add.ref(bcm5241_driver, 96), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm5241_driver, 104), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm5241_driver, 112), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm5241_driver, 120), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm5241_driver, 128), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm5241_driver, 136), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5241_driver, 136), 8), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5241_driver, 136), 16), __this_module);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5241_driver, 136), 24), $0.ref);
  $M.0 := $store.i8($M.0, $add.ref($add.ref(bcm5241_driver, 136), 32), 0);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5241_driver, 136), 40), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5241_driver, 136), 48), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5241_driver, 136), 56), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5241_driver, 136), 64), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5241_driver, 136), 72), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5241_driver, 136), 80), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5241_driver, 136), 88), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5241_driver, 136), 96), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5241_driver, 136), 104), $0.ref);
  $M.0 := $store.i32($M.0, bcmac131_driver, 21216368);
  $M.0 := $store.ref($M.0, $add.ref(bcmac131_driver, 8), .str.9);
  $M.0 := $store.i32($M.0, $add.ref(bcmac131_driver, 16), $sub.i32(0, 16));
  $M.0 := $store.i32($M.0, $add.ref(bcmac131_driver, 20), 25295);
  $M.0 := $store.i32($M.0, $add.ref(bcmac131_driver, 24), 3);
  $M.0 := $store.ref($M.0, $add.ref(bcmac131_driver, 32), brcm_fet_config_init);
  $M.0 := $store.ref($M.0, $add.ref(bcmac131_driver, 40), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcmac131_driver, 48), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcmac131_driver, 56), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcmac131_driver, 64), genphy_config_aneg);
  $M.0 := $store.ref($M.0, $add.ref(bcmac131_driver, 72), genphy_read_status);
  $M.0 := $store.ref($M.0, $add.ref(bcmac131_driver, 80), brcm_fet_ack_interrupt);
  $M.0 := $store.ref($M.0, $add.ref(bcmac131_driver, 88), brcm_fet_config_intr);
  $M.0 := $store.ref($M.0, $add.ref(bcmac131_driver, 96), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcmac131_driver, 104), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcmac131_driver, 112), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcmac131_driver, 120), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcmac131_driver, 128), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcmac131_driver, 136), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcmac131_driver, 136), 8), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcmac131_driver, 136), 16), __this_module);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcmac131_driver, 136), 24), $0.ref);
  $M.0 := $store.i8($M.0, $add.ref($add.ref(bcmac131_driver, 136), 32), 0);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcmac131_driver, 136), 40), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcmac131_driver, 136), 48), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcmac131_driver, 136), 56), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcmac131_driver, 136), 64), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcmac131_driver, 136), 72), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcmac131_driver, 136), 80), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcmac131_driver, 136), 88), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcmac131_driver, 136), 96), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcmac131_driver, 136), 104), $0.ref);
  $M.0 := $store.i32($M.0, bcm57780_driver, 56778128);
  $M.0 := $store.ref($M.0, $add.ref(bcm57780_driver, 8), .str.8);
  $M.0 := $store.i32($M.0, $add.ref(bcm57780_driver, 16), $sub.i32(0, 16));
  $M.0 := $store.i32($M.0, $add.ref(bcm57780_driver, 20), 25343);
  $M.0 := $store.i32($M.0, $add.ref(bcm57780_driver, 24), 3);
  $M.0 := $store.ref($M.0, $add.ref(bcm57780_driver, 32), bcm54xx_config_init);
  $M.0 := $store.ref($M.0, $add.ref(bcm57780_driver, 40), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm57780_driver, 48), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm57780_driver, 56), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm57780_driver, 64), genphy_config_aneg);
  $M.0 := $store.ref($M.0, $add.ref(bcm57780_driver, 72), genphy_read_status);
  $M.0 := $store.ref($M.0, $add.ref(bcm57780_driver, 80), bcm54xx_ack_interrupt);
  $M.0 := $store.ref($M.0, $add.ref(bcm57780_driver, 88), bcm54xx_config_intr);
  $M.0 := $store.ref($M.0, $add.ref(bcm57780_driver, 96), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm57780_driver, 104), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm57780_driver, 112), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm57780_driver, 120), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm57780_driver, 128), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm57780_driver, 136), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm57780_driver, 136), 8), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm57780_driver, 136), 16), __this_module);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm57780_driver, 136), 24), $0.ref);
  $M.0 := $store.i8($M.0, $add.ref($add.ref(bcm57780_driver, 136), 32), 0);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm57780_driver, 136), 40), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm57780_driver, 136), 48), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm57780_driver, 136), 56), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm57780_driver, 136), 64), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm57780_driver, 136), 72), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm57780_driver, 136), 80), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm57780_driver, 136), 88), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm57780_driver, 136), 96), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm57780_driver, 136), 104), $0.ref);
  $M.0 := $store.i32($M.0, bcm50610m_driver, 21216624);
  $M.0 := $store.ref($M.0, $add.ref(bcm50610m_driver, 8), .str.7);
  $M.0 := $store.i32($M.0, $add.ref(bcm50610m_driver, 16), $sub.i32(0, 16));
  $M.0 := $store.i32($M.0, $add.ref(bcm50610m_driver, 20), 25343);
  $M.0 := $store.i32($M.0, $add.ref(bcm50610m_driver, 24), 3);
  $M.0 := $store.ref($M.0, $add.ref(bcm50610m_driver, 32), bcm54xx_config_init);
  $M.0 := $store.ref($M.0, $add.ref(bcm50610m_driver, 40), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm50610m_driver, 48), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm50610m_driver, 56), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm50610m_driver, 64), genphy_config_aneg);
  $M.0 := $store.ref($M.0, $add.ref(bcm50610m_driver, 72), genphy_read_status);
  $M.0 := $store.ref($M.0, $add.ref(bcm50610m_driver, 80), bcm54xx_ack_interrupt);
  $M.0 := $store.ref($M.0, $add.ref(bcm50610m_driver, 88), bcm54xx_config_intr);
  $M.0 := $store.ref($M.0, $add.ref(bcm50610m_driver, 96), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm50610m_driver, 104), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm50610m_driver, 112), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm50610m_driver, 120), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm50610m_driver, 128), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm50610m_driver, 136), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm50610m_driver, 136), 8), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm50610m_driver, 136), 16), __this_module);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm50610m_driver, 136), 24), $0.ref);
  $M.0 := $store.i8($M.0, $add.ref($add.ref(bcm50610m_driver, 136), 32), 0);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm50610m_driver, 136), 40), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm50610m_driver, 136), 48), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm50610m_driver, 136), 56), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm50610m_driver, 136), 64), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm50610m_driver, 136), 72), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm50610m_driver, 136), 80), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm50610m_driver, 136), 88), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm50610m_driver, 136), 96), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm50610m_driver, 136), 104), $0.ref);
  $M.0 := $store.i32($M.0, bcm50610_driver, 21216608);
  $M.0 := $store.ref($M.0, $add.ref(bcm50610_driver, 8), .str.6);
  $M.0 := $store.i32($M.0, $add.ref(bcm50610_driver, 16), $sub.i32(0, 16));
  $M.0 := $store.i32($M.0, $add.ref(bcm50610_driver, 20), 25343);
  $M.0 := $store.i32($M.0, $add.ref(bcm50610_driver, 24), 3);
  $M.0 := $store.ref($M.0, $add.ref(bcm50610_driver, 32), bcm54xx_config_init);
  $M.0 := $store.ref($M.0, $add.ref(bcm50610_driver, 40), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm50610_driver, 48), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm50610_driver, 56), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm50610_driver, 64), genphy_config_aneg);
  $M.0 := $store.ref($M.0, $add.ref(bcm50610_driver, 72), genphy_read_status);
  $M.0 := $store.ref($M.0, $add.ref(bcm50610_driver, 80), bcm54xx_ack_interrupt);
  $M.0 := $store.ref($M.0, $add.ref(bcm50610_driver, 88), bcm54xx_config_intr);
  $M.0 := $store.ref($M.0, $add.ref(bcm50610_driver, 96), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm50610_driver, 104), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm50610_driver, 112), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm50610_driver, 120), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm50610_driver, 128), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm50610_driver, 136), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm50610_driver, 136), 8), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm50610_driver, 136), 16), __this_module);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm50610_driver, 136), 24), $0.ref);
  $M.0 := $store.i8($M.0, $add.ref($add.ref(bcm50610_driver, 136), 32), 0);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm50610_driver, 136), 40), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm50610_driver, 136), 48), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm50610_driver, 136), 56), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm50610_driver, 136), 64), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm50610_driver, 136), 72), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm50610_driver, 136), 80), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm50610_driver, 136), 88), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm50610_driver, 136), 96), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm50610_driver, 136), 104), $0.ref);
  $M.0 := $store.i32($M.0, bcm5482_driver, 21216432);
  $M.0 := $store.ref($M.0, $add.ref(bcm5482_driver, 8), .str.5);
  $M.0 := $store.i32($M.0, $add.ref(bcm5482_driver, 16), $sub.i32(0, 16));
  $M.0 := $store.i32($M.0, $add.ref(bcm5482_driver, 20), 25343);
  $M.0 := $store.i32($M.0, $add.ref(bcm5482_driver, 24), 3);
  $M.0 := $store.ref($M.0, $add.ref(bcm5482_driver, 32), bcm5482_config_init);
  $M.0 := $store.ref($M.0, $add.ref(bcm5482_driver, 40), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm5482_driver, 48), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm5482_driver, 56), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm5482_driver, 64), genphy_config_aneg);
  $M.0 := $store.ref($M.0, $add.ref(bcm5482_driver, 72), bcm5482_read_status);
  $M.0 := $store.ref($M.0, $add.ref(bcm5482_driver, 80), bcm54xx_ack_interrupt);
  $M.0 := $store.ref($M.0, $add.ref(bcm5482_driver, 88), bcm54xx_config_intr);
  $M.0 := $store.ref($M.0, $add.ref(bcm5482_driver, 96), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm5482_driver, 104), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm5482_driver, 112), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm5482_driver, 120), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm5482_driver, 128), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm5482_driver, 136), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5482_driver, 136), 8), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5482_driver, 136), 16), __this_module);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5482_driver, 136), 24), $0.ref);
  $M.0 := $store.i8($M.0, $add.ref($add.ref(bcm5482_driver, 136), 32), 0);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5482_driver, 136), 40), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5482_driver, 136), 48), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5482_driver, 136), 56), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5482_driver, 136), 64), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5482_driver, 136), 72), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5482_driver, 136), 80), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5482_driver, 136), 88), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5482_driver, 136), 96), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5482_driver, 136), 104), $0.ref);
  $M.0 := $store.i32($M.0, bcm5481_driver, 21216416);
  $M.0 := $store.ref($M.0, $add.ref(bcm5481_driver, 8), .str.4);
  $M.0 := $store.i32($M.0, $add.ref(bcm5481_driver, 16), $sub.i32(0, 16));
  $M.0 := $store.i32($M.0, $add.ref(bcm5481_driver, 20), 25343);
  $M.0 := $store.i32($M.0, $add.ref(bcm5481_driver, 24), 3);
  $M.0 := $store.ref($M.0, $add.ref(bcm5481_driver, 32), bcm54xx_config_init);
  $M.0 := $store.ref($M.0, $add.ref(bcm5481_driver, 40), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm5481_driver, 48), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm5481_driver, 56), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm5481_driver, 64), bcm5481_config_aneg);
  $M.0 := $store.ref($M.0, $add.ref(bcm5481_driver, 72), genphy_read_status);
  $M.0 := $store.ref($M.0, $add.ref(bcm5481_driver, 80), bcm54xx_ack_interrupt);
  $M.0 := $store.ref($M.0, $add.ref(bcm5481_driver, 88), bcm54xx_config_intr);
  $M.0 := $store.ref($M.0, $add.ref(bcm5481_driver, 96), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm5481_driver, 104), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm5481_driver, 112), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm5481_driver, 120), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm5481_driver, 128), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm5481_driver, 136), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5481_driver, 136), 8), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5481_driver, 136), 16), __this_module);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5481_driver, 136), 24), $0.ref);
  $M.0 := $store.i8($M.0, $add.ref($add.ref(bcm5481_driver, 136), 32), 0);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5481_driver, 136), 40), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5481_driver, 136), 48), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5481_driver, 136), 56), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5481_driver, 136), 64), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5481_driver, 136), 72), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5481_driver, 136), 80), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5481_driver, 136), 88), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5481_driver, 136), 96), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5481_driver, 136), 104), $0.ref);
  $M.0 := $store.i32($M.0, bcm5464_driver, 2121904);
  $M.0 := $store.ref($M.0, $add.ref(bcm5464_driver, 8), .str.3);
  $M.0 := $store.i32($M.0, $add.ref(bcm5464_driver, 16), $sub.i32(0, 16));
  $M.0 := $store.i32($M.0, $add.ref(bcm5464_driver, 20), 25343);
  $M.0 := $store.i32($M.0, $add.ref(bcm5464_driver, 24), 3);
  $M.0 := $store.ref($M.0, $add.ref(bcm5464_driver, 32), bcm54xx_config_init);
  $M.0 := $store.ref($M.0, $add.ref(bcm5464_driver, 40), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm5464_driver, 48), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm5464_driver, 56), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm5464_driver, 64), genphy_config_aneg);
  $M.0 := $store.ref($M.0, $add.ref(bcm5464_driver, 72), genphy_read_status);
  $M.0 := $store.ref($M.0, $add.ref(bcm5464_driver, 80), bcm54xx_ack_interrupt);
  $M.0 := $store.ref($M.0, $add.ref(bcm5464_driver, 88), bcm54xx_config_intr);
  $M.0 := $store.ref($M.0, $add.ref(bcm5464_driver, 96), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm5464_driver, 104), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm5464_driver, 112), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm5464_driver, 120), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm5464_driver, 128), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm5464_driver, 136), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5464_driver, 136), 8), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5464_driver, 136), 16), __this_module);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5464_driver, 136), 24), $0.ref);
  $M.0 := $store.i8($M.0, $add.ref($add.ref(bcm5464_driver, 136), 32), 0);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5464_driver, 136), 40), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5464_driver, 136), 48), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5464_driver, 136), 56), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5464_driver, 136), 64), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5464_driver, 136), 72), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5464_driver, 136), 80), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5464_driver, 136), 88), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5464_driver, 136), 96), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5464_driver, 136), 104), $0.ref);
  $M.0 := $store.i32($M.0, bcm5461_driver, 2121920);
  $M.0 := $store.ref($M.0, $add.ref(bcm5461_driver, 8), .str.2);
  $M.0 := $store.i32($M.0, $add.ref(bcm5461_driver, 16), $sub.i32(0, 16));
  $M.0 := $store.i32($M.0, $add.ref(bcm5461_driver, 20), 25343);
  $M.0 := $store.i32($M.0, $add.ref(bcm5461_driver, 24), 3);
  $M.0 := $store.ref($M.0, $add.ref(bcm5461_driver, 32), bcm54xx_config_init);
  $M.0 := $store.ref($M.0, $add.ref(bcm5461_driver, 40), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm5461_driver, 48), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm5461_driver, 56), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm5461_driver, 64), genphy_config_aneg);
  $M.0 := $store.ref($M.0, $add.ref(bcm5461_driver, 72), genphy_read_status);
  $M.0 := $store.ref($M.0, $add.ref(bcm5461_driver, 80), bcm54xx_ack_interrupt);
  $M.0 := $store.ref($M.0, $add.ref(bcm5461_driver, 88), bcm54xx_config_intr);
  $M.0 := $store.ref($M.0, $add.ref(bcm5461_driver, 96), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm5461_driver, 104), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm5461_driver, 112), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm5461_driver, 120), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm5461_driver, 128), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm5461_driver, 136), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5461_driver, 136), 8), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5461_driver, 136), 16), __this_module);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5461_driver, 136), 24), $0.ref);
  $M.0 := $store.i8($M.0, $add.ref($add.ref(bcm5461_driver, 136), 32), 0);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5461_driver, 136), 40), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5461_driver, 136), 48), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5461_driver, 136), 56), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5461_driver, 136), 64), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5461_driver, 136), 72), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5461_driver, 136), 80), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5461_driver, 136), 88), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5461_driver, 136), 96), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5461_driver, 136), 104), $0.ref);
  $M.0 := $store.i32($M.0, bcm5421_driver, 2121952);
  $M.0 := $store.ref($M.0, $add.ref(bcm5421_driver, 8), .str.1);
  $M.0 := $store.i32($M.0, $add.ref(bcm5421_driver, 16), $sub.i32(0, 16));
  $M.0 := $store.i32($M.0, $add.ref(bcm5421_driver, 20), 25343);
  $M.0 := $store.i32($M.0, $add.ref(bcm5421_driver, 24), 3);
  $M.0 := $store.ref($M.0, $add.ref(bcm5421_driver, 32), bcm54xx_config_init);
  $M.0 := $store.ref($M.0, $add.ref(bcm5421_driver, 40), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm5421_driver, 48), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm5421_driver, 56), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm5421_driver, 64), genphy_config_aneg);
  $M.0 := $store.ref($M.0, $add.ref(bcm5421_driver, 72), genphy_read_status);
  $M.0 := $store.ref($M.0, $add.ref(bcm5421_driver, 80), bcm54xx_ack_interrupt);
  $M.0 := $store.ref($M.0, $add.ref(bcm5421_driver, 88), bcm54xx_config_intr);
  $M.0 := $store.ref($M.0, $add.ref(bcm5421_driver, 96), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm5421_driver, 104), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm5421_driver, 112), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm5421_driver, 120), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm5421_driver, 128), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm5421_driver, 136), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5421_driver, 136), 8), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5421_driver, 136), 16), __this_module);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5421_driver, 136), 24), $0.ref);
  $M.0 := $store.i8($M.0, $add.ref($add.ref(bcm5421_driver, 136), 32), 0);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5421_driver, 136), 40), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5421_driver, 136), 48), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5421_driver, 136), 56), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5421_driver, 136), 64), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5421_driver, 136), 72), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5421_driver, 136), 80), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5421_driver, 136), 88), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5421_driver, 136), 96), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5421_driver, 136), 104), $0.ref);
  $M.0 := $store.i32($M.0, bcm5411_driver, 2121840);
  $M.0 := $store.ref($M.0, $add.ref(bcm5411_driver, 8), .str);
  $M.0 := $store.i32($M.0, $add.ref(bcm5411_driver, 16), $sub.i32(0, 16));
  $M.0 := $store.i32($M.0, $add.ref(bcm5411_driver, 20), 25343);
  $M.0 := $store.i32($M.0, $add.ref(bcm5411_driver, 24), 3);
  $M.0 := $store.ref($M.0, $add.ref(bcm5411_driver, 32), bcm54xx_config_init);
  $M.0 := $store.ref($M.0, $add.ref(bcm5411_driver, 40), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm5411_driver, 48), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm5411_driver, 56), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm5411_driver, 64), genphy_config_aneg);
  $M.0 := $store.ref($M.0, $add.ref(bcm5411_driver, 72), genphy_read_status);
  $M.0 := $store.ref($M.0, $add.ref(bcm5411_driver, 80), bcm54xx_ack_interrupt);
  $M.0 := $store.ref($M.0, $add.ref(bcm5411_driver, 88), bcm54xx_config_intr);
  $M.0 := $store.ref($M.0, $add.ref(bcm5411_driver, 96), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm5411_driver, 104), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm5411_driver, 112), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm5411_driver, 120), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm5411_driver, 128), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref(bcm5411_driver, 136), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5411_driver, 136), 8), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5411_driver, 136), 16), __this_module);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5411_driver, 136), 24), $0.ref);
  $M.0 := $store.i8($M.0, $add.ref($add.ref(bcm5411_driver, 136), 32), 0);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5411_driver, 136), 40), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5411_driver, 136), 48), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5411_driver, 136), 56), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5411_driver, 136), 64), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5411_driver, 136), 72), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5411_driver, 136), 80), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5411_driver, 136), 88), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5411_driver, 136), 96), $0.ref);
  $M.0 := $store.ref($M.0, $add.ref($add.ref(bcm5411_driver, 136), 104), $0.ref);
  $exn := false;
  return;
}
const $u0: ref;
procedure $initialize()
{
  call __SMACK_static_init();
  call __SMACK_init_func_memory_model();
  return;
}
