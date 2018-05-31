import sys, os

b = str(sys.argv[1])

f = open(b+'/'+'smack-scenario_'+b+'.txt','w')
f.write('pcs-file = ../params.pcs\n')
f.write('run_obj = RUNTIME\n')
f.write('cutoffTime = 900\n')
f.write('wallclock-limit = 432000\n')
f.write('abortOnFirstRunCrash = false\n')
f.write('instance_file = all'+b+'.txt\n')
f.write('test_instance_file = Test'+b+'.txt\n')
f.write('algo = ../wrapper.py\n')
