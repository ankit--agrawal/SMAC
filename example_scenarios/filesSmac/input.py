#!/usr/bin/env python
'''separate all .c files for training and testing
	only add the <foldername> to pathname parameter and appropriate train and test files will be generated'''

import glob2, pickle, os
from math import floor
directory_path = '../../../../../benchmark_testing/' #the path from input.py
pathname = ['unreach', 'ldv']; files = [0]*len(pathname)
extension = 'c'

for i in range(len(pathname)):
	files[i] = glob2.glob(directory_path + pathname[i] + '/*.' + extension)

	file_train = open(pathname[i] + '/' + 'Train_' + pathname[i] + '.txt','w')
	file_test = open(pathname[i] + '/' + 'Test_'+ pathname[i] +'.txt','w')


	for item in files[i][:int(floor(len(files[i])))]:
		#print>>file_train,'example_scenarios/smack/filesSmac/'+item
		print>>file_train,item[14:] 

	'''remove the /2 above if validation --false while running smac and comment the for loop below'''

	for item in files[i][int(floor(len(files[i])/2)):]:
		#print>>file_test,'example_scenarios/smack/filesSmac/'+item
		print>>file_test,item[14:]

	file_train.close()
	file_test.close()
