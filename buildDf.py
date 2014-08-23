import re

featureMatchExpr = re.compile('^(\d+) ([^ ]*)$')

with open('dfCommand.R', 'w', 32768) as output:
	print >>output, 'testDf <- data.frame('
	with open('UCI HAR Dataset/features.txt', 'r', 32768) as input:
		for row in input:
			if (row.find('mean(') > 0) or (row.find('std(') > 0):
				matchObj = featureMatchExpr.match(row[:-1])
				if not matchObj:
					print 'Did not match! on row:', row[:-1]
				print >>output, '	"{:s}"=testData[,{:s}],'.format(matchObj.group(2), matchObj.group(1))
	print >>output, ')'
	print >>output, ''
