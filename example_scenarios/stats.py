import os,sys,glob

pathname = '/var/tmp/smac-output/**'
files = glob.glob(pathname+'/traj-run*.txt')
#files.sort();
with open("outBestSMACK.txt","w") as f:
	for i in range(1,len(files)+1):
		#index = files.index('*'+str(i)+'.txt')
		g = open(files[i],'r')
		tmp = g.readlines()
		print tmp
		g.close()
		#f.write(tmp[-1]+'\n')

f.close()
		
