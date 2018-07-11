#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Jul 11 14:16:03 2018

@author: backupldv
"""

#import sys,
import glob2

#collect best configurations for a given benchmark

def collectBestIncumbents():
    g = open(pathname+benchmark+'BestIncumbents.csv','w')
    for i in range(len(files)):
        with open(files[i],'r') as f: tmp = f.readlines();
        tmp = [x.strip() for x in tmp]
        g.write(tmp[-1]+'\n')


if __name__ == "__main__":    
    pathname = '/proj/SMACK/smac/example_scenarios/'
    benchmark = 'ldv/' #benchmark = str(sys.argv[1])
    path = pathname + benchmark + 'smac-output/**'
    files = glob2.glob(pathname + '/traj-run*.txt')    
    collectBestIncumbents()
    
    import pandas as pd
    #change the name to BestIncumbents.csv
    dataset = pd.read_csv(pathname+benchmark+'NewOutBestSMACK.csv', sep=' ', header = None)
    dataset = dataset.iloc[:,7:]
    #tmp = dataset[7].values_count()
    (m,n) = dataset.shape
    for i in range(7,40):
        tmp = dataset[i].value_counts()
        #print(tmp)
        mod = pd.DataFrame({'flags':tmp.index, 'count':tmp.values})
        mod = mod.nlargest(2,'count')
        if abs(mod.iloc[0,1] - mod.iloc[1,1]) > 10:
            print(mod)
    
    