'''Generate files for 16 thread Emulab machines'''
#run file: python <filename> <benchmark_type>

import sys, os

n = input("Enter # of emulab nodes: ") #number of emulab nodes
k = input("Enter # of threads: ")
benchmark = str(sys.argv[1]) #type of benchmark files

tmp = [i for i in range(1,(n+1)*k,k)]

os.system('mkdir -p ' + benchmark)

for i in range(len(tmp)-1):
    f = open(benchmark+'/'+benchmark+str(k)+'_'+str(i+1)+'.sh','w')
    for j in range(tmp[i],tmp[i+1]):
        cmd = '../smac --shared-model-mode true'\
        ' --scenario-file' + benchmark + '/smack-scenario_' \
        + benchmark + '.txt --seed' \
        + str(j) \
        + ' --validation false'
        if j != tmp[i+1] - 1: cmd += ' &';
        f.write(cmd+'\n')
    f.close()
