import sys, os, time, re
from subprocess import Popen, PIPE, check_output, CalledProcessError

cmd = ['/mnt/local/smack-project/smack/bin/smack ', '-x=svcomp ',
		'--verifier=svcomp ', '--clang-options=-m64 ','--verifier-options ',' /di /trackAllVars /staticInlining'] #smack path w.r.t. emulab

with open("/ldv/allfiles.txt") as f:
	content = f.readlines()
content = [x.strip() for x in content]

for i in range(len(content)):
	cmd.append(content[i])

	try:
		print "before running the check_output"
		stdout_ = check_output(cmd)
		print "after running the check_output"
		#io = Popen(cmd, stdout = PIPE, stderr = PIPE)
		#stdout_, stderr_ = io.communicate()
		print 'stdout_: ',stdout_
		#print 'stderr_: ',stderr_

	except CalledProcessError as e:
		stdout_ = e.output
		#print 'stdout_: ',stdout_

i = 0
for line in stdout_.readlines():
	print  "line{0}:{1}}".format(i,line)
	i += 1
