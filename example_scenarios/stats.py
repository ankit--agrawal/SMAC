import os,sys,glob

pathname = '/proj/SMACK/smac/example_scenarios/ldv/smac-output/**'
files = glob.glob(pathname+'/traj-run*.txt')

with open("outBestSMACK.txt","w") as f:
	for i in range(1,len(files)+1):
		#index = files.index('*'+str(i)+'.txt')
		g = open(files[i],'r')
		tmp = []
		for line in g.splitlines():
			tmp.append(line)
		g.close()
		#f.write(tmp[-1]+'\n')

f.close()
		
