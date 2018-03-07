#!/usr/bin/env python2.7

#single run
#./smac --shared-model-mode true --scenario-file example_scenarios/filesSmac/ldv/smack-scenario_ldv.txt --seed 1 --validation false

import sys, os, time, re
from subprocess import Popen, PIPE, check_output, CalledProcessError

cmd = ['/home/ankit/smack/smack/bin/smack', '-x=svcomp', '--time-limit', '1800'] #smack path w.r.t. laptop VM
#cmd = ['/mnt/local/smack-project/smack/bin/smack', '-x=svcomp', '--time-limit', '900'] #smack path w.r.t. emulab
#cmd = ['/proj/SMACK/smack/bin/smack', '-x=svcomp','--time-limit','1800'] #modified smack path for Emulab

vo = ['-/trackAllVars',
	'-/staticInlining',
	'-/di',
	'-/bopt:proverOpt:OPTIMIZE_FOR_BV',
	'-/bopt:boolControlVC',
	'-/noCallTreeReuse',
	'-/nonUniformUnfolding',
	'-/noInitPruning',
	'-/deepAsserts',
	'-/doNotUseLabels']
configMap = {'-verifier-options': ''}; status = 'CRASHED'

# Read in first 5 arguments.
instance = sys.argv[1]
specifics = sys.argv[2]
cutoff = int(float(sys.argv[3]))
runlength = int(sys.argv[4])
seed = int(sys.argv[5])
cmd.append(instance)

# Read in parameter setting and build a param_name->param_value map.
params = sys.argv[6:]
'''
for i in range(len(params)):
	print "{0}:{1}".format(i,params[i])
'''

#configMap = dict((name, value) for name, value in zip(params[::2], params[1::2]))
for i in range(0,len(params),2):
	if params[i] == '-/useArrayTheoryCheck':
		if params[i+1] == '1':
			configMap['-verifier-options'] += '+'+'/useArrayTheory'
		if params[i+1] == '2':
			configMap['-verifier-options'] += '+'+'/noArrayTheory'
	elif params[i] == '-/bopt:z3opt:SMT.MBQI.MAX_ITERATIONS':
		configMap['-verifier-options'] += '+'+'/bopt:z3opt:SMT.MBQI.MAX_ITERATIONS=' + params[i+1]
	elif params[i] == '-/bopt:z3opt:SMT.MBQI':
		if params[i+1] == 'True':
			configMap['-verifier-options'] += '+'+'/bopt:z3opt:SMT.MBQI=true'
		else:
			configMap['-verifier-options'] += '+'+'/bopt:z3opt:SMT.MBQI=false'
	elif params[i] in vo:
		if params[i+1] == 'True':
			#index = vo.index(params[i])
			configMap['-verifier-options'] += '+'+params[i][1:]
	else:
		configMap[params[i]] = params[i+1]

#print 'configMap: ', configMap

for name, value in configMap.items():
	cmd.append('-' + name)
	if name == '-unroll':
		cmd.append(str(value))
	elif name == '-bit-precise' and value != 'True':
		cmd.remove('--bit-precise')

	#dealing with values for -verifier-options
	if value == '/N':
		cmd.append('')
	elif '+' in value:
		cmd.append(value.replace('+',' '))


print 'cmd= ',cmd


#computing runtime
start_time = time.time()
try:
	stdout_ = check_output(cmd)
	#io = Popen(cmd, stdout = PIPE, stderr = PIPE)
	#stdout_, stderr_ = io.communicate()
	print 'stdout_: ',stdout_
	#print 'stderr_: ',stderr_

except CalledProcessError as e:
	stdout_ = e.output
	#print 'stdout_: ',stdout_
runtime = time.time() - start_time

# parsing of SMACK's output.

for line in stdout_.splitlines():
	#print 'line: ', line
	if 'SMACK timed out' in line:
		status = 'TIMEOUT'
		break
	elif (('SMACK found an error' in line) and ('false-unreach' in instance)) \
		or (('SMACK found no errors') and ('true-unreach' in instance)):
		status = 'SAT';
		break
	else:
		status = 'UNSAT';

# Output result for SMAC.

print("Result for SMAC: %s, %s, 0, 0, %s" % (status, str(runtime), str(seed)))
