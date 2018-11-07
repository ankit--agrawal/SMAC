#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Jul 11 14:16:03 2018

@author: backupldv
"""

import sys
import glob2
import numpy as np

#collect best configurations for a given benchmark

def collectBestIncumbents(files, pathname, benchmark):
    total = 0
    g = open(pathname+benchmark+'/'+'BestIncumbents.csv','w')
    for i in range(len(files)):
        with open(files[i],'r') as f: tmp = f.readlines();
        tmp = [x.strip() for x in tmp]
        total = total + len(tmp)
        g.write(tmp[-1].replace(' ', '')+'\n')
    print(total)
    g.close()


if __name__ == "__main__":    
    pathname = '/proj/SMACK/smac/example_scenarios/'
    benchmark = str(sys.argv[1])
    #benchmark = 'cf_rs'
    path = pathname + benchmark + '/smac-output/**'
    files = glob2.glob(path + '/traj-run*.txt')    
    collectBestIncumbents(files, pathname, benchmark)
    
    import pandas as pd
    #change the name to BestIncumbents.csv
    dataset = pd.read_csv(pathname+benchmark+'/BestIncumbents.csv', header = None)
    
    #slicing the junk from SMAC output
    dataset = dataset.iloc[:,5:];
    
    #Assigning appropriate column names
    dataset.columns = ['/bopt:boolControlVC','/bopt:coalesceBlocks','/bopt:liveVariableAnalysis',
                       '/bopt:monomorphize', '/bopt:removeEmptyBlocks',
                       '/bopt:subsumption','/bopt:typeEncoding', '/bopt:vc',
                       '/bopt:z3lets',
                       '/bopt:z3opt:NNF.SK_HACK', '/bopt:z3opt:SMT.ARITH.RANDOM_INITIAL_VALUE',
                       '/bopt:z3opt:SMT.ARRAY.EXTENSIONAL','/bopt:z3opt:SMT.ARRAY.WEAK',
                       '/bopt:z3opt:SMT.BV.REFLECT','/bopt:z3opt:SMT.CASE_SPLIT',
                       '/bopt:z3opt:SMT.DELAY_UNITS','/bopt:z3opt:SMT.MBQI',
                       '/bopt:z3opt:SMT.MBQI.MAX_ITERATIONS','/bopt:z3opt:SMT.PHASE_SELECTION',
                       '/bopt:z3opt:SMT.QI.EAGER_THRESHOLD','/bopt:z3opt:SMT.RELEVANCY',
                       '/bopt:z3opt:SMT.RESTART_FACTOR','/bopt:z3opt:SMT.RESTART_STRATEGY',
                       '/bopt:z3types',
                       '/deepAsserts','/di','/doNotUseLabels','/noCallTreeReuse',
                       '/noInitPruning','/nonUniformUnfolding','/staticInlining',
                       '/trackAllVars','/useArrayTheoryCheck']

    (m,n) = dataset.shape
    dataset_copy = dataset.iloc[:,0:n]
    
    
    #compute the best configuration
    search_str = ''
    for i in range(n):
        #count occurence of all different occurences per column
        tmp = dataset[dataset.columns[i]].value_counts()
        mod = pd.DataFrame({'flags':tmp.index, 'count':tmp.values}) 
        mod = mod.nlargest(2,'count') #pick the 2 largest values
        p, q = mod.shape
        if p > 1:
            if abs(mod.iloc[0,1] - mod.iloc[1,1]) > 10: #difference of at least 15
                search_str = search_str + mod.iloc[0,0] + '&' #the best config (excluding don't cares)
            
    
    #formatting the best configuration to search the best match in the original dataset
    #search_str = search_str.replace(' ','')
    search_str = search_str.replace('&',' ')
    search_str_list = ''.join(search_str.replace('=',' '))
    search_str_list = search_str_list.strip().split(' ')
    search_str = search_str.strip().split(' ')
    
    
    #create sparse matrix
    j = 0
    #replace the matching values by 1 in appropriate columns
    #dataset[search_str_list[0]] = dataset[search_str_list[0]].map({'  '+search_str[0]:int(1)})
    for i in range(0,len(search_str_list),2):
        t = search_str_list[i]
        dataset[t] = dataset[t].map({search_str[j]:int(1)})
        j+=1    
    
    #replace all remaining values by Zero
    for i in range(len(dataset.columns)):
        t0 = dataset.columns[i]
        dataset[t0] = pd.to_numeric(dataset[t0], errors='coerce').fillna(0).astype(int)
    
    #best config representation with a [0,1] vector
    df = pd.DataFrame(np.zeros(n), index = dataset.columns, columns = ['value'])
    for i in range(0,len(search_str_list),2):
        df.at[search_str_list[i],'value'] = 1
    
    df['value'] = df['value'].astype(int)
    
    #computing dot product and finding the index of best configuration
    result = dataset.dot(df)
    Best = result.value.idxmax()
    
    #print the best configuration "Column name    value"
    print("Best Config")
    #print(type(dataset_copy.iloc[Best]))
    finale = dataset_copy.iloc[Best].to_dict()
    config = ""
    for item in finale.values():    
        config = config + item + " "


    smack_cmd = '/mnt/local/smack-project/smack/bin/smack ' + '-x=svcomp ' + '--verifier=svcomp ' + '--clang-options=-m64 ' + '--verifier-options ' + config

    print(smack_cmd)
