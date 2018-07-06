<<<<<<< HEAD
import os, sys, glob2
=======
import os, sys, glob2, operator
>>>>>>> 59e55f6ccc0ed4812cab406f673ff5a31500fa87


def collectBestIncumbents(tmpList):
    for i in range(len(files)):
        with open(files[i],'r') as f: tmp = f.readlines();
        tmp = [x.strip() for x in tmp]
        tmpList.append(tmp[-1])
    return tmpList

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

<<<<<<< HEAD
if __name__ == "__main__":    
    pathname = '/proj/SMACK/smac/example_scenarios/'
    benchmark = str(sys.argv[1])
    path = pathname + benchmark + 'smac-output/**'
    files = glob2.glob(pathname + '/traj-run*.txt')
    bestConfig = []
    bestConfig = collectBestIncumbents(bestConfig)
    
    #creating matrix with different configurations 'bag of words NLP problem'
    from sklearn.feature_extraction.text import CountVectorizer
    cv = CountVectorizer()
    X = cv.fit_transform(bestConfig).toarray()
=======
if __name__ == "__main__":
	pathname1 = '/proj/SMACK/smac/example_scenarios/'
	benchmark = str(sys.argv[1]) #type of benchmark files
	pathname = pathname1 + benchmark + '/smac-output/smack-scenario_ldv_new/**'
	files = glob2.glob(pathname+'/traj-run*.txt')
	print files
	t = open(pathname1 + benchmark + '/NewOptimizedSMACK.txt',"w")
	stats = {'/bopt:z3opt:SMT.MBQI.MAX_ITERATIONS': 0, 'total': 0}
	bestCollection = pathname1 + benchmark + "/NewOutBestSMACK.txt"
	collectBestIncumbents(bestCollection)
	stats = collectParameterStats(bestCollection,stats)
	#sorted_stats = sorted(stats.items(), key=operator.itemgetter(1))
	for name,value in stats.items():
		print name, value
		t.write(name + ' '+ str(value) + '\n')
>>>>>>> 59e55f6ccc0ed4812cab406f673ff5a31500fa87
