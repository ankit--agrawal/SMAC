import sys, os, time, re, glob2
from subprocess import Popen, PIPE, check_output, CalledProcessError

'''cmd = ['/mnt/local/smack-project/smack/bin/smack', '-x=svcomp',
		'--verifier=svcomp', '--clang-options=-m64','--verifier-options',' /di /trackAllVars /staticInlining'] #smack path w.r.t. emulab
'''

cmd = ['/mnt/local/smack-project/smack/bin/smack', '-x=svcomp','--time-limit','3', '--verifier-options', '/di']

pathname = '/proj/SMACK/sv-benchmarks/**'
cfilename = glob2.glob(pathname + '/*.c')

print "number of c files = {0}".format(len(cfilename))

for i in range(len(cfilename)):
	cmd2 = cmd + [cfilename[i], '-bpl', cfilename[i][:-2] + '.bpl']
	#print cmd2
	stdout_ = check_output(cmd2)

	'''i = 0
	for line in stdout_.splitlines():
		print  "line{0}:{1}".format(i,line)
		i += 1'''
