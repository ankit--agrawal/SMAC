import os, sys, glob, operator


def collectBestIncumbents(filename):
	with open(filename,"w") as f:
		for i in range(len(files)):
			with open(files[i],'r') as g: tmp = g.readlines();
			tmp = [x.strip() for x in tmp]
			g.close()
			f.write(files[i] + ', ' +tmp[-1]+'\n')

	f.close()

def collectParameterStats(filename, d):
	f = open(filename,'r')
	for line in f:
		d['total'] += 1
		tmp = line.split(',')
		tmp = tmp[6:]
		for i in range(len(tmp)):
			if '/bopt:z3opt:SMT.MBQI.MAX_ITERATIONS' in tmp[i]: d['/bopt:z3opt:SMT.MBQI.MAX_ITERATIONS'] += 1;
			else:
				if tmp[i] in d: d[tmp[i]] += 1;
				else: d[tmp[i]] = 1;
	f.close()
	return d

if __name__ == "__main__":
	pathname = '/proj/SMACK/smac/example_scenarios/ldv/smac-output/**'
	files = glob.glob(pathname+'/traj-run*.txt')
	t = open("optimizedSMACK.txt","w")
	stats = {'/bopt:z3opt:SMT.MBQI.MAX_ITERATIONS': 1, 'total': 0}
	bestCollection = "outBestSMACK.txt" 
	collectBestIncumbents(bestCollection)
	stats = collectParameterStats(bestCollection,stats)
	#sorted_stats = sorted(stats.items(), key=operator.itemgetter(1))
	for name,value in stats.items():
		print name, value
		t.write(name + ' '+ str(value) + '\n')
