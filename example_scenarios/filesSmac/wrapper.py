#!/usr/bin/env python2.7

# Example call from SMAC root:
# ./examples/smack/wrapper.py examples/smack/.c file "" 30.0 2147483647 1234 --unroll 1
import sys, os, time, re
from subprocess import Popen, PIPE, check_output, CalledProcessError

cmd = ['/home/ankit--agrawal/smack/smack/bin/smack', '-x=svcomp', '--time-limit', '900'] #smack path w.r.t. laptop VM
#cmd = ['/mnt/local/smack-project/smack/bin/smack', '-x=svcomp', '--time-limit', '900'] #smack path w.r.t. emulab

vo = ['-/trackAllVars', '-/staticInlining', '-/di', '-/bopt:proverOpt:OPTIMIZE_FOR_BV=true', '-/bopt:boolControlVC', '-/useArrayTheory']
configMap = {'-verifier-options': ''}; status = None

# Read in first 5 arguments.
instance = sys.argv[1]
specifics = sys.argv[2]
cutoff = int(float(sys.argv[3]))
runlength = int(sys.argv[4])
seed = int(sys.argv[5])
cmd.append(instance)

# Read in parameter setting and build a param_name->param_value map.
params = sys.argv[6:]

#configMap = dict((name, value) for name, value in zip(params[::2], params[1::2]))
for i in range(0,len(params),2):
	if params[i] in vo:
		if params[i+1] == 'True':
			index = vo.index(params[i])
			configMap['-verifier-options'] += '+'+params[i][1:]
	else:
		configMap[params[i]] = params[i+1]

#print 'configMap: ', configMap

for name, value in configMap.items():
	cmd.append('-' + name)
	if value == '/N':
		cmd.append('')
	elif '+' in value:
		cmd.append(value.replace('+',' '))
	else: cmd.append(str(value))

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
	elif ('SMACK found an error' in line and 'false-unreach' in instance) \
		or ('SMACK found no errors' in line and 'true-unreach' in instance):
		status = 'SAT';
		break
	elif ('SMACK found an error' in line and 'true-unreach' in instance) \
		or ('SMACK found no errors' in line and 'false-unreach' in instance):
		status = 'SAT';
		break

if status == None: status = 'CRASHED'
'''
#setting up <quality>
if status == 'SAT': quality = runtime;
if status == 'UNSAT': quality = runtime + cutoff;
else: quality = cutoff;
if status == 'CRASHED': runtime = 10 * cutoff'''

# Output result for SMAC.
print("Result for SMAC: %s, %s, 0, 0, %s" % (status, str(runtime), str(seed)))