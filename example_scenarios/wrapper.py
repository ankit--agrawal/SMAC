#!/usr/bin/env python2.7

#single run
#../../smac --shared-model-mode true --scenario-file smack-scenario_ldv.txt --seed 1 --validation false

import sys, os, time, re
from subprocess import Popen, PIPE, STDOUT, check_output, CalledProcessError

def runningSMACK(cmd, instance):
	#computing runtime
	start_time = time.time()

	io = Popen(cmd, stdout = PIPE, stderr = PIPE)
	out, err = io.communicate()
	#print err

	runtime = time.time() - start_time


	# parsing of SMACK's output and assigning status.
	for line in err.splitlines():
		#print 'line: ', line
		if (('SMACK found an error' in line) and ('false-unreach' in instance)) \
			or (('SMACK found no errors' in line) and ('true-unreach' in instance)):
			status = 'SAT'
			break
		elif (('SMACK found an error' in line) and ('true-unreach' in instance)) \
			or (('SMACK found no errors' in line) and ('false-unreach' in instance)):
			status = 'UNSAT';
			runtime = 10 * 900
			break
		elif ('SMACK timed out' in line):
			status = 'TIMEOUT'
			runtime = 100 * 900
			break
		else:
			status = 'CRASHED'

	#updating the runtime based on the status
	if status == 'CRASHED':
		runtime = 100 * 900
	
	return status, runtime

def generatingCMD(cmd, params, configMap, instance):
	#configMap = dict((name, value) for name, value in zip(params[::2], params[1::2]))
	for i in range(0,len(params),2):
		if params[i] == '-/useArrayTheoryCheck':
			if params[i+1] == '1': configMap['-verifier-options'] += '+'+'/useArrayTheory';
			elif params[i+1] == '2': configMap['-verifier-options'] += '+'+'/noArrayTheory';
		elif params[i] == '-/bopt:z3opt:SMT.MBQI.MAX_ITERATIONS':
			configMap['-verifier-options'] += '+'+'/bopt:z3opt:SMT.MBQI.MAX_ITERATIONS=' + params[i+1]
		elif params[i] == '-/bopt:z3opt:SMT.RELEVANCY':
			configMap['-verifier-options'] += '+'+'/bopt:z3opt:SMT.RELEVANCY=' + params[i+1]
		elif params[i] == '-/bopt:z3opt:SMT.MBQI':
			if params[i+1] == 'True': configMap['-verifier-options'] += '+'+'/bopt:z3opt:SMT.MBQI=true';
			else: configMap['-verifier-options'] += '+'+'/bopt:z3opt:SMT.MBQI=false';
		elif params[i] in vo:
			if params[i+1] == 'True': configMap['-verifier-options'] += '+'+params[i][1:];
		else:
			configMap[params[i]] = params[i+1]
	
	tmp_cmd = []
	for name, value in configMap.items():
		if name == '-unroll': tmp_cmd += ['-'+name,value];
		elif name == '-bit-precise' and value == 'True': tmp_cmd += ['-'+name,value];

		elif name == '-verifier-options' and len(value) > 0:
				if '+' in value: tmp_cmd += ['-'+name,value.replace('+',' ')[1:]];

	cmd += tmp_cmd; 

	istatus, iruntime = runningSMACK(cmd, instance)
	return istatus, iruntime

if __name__ == '__main__':

	# Read in first 5 arguments.
	inputFile = sys.argv[1]
	specifics = sys.argv[2]
	cutoff = int(float(sys.argv[3]))
	runlength = int(sys.argv[4])
	seed = int(sys.argv[5])

	# Read in parameter setting and build a param_name->param_value map.
	parameters = sys.argv[6:]

	cmd = ['/mnt/local/smack-project/smack/bin/smack', '-x=svcomp',
			'--verifier=svcomp', '--clang-options=-m64'] + [inputFile] #smack path w.r.t. emulab

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
	configurationMap = {'-verifier-options': ''}

	s,r = generatingCMD(cmd, parameters, configurationMap, inputFile)
	
	# Output result for SMAC.
	print("Result for SMAC: %s, %s, 0, 0, %s" % (s, str(r), str(seed)))
