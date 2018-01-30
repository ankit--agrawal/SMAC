from xml.dom.minidom import parse
import xml.dom.minidom
import pickle

'''
			Purpose: Extract status, cputime, category for all files in all the *.xml files.
				Data structure: Dictionary {'filename':[above 3 values]}'''

# ---- Format = Filename:[xml_code,unroll #, <status> value, <cputime> value,<category> value]
def data_structure(result):
	# ---- find <tag> = 'run' in the .xml files
	runs = result.getElementsByTagName('run')

	for run in runs:
		# ---- check if 'run' has attributes, 'name' and 'properties' and then begin the data-structure
		if run.hasAttribute('name'):
			filename = str(run.getAttribute('name'))
			g.write(filename + '\n')

		# ---- find <tag> = 'column' as the child of <tag> = 'run'
		columns = run.getElementsByTagName('column')

		for column in columns:

			if str(column.getAttribute('title')) == 'status':
				if str(column.getAttribute('value')) == 'true' or str(column.getAttribute('value')) == 'false(reach)':
					#print str(column.getAttribute('value'))
					h.write(filename + '\n')
				else:
					e.write(filename + '\n')

#===============================    creating a list of .xml files   ======================================================
content = [line.rstrip('\n') for line in open('xml_files.txt')]
h = open("goodLDV.txt","w")
g = open("allLDV.txt","w")
e = open("badldv.txt","w")
f = open("Test_ldv.txt","w")

# ---- creating tree root for .xml files
for i in range(len(content)):
	DOMTree_1 = xml.dom.minidom.parse(content[i])
	result_1 = DOMTree_1.documentElement
	data_structure(result_1)
	h.close(); g.close(); e.close();

g = open("allLDV.txt",'r')
test_content = g.readlines()
for i in range(0,len(test_content),3):
	f.write(test_content[i])
