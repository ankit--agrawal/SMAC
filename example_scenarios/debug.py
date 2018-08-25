import os, sys, glob
from subprocess import Popen, PIPE, STDOUT, check_output, CalledProcessError


#default = ['/mnt/local/smack-project/smack/bin/smack', '-x=svcomp', '--verifier=svcomp', '--clang-options=-m64', '/proj/SMACK/sv-benchmarks/c/ldv-linux-3.4-simple/32_1_cilled_true-unreach-call_ok_nondet_linux-3.4-32_1-drivers--media--rc--keymaps--rc-avermedia-rm-ks.ko-ldv_main0_sequence_infinite_withcheck_stateful.cil.out.c', '--verifier-options']
#
#parameters = ['/bopt:boolControlVC', '/bopt:coalesceBlocks:1', '/bopt:liveVariableAnalysis:0', '/bopt:monomorphize', '/bopt:removeEmptyBlocks:1', '/bopt:subsumption:0', '/bopt:typeEncoding:p', '/bopt:vc:s', '/bopt:z3lets:3', '/bopt:z3opt:NNF.SK_HACK=false', '/bopt:z3opt:SMT.ARITH.RANDOM_INITIAL_VALUE=true', '/bopt:z3opt:SMT.ARRAY.EXTENSIONAL=true', '/bopt:z3opt:SMT.ARRAY.WEAK=true', '/bopt:z3opt:SMT.BV.REFLECT=true', '/bopt:z3opt:SMT.CASE_SPLIT=3', '/bopt:z3opt:SMT.DELAY_UNITS=true', '/bopt:z3opt:SMT.MBQI=true', '/bopt:z3opt:SMT.MBQI.MAX_ITERATIONS=1181', '/bopt:z3opt:SMT.PHASE_SELECTION=6', '/bopt:z3opt:SMT.QI.EAGER_THRESHOLD=640', '/bopt:z3opt:SMT.RELEVANCY=2', '/bopt:z3opt:SMT.RESTART_FACTOR=3.989110537864713', '/bopt:z3opt:SMT.RESTART_STRATEGY=0', '/bopt:z3types', '/doNotUseLabels', '/noCallTreeReuse', '/noInitPruning', '/trackAllVars']
#
#'''
#for i in range(len(parameters)):
#'''
#verifopts = ' '.join(parameters)
#cmd = default[:-1] + [default[-1] + '=' + verifopts]
#io = Popen(cmd, stdout = PIPE, stderr = PIPE)
#out,err = io.communicate()
##print parameters[i]
#print err

default = [
	'/mnt/local/smack-project/smack/bin/smack',
	'-x=svcomp',
	'--verifier=svcomp',
	'--clang-options=-m64',
	'/proj/SMACK/sv-benchmarks/c/ldv-linux-3.14/linux-3.14__complex_emg__linux-drivers-clk1__drivers-net-wireless-b43legacy-b43legacy_true-unreach-call.cil.c',
	'--verifier-options',
	]

parameters = [
	'/bopt:coalesceBlocks:1',
	'/bopt:liveVariableAnalysis:1',
#	'/bopt:monomorphize',
	'/bopt:removeEmptyBlocks:0',
	'/bopt:subsumption:0',
	'/bopt:typeEncoding:p',
	'/bopt:vc:d',
	'/bopt:z3lets:3',
#	'/bopt:z3types',
	'/bopt:z3opt:NNF.SK_HACK=false',
	'/bopt:z3opt:SMT.ARITH.RANDOM_INITIAL_VALUE=false',
	'/bopt:z3opt:SMT.ARRAY.EXTENSIONAL=false',
	'/bopt:z3opt:SMT.ARRAY.WEAK=true',
	'/bopt:z3opt:SMT.BV.REFLECT=false',
	'/bopt:z3opt:SMT.CASE_SPLIT=5',
	'/bopt:z3opt:SMT.DELAY_UNITS=true',
	'/bopt:z3opt:SMT.MBQI=false',
#	'/bopt:z3opt:SMT.MBQI.MAX_ITERATIONS=1000',
	'/bopt:z3opt:SMT.PHASE_SELECTION=4',
	'/bopt:z3opt:SMT.QI.EAGER_THRESHOLD=438',
	'/bopt:z3opt:SMT.RELEVANCY=0',
	'/bopt:z3opt:SMT.RESTART_FACTOR=3.78',
	'/bopt:z3opt:SMT.RESTART_STRATEGY=3',
#	'/di',
#	'/staticInlining',
	'/trackAllVars',
#	'/useArrayTheory',
	'/noInitPruning', '/nonUniformUnfolding', '/noArrayTheory'
	]

def run_params(params):
	verifopts = ' '.join(params)
	cmd = default[:-1] + [default[-1] + '=' + verifopts]
	io = Popen(cmd, stdout = PIPE, stderr = PIPE)
	out,err = io.communicate()
	print '\n'.join(err.splitlines()[:6])

print 'all parameters'
run_params(parameters)

#for i in range(len(parameters)):
#	print 'removed param:', parameters[i]
#	run_params(parameters[:i] + parameters[i+1:])
