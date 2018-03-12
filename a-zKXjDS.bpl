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

// Memory maps (25 regions)
var $M.0: [ref] i8;
var $M.1: [ref] ref;
var $M.2: i32;
var $M.3: i32;
var $M.4: i32;
var $M.5: ref;
var $M.6: ref;
var $M.7: ref;
var $M.8: ref;
var $M.9: ref;
var $M.10: ref;
var $M.11: ref;
var $M.12: ref;
var $M.13: ref;
var $M.14: i8;
var $M.15: ref;
var $M.16: ref;
var $M.17: ref;
var $M.18: ref;
var $M.19: ref;
var $M.20: ref;
var $M.21: ref;
var $M.22: ref;
var $M.23: ref;
var $M.24: ref;

// Memory address bounds
axiom ($GLOBALS_BOTTOM == $sub.ref(0, 103581));
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
const {:count 39} __mod_author385: ref;
axiom (__mod_author385 == $sub.ref(0, 4175));
const {:count 40} __mod_description386: ref;
axiom (__mod_description386 == $sub.ref(0, 5239));
const {:count 12} __mod_license387: ref;
axiom (__mod_license387 == $sub.ref(0, 6275));
const {:count 24} __mod_alias388: ref;
axiom (__mod_alias388 == $sub.ref(0, 7323));
const stmpe_ts_driver: ref;
axiom (stmpe_ts_driver == $sub.ref(0, 8507));
const res_stmpe_input_probe_6: ref;
axiom (res_stmpe_input_probe_6 == $sub.ref(0, 9535));
const .str: ref;
axiom (.str == $sub.ref(0, 10568));
const __this_module: ref;
axiom (__this_module == $sub.ref(0, 32776));
const {:count 8} .str.1: ref;
axiom (.str.1 == $sub.ref(0, 11600));
const {:count 26} .str.2: ref;
axiom (.str.2 == $sub.ref(0, 12650));
const {:count 33} .str.3: ref;
axiom (.str.3 == $sub.ref(0, 13707));
const {:count 39} .str.4: ref;
axiom (.str.4 == $sub.ref(0, 14770));
const {:count 21} .str.5: ref;
axiom (.str.5 == $sub.ref(0, 15815));
const {:count 24} .str.6: ref;
axiom (.str.6 == $sub.ref(0, 16863));
const {:count 20} .str.7: ref;
axiom (.str.7 == $sub.ref(0, 17907));
const {:count 20} .str.8: ref;
axiom (.str.8 == $sub.ref(0, 18951));
const {:count 14} .str.2.13: ref;
axiom (.str.2.13 == $sub.ref(0, 19989));
const llvm.dbg.declare: ref;
axiom (llvm.dbg.declare == $sub.ref(0, 21021));
procedure llvm.dbg.declare($p0: ref, $p1: ref, $p2: ref);
const stmpe_input_probe: ref;
axiom (stmpe_input_probe == $sub.ref(0, 22053));
procedure stmpe_input_probe($p0: ref)
  returns ($r: i32)
{
  var $i1: i64;
  var $i2: i64;
  var $p3: ref;
  var $p4: ref;
  var $p5: ref;
  var $p6: ref;
  var $i7: i64;
  var $i8: i64;
  var $p9: ref;
  var $p10: ref;
  var $p11: ref;
  var $i12: i32;
  var $i13: i1;
  var $p15: ref;
  var $p16: ref;
  var $i17: i1;
  var $p19: ref;
  var $i20: i1;
  var $p22: ref;
  var $p23: ref;
  var $i24: i64;
  var $i25: i64;
  var $p26: ref;
  var $i27: i64;
  var $i28: i64;
  var $i29: i64;
  var $i30: i64;
  var $p31: ref;
  var $p32: ref;
  var $i33: i1;
  var $i34: i64;
  var $i35: i64;
  var $p36: ref;
  var $p37: ref;
  var $p38: ref;
  var $i39: i1;
  var $i40: i64;
  var $i41: i64;
  var $p42: ref;
  var $i43: i8;
  var $p44: ref;
  var $i45: i64;
  var $i46: i64;
  var $i47: i64;
  var $i48: i64;
  var $p49: ref;
  var $i50: i8;
  var $p51: ref;
  var $i52: i64;
  var $i53: i64;
  var $i54: i64;
  var $i55: i64;
  var $p56: ref;
  var $i57: i8;
  var $p58: ref;
  var $i59: i64;
  var $i60: i64;
  var $i61: i64;
  var $i62: i64;
  var $p63: ref;
  var $i64: i8;
  var $p65: ref;
  var $i66: i64;
  var $i67: i64;
  var $i68: i64;
  var $i69: i64;
  var $p70: ref;
  var $i71: i8;
  var $p72: ref;
  var $i73: i64;
  var $i74: i64;
  var $i75: i64;
  var $i76: i64;
  var $p77: ref;
  var $i78: i8;
  var $p79: ref;
  var $i80: i64;
  var $i81: i64;
  var $i82: i64;
  var $i83: i64;
  var $p84: ref;
  var $i85: i8;
  var $p86: ref;
  var $i87: i64;
  var $i88: i64;
  var $i89: i64;
  var $i90: i64;
  var $p91: ref;
  var $i92: i8;
  var $p93: ref;
  var $i94: i64;
  var $i95: i64;
  var $i96: i64;
  var $i97: i64;
  var $p98: ref;
  var $i99: i8;
  var $p100: ref;
  var $i101: i64;
  var $i102: i64;
  var $p103: ref;
  var $i104: i64;
  var $i105: i64;
  var $p106: ref;
  var $p107: ref;
  var $i108: i64;
  var $i109: i64;
  var $i110: i64;
  var $p111: ref;
  var $i112: i64;
  var $i113: i64;
  var $i114: i64;
  var $p115: ref;
  var $i116: i64;
  var $i117: i64;
  var $p118: ref;
  var $p119: ref;
  var $p120: ref;
  var $p121: ref;
  var $i122: i32;
  var $i123: i1;
  var $i124: i64;
  var $i125: i64;
  var $p126: ref;
  var $i127: i32;
  var $i129: i32;
  var $i130: i1;
  var $p132: ref;
  var $i133: i64;
  var $i134: i64;
  var $p135: ref;
  var $i136: i64;
  var $i137: i64;
  var $i138: i64;
  var $i139: i64;
  var $p140: ref;
  var $i141: i64;
  var $i142: i64;
  var $i143: i64;
  var $p144: ref;
  var $i145: i64;
  var $i146: i64;
  var $p147: ref;
  var $i148: i64;
  var $i149: i64;
  var $p150: ref;
  var $p151: ref;
  var $i152: i32;
  var $i153: i1;
  var $i154: i64;
  var $i155: i64;
  var $p156: ref;
  var $i157: i32;
  var $i131: i32;
  var $p158: ref;
  var $i128: i32;
  var $i21: i32;
  var $p159: ref;
  var $i18: i32;
  var $i14: i32;
$bb0:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3964, 17} true;
  assume {:verifier.code 0} true;
  $i1 := $p2i.ref.i64($p0);
  // WARNING: %2 = ptrtoint %struct.platform_device* %0 to i64, !dbg !3808, !verifier.code !3807
  call {:cexpr "__cil_tmp12"} boogie_si_record_i64($i1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3965, 29} true;
  assume {:verifier.code 0} true;
  $i2 := $add.i64($i1, 16);
  // WARNING: %3 = add i64 %2, 16, !dbg !3813, !verifier.code !3807
  call {:cexpr "__cil_tmp13"} boogie_si_record_i64($i2);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3966, 19} true;
  assume {:verifier.code 0} true;
  $p3 := $i2p.i64.ref($i2);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3966, 17} true;
  assume {:verifier.code 0} true;
  $p4 := $load.ref($M.0, $p3);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3968, 13} true;
  assume {:verifier.code 0} true;
  call $p5 := dev_get_drvdata($p4);
  assume $isExternal($p5);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3969, 11} true;
  assume {:verifier.code 0} true;
  $p6 := $bitcast.ref.ref($p5);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3970, 17} true;
  assume {:verifier.code 0} true;
  $i7 := $p2i.ref.i64($p6);
  // WARNING: %8 = ptrtoint %struct.stmpe* %7 to i64, !dbg !3828, !verifier.code !3807
  call {:cexpr "__cil_tmp16"} boogie_si_record_i64($i7);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3971, 29} true;
  assume {:verifier.code 0} true;
  $i8 := $add.i64($i7, 208);
  // WARNING: %9 = add i64 %8, 208, !dbg !3831, !verifier.code !3807
  call {:cexpr "__cil_tmp17"} boogie_si_record_i64($i8);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3972, 13} true;
  assume {:verifier.code 0} true;
  $p9 := $i2p.i64.ref($i8);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3972, 11} true;
  assume {:verifier.code 0} true;
  $p10 := $load.ref($M.0, $p9);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3974, 14} true;
  assume {:verifier.code 0} true;
  $p11 := $bitcast.ref.ref($0.ref);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3975, 12} true;
  assume {:verifier.code 0} true;
  call $i12 := platform_get_irq_byname($p0, .str.1);
  // WARNING: %13 = call i32 @platform_get_irq_byname(%struct.platform_device* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0)), !dbg !3843, !verifier.code !3807
  call {:cexpr "ts_irq"} boogie_si_record_i32($i12);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3977, 14} true;
  assume {:verifier.code 0} true;
  $i13 := $slt.i32($i12, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3977, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i13} true;
  goto $bb1, $bb2;
$bb1:
  assume ($i13 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3978, 5} true;
  assume {:verifier.code 0} true;
  $i14 := $i12;
  goto $bb3;
$bb2:
  assume !(($i13 == 1));
  assume {:verifier.code 0} true;
  goto $bb4;
$bb3:
  assume {:verifier.code 0} true;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4219, 1} true;
  assume {:verifier.code 0} true;
  $r := $i14;
  $exn := false;
  return;
$bb4:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3983, 13} true;
  assume {:verifier.code 0} true;
  call $p15 := kzalloc(152, 208);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3984, 8} true;
  assume {:verifier.code 0} true;
  $p16 := $bitcast.ref.ref($p15);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3986, 9} true;
  assume {:verifier.code 0} true;
  $i17 := $ne.ref($p16, $0.ref);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3986, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i17} true;
  goto $bb5, $bb6;
$bb5:
  assume ($i17 == 1);
  assume {:verifier.code 0} true;
  goto $bb8;
$bb6:
  assume !(($i17 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3988, 5} true;
  assume {:verifier.code 0} true;
  $i18 := $sub.i32(0, 12);
  goto $bb7;
$bb7:
  assume {:verifier.code 0} true;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4217, 3} true;
  assume {:verifier.code 0} true;
  $i14 := $i18;
  goto $bb3;
$bb8:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3993, 10} true;
  assume {:verifier.code 0} true;
  call $p19 := input_allocate_device();
  assume $isExternal($p19);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3995, 9} true;
  assume {:verifier.code 0} true;
  $i20 := $ne.ref($p19, $0.ref);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3995, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i20} true;
  goto $bb9, $bb10;
$bb9:
  assume ($i20 == 1);
  assume {:verifier.code 0} true;
  goto $bb12;
$bb10:
  assume !(($i20 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3997, 5} true;
  assume {:verifier.code 0} true;
  $i21 := $sub.i32(0, 12);
  goto $bb11;
$bb11:
  assume {:verifier.code 0} true;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4213, 18} true;
  assume {:verifier.code 0} true;
  $p159 := $bitcast.ref.ref($p16);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4214, 3} true;
  assume {:verifier.code 0} true;
  call kfree($p159);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4215, 3} true;
  assume {:verifier.code 0} true;
  $i18 := $i21;
  goto $bb7;
$bb12:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4002, 17} true;
  assume {:verifier.code 0} true;
  $p22 := $bitcast.ref.ref($p16);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4003, 3} true;
  assume {:verifier.code 0} true;
  call platform_set_drvdata($p0, $p22);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4004, 3} true;
  assume {:verifier.code 0} true;
  $p23 := $bitcast.ref.ref($p16);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4004, 26} true;
  assume {:verifier.code 0} true;
  $M.0 := $store.ref($M.0, $p23, $p5);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4005, 17} true;
  assume {:verifier.code 0} true;
  $i24 := $p2i.ref.i64($p16);
  // WARNING: %31 = ptrtoint %struct.stmpe_touch* %19 to i64, !dbg !3881, !verifier.code !3807
  call {:cexpr "__cil_tmp20"} boogie_si_record_i64($i24);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4006, 29} true;
  assume {:verifier.code 0} true;
  $i25 := $add.i64($i24, 8);
  // WARNING: %32 = add i64 %31, 8, !dbg !3884, !verifier.code !3807
  call {:cexpr "__cil_tmp21"} boogie_si_record_i64($i25);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4007, 5} true;
  assume {:verifier.code 0} true;
  $p26 := $i2p.i64.ref($i25);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4007, 39} true;
  assume {:verifier.code 0} true;
  $M.0 := $store.ref($M.0, $p26, $p19);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4008, 17} true;
  assume {:verifier.code 0} true;
  $i27 := $p2i.ref.i64($p16);
  // WARNING: %34 = ptrtoint %struct.stmpe_touch* %19 to i64, !dbg !3889, !verifier.code !3807
  call {:cexpr "__cil_tmp22"} boogie_si_record_i64($i27);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4009, 29} true;
  assume {:verifier.code 0} true;
  $i28 := $add.i64($i27, 128);
  // WARNING: %35 = add i64 %34, 128, !dbg !3892, !verifier.code !3807
  call {:cexpr "__cil_tmp23"} boogie_si_record_i64($i28);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4010, 17} true;
  assume {:verifier.code 0} true;
  $i29 := $p2i.ref.i64($p0);
  // WARNING: %36 = ptrtoint %struct.platform_device* %0 to i64, !dbg !3895, !verifier.code !3807
  call {:cexpr "__cil_tmp24"} boogie_si_record_i64($i29);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4011, 29} true;
  assume {:verifier.code 0} true;
  $i30 := $add.i64($i29, 16);
  // WARNING: %37 = add i64 %36, 16, !dbg !3898, !verifier.code !3807
  call {:cexpr "__cil_tmp25"} boogie_si_record_i64($i30);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4012, 38} true;
  assume {:verifier.code 0} true;
  $p31 := $i2p.i64.ref($i30);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4012, 5} true;
  assume {:verifier.code 0} true;
  $p32 := $i2p.i64.ref($i28);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4012, 36} true;
  assume {:verifier.code 0} true;
  $M.0 := $store.ref($M.0, $p32, $p31);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4014, 7} true;
  assume {:verifier.code 0} true;
  $i33 := $ne.ref($p10, $0.ref);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4014, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i33} true;
  goto $bb13, $bb14;
$bb13:
  assume ($i33 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4015, 19} true;
  assume {:verifier.code 0} true;
  $i34 := $p2i.ref.i64($p10);
  // WARNING: %42 = ptrtoint %struct.stmpe_platform_data* %11 to i64, !dbg !3907, !verifier.code !3807
  call {:cexpr "__cil_tmp26"} boogie_si_record_i64($i34);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4016, 31} true;
  assume {:verifier.code 0} true;
  $i35 := $add.i64($i34, 48);
  // WARNING: %43 = add i64 %42, 48, !dbg !3911, !verifier.code !3807
  call {:cexpr "__cil_tmp27"} boogie_si_record_i64($i35);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4017, 18} true;
  assume {:verifier.code 0} true;
  $p36 := $i2p.i64.ref($i35);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4017, 16} true;
  assume {:verifier.code 0} true;
  $p37 := $load.ref($M.0, $p36);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4018, 3} true;
  assume {:verifier.code 0} true;
  $p38 := $p37;
  goto $bb15;
$bb14:
  assume !(($i33 == 1));
  assume {:verifier.code 0} true;
  $p38 := $0.ref;
  goto $bb15;
$bb15:
  assume {:verifier.code 0} true;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4021, 7} true;
  assume {:verifier.code 0} true;
  $i39 := $ne.ref($p38, $0.ref);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4021, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i39} true;
  goto $bb16, $bb17;
$bb16:
  assume ($i39 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4022, 19} true;
  assume {:verifier.code 0} true;
  $i40 := $p2i.ref.i64($p16);
  // WARNING: %50 = ptrtoint %struct.stmpe_touch* %19 to i64, !dbg !3920, !verifier.code !3807
  call {:cexpr "__cil_tmp28"} boogie_si_record_i64($i40);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4023, 31} true;
  assume {:verifier.code 0} true;
  $i41 := $add.i64($i40, 136);
  // WARNING: %51 = add i64 %50, 136, !dbg !3924, !verifier.code !3807
  call {:cexpr "__cil_tmp29"} boogie_si_record_i64($i41);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4024, 28} true;
  assume {:verifier.code 0} true;
  $p42 := $bitcast.ref.ref($p38);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4024, 28} true;
  assume {:verifier.code 0} true;
  $i43 := $load.i8($M.0, $p42);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4024, 7} true;
  assume {:verifier.code 0} true;
  $p44 := $i2p.i64.ref($i41);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4024, 26} true;
  assume {:verifier.code 0} true;
  $M.0 := $store.i8($M.0, $p44, $i43);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4025, 19} true;
  assume {:verifier.code 0} true;
  $i45 := $p2i.ref.i64($p16);
  // WARNING: %55 = ptrtoint %struct.stmpe_touch* %19 to i64, !dbg !3930, !verifier.code !3807
  call {:cexpr "__cil_tmp30"} boogie_si_record_i64($i45);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4026, 31} true;
  assume {:verifier.code 0} true;
  $i46 := $add.i64($i45, 137);
  // WARNING: %56 = add i64 %55, 137, !dbg !3933, !verifier.code !3807
  call {:cexpr "__cil_tmp31"} boogie_si_record_i64($i46);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4027, 19} true;
  assume {:verifier.code 0} true;
  $i47 := $p2i.ref.i64($p38);
  // WARNING: %57 = ptrtoint %struct.stmpe_ts_platform_data* %.02 to i64, !dbg !3936, !verifier.code !3807
  call {:cexpr "__cil_tmp32"} boogie_si_record_i64($i47);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4028, 31} true;
  assume {:verifier.code 0} true;
  $i48 := $add.i64($i47, 1);
  // WARNING: %58 = add i64 %57, 1, !dbg !3939, !verifier.code !3807
  call {:cexpr "__cil_tmp33"} boogie_si_record_i64($i48);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4029, 30} true;
  assume {:verifier.code 0} true;
  $p49 := $i2p.i64.ref($i48);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4029, 28} true;
  assume {:verifier.code 0} true;
  $i50 := $load.i8($M.0, $p49);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4029, 7} true;
  assume {:verifier.code 0} true;
  $p51 := $i2p.i64.ref($i46);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4029, 26} true;
  assume {:verifier.code 0} true;
  $M.0 := $store.i8($M.0, $p51, $i50);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4030, 19} true;
  assume {:verifier.code 0} true;
  $i52 := $p2i.ref.i64($p16);
  // WARNING: %62 = ptrtoint %struct.stmpe_touch* %19 to i64, !dbg !3946, !verifier.code !3807
  call {:cexpr "__cil_tmp34"} boogie_si_record_i64($i52);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4031, 31} true;
  assume {:verifier.code 0} true;
  $i53 := $add.i64($i52, 138);
  // WARNING: %63 = add i64 %62, 138, !dbg !3949, !verifier.code !3807
  call {:cexpr "__cil_tmp35"} boogie_si_record_i64($i53);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4032, 19} true;
  assume {:verifier.code 0} true;
  $i54 := $p2i.ref.i64($p38);
  // WARNING: %64 = ptrtoint %struct.stmpe_ts_platform_data* %.02 to i64, !dbg !3952, !verifier.code !3807
  call {:cexpr "__cil_tmp36"} boogie_si_record_i64($i54);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4033, 31} true;
  assume {:verifier.code 0} true;
  $i55 := $add.i64($i54, 2);
  // WARNING: %65 = add i64 %64, 2, !dbg !3955, !verifier.code !3807
  call {:cexpr "__cil_tmp37"} boogie_si_record_i64($i55);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4034, 30} true;
  assume {:verifier.code 0} true;
  $p56 := $i2p.i64.ref($i55);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4034, 28} true;
  assume {:verifier.code 0} true;
  $i57 := $load.i8($M.0, $p56);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4034, 7} true;
  assume {:verifier.code 0} true;
  $p58 := $i2p.i64.ref($i53);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4034, 26} true;
  assume {:verifier.code 0} true;
  $M.0 := $store.i8($M.0, $p58, $i57);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4035, 19} true;
  assume {:verifier.code 0} true;
  $i59 := $p2i.ref.i64($p16);
  // WARNING: %69 = ptrtoint %struct.stmpe_touch* %19 to i64, !dbg !3962, !verifier.code !3807
  call {:cexpr "__cil_tmp38"} boogie_si_record_i64($i59);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4036, 31} true;
  assume {:verifier.code 0} true;
  $i60 := $add.i64($i59, 139);
  // WARNING: %70 = add i64 %69, 139, !dbg !3965, !verifier.code !3807
  call {:cexpr "__cil_tmp39"} boogie_si_record_i64($i60);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4037, 19} true;
  assume {:verifier.code 0} true;
  $i61 := $p2i.ref.i64($p38);
  // WARNING: %71 = ptrtoint %struct.stmpe_ts_platform_data* %.02 to i64, !dbg !3968, !verifier.code !3807
  call {:cexpr "__cil_tmp40"} boogie_si_record_i64($i61);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4038, 31} true;
  assume {:verifier.code 0} true;
  $i62 := $add.i64($i61, 3);
  // WARNING: %72 = add i64 %71, 3, !dbg !3971, !verifier.code !3807
  call {:cexpr "__cil_tmp41"} boogie_si_record_i64($i62);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4039, 30} true;
  assume {:verifier.code 0} true;
  $p63 := $i2p.i64.ref($i62);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4039, 28} true;
  assume {:verifier.code 0} true;
  $i64 := $load.i8($M.0, $p63);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4039, 7} true;
  assume {:verifier.code 0} true;
  $p65 := $i2p.i64.ref($i60);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4039, 26} true;
  assume {:verifier.code 0} true;
  $M.0 := $store.i8($M.0, $p65, $i64);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4040, 19} true;
  assume {:verifier.code 0} true;
  $i66 := $p2i.ref.i64($p16);
  // WARNING: %76 = ptrtoint %struct.stmpe_touch* %19 to i64, !dbg !3978, !verifier.code !3807
  call {:cexpr "__cil_tmp42"} boogie_si_record_i64($i66);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4041, 31} true;
  assume {:verifier.code 0} true;
  $i67 := $add.i64($i66, 140);
  // WARNING: %77 = add i64 %76, 140, !dbg !3981, !verifier.code !3807
  call {:cexpr "__cil_tmp43"} boogie_si_record_i64($i67);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4042, 19} true;
  assume {:verifier.code 0} true;
  $i68 := $p2i.ref.i64($p38);
  // WARNING: %78 = ptrtoint %struct.stmpe_ts_platform_data* %.02 to i64, !dbg !3984, !verifier.code !3807
  call {:cexpr "__cil_tmp44"} boogie_si_record_i64($i68);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4043, 31} true;
  assume {:verifier.code 0} true;
  $i69 := $add.i64($i68, 4);
  // WARNING: %79 = add i64 %78, 4, !dbg !3987, !verifier.code !3807
  call {:cexpr "__cil_tmp45"} boogie_si_record_i64($i69);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4044, 30} true;
  assume {:verifier.code 0} true;
  $p70 := $i2p.i64.ref($i69);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4044, 28} true;
  assume {:verifier.code 0} true;
  $i71 := $load.i8($M.0, $p70);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4044, 7} true;
  assume {:verifier.code 0} true;
  $p72 := $i2p.i64.ref($i67);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4044, 26} true;
  assume {:verifier.code 0} true;
  $M.0 := $store.i8($M.0, $p72, $i71);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4045, 19} true;
  assume {:verifier.code 0} true;
  $i73 := $p2i.ref.i64($p16);
  // WARNING: %83 = ptrtoint %struct.stmpe_touch* %19 to i64, !dbg !3994, !verifier.code !3807
  call {:cexpr "__cil_tmp46"} boogie_si_record_i64($i73);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4046, 31} true;
  assume {:verifier.code 0} true;
  $i74 := $add.i64($i73, 141);
  // WARNING: %84 = add i64 %83, 141, !dbg !3997, !verifier.code !3807
  call {:cexpr "__cil_tmp47"} boogie_si_record_i64($i74);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4047, 19} true;
  assume {:verifier.code 0} true;
  $i75 := $p2i.ref.i64($p38);
  // WARNING: %85 = ptrtoint %struct.stmpe_ts_platform_data* %.02 to i64, !dbg !4000, !verifier.code !3807
  call {:cexpr "__cil_tmp48"} boogie_si_record_i64($i75);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4048, 31} true;
  assume {:verifier.code 0} true;
  $i76 := $add.i64($i75, 5);
  // WARNING: %86 = add i64 %85, 5, !dbg !4003, !verifier.code !3807
  call {:cexpr "__cil_tmp49"} boogie_si_record_i64($i76);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4049, 30} true;
  assume {:verifier.code 0} true;
  $p77 := $i2p.i64.ref($i76);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4049, 28} true;
  assume {:verifier.code 0} true;
  $i78 := $load.i8($M.0, $p77);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4049, 7} true;
  assume {:verifier.code 0} true;
  $p79 := $i2p.i64.ref($i74);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4049, 26} true;
  assume {:verifier.code 0} true;
  $M.0 := $store.i8($M.0, $p79, $i78);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4050, 19} true;
  assume {:verifier.code 0} true;
  $i80 := $p2i.ref.i64($p16);
  // WARNING: %90 = ptrtoint %struct.stmpe_touch* %19 to i64, !dbg !4010, !verifier.code !3807
  call {:cexpr "__cil_tmp50"} boogie_si_record_i64($i80);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4051, 31} true;
  assume {:verifier.code 0} true;
  $i81 := $add.i64($i80, 142);
  // WARNING: %91 = add i64 %90, 142, !dbg !4013, !verifier.code !3807
  call {:cexpr "__cil_tmp51"} boogie_si_record_i64($i81);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4052, 19} true;
  assume {:verifier.code 0} true;
  $i82 := $p2i.ref.i64($p38);
  // WARNING: %92 = ptrtoint %struct.stmpe_ts_platform_data* %.02 to i64, !dbg !4016, !verifier.code !3807
  call {:cexpr "__cil_tmp52"} boogie_si_record_i64($i82);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4053, 31} true;
  assume {:verifier.code 0} true;
  $i83 := $add.i64($i82, 6);
  // WARNING: %93 = add i64 %92, 6, !dbg !4019, !verifier.code !3807
  call {:cexpr "__cil_tmp53"} boogie_si_record_i64($i83);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4054, 30} true;
  assume {:verifier.code 0} true;
  $p84 := $i2p.i64.ref($i83);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4054, 28} true;
  assume {:verifier.code 0} true;
  $i85 := $load.i8($M.0, $p84);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4054, 7} true;
  assume {:verifier.code 0} true;
  $p86 := $i2p.i64.ref($i81);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4054, 26} true;
  assume {:verifier.code 0} true;
  $M.0 := $store.i8($M.0, $p86, $i85);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4055, 19} true;
  assume {:verifier.code 0} true;
  $i87 := $p2i.ref.i64($p16);
  // WARNING: %97 = ptrtoint %struct.stmpe_touch* %19 to i64, !dbg !4026, !verifier.code !3807
  call {:cexpr "__cil_tmp54"} boogie_si_record_i64($i87);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4056, 31} true;
  assume {:verifier.code 0} true;
  $i88 := $add.i64($i87, 143);
  // WARNING: %98 = add i64 %97, 143, !dbg !4029, !verifier.code !3807
  call {:cexpr "__cil_tmp55"} boogie_si_record_i64($i88);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4057, 19} true;
  assume {:verifier.code 0} true;
  $i89 := $p2i.ref.i64($p38);
  // WARNING: %99 = ptrtoint %struct.stmpe_ts_platform_data* %.02 to i64, !dbg !4032, !verifier.code !3807
  call {:cexpr "__cil_tmp56"} boogie_si_record_i64($i89);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4058, 31} true;
  assume {:verifier.code 0} true;
  $i90 := $add.i64($i89, 7);
  // WARNING: %100 = add i64 %99, 7, !dbg !4035, !verifier.code !3807
  call {:cexpr "__cil_tmp57"} boogie_si_record_i64($i90);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4059, 30} true;
  assume {:verifier.code 0} true;
  $p91 := $i2p.i64.ref($i90);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4059, 28} true;
  assume {:verifier.code 0} true;
  $i92 := $load.i8($M.0, $p91);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4059, 7} true;
  assume {:verifier.code 0} true;
  $p93 := $i2p.i64.ref($i88);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4059, 26} true;
  assume {:verifier.code 0} true;
  $M.0 := $store.i8($M.0, $p93, $i92);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4060, 19} true;
  assume {:verifier.code 0} true;
  $i94 := $p2i.ref.i64($p16);
  // WARNING: %104 = ptrtoint %struct.stmpe_touch* %19 to i64, !dbg !4042, !verifier.code !3807
  call {:cexpr "__cil_tmp58"} boogie_si_record_i64($i94);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4061, 31} true;
  assume {:verifier.code 0} true;
  $i95 := $add.i64($i94, 144);
  // WARNING: %105 = add i64 %104, 144, !dbg !4045, !verifier.code !3807
  call {:cexpr "__cil_tmp59"} boogie_si_record_i64($i95);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4062, 19} true;
  assume {:verifier.code 0} true;
  $i96 := $p2i.ref.i64($p38);
  // WARNING: %106 = ptrtoint %struct.stmpe_ts_platform_data* %.02 to i64, !dbg !4048, !verifier.code !3807
  call {:cexpr "__cil_tmp60"} boogie_si_record_i64($i96);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4063, 31} true;
  assume {:verifier.code 0} true;
  $i97 := $add.i64($i96, 8);
  // WARNING: %107 = add i64 %106, 8, !dbg !4051, !verifier.code !3807
  call {:cexpr "__cil_tmp61"} boogie_si_record_i64($i97);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4064, 30} true;
  assume {:verifier.code 0} true;
  $p98 := $i2p.i64.ref($i97);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4064, 28} true;
  assume {:verifier.code 0} true;
  $i99 := $load.i8($M.0, $p98);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4064, 7} true;
  assume {:verifier.code 0} true;
  $p100 := $i2p.i64.ref($i95);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4064, 26} true;
  assume {:verifier.code 0} true;
  $M.0 := $store.i8($M.0, $p100, $i99);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4065, 3} true;
  assume {:verifier.code 0} true;
  goto $bb18;
$bb17:
  assume !(($i39 == 1));
  assume {:verifier.code 0} true;
  goto $bb18;
$bb18:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4069, 3} true;
  assume {:verifier.code 0} true;
  goto $bb19;
$bb19:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4069, 13} true;
  assume {:verifier.code 0} true;
  goto $bb20;
$bb20:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4072, 5} true;
  assume {:verifier.code 0} true;
  goto $bb21;
$bb21:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4072, 15} true;
  assume {:verifier.code 0} true;
  goto $bb22;
$bb22:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4075, 7} true;
  assume {:verifier.code 0} true;
  goto $bb23;
$bb23:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4075, 17} true;
  assume {:verifier.code 0} true;
  goto $bb24;
$bb24:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4078, 23} true;
  assume {:verifier.code 0} true;
  $i101 := $p2i.ref.i64($p16);
  // WARNING: %119 = ptrtoint %struct.stmpe_touch* %19 to i64, !dbg !4073, !verifier.code !3807
  call {:cexpr "__cil_tmp62"} boogie_si_record_i64($i101);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4079, 35} true;
  assume {:verifier.code 0} true;
  $i102 := $add.i64($i101, 16);
  // WARNING: %120 = add i64 %119, 16, !dbg !4078, !verifier.code !3807
  call {:cexpr "__cil_tmp63"} boogie_si_record_i64($i102);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4080, 23} true;
  assume {:verifier.code 0} true;
  $p103 := $i2p.i64.ref($i102);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4081, 9} true;
  assume {:verifier.code 0} true;
  call __init_work($p103, 0);
  // WARNING: call void @__init_work(%struct.work_struct* %121, i32 0), !dbg !4084, !verifier.code !3807
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4083, 23} true;
  assume {:verifier.code 0} true;
  $i104 := $p2i.ref.i64($p16);
  // WARNING: %122 = ptrtoint %struct.stmpe_touch* %19 to i64, !dbg !4087, !verifier.code !3807
  call {:cexpr "__cil_tmp65"} boogie_si_record_i64($i104);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4084, 35} true;
  assume {:verifier.code 0} true;
  $i105 := $add.i64($i104, 16);
  // WARNING: %123 = add i64 %122, 16, !dbg !4090, !verifier.code !3807
  call {:cexpr "__cil_tmp66"} boogie_si_record_i64($i105);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4085, 10} true;
  assume {:verifier.code 0} true;
  $p106 := $i2p.i64.ref($i105);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4085, 41} true;
  assume {:verifier.code 0} true;
  $p107 := $p106;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4085, 49} true;
  assume {:verifier.code 0} true;
  $M.0 := $store.i64($M.0, $p107, 2097664);
  // WARNING: store i64 2097664, i64* %125, align 8, !dbg !4095, !verifier.code !3807
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4087, 26} true;
  assume {:verifier.code 0} true;
  $i108 := $add.i64(16, 8);
  // WARNING: %126 = add i64 16, 8, !dbg !4098, !verifier.code !3807
  call {:cexpr "__cil_tmp68"} boogie_si_record_i64($i108);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4088, 23} true;
  assume {:verifier.code 0} true;
  $i109 := $p2i.ref.i64($p16);
  // WARNING: %127 = ptrtoint %struct.stmpe_touch* %19 to i64, !dbg !4101, !verifier.code !3807
  call {:cexpr "__cil_tmp69"} boogie_si_record_i64($i109);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4089, 35} true;
  assume {:verifier.code 0} true;
  $i110 := $add.i64($i109, $i108);
  // WARNING: %128 = add i64 %127, %126, !dbg !4104, !verifier.code !3807
  call {:cexpr "__cil_tmp70"} boogie_si_record_i64($i110);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4090, 23} true;
  assume {:verifier.code 0} true;
  $p111 := $i2p.i64.ref($i110);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4091, 9} true;
  assume {:verifier.code 0} true;
  call INIT_LIST_HEAD($p111);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4094, 9} true;
  assume {:verifier.code 0} true;
  goto $bb25;
$bb25:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4094, 19} true;
  assume {:verifier.code 0} true;
  goto $bb26;
$bb26:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4097, 28} true;
  assume {:verifier.code 0} true;
  $i112 := $add.i64(16, 24);
  // WARNING: %132 = add i64 16, 24, !dbg !4117, !verifier.code !3807
  call {:cexpr "__cil_tmp73"} boogie_si_record_i64($i112);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4098, 25} true;
  assume {:verifier.code 0} true;
  $i113 := $p2i.ref.i64($p16);
  // WARNING: %133 = ptrtoint %struct.stmpe_touch* %19 to i64, !dbg !4121, !verifier.code !3807
  call {:cexpr "__cil_tmp74"} boogie_si_record_i64($i113);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4099, 37} true;
  assume {:verifier.code 0} true;
  $i114 := $add.i64($i113, $i112);
  // WARNING: %134 = add i64 %133, %132, !dbg !4124, !verifier.code !3807
  call {:cexpr "__cil_tmp75"} boogie_si_record_i64($i114);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4100, 13} true;
  assume {:verifier.code 0} true;
  $p115 := $i2p.i64.ref($i114);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4100, 64} true;
  assume {:verifier.code 0} true;
  $M.0 := $store.ref($M.0, $p115, stmpe_work);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4101, 11} true;
  assume {:verifier.code 0} true;
  goto $bb27;
$bb27:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4105, 9} true;
  assume {:verifier.code 0} true;
  goto $bb28;
$bb28:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4109, 7} true;
  assume {:verifier.code 0} true;
  goto $bb29;
$bb29:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4115, 19} true;
  assume {:verifier.code 0} true;
  $i116 := $p2i.ref.i64($p16);
  // WARNING: %139 = ptrtoint %struct.stmpe_touch* %19 to i64, !dbg !4134, !verifier.code !3807
  call {:cexpr "__cil_tmp77"} boogie_si_record_i64($i116);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4116, 31} true;
  assume {:verifier.code 0} true;
  $i117 := $add.i64($i116, 48);
  // WARNING: %140 = add i64 %139, 48, !dbg !4138, !verifier.code !3807
  call {:cexpr "__cil_tmp78"} boogie_si_record_i64($i117);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4117, 19} true;
  assume {:verifier.code 0} true;
  $p118 := $i2p.i64.ref($i117);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4121, 19} true;
  assume {:verifier.code 0} true;
  $p119 := $bitcast.ref.ref($0.ref);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4122, 5} true;
  assume {:verifier.code 0} true;
  call init_timer_key($p118, $0.ref, $p119);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4124, 5} true;
  assume {:verifier.code 0} true;
  goto $bb30;
$bb30:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4131, 17} true;
  assume {:verifier.code 0} true;
  $p120 := $bitcast.ref.ref($0.ref);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4132, 17} true;
  assume {:verifier.code 0} true;
  $p121 := $bitcast.ref.ref($p16);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4133, 15} true;
  assume {:verifier.code 0} true;
  call $i122 := request_threaded_irq($i12, $p120, stmpe_ts_handler, 8192, .str, $p121);
  // WARNING: %146 = call i32 @request_threaded_irq(i32 %13, i32 (i32, i8*)* %144, i32 (i32, i8*)* @stmpe_ts_handler, i64 8192, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* %145), !dbg !4166, !verifier.code !3807
  call {:cexpr "ret"} boogie_si_record_i32($i122);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4136, 7} true;
  assume {:verifier.code 0} true;
  $i123 := $ne.i32($i122, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4136, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i123} true;
  goto $bb31, $bb32;
$bb31:
  assume ($i123 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4138, 19} true;
  assume {:verifier.code 0} true;
  $i124 := $p2i.ref.i64($p0);
  // WARNING: %149 = ptrtoint %struct.platform_device* %0 to i64, !dbg !4170, !verifier.code !3807
  call {:cexpr "__cil_tmp88"} boogie_si_record_i64($i124);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4139, 31} true;
  assume {:verifier.code 0} true;
  $i125 := $add.i64($i124, 16);
  // WARNING: %150 = add i64 %149, 16, !dbg !4175, !verifier.code !3807
  call {:cexpr "__cil_tmp89"} boogie_si_record_i64($i125);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4140, 19} true;
  assume {:verifier.code 0} true;
  $p126 := $i2p.i64.ref($i125);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4142, 5} true;
  assume {:verifier.code 0} true;
  call $i127 := dev_err.ref.ref.i32($p126, .str.2, $i12);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4144, 5} true;
  assume {:verifier.code 0} true;
  $i128 := $i122;
  goto $bb33;
$bb32:
  assume !(($i123 == 1));
  assume {:verifier.code 0} true;
  goto $bb34;
$bb33:
  assume {:verifier.code 0} true;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4207, 3} true;
  assume {:verifier.code 0} true;
  call input_free_device($p19);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4209, 3} true;
  assume {:verifier.code 0} true;
  call platform_set_drvdata($p0, $0.ref);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4210, 3} true;
  assume {:verifier.code 0} true;
  $i21 := $i128;
  goto $bb11;
$bb34:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4149, 9} true;
  assume {:verifier.code 0} true;
  call $i129 := stmpe_init_hw($p16);
  // WARNING: %155 = call i32 @stmpe_init_hw(%struct.stmpe_touch* %19), !dbg !4185, !verifier.code !3807
  call {:cexpr "ret"} boogie_si_record_i32($i129);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4151, 7} true;
  assume {:verifier.code 0} true;
  $i130 := $ne.i32($i129, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4151, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i130} true;
  goto $bb35, $bb36;
$bb35:
  assume ($i130 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4152, 5} true;
  assume {:verifier.code 0} true;
  $i131 := $i129;
  goto $bb37;
$bb36:
  assume !(($i130 == 1));
  assume {:verifier.code 0} true;
  goto $bb38;
$bb37:
  assume {:verifier.code 0} true;
  // WARNING: %.01 = phi i32 [ %155, %157 ], [ %180, %182 ], !verifier.code !3807
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4202, 18} true;
  assume {:verifier.code 0} true;
  $p158 := $bitcast.ref.ref($p16);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4203, 3} true;
  assume {:verifier.code 0} true;
  call free_irq($i12, $p158);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4204, 3} true;
  assume {:verifier.code 0} true;
  $i128 := $i131;
  goto $bb33;
$bb38:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4157, 3} true;
  assume {:verifier.code 0} true;
  $p132 := $bitcast.ref.ref($p19);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4157, 28} true;
  assume {:verifier.code 0} true;
  $M.0 := $store.ref($M.0, $p132, .str);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4158, 17} true;
  assume {:verifier.code 0} true;
  $i133 := $p2i.ref.i64($p19);
  // WARNING: %161 = ptrtoint %struct.input_dev* %24 to i64, !dbg !4195, !verifier.code !3807
  call {:cexpr "__cil_tmp92"} boogie_si_record_i64($i133);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4159, 29} true;
  assume {:verifier.code 0} true;
  $i134 := $add.i64($i133, 24);
  // WARNING: %162 = add i64 %161, 24, !dbg !4198, !verifier.code !3807
  call {:cexpr "__cil_tmp93"} boogie_si_record_i64($i134);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4160, 5} true;
  assume {:verifier.code 0} true;
  $p135 := $i2p.i64.ref($i134);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4160, 27} true;
  assume {:verifier.code 0} true;
  $M.0 := $store.i16($M.0, $p135, 24);
  // WARNING: store i16 24, i16* %163, align 2, !dbg !4202, !verifier.code !3807
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4162, 20} true;
  assume {:verifier.code 0} true;
  $i136 := $add.i64(40, 0);
  // WARNING: %164 = add i64 40, 0, !dbg !4205, !verifier.code !3807
  call {:cexpr "__cil_tmp95"} boogie_si_record_i64($i136);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4163, 17} true;
  assume {:verifier.code 0} true;
  $i137 := $p2i.ref.i64($p19);
  // WARNING: %165 = ptrtoint %struct.input_dev* %24 to i64, !dbg !4208, !verifier.code !3807
  call {:cexpr "__cil_tmp96"} boogie_si_record_i64($i137);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4164, 29} true;
  assume {:verifier.code 0} true;
  $i138 := $add.i64($i137, $i136);
  // WARNING: %166 = add i64 %165, %164, !dbg !4211, !verifier.code !3807
  call {:cexpr "__cil_tmp97"} boogie_si_record_i64($i138);
  // WARNING: call void @llvm.dbg.value(metadata i64 %166, i64 0, metadata !4212, metadata !3805), !dbg !4213, !verifier.code !3807
  // WARNING: call void @llvm.dbg.value(metadata i64 8, i64 0, metadata !4214, metadata !3805), !dbg !4215, !verifier.code !3807
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4167, 49} true;
  assume {:verifier.code 0} true;
  $i139 := $or.i64(2, 8);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4167, 5} true;
  assume {:verifier.code 0} true;
  $p140 := $i2p.i64.ref($i138);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4167, 35} true;
  assume {:verifier.code 0} true;
  $M.0 := $store.i64($M.0, $p140, $i139);
  // WARNING: store i64 %167, i64* %168, align 8, !dbg !4220, !verifier.code !3807
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4169, 21} true;
  assume {:verifier.code 0} true;
  $i141 := $add.i64(48, 40);
  // WARNING: %169 = add i64 48, 40, !dbg !4223, !verifier.code !3807
  call {:cexpr "__cil_tmp101"} boogie_si_record_i64($i141);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4170, 18} true;
  assume {:verifier.code 0} true;
  $i142 := $p2i.ref.i64($p19);
  // WARNING: %170 = ptrtoint %struct.input_dev* %24 to i64, !dbg !4226, !verifier.code !3807
  call {:cexpr "__cil_tmp102"} boogie_si_record_i64($i142);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4171, 31} true;
  assume {:verifier.code 0} true;
  $i143 := $add.i64($i142, $i141);
  // WARNING: %171 = add i64 %170, %169, !dbg !4229, !verifier.code !3807
  call {:cexpr "__cil_tmp103"} boogie_si_record_i64($i143);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4172, 5} true;
  assume {:verifier.code 0} true;
  $p144 := $i2p.i64.ref($i143);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4172, 36} true;
  assume {:verifier.code 0} true;
  $M.0 := $store.i64($M.0, $p144, 1024);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4173, 18} true;
  assume {:verifier.code 0} true;
  $i145 := $p2i.ref.i64($p19);
  // WARNING: %173 = ptrtoint %struct.input_dev* %24 to i64, !dbg !4234, !verifier.code !3807
  call {:cexpr "__cil_tmp104"} boogie_si_record_i64($i145);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4174, 31} true;
  assume {:verifier.code 0} true;
  $i146 := $add.i64($i145, 504);
  // WARNING: %174 = add i64 %173, 504, !dbg !4237, !verifier.code !3807
  call {:cexpr "__cil_tmp105"} boogie_si_record_i64($i146);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4175, 5} true;
  assume {:verifier.code 0} true;
  $p147 := $i2p.i64.ref($i146);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4175, 53} true;
  assume {:verifier.code 0} true;
  $M.0 := $store.ref($M.0, $p147, stmpe_ts_open);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4176, 18} true;
  assume {:verifier.code 0} true;
  $i148 := $p2i.ref.i64($p19);
  // WARNING: %176 = ptrtoint %struct.input_dev* %24 to i64, !dbg !4242, !verifier.code !3807
  call {:cexpr "__cil_tmp106"} boogie_si_record_i64($i148);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4177, 31} true;
  assume {:verifier.code 0} true;
  $i149 := $add.i64($i148, 512);
  // WARNING: %177 = add i64 %176, 512, !dbg !4245, !verifier.code !3807
  call {:cexpr "__cil_tmp107"} boogie_si_record_i64($i149);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4178, 5} true;
  assume {:verifier.code 0} true;
  $p150 := $i2p.i64.ref($i149);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4178, 54} true;
  assume {:verifier.code 0} true;
  $M.0 := $store.ref($M.0, $p150, stmpe_ts_close);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4179, 18} true;
  assume {:verifier.code 0} true;
  $p151 := $bitcast.ref.ref($p16);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4180, 3} true;
  assume {:verifier.code 0} true;
  call input_set_drvdata($p19, $p151);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4181, 3} true;
  assume {:verifier.code 0} true;
  call input_set_abs_params($p19, 0, 0, 4095, 0, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4182, 3} true;
  assume {:verifier.code 0} true;
  call input_set_abs_params($p19, 1, 0, 4095, 0, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4183, 3} true;
  assume {:verifier.code 0} true;
  call input_set_abs_params($p19, 24, 0, 255, 0, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4184, 15} true;
  assume {:verifier.code 0} true;
  call $i152 := input_register_device($p19);
  // WARNING: %180 = call i32 @input_register_device(%struct.input_dev* %24), !dbg !4257, !verifier.code !3807
  call {:cexpr "ret"} boogie_si_record_i32($i152);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4186, 7} true;
  assume {:verifier.code 0} true;
  $i153 := $ne.i32($i152, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4186, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i153} true;
  goto $bb39, $bb40;
$bb39:
  assume ($i153 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4188, 20} true;
  assume {:verifier.code 0} true;
  $i154 := $p2i.ref.i64($p0);
  // WARNING: %183 = ptrtoint %struct.platform_device* %0 to i64, !dbg !4261, !verifier.code !3807
  call {:cexpr "__cil_tmp109"} boogie_si_record_i64($i154);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4189, 33} true;
  assume {:verifier.code 0} true;
  $i155 := $add.i64($i154, 16);
  // WARNING: %184 = add i64 %183, 16, !dbg !4266, !verifier.code !3807
  call {:cexpr "__cil_tmp110"} boogie_si_record_i64($i155);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4190, 20} true;
  assume {:verifier.code 0} true;
  $p156 := $i2p.i64.ref($i155);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4192, 5} true;
  assume {:verifier.code 0} true;
  call $i157 := dev_err.ref.ref($p156, .str.3);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4194, 5} true;
  assume {:verifier.code 0} true;
  $i131 := $i152;
  goto $bb37;
$bb40:
  assume !(($i153 == 1));
  assume {:verifier.code 0} true;
  goto $bb41;
$bb41:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4198, 3} true;
  assume {:verifier.code 0} true;
  $i14 := $i152;
  goto $bb3;
}
const stmpe_ts_remove: ref;
axiom (stmpe_ts_remove == $sub.ref(0, 23085));
procedure stmpe_ts_remove($p0: ref)
  returns ($r: i32)
{
  var $p1: ref;
  var $p2: ref;
  var $i3: i32;
  var $p4: ref;
  var $p5: ref;
  var $i6: i32;
  var $p7: ref;
  var $i8: i64;
  var $i9: i64;
  var $p10: ref;
  var $p11: ref;
  var $p12: ref;
$bb0:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4239, 13} true;
  assume {:verifier.code 0} true;
  call $p1 := platform_get_drvdata($p0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4240, 8} true;
  assume {:verifier.code 0} true;
  $p2 := $bitcast.ref.ref($p1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4241, 13} true;
  assume {:verifier.code 0} true;
  call $i3 := platform_get_irq_byname($p0, .str.1);
  // WARNING: %4 = call i32 @platform_get_irq_byname(%struct.platform_device* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0)), !dbg !3818, !verifier.code !3807
  call {:cexpr "tmp___8"} boogie_si_record_i32($i3);
  // WARNING: call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !4313, metadata !3805), !dbg !4314, !verifier.code !3807
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4243, 16} true;
  assume {:verifier.code 0} true;
  $p4 := $bitcast.ref.ref($p2);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4243, 16} true;
  assume {:verifier.code 0} true;
  $p5 := $load.ref($M.0, $p4);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4244, 3} true;
  assume {:verifier.code 0} true;
  call $i6 := stmpe_disable($p5, 4);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4245, 16} true;
  assume {:verifier.code 0} true;
  $p7 := $bitcast.ref.ref($p2);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4246, 3} true;
  assume {:verifier.code 0} true;
  call free_irq($i3, $p7);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4248, 3} true;
  assume {:verifier.code 0} true;
  call platform_set_drvdata($p0, $0.ref);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4249, 17} true;
  assume {:verifier.code 0} true;
  $i8 := $p2i.ref.i64($p2);
  // WARNING: %9 = ptrtoint %struct.stmpe_touch* %3 to i64, !dbg !3834, !verifier.code !3807
  call {:cexpr "__cil_tmp10"} boogie_si_record_i64($i8);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4250, 29} true;
  assume {:verifier.code 0} true;
  $i9 := $add.i64($i8, 8);
  // WARNING: %10 = add i64 %9, 8, !dbg !3837, !verifier.code !3807
  call {:cexpr "__cil_tmp11"} boogie_si_record_i64($i9);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4251, 19} true;
  assume {:verifier.code 0} true;
  $p10 := $i2p.i64.ref($i9);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4251, 17} true;
  assume {:verifier.code 0} true;
  $p11 := $load.ref($M.0, $p10);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4252, 3} true;
  assume {:verifier.code 0} true;
  call input_unregister_device($p11);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4253, 17} true;
  assume {:verifier.code 0} true;
  $p12 := $bitcast.ref.ref($p2);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4254, 3} true;
  assume {:verifier.code 0} true;
  call kfree($p12);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4256, 3} true;
  assume {:verifier.code 0} true;
  $r := 0;
  $exn := false;
  return;
}
const platform_get_drvdata: ref;
axiom (platform_get_drvdata == $sub.ref(0, 24117));
procedure platform_get_drvdata($p0: ref)
  returns ($r: ref)
{
  var $i1: i64;
  var $i2: i64;
  var $p3: ref;
  var $p4: ref;
$bb0:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3118, 16} true;
  assume {:verifier.code 0} true;
  $i1 := $p2i.ref.i64($p0);
  // WARNING: %2 = ptrtoint %struct.platform_device* %0 to i64, !dbg !3810, !verifier.code !3809
  call {:cexpr "__cil_tmp3"} boogie_si_record_i64($i1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3119, 27} true;
  assume {:verifier.code 0} true;
  $i2 := $add.i64($i1, 16);
  // WARNING: %3 = add i64 %2, 16, !dbg !3815, !verifier.code !3809
  call {:cexpr "__cil_tmp4"} boogie_si_record_i64($i2);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3120, 16} true;
  assume {:verifier.code 0} true;
  $p3 := $i2p.i64.ref($i2);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3121, 13} true;
  assume {:verifier.code 0} true;
  call $p4 := dev_get_drvdata($p3);
  assume $isExternal($p4);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3123, 3} true;
  assume {:verifier.code 0} true;
  $r := $p4;
  $exn := false;
  return;
}
const platform_get_irq_byname: ref;
axiom (platform_get_irq_byname == $sub.ref(0, 25149));
procedure platform_get_irq_byname($p0: ref, $p1: ref)
  returns ($r: i32);
const stmpe_disable: ref;
axiom (stmpe_disable == $sub.ref(0, 26181));
procedure stmpe_disable($p0: ref, $i1: i32)
  returns ($r: i32);
const free_irq: ref;
axiom (free_irq == $sub.ref(0, 27213));
procedure free_irq($i0: i32, $p1: ref);
const platform_set_drvdata: ref;
axiom (platform_set_drvdata == $sub.ref(0, 28245));
procedure platform_set_drvdata($p0: ref, $p1: ref)
{
  var $i2: i64;
  var $i3: i64;
  var $p4: ref;
  var $i5: i32;
$bb0:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3134, 16} true;
  assume {:verifier.code 0} true;
  $i2 := $p2i.ref.i64($p0);
  // WARNING: %3 = ptrtoint %struct.platform_device* %0 to i64, !dbg !3812, !verifier.code !3809
  call {:cexpr "__cil_tmp3"} boogie_si_record_i64($i2);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3135, 27} true;
  assume {:verifier.code 0} true;
  $i3 := $add.i64($i2, 16);
  // WARNING: %4 = add i64 %3, 16, !dbg !3817, !verifier.code !3809
  call {:cexpr "__cil_tmp4"} boogie_si_record_i64($i3);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3136, 16} true;
  assume {:verifier.code 0} true;
  $p4 := $i2p.i64.ref($i3);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3137, 3} true;
  assume {:verifier.code 0} true;
  call $i5 := dev_set_drvdata($p4, $p1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3139, 3} true;
  assume {:verifier.code 0} true;
  $exn := false;
  return;
}
const input_unregister_device: ref;
axiom (input_unregister_device == $sub.ref(0, 29277));
procedure input_unregister_device($p0: ref);
const kfree: ref;
axiom (kfree == $sub.ref(0, 30309));
procedure kfree($p0: ref);
const dev_set_drvdata: ref;
axiom (dev_set_drvdata == $sub.ref(0, 31341));
procedure dev_set_drvdata($p0: ref, $p1: ref)
  returns ($r: i32);
const dev_get_drvdata: ref;
axiom (dev_get_drvdata == $sub.ref(0, 32373));
procedure dev_get_drvdata($p0: ref)
  returns ($r: ref);
const kzalloc: ref;
axiom (kzalloc == $sub.ref(0, 33405));
procedure kzalloc($i0: i64, $i1: i32)
  returns ($r: ref)
{
  var $i2: i32;
  var $p3: ref;
$bb0:
  // WARNING: call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4387, metadata !3805), !dbg !4388, !verifier.code !3807
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3231, 22} true;
  assume {:verifier.code 0} true;
  $i2 := $or.i32($i1, 32768);
  // WARNING: %3 = or i32 %1, 32768, !dbg !3812, !verifier.code !3809
  call {:cexpr "__cil_tmp4"} boogie_si_record_i32($i2);
  // WARNING: call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !4394, metadata !3805), !dbg !4395, !verifier.code !3807
  // WARNING: call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !4396, metadata !3805), !dbg !4398, !verifier.code !3807
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3219, 14} true;
  assume {:verifier.code 0} true;
  call $p3 := __kmalloc($i0, $i2);
  assume $isExternal($p3);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3234, 3} true;
  assume {:verifier.code 0} true;
  $r := $p3;
  $exn := false;
  return;
}
const input_allocate_device: ref;
axiom (input_allocate_device == $sub.ref(0, 34437));
procedure input_allocate_device()
  returns ($r: ref);
const __init_work: ref;
axiom (__init_work == $sub.ref(0, 35469));
procedure __init_work($p0: ref, $i1: i32);
const INIT_LIST_HEAD: ref;
axiom (INIT_LIST_HEAD == $sub.ref(0, 36501));
procedure INIT_LIST_HEAD($p0: ref)
{
  var $p1: ref;
  var $i2: i64;
  var $i3: i64;
  var $p4: ref;
$bb0:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3073, 3} true;
  assume {:verifier.code 0} true;
  $p1 := $bitcast.ref.ref($p0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3073, 32} true;
  assume {:verifier.code 0} true;
  $M.0 := $store.ref($M.0, $p1, $p0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3074, 16} true;
  assume {:verifier.code 0} true;
  $i2 := $p2i.ref.i64($p0);
  // WARNING: %3 = ptrtoint %struct.list_head* %0 to i64, !dbg !3813, !verifier.code !3809
  call {:cexpr "__cil_tmp2"} boogie_si_record_i64($i2);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3075, 27} true;
  assume {:verifier.code 0} true;
  $i3 := $add.i64($i2, 8);
  // WARNING: %4 = add i64 %3, 8, !dbg !3816, !verifier.code !3809
  call {:cexpr "__cil_tmp3"} boogie_si_record_i64($i3);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3076, 5} true;
  assume {:verifier.code 0} true;
  $p4 := $i2p.i64.ref($i3);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3076, 38} true;
  assume {:verifier.code 0} true;
  $M.0 := $store.ref($M.0, $p4, $p0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3077, 3} true;
  assume {:verifier.code 0} true;
  $exn := false;
  return;
}
const stmpe_work: ref;
axiom (stmpe_work == $sub.ref(0, 37533));
procedure stmpe_work($p0: ref)
{
  var $i1: i64;
  var $i2: i64;
  var $p3: ref;
  var $i4: i32;
  var $p5: ref;
  var $i6: i64;
  var $i7: i64;
  var $p8: ref;
  var $p9: ref;
  var $p10: ref;
  var $p11: ref;
  var $i12: i32;
  var $i13: i32;
  var $i14: i32;
  var $i15: i32;
  var $i16: i1;
  var $i17: i1;
  var $i18: i32;
  var $p19: ref;
  var $p20: ref;
  var $i21: i32;
  var $p22: ref;
  var $p23: ref;
  var $i24: i32;
  var $i25: i64;
  var $i26: i64;
  var $p27: ref;
  var $p28: ref;
  var $i29: i64;
  var $i30: i64;
  var $p31: ref;
  var $p32: ref;
$bb0:
  // WARNING: call void @llvm.dbg.value(metadata %struct.work_struct* %0, i64 0, metadata !4428, metadata !3805), !dbg !4429, !verifier.code !3807
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3304, 16} true;
  assume {:verifier.code 0} true;
  $i1 := $p2i.ref.i64($0.ref);
  // WARNING: %2 = ptrtoint %struct.stmpe_touch* null to i64, !dbg !3814, !verifier.code !3807
  call {:cexpr "__cil_tmp7"} boogie_si_record_i64($i1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3305, 27} true;
  assume {:verifier.code 0} true;
  $i2 := $add.i64($i1, 16);
  // WARNING: %3 = add i64 %2, 16, !dbg !3819, !verifier.code !3807
  call {:cexpr "__cil_tmp8"} boogie_si_record_i64($i2);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3306, 16} true;
  assume {:verifier.code 0} true;
  $p3 := $i2p.i64.ref($i2);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3307, 17} true;
  assume {:verifier.code 0} true;
  $i4 := $p2i.ref.i32($p3);
  // WARNING: %5 = ptrtoint %struct.work_struct* %4 to i32, !dbg !3825, !verifier.code !3807
  call {:cexpr "__cil_tmp10"} boogie_si_record_i32($i4);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3308, 17} true;
  assume {:verifier.code 0} true;
  $p5 := $bitcast.ref.ref($p0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3309, 29} true;
  assume {:verifier.code 0} true;
  $i6 := $zext.i32.i64($i4);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3309, 29} true;
  assume {:verifier.code 0} true;
  $i7 := $sub.i64(0, $i6);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3309, 29} true;
  assume {:verifier.code 0} true;
  $p8 := $add.ref($p5, $mul.ref($i7, 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3310, 8} true;
  assume {:verifier.code 0} true;
  $p9 := $bitcast.ref.ref($p8);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3311, 17} true;
  assume {:verifier.code 0} true;
  $p10 := $bitcast.ref.ref($p9);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3311, 17} true;
  assume {:verifier.code 0} true;
  $p11 := $load.ref($M.1, $p10);
  // WARNING: call void @llvm.dbg.value(metadata %struct.stmpe* %12, i64 0, metadata !4460, metadata !3805), !dbg !4461, !verifier.code !3807
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3313, 13} true;
  assume {:verifier.code 0} true;
  call $i12 := stmpe_reg_read($p11, 11);
  // WARNING: %13 = call i32 @stmpe_reg_read(%struct.stmpe* %12, i8 zeroext 11), !dbg !3842, !verifier.code !3807
  call {:cexpr "int_sta"} boogie_si_record_i32($i12);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3316, 3} true;
  assume {:verifier.code 0} true;
  $i13, $i14 := $i12, 40;
  goto $bb1;
$bb1:
  assume {:verifier.code 0} true;
  assume {:verifier.code 0} true;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3316, 13} true;
  assume {:verifier.code 0} true;
  goto $bb2;
$bb2:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3318, 17} true;
  assume {:verifier.code 0} true;
  $i15 := $and.i32($i13, 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3318, 17} true;
  assume {:verifier.code 0} true;
  $i16 := $ne.i32($i15, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3318, 9} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i16} true;
  goto $bb3, $bb4;
$bb3:
  assume ($i16 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3319, 19} true;
  assume {:verifier.code 0} true;
  $i17 := $ugt.i32($i14, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3319, 11} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i17} true;
  goto $bb5, $bb6;
$bb4:
  assume !(($i16 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3325, 7} true;
  assume {:verifier.code 0} true;
  goto $bb8;
$bb5:
  assume ($i17 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3321, 7} true;
  assume {:verifier.code 0} true;
  goto $bb7;
$bb6:
  assume !(($i17 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3322, 9} true;
  assume {:verifier.code 0} true;
  goto $bb8;
$bb7:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3324, 5} true;
  assume {:verifier.code 0} true;
  goto $bb9;
$bb8:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3338, 17} true;
  assume {:verifier.code 0} true;
  $p22 := $bitcast.ref.ref($p9);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3338, 17} true;
  assume {:verifier.code 0} true;
  $p23 := $load.ref($M.1, $p22);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3339, 3} true;
  assume {:verifier.code 0} true;
  call $i24 := __stmpe_reset_fifo($p23);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3340, 17} true;
  assume {:verifier.code 0} true;
  $i25 := $p2i.ref.i64($p9);
  // WARNING: %33 = ptrtoint %struct.stmpe_touch* %10 to i64, !dbg !3881, !verifier.code !3807
  call {:cexpr "__cil_tmp18"} boogie_si_record_i64($i25);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3341, 29} true;
  assume {:verifier.code 0} true;
  $i26 := $add.i64($i25, 8);
  // WARNING: %34 = add i64 %33, 8, !dbg !3884, !verifier.code !3807
  call {:cexpr "__cil_tmp19"} boogie_si_record_i64($i26);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3342, 19} true;
  assume {:verifier.code 0} true;
  $p27 := $i2p.i64.ref($i26);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3342, 17} true;
  assume {:verifier.code 0} true;
  $p28 := $load.ref($M.0, $p27);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3343, 3} true;
  assume {:verifier.code 0} true;
  call input_report_abs($p28, 24, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3344, 17} true;
  assume {:verifier.code 0} true;
  $i29 := $p2i.ref.i64($p9);
  // WARNING: %37 = ptrtoint %struct.stmpe_touch* %10 to i64, !dbg !3892, !verifier.code !3807
  call {:cexpr "__cil_tmp21"} boogie_si_record_i64($i29);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3345, 29} true;
  assume {:verifier.code 0} true;
  $i30 := $add.i64($i29, 8);
  // WARNING: %38 = add i64 %37, 8, !dbg !3895, !verifier.code !3807
  call {:cexpr "__cil_tmp22"} boogie_si_record_i64($i30);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3346, 19} true;
  assume {:verifier.code 0} true;
  $p31 := $i2p.i64.ref($i30);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3346, 17} true;
  assume {:verifier.code 0} true;
  $p32 := $load.ref($M.0, $p31);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3347, 3} true;
  assume {:verifier.code 0} true;
  call input_sync($p32);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3349, 3} true;
  assume {:verifier.code 0} true;
  $exn := false;
  return;
$bb9:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3328, 23} true;
  assume {:verifier.code 0} true;
  $i18 := $sub.i32($i14, 1);
  // WARNING: %25 = sub i32 %.0, 1, !dbg !3864, !verifier.code !3807
  call {:cexpr "timeout"} boogie_si_record_i32($i18);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3329, 19} true;
  assume {:verifier.code 0} true;
  $p19 := $bitcast.ref.ref($p9);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3329, 19} true;
  assume {:verifier.code 0} true;
  $p20 := $load.ref($M.1, $p19);
  // WARNING: call void @llvm.dbg.value(metadata %struct.stmpe* %27, i64 0, metadata !4489, metadata !3805), !dbg !4490, !verifier.code !3807
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3331, 15} true;
  assume {:verifier.code 0} true;
  call $i21 := stmpe_reg_read($p20, 11);
  // WARNING: %28 = call i32 @stmpe_reg_read(%struct.stmpe* %27, i8 zeroext 11), !dbg !3871, !verifier.code !3807
  call {:cexpr "int_sta"} boogie_si_record_i32($i21);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3332, 5} true;
  assume {:verifier.code 0} true;
  call __const_udelay(429500);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3316, 3} true;
  assume {:verifier.code 0} true;
  $i13, $i14 := $i21, $i18;
  goto $bb1;
}
const init_timer_key: ref;
axiom (init_timer_key == $sub.ref(0, 38565));
procedure init_timer_key($p0: ref, $p1: ref, $p2: ref);
const stmpe_ts_handler: ref;
axiom (stmpe_ts_handler == $sub.ref(0, 39597));
procedure stmpe_ts_handler($i0: i32, $p1: ref)
  returns ($r: i32)
{
  var $p2: ref;
  var $p3: ref;
  var $i4: i64;
  var $i5: i64;
  var $p6: ref;
  var $i7: i1;
  var $p8: ref;
  var $p9: ref;
  var $i10: i32;
  var $p11: ref;
  var $p12: ref;
  var $p13: ref;
  var $i14: i64;
  var $i15: i64;
  var $p16: ref;
  var $i17: i32;
  var $p18: ref;
  var $i19: i64;
  var $i20: i64;
  var $p21: ref;
  var $i22: i8;
  var $i23: i32;
  var $i24: i32;
  var $p25: ref;
  var $i26: i64;
  var $i27: i64;
  var $p28: ref;
  var $i29: i8;
  var $i30: i32;
  var $i31: i32;
  var $i32: i32;
  var $p33: ref;
  var $i34: i64;
  var $i35: i64;
  var $p36: ref;
  var $i37: i8;
  var $i38: i32;
  var $p39: ref;
  var $i40: i64;
  var $i41: i64;
  var $p42: ref;
  var $i43: i8;
  var $i44: i32;
  var $i45: i32;
  var $i46: i32;
  var $i47: i32;
  var $p48: ref;
  var $i49: i64;
  var $i50: i64;
  var $p51: ref;
  var $i52: i8;
  var $i53: i32;
  var $i54: i64;
  var $i55: i64;
  var $p56: ref;
  var $p57: ref;
  var $i58: i64;
  var $i59: i64;
  var $p60: ref;
  var $p61: ref;
  var $i62: i64;
  var $i63: i64;
  var $p64: ref;
  var $p65: ref;
  var $i66: i64;
  var $i67: i64;
  var $p68: ref;
  var $p69: ref;
  var $p70: ref;
  var $p71: ref;
  var $i72: i32;
  var $p73: ref;
  var $p74: ref;
  var $i75: i32;
  var $i76: i64;
  var $i77: i64;
  var $p78: ref;
  var $i79: i32;
$bb0:
  assume {:verifier.code 0} true;
  call $p2 := $alloc($mul.ref(4, $zext.i32.i64(1)));
  // WARNING: %3 = alloca [4 x i8], align 1, !verifier.code !3804
  // WARNING: ignoring llvm.debug call.
  assume true;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3417, 8} true;
  assume {:verifier.code 0} true;
  $p3 := $bitcast.ref.ref($p1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3418, 16} true;
  assume {:verifier.code 0} true;
  $i4 := $p2i.ref.i64($p3);
  // WARNING: %5 = ptrtoint %struct.stmpe_touch* %4 to i64, !dbg !3818, !verifier.code !3804
  call {:cexpr "__cil_tmp8"} boogie_si_record_i64($i4);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3419, 27} true;
  assume {:verifier.code 0} true;
  $i5 := $add.i64($i4, 16);
  // WARNING: %6 = add i64 %5, 16, !dbg !3821, !verifier.code !3804
  call {:cexpr "__cil_tmp9"} boogie_si_record_i64($i5);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3420, 17} true;
  assume {:verifier.code 0} true;
  $p6 := $i2p.i64.ref($i5);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3421, 3} true;
  assume {:verifier.code 0} true;
  call $i7 := cancel_delayed_work_sync($p6);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3422, 17} true;
  assume {:verifier.code 0} true;
  $p8 := $bitcast.ref.ref($p3);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3422, 17} true;
  assume {:verifier.code 0} true;
  $p9 := $load.ref($M.0, $p8);
  // WARNING: call void @llvm.dbg.value(metadata %struct.stmpe* %10, i64 0, metadata !4550, metadata !3805), !dbg !4551, !verifier.code !3807
  // WARNING: call void @llvm.dbg.value(metadata i8 64, i64 0, metadata !4552, metadata !3805), !dbg !4553, !verifier.code !3807
  // WARNING: call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !4554, metadata !3805), !dbg !4555, !verifier.code !3807
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3426, 3} true;
  assume {:verifier.code 0} true;
  call $i10 := stmpe_set_bits($p9, 64, 1, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3427, 17} true;
  assume {:verifier.code 0} true;
  $p11 := $bitcast.ref.ref($p3);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3427, 17} true;
  assume {:verifier.code 0} true;
  $p12 := $load.ref($M.0, $p11);
  // WARNING: call void @llvm.dbg.value(metadata %struct.stmpe* %13, i64 0, metadata !4560, metadata !3805), !dbg !4561, !verifier.code !3807
  // WARNING: call void @llvm.dbg.value(metadata i8 82, i64 0, metadata !4562, metadata !3805), !dbg !4563, !verifier.code !3807
  // WARNING: call void @llvm.dbg.value(metadata i8 4, i64 0, metadata !4564, metadata !3805), !dbg !4565, !verifier.code !3807
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3431, 33} true;
  assume {:verifier.code 0} true;
  $p13 := $p2;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3431, 17} true;
  assume {:verifier.code 0} true;
  $i14 := $p2i.ref.i64($p13);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3431, 44} true;
  assume {:verifier.code 0} true;
  $i15 := $add.i64($i14, 0);
  // WARNING: %16 = add i64 %15, 0, !dbg !3849, !verifier.code !3804
  call {:cexpr "__cil_tmp19"} boogie_si_record_i64($i15);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3432, 17} true;
  assume {:verifier.code 0} true;
  $p16 := $i2p.i64.ref($i15);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3433, 3} true;
  assume {:verifier.code 0} true;
  call $i17 := stmpe_block_read($p12, 82, 4, $p16);
  // WARNING: %18 = call i32 @stmpe_block_read(%struct.stmpe* %13, i8 zeroext 82, i8 zeroext 4, i8* %17), !dbg !3855, !verifier.code !3804
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3435, 33} true;
  assume {:verifier.code 0} true;
  $p18 := $p2;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3435, 17} true;
  assume {:verifier.code 0} true;
  $i19 := $p2i.ref.i64($p18);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3435, 44} true;
  assume {:verifier.code 0} true;
  $i20 := $add.i64($i19, 1);
  // WARNING: %21 = add i64 %20, 1, !dbg !3860, !verifier.code !3804
  call {:cexpr "__cil_tmp22"} boogie_si_record_i64($i20);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3436, 19} true;
  assume {:verifier.code 0} true;
  $p21 := $i2p.i64.ref($i20);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3436, 17} true;
  assume {:verifier.code 0} true;
  $i22 := $load.i8($M.0, $p21);
  // WARNING: %23 = load i8, i8* %22, align 1, !dbg !3864, !verifier.code !3804
  call {:cexpr "__cil_tmp23"} boogie_si_record_i8($i22);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3437, 17} true;
  assume {:verifier.code 0} true;
  $i23 := $zext.i8.i32($i22);
  // WARNING: %24 = zext i8 %23 to i32, !dbg !3867, !verifier.code !3804
  call {:cexpr "__cil_tmp24"} boogie_si_record_i32($i23);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3438, 29} true;
  assume {:verifier.code 0} true;
  $i24 := $ashr.i32($i23, 4);
  // WARNING: %25 = ashr i32 %24, 4, !dbg !3870, !verifier.code !3804
  call {:cexpr "__cil_tmp25"} boogie_si_record_i32($i24);
  // WARNING: call void @llvm.dbg.value(metadata i32 %25, i64 0, metadata !4592, metadata !3805), !dbg !4593, !verifier.code !3807
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3440, 33} true;
  assume {:verifier.code 0} true;
  $p25 := $p2;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3440, 17} true;
  assume {:verifier.code 0} true;
  $i26 := $p2i.ref.i64($p25);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3440, 44} true;
  assume {:verifier.code 0} true;
  $i27 := $add.i64($i26, 0);
  // WARNING: %28 = add i64 %27, 0, !dbg !3877, !verifier.code !3804
  call {:cexpr "__cil_tmp27"} boogie_si_record_i64($i27);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3441, 19} true;
  assume {:verifier.code 0} true;
  $p28 := $i2p.i64.ref($i27);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3441, 17} true;
  assume {:verifier.code 0} true;
  $i29 := $load.i8($M.0, $p28);
  // WARNING: %30 = load i8, i8* %29, align 1, !dbg !3881, !verifier.code !3804
  call {:cexpr "__cil_tmp28"} boogie_si_record_i8($i29);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3442, 17} true;
  assume {:verifier.code 0} true;
  $i30 := $zext.i8.i32($i29);
  // WARNING: %31 = zext i8 %30 to i32, !dbg !3884, !verifier.code !3804
  call {:cexpr "__cil_tmp29"} boogie_si_record_i32($i30);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3443, 29} true;
  assume {:verifier.code 0} true;
  $i31 := $shl.i32($i30, 4);
  // WARNING: %32 = shl i32 %31, 4, !dbg !3887, !verifier.code !3804
  call {:cexpr "__cil_tmp30"} boogie_si_record_i32($i31);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3444, 19} true;
  assume {:verifier.code 0} true;
  $i32 := $or.i32($i31, $i24);
  // WARNING: %33 = or i32 %32, %25, !dbg !3890, !verifier.code !3804
  call {:cexpr "x"} boogie_si_record_i32($i32);
  // WARNING: call void @llvm.dbg.value(metadata i32 %33, i64 0, metadata !4612, metadata !3805), !dbg !4613, !verifier.code !3807
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3446, 33} true;
  assume {:verifier.code 0} true;
  $p33 := $p2;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3446, 17} true;
  assume {:verifier.code 0} true;
  $i34 := $p2i.ref.i64($p33);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3446, 44} true;
  assume {:verifier.code 0} true;
  $i35 := $add.i64($i34, 2);
  // WARNING: %36 = add i64 %35, 2, !dbg !3897, !verifier.code !3804
  call {:cexpr "__cil_tmp32"} boogie_si_record_i64($i35);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3447, 19} true;
  assume {:verifier.code 0} true;
  $p36 := $i2p.i64.ref($i35);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3447, 17} true;
  assume {:verifier.code 0} true;
  $i37 := $load.i8($M.0, $p36);
  // WARNING: %38 = load i8, i8* %37, align 1, !dbg !3901, !verifier.code !3804
  call {:cexpr "__cil_tmp33"} boogie_si_record_i8($i37);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3448, 17} true;
  assume {:verifier.code 0} true;
  $i38 := $zext.i8.i32($i37);
  // WARNING: %39 = zext i8 %38 to i32, !dbg !3904, !verifier.code !3804
  call {:cexpr "__cil_tmp34"} boogie_si_record_i32($i38);
  // WARNING: call void @llvm.dbg.value(metadata i32 %39, i64 0, metadata !4626, metadata !3805), !dbg !4627, !verifier.code !3807
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3450, 33} true;
  assume {:verifier.code 0} true;
  $p39 := $p2;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3450, 17} true;
  assume {:verifier.code 0} true;
  $i40 := $p2i.ref.i64($p39);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3450, 44} true;
  assume {:verifier.code 0} true;
  $i41 := $add.i64($i40, 1);
  // WARNING: %42 = add i64 %41, 1, !dbg !3911, !verifier.code !3804
  call {:cexpr "__cil_tmp36"} boogie_si_record_i64($i41);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3451, 19} true;
  assume {:verifier.code 0} true;
  $p42 := $i2p.i64.ref($i41);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3451, 17} true;
  assume {:verifier.code 0} true;
  $i43 := $load.i8($M.0, $p42);
  // WARNING: %44 = load i8, i8* %43, align 1, !dbg !3915, !verifier.code !3804
  call {:cexpr "__cil_tmp37"} boogie_si_record_i8($i43);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3452, 17} true;
  assume {:verifier.code 0} true;
  $i44 := $zext.i8.i32($i43);
  // WARNING: %45 = zext i8 %44 to i32, !dbg !3918, !verifier.code !3804
  call {:cexpr "__cil_tmp38"} boogie_si_record_i32($i44);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3453, 29} true;
  assume {:verifier.code 0} true;
  $i45 := $and.i32($i44, 15);
  // WARNING: %46 = and i32 %45, 15, !dbg !3921, !verifier.code !3804
  call {:cexpr "__cil_tmp39"} boogie_si_record_i32($i45);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3454, 29} true;
  assume {:verifier.code 0} true;
  $i46 := $shl.i32($i45, 8);
  // WARNING: %47 = shl i32 %46, 8, !dbg !3924, !verifier.code !3804
  call {:cexpr "__cil_tmp40"} boogie_si_record_i32($i46);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3455, 19} true;
  assume {:verifier.code 0} true;
  $i47 := $or.i32($i46, $i38);
  // WARNING: %48 = or i32 %47, %39, !dbg !3927, !verifier.code !3804
  call {:cexpr "y"} boogie_si_record_i32($i47);
  // WARNING: call void @llvm.dbg.value(metadata i32 %48, i64 0, metadata !4649, metadata !3805), !dbg !4650, !verifier.code !3807
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3457, 33} true;
  assume {:verifier.code 0} true;
  $p48 := $p2;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3457, 17} true;
  assume {:verifier.code 0} true;
  $i49 := $p2i.ref.i64($p48);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3457, 44} true;
  assume {:verifier.code 0} true;
  $i50 := $add.i64($i49, 3);
  // WARNING: %51 = add i64 %50, 3, !dbg !3934, !verifier.code !3804
  call {:cexpr "__cil_tmp42"} boogie_si_record_i64($i50);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3458, 19} true;
  assume {:verifier.code 0} true;
  $p51 := $i2p.i64.ref($i50);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3458, 17} true;
  assume {:verifier.code 0} true;
  $i52 := $load.i8($M.0, $p51);
  // WARNING: %53 = load i8, i8* %52, align 1, !dbg !3938, !verifier.code !3804
  call {:cexpr "__cil_tmp43"} boogie_si_record_i8($i52);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3459, 7} true;
  assume {:verifier.code 0} true;
  $i53 := $zext.i8.i32($i52);
  // WARNING: %54 = zext i8 %53 to i32, !dbg !3941, !verifier.code !3804
  call {:cexpr "z"} boogie_si_record_i32($i53);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3460, 17} true;
  assume {:verifier.code 0} true;
  $i54 := $p2i.ref.i64($p3);
  // WARNING: %55 = ptrtoint %struct.stmpe_touch* %4 to i64, !dbg !3944, !verifier.code !3804
  call {:cexpr "__cil_tmp44"} boogie_si_record_i64($i54);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3461, 29} true;
  assume {:verifier.code 0} true;
  $i55 := $add.i64($i54, 8);
  // WARNING: %56 = add i64 %55, 8, !dbg !3947, !verifier.code !3804
  call {:cexpr "__cil_tmp45"} boogie_si_record_i64($i55);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3462, 19} true;
  assume {:verifier.code 0} true;
  $p56 := $i2p.i64.ref($i55);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3462, 17} true;
  assume {:verifier.code 0} true;
  $p57 := $load.ref($M.0, $p56);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3463, 3} true;
  assume {:verifier.code 0} true;
  call input_report_abs($p57, 0, $i32);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3464, 17} true;
  assume {:verifier.code 0} true;
  $i58 := $p2i.ref.i64($p3);
  // WARNING: %59 = ptrtoint %struct.stmpe_touch* %4 to i64, !dbg !3955, !verifier.code !3804
  call {:cexpr "__cil_tmp47"} boogie_si_record_i64($i58);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3465, 29} true;
  assume {:verifier.code 0} true;
  $i59 := $add.i64($i58, 8);
  // WARNING: %60 = add i64 %59, 8, !dbg !3958, !verifier.code !3804
  call {:cexpr "__cil_tmp48"} boogie_si_record_i64($i59);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3466, 19} true;
  assume {:verifier.code 0} true;
  $p60 := $i2p.i64.ref($i59);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3466, 17} true;
  assume {:verifier.code 0} true;
  $p61 := $load.ref($M.0, $p60);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3467, 3} true;
  assume {:verifier.code 0} true;
  call input_report_abs($p61, 1, $i47);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3468, 17} true;
  assume {:verifier.code 0} true;
  $i62 := $p2i.ref.i64($p3);
  // WARNING: %63 = ptrtoint %struct.stmpe_touch* %4 to i64, !dbg !3966, !verifier.code !3804
  call {:cexpr "__cil_tmp50"} boogie_si_record_i64($i62);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3469, 29} true;
  assume {:verifier.code 0} true;
  $i63 := $add.i64($i62, 8);
  // WARNING: %64 = add i64 %63, 8, !dbg !3969, !verifier.code !3804
  call {:cexpr "__cil_tmp51"} boogie_si_record_i64($i63);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3470, 19} true;
  assume {:verifier.code 0} true;
  $p64 := $i2p.i64.ref($i63);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3470, 17} true;
  assume {:verifier.code 0} true;
  $p65 := $load.ref($M.0, $p64);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3471, 3} true;
  assume {:verifier.code 0} true;
  call input_report_abs($p65, 24, $i53);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3472, 17} true;
  assume {:verifier.code 0} true;
  $i66 := $p2i.ref.i64($p3);
  // WARNING: %67 = ptrtoint %struct.stmpe_touch* %4 to i64, !dbg !3977, !verifier.code !3804
  call {:cexpr "__cil_tmp53"} boogie_si_record_i64($i66);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3473, 29} true;
  assume {:verifier.code 0} true;
  $i67 := $add.i64($i66, 8);
  // WARNING: %68 = add i64 %67, 8, !dbg !3980, !verifier.code !3804
  call {:cexpr "__cil_tmp54"} boogie_si_record_i64($i67);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3474, 19} true;
  assume {:verifier.code 0} true;
  $p68 := $i2p.i64.ref($i67);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3474, 17} true;
  assume {:verifier.code 0} true;
  $p69 := $load.ref($M.0, $p68);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3475, 3} true;
  assume {:verifier.code 0} true;
  call input_sync($p69);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3476, 17} true;
  assume {:verifier.code 0} true;
  $p70 := $bitcast.ref.ref($p3);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3476, 17} true;
  assume {:verifier.code 0} true;
  $p71 := $load.ref($M.0, $p70);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3477, 3} true;
  assume {:verifier.code 0} true;
  call $i72 := __stmpe_reset_fifo($p71);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3478, 17} true;
  assume {:verifier.code 0} true;
  $p73 := $bitcast.ref.ref($p3);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3478, 17} true;
  assume {:verifier.code 0} true;
  $p74 := $load.ref($M.0, $p73);
  // WARNING: call void @llvm.dbg.value(metadata %struct.stmpe* %75, i64 0, metadata !4714, metadata !3805), !dbg !4715, !verifier.code !3807
  // WARNING: call void @llvm.dbg.value(metadata i8 64, i64 0, metadata !4716, metadata !3805), !dbg !4717, !verifier.code !3807
  // WARNING: call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !4718, metadata !3805), !dbg !4719, !verifier.code !3807
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3482, 3} true;
  assume {:verifier.code 0} true;
  call $i75 := stmpe_set_bits($p74, 64, 1, 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3483, 17} true;
  assume {:verifier.code 0} true;
  $i76 := $p2i.ref.i64($p3);
  // WARNING: %77 = ptrtoint %struct.stmpe_touch* %4 to i64, !dbg !4002, !verifier.code !3804
  call {:cexpr "__cil_tmp61"} boogie_si_record_i64($i76);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3484, 29} true;
  assume {:verifier.code 0} true;
  $i77 := $add.i64($i76, 16);
  // WARNING: %78 = add i64 %77, 16, !dbg !4005, !verifier.code !3804
  call {:cexpr "__cil_tmp62"} boogie_si_record_i64($i77);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3485, 17} true;
  assume {:verifier.code 0} true;
  $p78 := $i2p.i64.ref($i77);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3486, 3} true;
  assume {:verifier.code 0} true;
  call $i79 := schedule_delayed_work($p78, 5);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3488, 3} true;
  assume {:verifier.code 0} true;
  $r := 1;
  $exn := false;
  return;
}
const request_threaded_irq: ref;
axiom (request_threaded_irq == $sub.ref(0, 40629));
procedure request_threaded_irq($i0: i32, $p1: ref, $p2: ref, $i3: i64, $p4: ref, $p5: ref)
  returns ($r: i32);
const dev_err: ref;
axiom (dev_err == $sub.ref(0, 41661));
procedure dev_err.ref.ref($p0: ref, $p1: ref)
  returns ($r: i32);
procedure dev_err.ref.ref.i32($p0: ref, $p1: ref, p.2: i32)
  returns ($r: i32);
const stmpe_init_hw: ref;
axiom (stmpe_init_hw == $sub.ref(0, 42693));
procedure stmpe_init_hw($p0: ref)
  returns ($r: i32)
{
  var $p1: ref;
  var $p2: ref;
  var $i3: i64;
  var $i4: i64;
  var $p5: ref;
  var $p6: ref;
  var $i7: i32;
  var $i8: i1;
  var $i9: i32;
  var $i11: i64;
  var $i12: i64;
  var $p13: ref;
  var $i14: i8;
  var $i15: i32;
  var $i16: i32;
  var $i17: i32;
  var $i18: i64;
  var $i19: i64;
  var $p20: ref;
  var $i21: i8;
  var $i22: i32;
  var $i23: i32;
  var $i24: i32;
  var $i25: i64;
  var $i26: i64;
  var $p27: ref;
  var $i28: i8;
  var $i29: i32;
  var $i30: i32;
  var $i31: i32;
  var $i32: i32;
  var $i33: i32;
  var $i34: i8;
  var $i35: i32;
  var $i36: i32;
  var $i37: i8;
  var $i38: i32;
  var $i39: i1;
  var $i40: i32;
  var $i41: i64;
  var $i42: i64;
  var $p43: ref;
  var $i44: i8;
  var $i45: i32;
  var $i46: i32;
  var $i47: i8;
  var $i48: i32;
  var $i49: i1;
  var $i50: i32;
  var $i51: i64;
  var $i52: i64;
  var $p53: ref;
  var $i54: i8;
  var $i55: i32;
  var $i56: i32;
  var $i57: i64;
  var $i58: i64;
  var $p59: ref;
  var $i60: i8;
  var $i61: i32;
  var $i62: i32;
  var $i63: i32;
  var $i64: i64;
  var $i65: i64;
  var $p66: ref;
  var $i67: i8;
  var $i68: i32;
  var $i69: i32;
  var $i70: i32;
  var $i71: i32;
  var $i72: i32;
  var $i73: i8;
  var $i74: i32;
  var $i75: i32;
  var $i76: i8;
  var $i77: i32;
  var $i78: i1;
  var $i79: i32;
  var $i80: i64;
  var $i81: i64;
  var $p82: ref;
  var $i83: i8;
  var $i84: i32;
  var $i85: i32;
  var $i86: i8;
  var $i87: i32;
  var $i88: i1;
  var $i89: i32;
  var $i90: i64;
  var $i91: i64;
  var $p92: ref;
  var $i93: i8;
  var $i94: i32;
  var $i95: i32;
  var $i96: i8;
  var $i97: i32;
  var $i98: i1;
  var $i99: i32;
  var $i100: i32;
  var $i101: i1;
  var $i102: i32;
  var $i103: i8;
  var $i104: i32;
  var $i105: i1;
  var $i106: i32;
  var $i10: i32;
$bb0:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3594, 11} true;
  assume {:verifier.code 0} true;
  $p1 := $bitcast.ref.ref($p0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3594, 11} true;
  assume {:verifier.code 0} true;
  $p2 := $load.ref($M.0, $p1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3595, 16} true;
  assume {:verifier.code 0} true;
  $i3 := $p2i.ref.i64($p0);
  // WARNING: %4 = ptrtoint %struct.stmpe_touch* %0 to i64, !dbg !3815, !verifier.code !3809
  call {:cexpr "__cil_tmp9"} boogie_si_record_i64($i3);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3596, 28} true;
  assume {:verifier.code 0} true;
  $i4 := $add.i64($i3, 128);
  // WARNING: %5 = add i64 %4, 128, !dbg !3818, !verifier.code !3809
  call {:cexpr "__cil_tmp10"} boogie_si_record_i64($i4);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3597, 11} true;
  assume {:verifier.code 0} true;
  $p5 := $i2p.i64.ref($i4);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3597, 9} true;
  assume {:verifier.code 0} true;
  $p6 := $load.ref($M.0, $p5);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3598, 9} true;
  assume {:verifier.code 0} true;
  call $i7 := stmpe_enable($p2, 12);
  // WARNING: %8 = call i32 @stmpe_enable(%struct.stmpe* %3, i32 12), !dbg !3825, !verifier.code !3809
  call {:cexpr "ret"} boogie_si_record_i32($i7);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3600, 7} true;
  assume {:verifier.code 0} true;
  $i8 := $ne.i32($i7, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3600, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i8} true;
  goto $bb1, $bb2;
$bb1:
  assume ($i8 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3603, 5} true;
  assume {:verifier.code 0} true;
  call $i9 := dev_err.ref.ref($p6, .str.4);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3605, 5} true;
  assume {:verifier.code 0} true;
  $i10 := $i7;
  goto $bb3;
$bb2:
  assume !(($i8 == 1));
  assume {:verifier.code 0} true;
  goto $bb4;
$bb3:
  assume {:verifier.code 0} true;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3779, 1} true;
  assume {:verifier.code 0} true;
  $r := $i10;
  $exn := false;
  return;
$bb4:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3610, 17} true;
  assume {:verifier.code 0} true;
  $i11 := $p2i.ref.i64($p0);
  // WARNING: %14 = ptrtoint %struct.stmpe_touch* %0 to i64, !dbg !3837, !verifier.code !3809
  call {:cexpr "__cil_tmp12"} boogie_si_record_i64($i11);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3611, 29} true;
  assume {:verifier.code 0} true;
  $i12 := $add.i64($i11, 138);
  // WARNING: %15 = add i64 %14, 138, !dbg !3841, !verifier.code !3809
  call {:cexpr "__cil_tmp13"} boogie_si_record_i64($i12);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3612, 19} true;
  assume {:verifier.code 0} true;
  $p13 := $i2p.i64.ref($i12);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3612, 17} true;
  assume {:verifier.code 0} true;
  $i14 := $load.i8($M.0, $p13);
  // WARNING: %17 = load i8, i8* %16, align 1, !dbg !3845, !verifier.code !3809
  call {:cexpr "__cil_tmp14"} boogie_si_record_i8($i14);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3613, 17} true;
  assume {:verifier.code 0} true;
  $i15 := $zext.i8.i32($i14);
  // WARNING: %18 = zext i8 %17 to i32, !dbg !3848, !verifier.code !3809
  call {:cexpr "__cil_tmp15"} boogie_si_record_i32($i15);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3614, 29} true;
  assume {:verifier.code 0} true;
  $i16 := $and.i32($i15, 1);
  // WARNING: %19 = and i32 %18, 1, !dbg !3851, !verifier.code !3809
  call {:cexpr "__cil_tmp16"} boogie_si_record_i32($i16);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3615, 29} true;
  assume {:verifier.code 0} true;
  $i17 := $shl.i32($i16, 1);
  // WARNING: %20 = shl i32 %19, 1, !dbg !3854, !verifier.code !3809
  call {:cexpr "__cil_tmp17"} boogie_si_record_i32($i17);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3616, 17} true;
  assume {:verifier.code 0} true;
  $i18 := $p2i.ref.i64($p0);
  // WARNING: %21 = ptrtoint %struct.stmpe_touch* %0 to i64, !dbg !3857, !verifier.code !3809
  call {:cexpr "__cil_tmp18"} boogie_si_record_i64($i18);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3617, 29} true;
  assume {:verifier.code 0} true;
  $i19 := $add.i64($i18, 137);
  // WARNING: %22 = add i64 %21, 137, !dbg !3860, !verifier.code !3809
  call {:cexpr "__cil_tmp19"} boogie_si_record_i64($i19);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3618, 19} true;
  assume {:verifier.code 0} true;
  $p20 := $i2p.i64.ref($i19);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3618, 17} true;
  assume {:verifier.code 0} true;
  $i21 := $load.i8($M.0, $p20);
  // WARNING: %24 = load i8, i8* %23, align 1, !dbg !3864, !verifier.code !3809
  call {:cexpr "__cil_tmp20"} boogie_si_record_i8($i21);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3619, 17} true;
  assume {:verifier.code 0} true;
  $i22 := $zext.i8.i32($i21);
  // WARNING: %25 = zext i8 %24 to i32, !dbg !3867, !verifier.code !3809
  call {:cexpr "__cil_tmp21"} boogie_si_record_i32($i22);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3620, 29} true;
  assume {:verifier.code 0} true;
  $i23 := $and.i32($i22, 1);
  // WARNING: %26 = and i32 %25, 1, !dbg !3870, !verifier.code !3809
  call {:cexpr "__cil_tmp22"} boogie_si_record_i32($i23);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3621, 29} true;
  assume {:verifier.code 0} true;
  $i24 := $shl.i32($i23, 3);
  // WARNING: %27 = shl i32 %26, 3, !dbg !3873, !verifier.code !3809
  call {:cexpr "__cil_tmp23"} boogie_si_record_i32($i24);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3622, 17} true;
  assume {:verifier.code 0} true;
  $i25 := $p2i.ref.i64($p0);
  // WARNING: %28 = ptrtoint %struct.stmpe_touch* %0 to i64, !dbg !3876, !verifier.code !3809
  call {:cexpr "__cil_tmp24"} boogie_si_record_i64($i25);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3623, 29} true;
  assume {:verifier.code 0} true;
  $i26 := $add.i64($i25, 136);
  // WARNING: %29 = add i64 %28, 136, !dbg !3879, !verifier.code !3809
  call {:cexpr "__cil_tmp25"} boogie_si_record_i64($i26);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3624, 19} true;
  assume {:verifier.code 0} true;
  $p27 := $i2p.i64.ref($i26);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3624, 17} true;
  assume {:verifier.code 0} true;
  $i28 := $load.i8($M.0, $p27);
  // WARNING: %31 = load i8, i8* %30, align 1, !dbg !3883, !verifier.code !3809
  call {:cexpr "__cil_tmp26"} boogie_si_record_i8($i28);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3625, 17} true;
  assume {:verifier.code 0} true;
  $i29 := $zext.i8.i32($i28);
  // WARNING: %32 = zext i8 %31 to i32, !dbg !3886, !verifier.code !3809
  call {:cexpr "__cil_tmp27"} boogie_si_record_i32($i29);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3626, 29} true;
  assume {:verifier.code 0} true;
  $i30 := $and.i32($i29, 15);
  // WARNING: %33 = and i32 %32, 15, !dbg !3889, !verifier.code !3809
  call {:cexpr "__cil_tmp28"} boogie_si_record_i32($i30);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3627, 29} true;
  assume {:verifier.code 0} true;
  $i31 := $shl.i32($i30, 4);
  // WARNING: %34 = shl i32 %33, 4, !dbg !3892, !verifier.code !3809
  call {:cexpr "__cil_tmp29"} boogie_si_record_i32($i31);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3628, 29} true;
  assume {:verifier.code 0} true;
  $i32 := $or.i32($i31, $i24);
  // WARNING: %35 = or i32 %34, %27, !dbg !3895, !verifier.code !3809
  call {:cexpr "__cil_tmp30"} boogie_si_record_i32($i32);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3629, 29} true;
  assume {:verifier.code 0} true;
  $i33 := $or.i32($i32, $i17);
  // WARNING: %36 = or i32 %35, %20, !dbg !3898, !verifier.code !3809
  call {:cexpr "__cil_tmp31"} boogie_si_record_i32($i33);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3630, 15} true;
  assume {:verifier.code 0} true;
  $i34 := $trunc.i32.i8($i33);
  // WARNING: %37 = trunc i32 %36 to i8, !dbg !3901, !verifier.code !3809
  call {:cexpr "adc_ctrl1"} boogie_si_record_i8($i34);
  // WARNING: call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !4831, metadata !3805), !dbg !4832, !verifier.code !3807
  // WARNING: call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !4833, metadata !3805), !dbg !4834, !verifier.code !3807
  // WARNING: call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !4835, metadata !3805), !dbg !4836, !verifier.code !3807
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3634, 29} true;
  assume {:verifier.code 0} true;
  $i35 := $or.i32(240, 8);
  // WARNING: %38 = or i32 240, 8, !dbg !3910, !verifier.code !3809
  call {:cexpr "__cil_tmp35"} boogie_si_record_i32($i35);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3635, 29} true;
  assume {:verifier.code 0} true;
  $i36 := $or.i32($i35, 2);
  // WARNING: %39 = or i32 %38, 2, !dbg !3913, !verifier.code !3809
  call {:cexpr "__cil_tmp36"} boogie_si_record_i32($i36);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3636, 20} true;
  assume {:verifier.code 0} true;
  $i37 := $trunc.i32.i8($i36);
  // WARNING: %40 = trunc i32 %39 to i8, !dbg !3916, !verifier.code !3809
  call {:cexpr "adc_ctrl1_mask"} boogie_si_record_i8($i37);
  // WARNING: call void @llvm.dbg.value(metadata i8 %40, i64 0, metadata !4846, metadata !3805), !dbg !4847, !verifier.code !3807
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3638, 9} true;
  assume {:verifier.code 0} true;
  call $i38 := stmpe_set_bits($p2, 32, $i37, $i34);
  // WARNING: %41 = call i32 @stmpe_set_bits(%struct.stmpe* %3, i8 zeroext 32, i8 zeroext %40, i8 zeroext %37), !dbg !3921, !verifier.code !3809
  call {:cexpr "ret"} boogie_si_record_i32($i38);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3640, 7} true;
  assume {:verifier.code 0} true;
  $i39 := $ne.i32($i38, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3640, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i39} true;
  goto $bb5, $bb6;
$bb5:
  assume ($i39 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3643, 5} true;
  assume {:verifier.code 0} true;
  call $i40 := dev_err.ref.ref($p6, .str.5);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3645, 5} true;
  assume {:verifier.code 0} true;
  $i10 := $i38;
  goto $bb3;
$bb6:
  assume !(($i39 == 1));
  assume {:verifier.code 0} true;
  goto $bb7;
$bb7:
  // WARNING: call void @llvm.dbg.value(metadata i8 33, i64 0, metadata !4860, metadata !3805), !dbg !4861, !verifier.code !3807
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3652, 17} true;
  assume {:verifier.code 0} true;
  $i41 := $p2i.ref.i64($p0);
  // WARNING: %47 = ptrtoint %struct.stmpe_touch* %0 to i64, !dbg !3935, !verifier.code !3809
  call {:cexpr "__cil_tmp41"} boogie_si_record_i64($i41);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3653, 29} true;
  assume {:verifier.code 0} true;
  $i42 := $add.i64($i41, 139);
  // WARNING: %48 = add i64 %47, 139, !dbg !3939, !verifier.code !3809
  call {:cexpr "__cil_tmp42"} boogie_si_record_i64($i42);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3654, 19} true;
  assume {:verifier.code 0} true;
  $p43 := $i2p.i64.ref($i42);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3654, 17} true;
  assume {:verifier.code 0} true;
  $i44 := $load.i8($M.0, $p43);
  // WARNING: %50 = load i8, i8* %49, align 1, !dbg !3943, !verifier.code !3809
  call {:cexpr "__cil_tmp43"} boogie_si_record_i8($i44);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3655, 17} true;
  assume {:verifier.code 0} true;
  $i45 := $zext.i8.i32($i44);
  // WARNING: %51 = zext i8 %50 to i32, !dbg !3946, !verifier.code !3809
  call {:cexpr "__cil_tmp44"} boogie_si_record_i32($i45);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3656, 29} true;
  assume {:verifier.code 0} true;
  $i46 := $and.i32($i45, 3);
  // WARNING: %52 = and i32 %51, 3, !dbg !3949, !verifier.code !3809
  call {:cexpr "__cil_tmp45"} boogie_si_record_i32($i46);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3657, 17} true;
  assume {:verifier.code 0} true;
  $i47 := $trunc.i32.i8($i46);
  // WARNING: %53 = trunc i32 %52 to i8, !dbg !3952, !verifier.code !3809
  call {:cexpr "__cil_tmp46"} boogie_si_record_i8($i47);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3658, 9} true;
  assume {:verifier.code 0} true;
  call $i48 := stmpe_set_bits($p2, 33, 3, $i47);
  // WARNING: %54 = call i32 @stmpe_set_bits(%struct.stmpe* %3, i8 zeroext 33, i8 zeroext 3, i8 zeroext %53), !dbg !3955, !verifier.code !3809
  call {:cexpr "ret"} boogie_si_record_i32($i48);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3660, 7} true;
  assume {:verifier.code 0} true;
  $i49 := $ne.i32($i48, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3660, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i49} true;
  goto $bb8, $bb9;
$bb8:
  assume ($i49 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3663, 5} true;
  assume {:verifier.code 0} true;
  call $i50 := dev_err.ref.ref($p6, .str.5);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3665, 5} true;
  assume {:verifier.code 0} true;
  $i10 := $i48;
  goto $bb3;
$bb9:
  assume !(($i49 == 1));
  assume {:verifier.code 0} true;
  goto $bb10;
$bb10:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3670, 17} true;
  assume {:verifier.code 0} true;
  $i51 := $p2i.ref.i64($p0);
  // WARNING: %60 = ptrtoint %struct.stmpe_touch* %0 to i64, !dbg !3965, !verifier.code !3809
  call {:cexpr "__cil_tmp48"} boogie_si_record_i64($i51);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3671, 29} true;
  assume {:verifier.code 0} true;
  $i52 := $add.i64($i51, 142);
  // WARNING: %61 = add i64 %60, 142, !dbg !3969, !verifier.code !3809
  call {:cexpr "__cil_tmp49"} boogie_si_record_i64($i52);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3672, 19} true;
  assume {:verifier.code 0} true;
  $p53 := $i2p.i64.ref($i52);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3672, 17} true;
  assume {:verifier.code 0} true;
  $i54 := $load.i8($M.0, $p53);
  // WARNING: %63 = load i8, i8* %62, align 1, !dbg !3973, !verifier.code !3809
  call {:cexpr "__cil_tmp50"} boogie_si_record_i8($i54);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3673, 17} true;
  assume {:verifier.code 0} true;
  $i55 := $zext.i8.i32($i54);
  // WARNING: %64 = zext i8 %63 to i32, !dbg !3976, !verifier.code !3809
  call {:cexpr "__cil_tmp51"} boogie_si_record_i32($i55);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3674, 29} true;
  assume {:verifier.code 0} true;
  $i56 := $and.i32($i55, 7);
  // WARNING: %65 = and i32 %64, 7, !dbg !3979, !verifier.code !3809
  call {:cexpr "__cil_tmp52"} boogie_si_record_i32($i56);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3675, 17} true;
  assume {:verifier.code 0} true;
  $i57 := $p2i.ref.i64($p0);
  // WARNING: %66 = ptrtoint %struct.stmpe_touch* %0 to i64, !dbg !3982, !verifier.code !3809
  call {:cexpr "__cil_tmp53"} boogie_si_record_i64($i57);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3676, 29} true;
  assume {:verifier.code 0} true;
  $i58 := $add.i64($i57, 141);
  // WARNING: %67 = add i64 %66, 141, !dbg !3985, !verifier.code !3809
  call {:cexpr "__cil_tmp54"} boogie_si_record_i64($i58);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3677, 19} true;
  assume {:verifier.code 0} true;
  $p59 := $i2p.i64.ref($i58);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3677, 17} true;
  assume {:verifier.code 0} true;
  $i60 := $load.i8($M.0, $p59);
  // WARNING: %69 = load i8, i8* %68, align 1, !dbg !3989, !verifier.code !3809
  call {:cexpr "__cil_tmp55"} boogie_si_record_i8($i60);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3678, 17} true;
  assume {:verifier.code 0} true;
  $i61 := $zext.i8.i32($i60);
  // WARNING: %70 = zext i8 %69 to i32, !dbg !3992, !verifier.code !3809
  call {:cexpr "__cil_tmp56"} boogie_si_record_i32($i61);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3679, 29} true;
  assume {:verifier.code 0} true;
  $i62 := $and.i32($i61, 7);
  // WARNING: %71 = and i32 %70, 7, !dbg !3995, !verifier.code !3809
  call {:cexpr "__cil_tmp57"} boogie_si_record_i32($i62);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3680, 29} true;
  assume {:verifier.code 0} true;
  $i63 := $shl.i32($i62, 3);
  // WARNING: %72 = shl i32 %71, 3, !dbg !3998, !verifier.code !3809
  call {:cexpr "__cil_tmp58"} boogie_si_record_i32($i63);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3681, 17} true;
  assume {:verifier.code 0} true;
  $i64 := $p2i.ref.i64($p0);
  // WARNING: %73 = ptrtoint %struct.stmpe_touch* %0 to i64, !dbg !4001, !verifier.code !3809
  call {:cexpr "__cil_tmp59"} boogie_si_record_i64($i64);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3682, 29} true;
  assume {:verifier.code 0} true;
  $i65 := $add.i64($i64, 140);
  // WARNING: %74 = add i64 %73, 140, !dbg !4004, !verifier.code !3809
  call {:cexpr "__cil_tmp60"} boogie_si_record_i64($i65);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3683, 19} true;
  assume {:verifier.code 0} true;
  $p66 := $i2p.i64.ref($i65);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3683, 17} true;
  assume {:verifier.code 0} true;
  $i67 := $load.i8($M.0, $p66);
  // WARNING: %76 = load i8, i8* %75, align 1, !dbg !4008, !verifier.code !3809
  call {:cexpr "__cil_tmp61"} boogie_si_record_i8($i67);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3684, 17} true;
  assume {:verifier.code 0} true;
  $i68 := $zext.i8.i32($i67);
  // WARNING: %77 = zext i8 %76 to i32, !dbg !4011, !verifier.code !3809
  call {:cexpr "__cil_tmp62"} boogie_si_record_i32($i68);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3685, 29} true;
  assume {:verifier.code 0} true;
  $i69 := $and.i32($i68, 3);
  // WARNING: %78 = and i32 %77, 3, !dbg !4014, !verifier.code !3809
  call {:cexpr "__cil_tmp63"} boogie_si_record_i32($i69);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3686, 29} true;
  assume {:verifier.code 0} true;
  $i70 := $shl.i32($i69, 6);
  // WARNING: %79 = shl i32 %78, 6, !dbg !4017, !verifier.code !3809
  call {:cexpr "__cil_tmp64"} boogie_si_record_i32($i70);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3687, 29} true;
  assume {:verifier.code 0} true;
  $i71 := $or.i32($i70, $i63);
  // WARNING: %80 = or i32 %79, %72, !dbg !4020, !verifier.code !3809
  call {:cexpr "__cil_tmp65"} boogie_si_record_i32($i71);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3688, 29} true;
  assume {:verifier.code 0} true;
  $i72 := $or.i32($i71, $i56);
  // WARNING: %81 = or i32 %80, %65, !dbg !4023, !verifier.code !3809
  call {:cexpr "__cil_tmp66"} boogie_si_record_i32($i72);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3689, 13} true;
  assume {:verifier.code 0} true;
  $i73 := $trunc.i32.i8($i72);
  // WARNING: %82 = trunc i32 %81 to i8, !dbg !4026, !verifier.code !3809
  call {:cexpr "tsc_cfg"} boogie_si_record_i8($i73);
  // WARNING: call void @llvm.dbg.value(metadata i8 %82, i64 0, metadata !4956, metadata !3805), !dbg !4957, !verifier.code !3807
  // WARNING: call void @llvm.dbg.value(metadata i32 56, i64 0, metadata !4958, metadata !3805), !dbg !4959, !verifier.code !3807
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3692, 29} true;
  assume {:verifier.code 0} true;
  $i74 := $or.i32(192, 56);
  // WARNING: %83 = or i32 192, 56, !dbg !4033, !verifier.code !3809
  call {:cexpr "__cil_tmp69"} boogie_si_record_i32($i74);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3693, 29} true;
  assume {:verifier.code 0} true;
  $i75 := $or.i32($i74, 7);
  // WARNING: %84 = or i32 %83, 7, !dbg !4036, !verifier.code !3809
  call {:cexpr "__cil_tmp70"} boogie_si_record_i32($i75);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3694, 18} true;
  assume {:verifier.code 0} true;
  $i76 := $trunc.i32.i8($i75);
  // WARNING: %85 = trunc i32 %84 to i8, !dbg !4039, !verifier.code !3809
  call {:cexpr "tsc_cfg_mask"} boogie_si_record_i8($i76);
  // WARNING: call void @llvm.dbg.value(metadata i8 %85, i64 0, metadata !4969, metadata !3805), !dbg !4970, !verifier.code !3807
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3696, 9} true;
  assume {:verifier.code 0} true;
  call $i77 := stmpe_set_bits($p2, 65, $i76, $i73);
  // WARNING: %86 = call i32 @stmpe_set_bits(%struct.stmpe* %3, i8 zeroext 65, i8 zeroext %85, i8 zeroext %82), !dbg !4044, !verifier.code !3809
  call {:cexpr "ret"} boogie_si_record_i32($i77);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3698, 7} true;
  assume {:verifier.code 0} true;
  $i78 := $ne.i32($i77, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3698, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i78} true;
  goto $bb11, $bb12;
$bb11:
  assume ($i78 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3701, 5} true;
  assume {:verifier.code 0} true;
  call $i79 := dev_err.ref.ref($p6, .str.6);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3703, 5} true;
  assume {:verifier.code 0} true;
  $i10 := $i77;
  goto $bb3;
$bb12:
  assume !(($i78 == 1));
  assume {:verifier.code 0} true;
  goto $bb13;
$bb13:
  // WARNING: call void @llvm.dbg.value(metadata i8 86, i64 0, metadata !4983, metadata !3805), !dbg !4984, !verifier.code !3807
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3710, 17} true;
  assume {:verifier.code 0} true;
  $i80 := $p2i.ref.i64($p0);
  // WARNING: %92 = ptrtoint %struct.stmpe_touch* %0 to i64, !dbg !4058, !verifier.code !3809
  call {:cexpr "__cil_tmp75"} boogie_si_record_i64($i80);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3711, 29} true;
  assume {:verifier.code 0} true;
  $i81 := $add.i64($i80, 143);
  // WARNING: %93 = add i64 %92, 143, !dbg !4062, !verifier.code !3809
  call {:cexpr "__cil_tmp76"} boogie_si_record_i64($i81);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3712, 19} true;
  assume {:verifier.code 0} true;
  $p82 := $i2p.i64.ref($i81);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3712, 17} true;
  assume {:verifier.code 0} true;
  $i83 := $load.i8($M.0, $p82);
  // WARNING: %95 = load i8, i8* %94, align 1, !dbg !4066, !verifier.code !3809
  call {:cexpr "__cil_tmp77"} boogie_si_record_i8($i83);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3713, 17} true;
  assume {:verifier.code 0} true;
  $i84 := $zext.i8.i32($i83);
  // WARNING: %96 = zext i8 %95 to i32, !dbg !4069, !verifier.code !3809
  call {:cexpr "__cil_tmp78"} boogie_si_record_i32($i84);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3714, 29} true;
  assume {:verifier.code 0} true;
  $i85 := $and.i32($i84, 7);
  // WARNING: %97 = and i32 %96, 7, !dbg !4072, !verifier.code !3809
  call {:cexpr "__cil_tmp79"} boogie_si_record_i32($i85);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3715, 17} true;
  assume {:verifier.code 0} true;
  $i86 := $trunc.i32.i8($i85);
  // WARNING: %98 = trunc i32 %97 to i8, !dbg !4075, !verifier.code !3809
  call {:cexpr "__cil_tmp80"} boogie_si_record_i8($i86);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3716, 9} true;
  assume {:verifier.code 0} true;
  call $i87 := stmpe_set_bits($p2, 86, 7, $i86);
  // WARNING: %99 = call i32 @stmpe_set_bits(%struct.stmpe* %3, i8 zeroext 86, i8 zeroext 7, i8 zeroext %98), !dbg !4078, !verifier.code !3809
  call {:cexpr "ret"} boogie_si_record_i32($i87);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3718, 7} true;
  assume {:verifier.code 0} true;
  $i88 := $ne.i32($i87, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3718, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i88} true;
  goto $bb14, $bb15;
$bb14:
  assume ($i88 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3721, 5} true;
  assume {:verifier.code 0} true;
  call $i89 := dev_err.ref.ref($p6, .str.6);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3723, 5} true;
  assume {:verifier.code 0} true;
  $i10 := $i87;
  goto $bb3;
$bb15:
  assume !(($i88 == 1));
  assume {:verifier.code 0} true;
  goto $bb16;
$bb16:
  // WARNING: call void @llvm.dbg.value(metadata i8 88, i64 0, metadata !5017, metadata !3805), !dbg !5018, !verifier.code !3807
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3730, 17} true;
  assume {:verifier.code 0} true;
  $i90 := $p2i.ref.i64($p0);
  // WARNING: %105 = ptrtoint %struct.stmpe_touch* %0 to i64, !dbg !4092, !verifier.code !3809
  call {:cexpr "__cil_tmp84"} boogie_si_record_i64($i90);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3731, 29} true;
  assume {:verifier.code 0} true;
  $i91 := $add.i64($i90, 144);
  // WARNING: %106 = add i64 %105, 144, !dbg !4096, !verifier.code !3809
  call {:cexpr "__cil_tmp85"} boogie_si_record_i64($i91);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3732, 19} true;
  assume {:verifier.code 0} true;
  $p92 := $i2p.i64.ref($i91);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3732, 17} true;
  assume {:verifier.code 0} true;
  $i93 := $load.i8($M.0, $p92);
  // WARNING: %108 = load i8, i8* %107, align 1, !dbg !4100, !verifier.code !3809
  call {:cexpr "__cil_tmp86"} boogie_si_record_i8($i93);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3733, 17} true;
  assume {:verifier.code 0} true;
  $i94 := $zext.i8.i32($i93);
  // WARNING: %109 = zext i8 %108 to i32, !dbg !4103, !verifier.code !3809
  call {:cexpr "__cil_tmp87"} boogie_si_record_i32($i94);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3734, 29} true;
  assume {:verifier.code 0} true;
  $i95 := $and.i32($i94, 1);
  // WARNING: %110 = and i32 %109, 1, !dbg !4106, !verifier.code !3809
  call {:cexpr "__cil_tmp88"} boogie_si_record_i32($i95);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3735, 17} true;
  assume {:verifier.code 0} true;
  $i96 := $trunc.i32.i8($i95);
  // WARNING: %111 = trunc i32 %110 to i8, !dbg !4109, !verifier.code !3809
  call {:cexpr "__cil_tmp89"} boogie_si_record_i8($i96);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3736, 9} true;
  assume {:verifier.code 0} true;
  call $i97 := stmpe_set_bits($p2, 88, 1, $i96);
  // WARNING: %112 = call i32 @stmpe_set_bits(%struct.stmpe* %3, i8 zeroext 88, i8 zeroext 1, i8 zeroext %111), !dbg !4112, !verifier.code !3809
  call {:cexpr "ret"} boogie_si_record_i32($i97);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3738, 7} true;
  assume {:verifier.code 0} true;
  $i98 := $ne.i32($i97, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3738, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i98} true;
  goto $bb17, $bb18;
$bb17:
  assume ($i98 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3741, 5} true;
  assume {:verifier.code 0} true;
  call $i99 := dev_err.ref.ref($p6, .str.6);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3743, 5} true;
  assume {:verifier.code 0} true;
  $i10 := $i97;
  goto $bb3;
$bb18:
  assume !(($i98 == 1));
  assume {:verifier.code 0} true;
  goto $bb19;
$bb19:
  // WARNING: call void @llvm.dbg.value(metadata i8 74, i64 0, metadata !5051, metadata !3805), !dbg !5052, !verifier.code !3807
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3750, 9} true;
  assume {:verifier.code 0} true;
  call $i100 := stmpe_reg_write($p2, 74, 1);
  // WARNING: %118 = call i32 @stmpe_reg_write(%struct.stmpe* %3, i8 zeroext 74, i8 zeroext 1), !dbg !4126, !verifier.code !3809
  call {:cexpr "ret"} boogie_si_record_i32($i100);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3752, 7} true;
  assume {:verifier.code 0} true;
  $i101 := $ne.i32($i100, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3752, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i101} true;
  goto $bb20, $bb21;
$bb20:
  assume ($i101 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3755, 5} true;
  assume {:verifier.code 0} true;
  call $i102 := dev_err.ref.ref($p6, .str.7);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3757, 5} true;
  assume {:verifier.code 0} true;
  $i10 := $i100;
  goto $bb3;
$bb21:
  assume !(($i101 == 1));
  assume {:verifier.code 0} true;
  goto $bb22;
$bb22:
  // WARNING: call void @llvm.dbg.value(metadata i8 64, i64 0, metadata !5066, metadata !3805), !dbg !5067, !verifier.code !3807
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3764, 17} true;
  assume {:verifier.code 0} true;
  $i103 := $trunc.i32.i8(14);
  // WARNING: %124 = trunc i32 14 to i8, !dbg !4141, !verifier.code !3809
  call {:cexpr "__cil_tmp96"} boogie_si_record_i8($i103);
  // WARNING: call void @llvm.dbg.value(metadata i8 %124, i64 0, metadata !5072, metadata !3805), !dbg !5073, !verifier.code !3807
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3766, 9} true;
  assume {:verifier.code 0} true;
  call $i104 := stmpe_set_bits($p2, 64, $i103, 0);
  // WARNING: %125 = call i32 @stmpe_set_bits(%struct.stmpe* %3, i8 zeroext 64, i8 zeroext %124, i8 zeroext 0), !dbg !4147, !verifier.code !3809
  call {:cexpr "ret"} boogie_si_record_i32($i104);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3768, 7} true;
  assume {:verifier.code 0} true;
  $i105 := $ne.i32($i104, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3768, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i105} true;
  goto $bb23, $bb24;
$bb23:
  assume ($i105 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3771, 5} true;
  assume {:verifier.code 0} true;
  call $i106 := dev_err.ref.ref($p6, .str.8);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3773, 5} true;
  assume {:verifier.code 0} true;
  $i10 := $i104;
  goto $bb3;
$bb24:
  assume !(($i105 == 1));
  assume {:verifier.code 0} true;
  goto $bb25;
$bb25:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3777, 3} true;
  assume {:verifier.code 0} true;
  $i10 := 0;
  goto $bb3;
}
const stmpe_ts_open: ref;
axiom (stmpe_ts_open == $sub.ref(0, 43725));
procedure stmpe_ts_open($p0: ref)
  returns ($r: i32)
{
  var $p1: ref;
  var $p2: ref;
  var $p3: ref;
  var $p4: ref;
  var $i5: i32;
  var $i6: i1;
  var $p8: ref;
  var $p9: ref;
  var $i10: i32;
  var $i7: i32;
$bb0:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3793, 13} true;
  assume {:verifier.code 0} true;
  call $p1 := input_get_drvdata($p0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3794, 8} true;
  assume {:verifier.code 0} true;
  $p2 := $bitcast.ref.ref($p1);
  // WARNING: call void @llvm.dbg.value(metadata %struct.stmpe_touch* %3, i64 0, metadata !5097, metadata !3805), !dbg !5098, !verifier.code !3807
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3796, 16} true;
  assume {:verifier.code 0} true;
  $p3 := $bitcast.ref.ref($p2);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3796, 16} true;
  assume {:verifier.code 0} true;
  $p4 := $load.ref($M.0, $p3);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3797, 9} true;
  assume {:verifier.code 0} true;
  call $i5 := __stmpe_reset_fifo($p4);
  // WARNING: %6 = call i32 @__stmpe_reset_fifo(%struct.stmpe* %5), !dbg !3821, !verifier.code !3807
  call {:cexpr "ret"} boogie_si_record_i32($i5);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3799, 7} true;
  assume {:verifier.code 0} true;
  $i6 := $ne.i32($i5, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3799, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i6} true;
  goto $bb1, $bb2;
$bb1:
  assume ($i6 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3800, 5} true;
  assume {:verifier.code 0} true;
  $i7 := $i5;
  goto $bb3;
$bb2:
  assume !(($i6 == 1));
  assume {:verifier.code 0} true;
  goto $bb4;
$bb3:
  assume {:verifier.code 0} true;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3813, 1} true;
  assume {:verifier.code 0} true;
  $r := $i7;
  $exn := false;
  return;
$bb4:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3805, 16} true;
  assume {:verifier.code 0} true;
  $p8 := $bitcast.ref.ref($p2);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3805, 16} true;
  assume {:verifier.code 0} true;
  $p9 := $load.ref($M.0, $p8);
  // WARNING: call void @llvm.dbg.value(metadata %struct.stmpe* %12, i64 0, metadata !5112, metadata !3805), !dbg !5113, !verifier.code !3807
  // WARNING: call void @llvm.dbg.value(metadata i8 64, i64 0, metadata !5114, metadata !3805), !dbg !5115, !verifier.code !3807
  // WARNING: call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !5116, metadata !3805), !dbg !5117, !verifier.code !3807
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3809, 13} true;
  assume {:verifier.code 0} true;
  call $i10 := stmpe_set_bits($p9, 64, 1, 1);
  // WARNING: %13 = call i32 @stmpe_set_bits(%struct.stmpe* %12, i8 zeroext 64, i8 zeroext 1, i8 zeroext 1), !dbg !3837, !verifier.code !3807
  call {:cexpr "tmp___8"} boogie_si_record_i32($i10);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3811, 3} true;
  assume {:verifier.code 0} true;
  $i7 := $i10;
  goto $bb3;
}
const stmpe_ts_close: ref;
axiom (stmpe_ts_close == $sub.ref(0, 44757));
procedure stmpe_ts_close($p0: ref)
{
  var $p1: ref;
  var $p2: ref;
  var $i3: i64;
  var $i4: i64;
  var $p5: ref;
  var $i6: i1;
  var $p7: ref;
  var $p8: ref;
  var $i9: i32;
$bb0:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3827, 13} true;
  assume {:verifier.code 0} true;
  call $p1 := input_get_drvdata($p0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3828, 8} true;
  assume {:verifier.code 0} true;
  $p2 := $bitcast.ref.ref($p1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3829, 16} true;
  assume {:verifier.code 0} true;
  $i3 := $p2i.ref.i64($p2);
  // WARNING: %4 = ptrtoint %struct.stmpe_touch* %3 to i64, !dbg !3816, !verifier.code !3807
  call {:cexpr "__cil_tmp4"} boogie_si_record_i64($i3);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3830, 27} true;
  assume {:verifier.code 0} true;
  $i4 := $add.i64($i3, 16);
  // WARNING: %5 = add i64 %4, 16, !dbg !3819, !verifier.code !3807
  call {:cexpr "__cil_tmp5"} boogie_si_record_i64($i4);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3831, 16} true;
  assume {:verifier.code 0} true;
  $p5 := $i2p.i64.ref($i4);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3832, 3} true;
  assume {:verifier.code 0} true;
  call $i6 := cancel_delayed_work_sync($p5);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3833, 16} true;
  assume {:verifier.code 0} true;
  $p7 := $bitcast.ref.ref($p2);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3833, 16} true;
  assume {:verifier.code 0} true;
  $p8 := $load.ref($M.0, $p7);
  // WARNING: call void @llvm.dbg.value(metadata %struct.stmpe* %9, i64 0, metadata !5147, metadata !3805), !dbg !5148, !verifier.code !3807
  // WARNING: call void @llvm.dbg.value(metadata i8 64, i64 0, metadata !5149, metadata !3805), !dbg !5150, !verifier.code !3807
  // WARNING: call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !5151, metadata !3805), !dbg !5152, !verifier.code !3807
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3837, 3} true;
  assume {:verifier.code 0} true;
  call $i9 := stmpe_set_bits($p8, 64, 1, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3839, 3} true;
  assume {:verifier.code 0} true;
  $exn := false;
  return;
}
const input_set_drvdata: ref;
axiom (input_set_drvdata == $sub.ref(0, 45789));
procedure input_set_drvdata($p0: ref, $p1: ref)
{
  var $i2: i64;
  var $i3: i64;
  var $p4: ref;
  var $i5: i32;
$bb0:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3171, 16} true;
  assume {:verifier.code 0} true;
  $i2 := $p2i.ref.i64($p0);
  // WARNING: %3 = ptrtoint %struct.input_dev* %0 to i64, !dbg !3812, !verifier.code !3809
  call {:cexpr "__cil_tmp3"} boogie_si_record_i64($i2);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3172, 27} true;
  assume {:verifier.code 0} true;
  $i3 := $add.i64($i2, 648);
  // WARNING: %4 = add i64 %3, 648, !dbg !3817, !verifier.code !3809
  call {:cexpr "__cil_tmp4"} boogie_si_record_i64($i3);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3173, 16} true;
  assume {:verifier.code 0} true;
  $p4 := $i2p.i64.ref($i3);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3174, 3} true;
  assume {:verifier.code 0} true;
  call $i5 := dev_set_drvdata($p4, $p1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3176, 3} true;
  assume {:verifier.code 0} true;
  $exn := false;
  return;
}
const input_set_abs_params: ref;
axiom (input_set_abs_params == $sub.ref(0, 46821));
procedure input_set_abs_params($p0: ref, $i1: i32, $i2: i32, $i3: i32, $i4: i32, $i5: i32);
const input_register_device: ref;
axiom (input_register_device == $sub.ref(0, 47853));
procedure input_register_device($p0: ref)
  returns ($r: i32);
const input_free_device: ref;
axiom (input_free_device == $sub.ref(0, 48885));
procedure input_free_device($p0: ref);
const input_get_drvdata: ref;
axiom (input_get_drvdata == $sub.ref(0, 49917));
procedure input_get_drvdata($p0: ref)
  returns ($r: ref)
{
  var $i1: i64;
  var $i2: i64;
  var $p3: ref;
  var $p4: ref;
$bb0:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3154, 16} true;
  assume {:verifier.code 0} true;
  $i1 := $p2i.ref.i64($p0);
  // WARNING: %2 = ptrtoint %struct.input_dev* %0 to i64, !dbg !3810, !verifier.code !3809
  call {:cexpr "__cil_tmp3"} boogie_si_record_i64($i1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3155, 27} true;
  assume {:verifier.code 0} true;
  $i2 := $add.i64($i1, 648);
  // WARNING: %3 = add i64 %2, 648, !dbg !3815, !verifier.code !3809
  call {:cexpr "__cil_tmp4"} boogie_si_record_i64($i2);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3156, 16} true;
  assume {:verifier.code 0} true;
  $p3 := $i2p.i64.ref($i2);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3158, 13} true;
  assume {:verifier.code 0} true;
  call $p4 := dev_get_drvdata($p3);
  assume $isExternal($p4);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3160, 3} true;
  assume {:verifier.code 0} true;
  $r := $p4;
  $exn := false;
  return;
}
const cancel_delayed_work_sync: ref;
axiom (cancel_delayed_work_sync == $sub.ref(0, 50949));
procedure cancel_delayed_work_sync($p0: ref)
  returns ($r: i1);
const stmpe_set_bits: ref;
axiom (stmpe_set_bits == $sub.ref(0, 51981));
procedure stmpe_set_bits($p0: ref, $i1: i8, $i2: i8, $i3: i8)
  returns ($r: i32);
const __stmpe_reset_fifo: ref;
axiom (__stmpe_reset_fifo == $sub.ref(0, 53013));
procedure __stmpe_reset_fifo($p0: ref)
  returns ($r: i32)
{
  var $i1: i32;
  var $i2: i1;
  var $i4: i32;
  var $i3: i32;
$bb0:
  // WARNING: call void @llvm.dbg.value(metadata %struct.stmpe* %0, i64 0, metadata !5202, metadata !3805), !dbg !5203, !verifier.code !3807
  // WARNING: call void @llvm.dbg.value(metadata i8 75, i64 0, metadata !5204, metadata !3805), !dbg !5205, !verifier.code !3807
  // WARNING: call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !5206, metadata !3805), !dbg !5207, !verifier.code !3807
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3259, 9} true;
  assume {:verifier.code 0} true;
  call $i1 := stmpe_set_bits($p0, 75, 1, 1);
  // WARNING: %2 = call i32 @stmpe_set_bits(%struct.stmpe* %0, i8 zeroext 75, i8 zeroext 1, i8 zeroext 1), !dbg !3816, !verifier.code !3809
  call {:cexpr "ret"} boogie_si_record_i32($i1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3261, 7} true;
  assume {:verifier.code 0} true;
  $i2 := $ne.i32($i1, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3261, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i2} true;
  goto $bb1, $bb2;
$bb1:
  assume ($i2 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3262, 5} true;
  assume {:verifier.code 0} true;
  $i3 := $i1;
  goto $bb3;
$bb2:
  assume !(($i2 == 1));
  assume {:verifier.code 0} true;
  goto $bb4;
$bb3:
  assume {:verifier.code 0} true;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3274, 1} true;
  assume {:verifier.code 0} true;
  $r := $i3;
  $exn := false;
  return;
$bb4:
  // WARNING: call void @llvm.dbg.value(metadata i8 75, i64 0, metadata !5220, metadata !3805), !dbg !5221, !verifier.code !3807
  // WARNING: call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !5222, metadata !3805), !dbg !5223, !verifier.code !3807
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3270, 13} true;
  assume {:verifier.code 0} true;
  call $i4 := stmpe_set_bits($p0, 75, 1, 0);
  // WARNING: %7 = call i32 @stmpe_set_bits(%struct.stmpe* %0, i8 zeroext 75, i8 zeroext 1, i8 zeroext 0), !dbg !3832, !verifier.code !3809
  call {:cexpr "tmp___7"} boogie_si_record_i32($i4);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3272, 3} true;
  assume {:verifier.code 0} true;
  $i3 := $i4;
  goto $bb3;
}
const stmpe_enable: ref;
axiom (stmpe_enable == $sub.ref(0, 54045));
procedure stmpe_enable($p0: ref, $i1: i32)
  returns ($r: i32);
const stmpe_reg_write: ref;
axiom (stmpe_reg_write == $sub.ref(0, 55077));
procedure stmpe_reg_write($p0: ref, $i1: i8, $i2: i8)
  returns ($r: i32);
const stmpe_block_read: ref;
axiom (stmpe_block_read == $sub.ref(0, 56109));
procedure stmpe_block_read($p0: ref, $i1: i8, $i2: i8, $p3: ref)
  returns ($r: i32);
const input_report_abs: ref;
axiom (input_report_abs == $sub.ref(0, 57141));
procedure input_report_abs($p0: ref, $i1: i32, $i2: i32)
{
$bb0:
  // WARNING: call void @llvm.dbg.value(metadata %struct.input_dev* %0, i64 0, metadata !5235, metadata !3805), !dbg !5236, !verifier.code !3807
  // WARNING: call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !5237, metadata !3805), !dbg !5238, !verifier.code !3807
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3191, 3} true;
  assume {:verifier.code 0} true;
  call input_event($p0, 3, $i1, $i2);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3193, 3} true;
  assume {:verifier.code 0} true;
  $exn := false;
  return;
}
const input_sync: ref;
axiom (input_sync == $sub.ref(0, 58173));
procedure input_sync($p0: ref)
{
$bb0:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3202, 3} true;
  assume {:verifier.code 0} true;
  call input_event($p0, 0, 0, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 3204, 3} true;
  assume {:verifier.code 0} true;
  $exn := false;
  return;
}
const schedule_delayed_work: ref;
axiom (schedule_delayed_work == $sub.ref(0, 59205));
procedure schedule_delayed_work($p0: ref, $i1: i64)
  returns ($r: i32);
const input_event: ref;
axiom (input_event == $sub.ref(0, 60237));
procedure input_event($p0: ref, $i1: i32, $i2: i32, $i3: i32);
const stmpe_reg_read: ref;
axiom (stmpe_reg_read == $sub.ref(0, 61269));
procedure stmpe_reg_read($p0: ref, $i1: i8)
  returns ($r: i32);
const __const_udelay: ref;
axiom (__const_udelay == $sub.ref(0, 62301));
procedure __const_udelay($i0: i64);
const __kmalloc: ref;
axiom (__kmalloc == $sub.ref(0, 63333));
procedure __kmalloc($i0: i64, $i1: i32)
  returns ($r: ref);
const main: ref;
axiom (main == $sub.ref(0, 64365));
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
  var $i9: i1;
  var $i10: i32;
  var $i11: i32;
  var $i12: i32;
  var $i13: i1;
  var $i14: i32;
  var $i16: i32;
  var $i15: i32;
$bb0:
  call $initialize();
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4363, 20} true;
  assume {:verifier.code 0} true;
  call {:cexpr "smack:entry:main"} boogie_si_record_ref(main);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4363, 20} true;
  assume {:verifier.code 0} true;
  $M.2 := 1;
  call {:cexpr "LDV_IN_INTERRUPT"} boogie_si_record_i32(1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4364, 3} true;
  assume {:verifier.code 0} true;
  call ldv_initialize();
  // WARNING: call void @ldv_initialize(), !dbg !3808, !verifier.code !3807
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4368, 3} true;
  assume {:verifier.code 0} true;
  $i0 := 0;
  goto $bb1;
$bb1:
  assume {:verifier.code 0} true;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4368, 13} true;
  assume {:verifier.code 0} true;
  goto $bb2;
$bb2:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4371, 15} true;
  assume {:verifier.code 1} true;
  call $i1 := __VERIFIER_nondet_int();
  call {:cexpr "smack:ext:__VERIFIER_nondet_int"} boogie_si_record_i32($i1);
  // WARNING: %3 = call i32 @__VERIFIER_nondet_int(), !dbg !3816, !verifier.code !3819
  call {:cexpr "tmp___8"} boogie_si_record_i32($i1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4373, 9} true;
  assume {:verifier.code 0} true;
  $i2 := $ne.i32($i1, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4373, 9} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i2} true;
  goto $bb3, $bb4;
$bb3:
  assume ($i2 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4375, 5} true;
  assume {:verifier.code 0} true;
  goto $bb5;
$bb4:
  assume !(($i2 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4377, 58} true;
  assume {:verifier.code 0} true;
  $i3 := $eq.i32($i0, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4377, 58} true;
  assume {:verifier.code 0} true;
  $i4 := $zext.i1.i32($i3);
  // WARNING: %8 = zext i1 %7 to i32, !dbg !3827, !verifier.code !3807
  call {:cexpr "__cil_tmp7"} boogie_si_record_i32($i4);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4378, 13} true;
  assume {:verifier.code 0} true;
  $i5 := $ne.i32($i4, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4378, 11} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i5} true;
  goto $bb6, $bb7;
$bb5:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4386, 15} true;
  assume {:verifier.code 1} true;
  call $i6 := __VERIFIER_nondet_int();
  call {:cexpr "smack:ext:__VERIFIER_nondet_int"} boogie_si_record_i32($i6);
  // WARNING: %14 = call i32 @__VERIFIER_nondet_int(), !dbg !3839, !verifier.code !3819
  call {:cexpr "tmp___7"} boogie_si_record_i32($i6);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4388, 17} true;
  assume {:verifier.code 0} true;
  $i7 := $eq.i32($i6, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4388, 9} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i7} true;
  goto $bb10, $bb11;
$bb6:
  assume ($i5 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4381, 9} true;
  assume {:verifier.code 0} true;
  goto $bb9;
$bb7:
  assume !(($i5 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4380, 7} true;
  assume {:verifier.code 0} true;
  goto $bb8;
$bb8:
  assume {:verifier.code 0} true;
  goto $bb5;
$bb9:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4429, 3} true;
  assume {:verifier.code 0} true;
  goto $bb24;
$bb10:
  assume ($i7 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4389, 7} true;
  assume {:verifier.code 0} true;
  goto $bb12;
$bb11:
  assume !(($i7 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4391, 17} true;
  assume {:verifier.code 0} true;
  $i8 := $eq.i32($i6, 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4391, 9} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i8} true;
  goto $bb13, $bb14;
$bb12:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4398, 51} true;
  assume {:verifier.code 0} true;
  $i9 := $eq.i32($i0, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4398, 13} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i9} true;
  goto $bb20, $bb21;
$bb13:
  assume ($i8 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4392, 7} true;
  assume {:verifier.code 0} true;
  goto $bb15;
$bb14:
  assume !(($i8 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4395, 7} true;
  assume {:verifier.code 0} true;
  goto $bb16;
$bb15:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4415, 26} true;
  assume {:verifier.code 0} true;
  $M.2 := 2;
  call {:cexpr "LDV_IN_INTERRUPT"} boogie_si_record_i32(2);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4416, 9} true;
  assume {:verifier.code 0} true;
  call $i16 := stmpe_ts_handler($u1, $u2);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4417, 26} true;
  assume {:verifier.code 0} true;
  $M.2 := 1;
  call {:cexpr "LDV_IN_INTERRUPT"} boogie_si_record_i32(1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4419, 9} true;
  assume {:verifier.code 0} true;
  $i15 := $i0;
  goto $bb27;
$bb16:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4421, 9} true;
  assume {:verifier.code 0} true;
  $i15 := $i0;
  goto $bb27;
$bb17:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4396, 11} true;
  assume {:verifier.code 0} true;
  assume {:branchcond 0} true;
  goto $bb18, $bb19;
$bb18:
  assume (0 == 1);
  assume {:verifier.code 0} true;
  assume false;
$bb19:
  assume !((0 == 1));
  assume {:verifier.code 0} true;
  assume false;
$bb20:
  assume ($i9 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4400, 37} true;
  assume {:verifier.code 0} true;
  call $i10 := stmpe_input_probe($u0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4400, 35} true;
  assume {:verifier.code 0} true;
  $M.3 := $i10;
  call {:cexpr "res_stmpe_input_probe_6"} boogie_si_record_i32($i10);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4401, 34} true;
  assume {:verifier.code 0} true;
  $i11 := $M.3;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4401, 11} true;
  assume {:verifier.code 0} true;
  call ldv_check_return_value($i11);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4403, 15} true;
  assume {:verifier.code 0} true;
  $i12 := $M.3;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4403, 15} true;
  assume {:verifier.code 0} true;
  $i13 := $ne.i32($i12, 0);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4403, 15} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i13} true;
  goto $bb22, $bb23;
$bb21:
  assume !(($i9 == 1));
  assume {:verifier.code 0} true;
  $i14 := $i0;
  goto $bb26;
$bb22:
  assume ($i13 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4404, 13} true;
  assume {:verifier.code 0} true;
  goto $bb24;
$bb23:
  assume !(($i13 == 1));
  assume {:verifier.code 0} true;
  goto $bb25;
$bb24:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4432, 3} true;
  assume {:verifier.code 0} true;
  call ldv_check_final_state();
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4434, 3} true;
  assume {:verifier.code 0} true;
  $exn := false;
  return;
$bb25:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4409, 9} true;
  assume {:verifier.code 0} true;
  $i14 := 0;
  goto $bb26;
$bb26:
  assume {:verifier.code 0} true;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4412, 9} true;
  assume {:verifier.code 0} true;
  $i15 := $i14;
  goto $bb27;
$bb27:
  assume {:verifier.code 0} true;
  assume {:verifier.code 0} true;
  goto $bb28;
$bb28:
  assume {:verifier.code 0} true;
  goto $bb29;
$bb29:
  assume {:verifier.code 0} true;
  goto $bb30;
$bb30:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4368, 3} true;
  assume {:verifier.code 0} true;
  $i0 := $i15;
  goto $bb1;
}
const ldv_initialize: ref;
axiom (ldv_initialize == $sub.ref(0, 65397));
procedure ldv_initialize();
const ldv_check_return_value: ref;
axiom (ldv_check_return_value == $sub.ref(0, 66429));
procedure ldv_check_return_value($i0: i32);
const ldv_check_final_state: ref;
axiom (ldv_check_final_state == $sub.ref(0, 67461));
procedure ldv_check_final_state()
{
  var $i0: i32;
  var $i1: i1;
$bb0:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4569, 7} true;
  assume {:verifier.code 0} true;
  $i0 := $M.4;
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4569, 17} true;
  assume {:verifier.code 0} true;
  $i1 := $eq.i32($i0, 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4569, 7} true;
  assume {:verifier.code 0} true;
  assume {:branchcond $i1} true;
  goto $bb1, $bb2;
$bb1:
  assume ($i1 == 1);
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4571, 3} true;
  assume {:verifier.code 0} true;
  goto $bb3;
$bb2:
  assume !(($i1 == 1));
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4573, 5} true;
  assume {:verifier.code 0} true;
  call ldv_blast_assert();
  assume {:verifier.code 0} true;
  goto $bb3;
$bb3:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4576, 3} true;
  assume {:verifier.code 0} true;
  $exn := false;
  return;
}
const ldv_blast_assert: ref;
axiom (ldv_blast_assert == $sub.ref(0, 68493));
procedure ldv_blast_assert()
{
$bb0:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4440, 3} true;
  assume {:verifier.code 0} true;
  goto $bb1;
$bb1:
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4441, 10} true;
  assume {:verifier.code 1} true;
  call __VERIFIER_error();
  assume {:sourceloc "/proj/SMACK/smac/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--input--touchscreen--stmpe-ts.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out-F57hk3.c", 4443, 1} true;
  assume {:verifier.code 0} true;
  $exn := false;
  return;
}
const __VERIFIER_assume: ref;
axiom (__VERIFIER_assume == $sub.ref(0, 69525));
procedure __VERIFIER_assume($i0: i32)
{
$bb0:
  // WARNING: call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !5353, metadata !3805), !dbg !5354, !verifier.code !3807
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
axiom (__SMACK_code == $sub.ref(0, 70557));
procedure __SMACK_code.ref($p0: ref);
procedure __SMACK_code.ref.i32($p0: ref, p.1: i32);
const __SMACK_dummy: ref;
axiom (__SMACK_dummy == $sub.ref(0, 71589));
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
axiom (__VERIFIER_error == $sub.ref(0, 72621));
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
axiom (__SMACK_nondet_char == $sub.ref(0, 73653));
procedure __SMACK_nondet_char()
  returns ($r: i8);
const __SMACK_nondet_signed_char: ref;
axiom (__SMACK_nondet_signed_char == $sub.ref(0, 74685));
procedure __SMACK_nondet_signed_char()
  returns ($r: i8);
const __SMACK_nondet_unsigned_char: ref;
axiom (__SMACK_nondet_unsigned_char == $sub.ref(0, 75717));
procedure __SMACK_nondet_unsigned_char()
  returns ($r: i8);
const __SMACK_nondet_short: ref;
axiom (__SMACK_nondet_short == $sub.ref(0, 76749));
procedure __SMACK_nondet_short()
  returns ($r: i16);
const __SMACK_nondet_signed_short: ref;
axiom (__SMACK_nondet_signed_short == $sub.ref(0, 77781));
procedure __SMACK_nondet_signed_short()
  returns ($r: i16);
const __SMACK_nondet_signed_short_int: ref;
axiom (__SMACK_nondet_signed_short_int == $sub.ref(0, 78813));
procedure __SMACK_nondet_signed_short_int()
  returns ($r: i16);
const __SMACK_nondet_unsigned_short: ref;
axiom (__SMACK_nondet_unsigned_short == $sub.ref(0, 79845));
procedure __SMACK_nondet_unsigned_short()
  returns ($r: i16);
const __SMACK_nondet_unsigned_short_int: ref;
axiom (__SMACK_nondet_unsigned_short_int == $sub.ref(0, 80877));
procedure __SMACK_nondet_unsigned_short_int()
  returns ($r: i16);
const __VERIFIER_nondet_int: ref;
axiom (__VERIFIER_nondet_int == $sub.ref(0, 81909));
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
  // WARNING: %1 = call i32 @__SMACK_nondet_int(), !dbg !3804, !verifier.code !3805
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
axiom (__SMACK_nondet_int == $sub.ref(0, 82941));
procedure __SMACK_nondet_int()
  returns ($r: i32);
const __SMACK_nondet_signed_int: ref;
axiom (__SMACK_nondet_signed_int == $sub.ref(0, 83973));
procedure __SMACK_nondet_signed_int()
  returns ($r: i32);
const __SMACK_nondet_unsigned: ref;
axiom (__SMACK_nondet_unsigned == $sub.ref(0, 85005));
procedure __SMACK_nondet_unsigned()
  returns ($r: i32);
const __SMACK_nondet_unsigned_int: ref;
axiom (__SMACK_nondet_unsigned_int == $sub.ref(0, 86037));
procedure __SMACK_nondet_unsigned_int()
  returns ($r: i32);
const __SMACK_nondet_long: ref;
axiom (__SMACK_nondet_long == $sub.ref(0, 87069));
procedure __SMACK_nondet_long()
  returns ($r: i64);
const __SMACK_nondet_long_int: ref;
axiom (__SMACK_nondet_long_int == $sub.ref(0, 88101));
procedure __SMACK_nondet_long_int()
  returns ($r: i64);
const __SMACK_nondet_signed_long: ref;
axiom (__SMACK_nondet_signed_long == $sub.ref(0, 89133));
procedure __SMACK_nondet_signed_long()
  returns ($r: i64);
const __SMACK_nondet_signed_long_int: ref;
axiom (__SMACK_nondet_signed_long_int == $sub.ref(0, 90165));
procedure __SMACK_nondet_signed_long_int()
  returns ($r: i64);
const __SMACK_nondet_unsigned_long: ref;
axiom (__SMACK_nondet_unsigned_long == $sub.ref(0, 91197));
procedure __SMACK_nondet_unsigned_long()
  returns ($r: i64);
const __SMACK_nondet_unsigned_long_int: ref;
axiom (__SMACK_nondet_unsigned_long_int == $sub.ref(0, 92229));
procedure __SMACK_nondet_unsigned_long_int()
  returns ($r: i64);
const __SMACK_nondet_long_long: ref;
axiom (__SMACK_nondet_long_long == $sub.ref(0, 93261));
procedure __SMACK_nondet_long_long()
  returns ($r: i64);
const __SMACK_nondet_long_long_int: ref;
axiom (__SMACK_nondet_long_long_int == $sub.ref(0, 94293));
procedure __SMACK_nondet_long_long_int()
  returns ($r: i64);
const __SMACK_nondet_signed_long_long: ref;
axiom (__SMACK_nondet_signed_long_long == $sub.ref(0, 95325));
procedure __SMACK_nondet_signed_long_long()
  returns ($r: i64);
const __SMACK_nondet_signed_long_long_int: ref;
axiom (__SMACK_nondet_signed_long_long_int == $sub.ref(0, 96357));
procedure __SMACK_nondet_signed_long_long_int()
  returns ($r: i64);
const __SMACK_nondet_unsigned_long_long: ref;
axiom (__SMACK_nondet_unsigned_long_long == $sub.ref(0, 97389));
procedure __SMACK_nondet_unsigned_long_long()
  returns ($r: i64);
const __SMACK_nondet_unsigned_long_long_int: ref;
axiom (__SMACK_nondet_unsigned_long_long_int == $sub.ref(0, 98421));
procedure __SMACK_nondet_unsigned_long_long_int()
  returns ($r: i64);
const __SMACK_decls: ref;
axiom (__SMACK_decls == $sub.ref(0, 99453));
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
axiom (__SMACK_top_decl == $sub.ref(0, 100485));
procedure __SMACK_top_decl.ref($p0: ref);
const __SMACK_init_func_memory_model: ref;
axiom (__SMACK_init_func_memory_model == $sub.ref(0, 101517));
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
axiom (llvm.dbg.value == $sub.ref(0, 102549));
procedure llvm.dbg.value($p0: ref, $i1: i64, $p2: ref, $p3: ref);
const __SMACK_static_init: ref;
axiom (__SMACK_static_init == $sub.ref(0, 103581));
procedure __SMACK_static_init()
{
$bb0:
  $M.2 := 0;
  call {:cexpr "LDV_IN_INTERRUPT"} boogie_si_record_i32(0);
  $M.4 := 1;
  call {:cexpr "ldv_mutex"} boogie_si_record_i32(1);
  $M.0 := $store.ref($M.0, llvm.used, __mod_author385);
  $M.0 := $store.ref($M.0, $add.ref(llvm.used, 8), __mod_description386);
  $M.0 := $store.ref($M.0, $add.ref(llvm.used, 16), __mod_license387);
  $M.0 := $store.ref($M.0, $add.ref(llvm.used, 24), __mod_alias388);
  $M.0 := $store.i8($M.0, __mod_author385, 97);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author385, 1), 117);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author385, 2), 116);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author385, 3), 104);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author385, 4), 111);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author385, 5), 114);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author385, 6), 61);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author385, 7), 76);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author385, 8), 117);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author385, 9), 111);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author385, 10), 116);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author385, 11), 97);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author385, 12), 111);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author385, 13), 32);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author385, 14), 70);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author385, 15), 117);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author385, 16), 32);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author385, 17), 60);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author385, 18), 108);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author385, 19), 46);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author385, 20), 102);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author385, 21), 117);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author385, 22), 64);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author385, 23), 112);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author385, 24), 101);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author385, 25), 110);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author385, 26), 103);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author385, 27), 117);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author385, 28), 116);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author385, 29), 114);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author385, 30), 111);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author385, 31), 110);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author385, 32), 105);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author385, 33), 120);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author385, 34), 46);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author385, 35), 100);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author385, 36), 101);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author385, 37), 62);
  $M.0 := $store.i8($M.0, $add.ref(__mod_author385, 38), 0);
  $M.0 := $store.i8($M.0, __mod_description386, 100);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description386, 1), 101);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description386, 2), 115);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description386, 3), 99);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description386, 4), 114);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description386, 5), 105);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description386, 6), 112);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description386, 7), 116);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description386, 8), 105);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description386, 9), 111);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description386, 10), 110);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description386, 11), 61);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description386, 12), 83);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description386, 13), 84);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description386, 14), 77);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description386, 15), 80);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description386, 16), 69);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description386, 17), 88);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description386, 18), 88);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description386, 19), 88);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description386, 20), 32);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description386, 21), 116);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description386, 22), 111);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description386, 23), 117);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description386, 24), 99);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description386, 25), 104);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description386, 26), 115);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description386, 27), 99);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description386, 28), 114);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description386, 29), 101);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description386, 30), 101);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description386, 31), 110);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description386, 32), 32);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description386, 33), 100);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description386, 34), 114);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description386, 35), 105);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description386, 36), 118);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description386, 37), 101);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description386, 38), 114);
  $M.0 := $store.i8($M.0, $add.ref(__mod_description386, 39), 0);
  $M.0 := $store.i8($M.0, __mod_license387, 108);
  $M.0 := $store.i8($M.0, $add.ref(__mod_license387, 1), 105);
  $M.0 := $store.i8($M.0, $add.ref(__mod_license387, 2), 99);
  $M.0 := $store.i8($M.0, $add.ref(__mod_license387, 3), 101);
  $M.0 := $store.i8($M.0, $add.ref(__mod_license387, 4), 110);
  $M.0 := $store.i8($M.0, $add.ref(__mod_license387, 5), 115);
  $M.0 := $store.i8($M.0, $add.ref(__mod_license387, 6), 101);
  $M.0 := $store.i8($M.0, $add.ref(__mod_license387, 7), 61);
  $M.0 := $store.i8($M.0, $add.ref(__mod_license387, 8), 71);
  $M.0 := $store.i8($M.0, $add.ref(__mod_license387, 9), 80);
  $M.0 := $store.i8($M.0, $add.ref(__mod_license387, 10), 76);
  $M.0 := $store.i8($M.0, $add.ref(__mod_license387, 11), 0);
  $M.0 := $store.i8($M.0, __mod_alias388, 97);
  $M.0 := $store.i8($M.0, $add.ref(__mod_alias388, 1), 108);
  $M.0 := $store.i8($M.0, $add.ref(__mod_alias388, 2), 105);
  $M.0 := $store.i8($M.0, $add.ref(__mod_alias388, 3), 97);
  $M.0 := $store.i8($M.0, $add.ref(__mod_alias388, 4), 115);
  $M.0 := $store.i8($M.0, $add.ref(__mod_alias388, 5), 61);
  $M.0 := $store.i8($M.0, $add.ref(__mod_alias388, 6), 112);
  $M.0 := $store.i8($M.0, $add.ref(__mod_alias388, 7), 108);
  $M.0 := $store.i8($M.0, $add.ref(__mod_alias388, 8), 97);
  $M.0 := $store.i8($M.0, $add.ref(__mod_alias388, 9), 116);
  $M.0 := $store.i8($M.0, $add.ref(__mod_alias388, 10), 102);
  $M.0 := $store.i8($M.0, $add.ref(__mod_alias388, 11), 111);
  $M.0 := $store.i8($M.0, $add.ref(__mod_alias388, 12), 114);
  $M.0 := $store.i8($M.0, $add.ref(__mod_alias388, 13), 109);
  $M.0 := $store.i8($M.0, $add.ref(__mod_alias388, 14), 58);
  $M.0 := $store.i8($M.0, $add.ref(__mod_alias388, 15), 115);
  $M.0 := $store.i8($M.0, $add.ref(__mod_alias388, 16), 116);
  $M.0 := $store.i8($M.0, $add.ref(__mod_alias388, 17), 109);
  $M.0 := $store.i8($M.0, $add.ref(__mod_alias388, 18), 112);
  $M.0 := $store.i8($M.0, $add.ref(__mod_alias388, 19), 101);
  $M.0 := $store.i8($M.0, $add.ref(__mod_alias388, 20), 45);
  $M.0 := $store.i8($M.0, $add.ref(__mod_alias388, 21), 116);
  $M.0 := $store.i8($M.0, $add.ref(__mod_alias388, 22), 115);
  $M.0 := $store.i8($M.0, $add.ref(__mod_alias388, 23), 0);
  $M.5 := stmpe_input_probe;
  $M.6 := stmpe_ts_remove;
  $M.7 := $0.ref;
  $M.8 := $0.ref;
  $M.9 := $0.ref;
  $M.10 := .str;
  $M.11 := $0.ref;
  $M.12 := __this_module;
  $M.13 := $0.ref;
  $M.14 := 0;
  $M.15 := $0.ref;
  $M.16 := $0.ref;
  $M.17 := $0.ref;
  $M.18 := $0.ref;
  $M.19 := $0.ref;
  $M.20 := $0.ref;
  $M.21 := $0.ref;
  $M.22 := $0.ref;
  $M.23 := $0.ref;
  $M.24 := $0.ref;
  $M.3 := 0;
  call {:cexpr "res_stmpe_input_probe_6"} boogie_si_record_i32(0);
  $exn := false;
  return;
}
const $u0: ref;
const $u1: i32;
const $u2: ref;
procedure $initialize()
{
  call __SMACK_static_init();
  call __SMACK_init_func_memory_model();
  return;
}
