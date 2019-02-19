'''Purpose: Extract filename, status, cputime, category for all files in all the *.xml files'''
#run file: python <filename> <benchmark_type>

from xml.dom.minidom import parse
import xml.dom.minidom
import pickle, glob2, sys

# ---- Format = Filename:[xml_code,unroll #, <status> value, <cputime> value,<category> value]
def data_structure(result):
	# ---- find <tag> = 'run' in the .xml files
	runs = result.getElementsByTagName('run')

	for run in runs:
		# ---- check if 'run' has attributes, 'name' and 'properties' and then begin the data-structure
		if run.hasAttribute('name'):
			filename = str(run.getAttribute('name'))
			g.write(path + filename + '\n')

		# ---- find <tag> = 'column' as the child of <tag> = 'run'
		columns = run.getElementsByTagName('column')

		for column in columns:

			if str(column.getAttribute('title')) == 'status':
				if str(column.getAttribute('value')) == 'false(reach)':
					k.write(path + filename + '\n')
					h.write(path + filename + '\n')

				if str(column.getAttribute('value')) == 'true':
					#print str(column.getAttribute('value'))
					h.write(path + filename + '\n')

				else:
					e.write(path + filename + '\n')

#===============================    creating a list of .xml files   ======================================================
#content = [line.rstrip('\n') for line in open('xml_files.txt')]
#finding the .xml file to extract all filenames for respective benchmark
benchmark = str(sys.argv[1])
path = '/proj/SMACK/'
content = glob2.glob(benchmark+'/*.xml')

h = open(benchmark+"/good"+benchmark+".txt","w")
g = open(benchmark+"/all"+benchmark+".txt","w")
e = open(benchmark+"/bad"+benchmark+".txt","w")
f = open(benchmark+"/Test"+benchmark+".txt","w")
k = open(benchmark+"/true_neg" + benchmark+".txt","w")

# ---- creating tree root for .xml files
for i in range(len(content)):
	DOMTree_1 = xml.dom.minidom.parse(content[i])
	result_1 = DOMTree_1.documentElement
	data_structure(result_1)
	h.close(); g.close(); e.close(); k.close()

g = open(benchmark+"/all"+benchmark+".txt",'r')
test_content = g.readlines()
for i in range(0,len(test_content),3):
	f.write(test_content[i])
