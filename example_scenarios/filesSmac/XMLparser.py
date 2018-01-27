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
	
	count = 0
	for run in runs:
		# ---- check if 'run' has attributes, 'name' and 'properties' and then begin the data-structure
		if run.hasAttribute('name'):
			filename = str(run.getAttribute('name'))

		# ---- find <tag> = 'column' as the child of <tag> = 'run'
		columns = run.getElementsByTagName('column')

		for column in columns:

			if str(column.getAttribute('title')) == 'status':
				if str(column.getAttribute('value')) == 'true' or str(column.getAttribute('value')) == 'false(reach)':
					#print str(column.getAttribute('value'))
					count += 1
					h.write(filename+'\n')
	print count

#===============================    creating a list of .xml files   ======================================================
content = [line.rstrip('\n') for line in open('xml_files.txt')]
h = open("goodLDV.txt","w")

# ---- creating tree root for .xml files
for i in range(len(content)):

	DOMTree_1 = xml.dom.minidom.parse(content[i])
	result_1 = DOMTree_1.documentElement
	data_structure(result_1)
