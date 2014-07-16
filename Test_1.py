__author__ = 'feiyicheng'

from mongoengine import *
import re
import os

'''
class Operon(Document):
    Operon_name = StringField(max_length=100, required=True)
    First_gene_position_left = StringField(max_length=20)
    Last_gene_position_right = StringField(max_length=20)
    Coded_strand = StringField(max_length=10)
    Numberofgenes_contained = IntField()
    Name_gene_contained = ListField(StringField(max_length=20))
    Evidence = StringField()
'''

class Node(DynamicDocument):
    pass


def dataprocess(pattern, line):
    '''split a line into a dict
        pattern is a list
        line is a string
        return a dic
    '''
    metadata = re.split(r'\t', line)
    #print str(metadata)
    #print len(metadata)
    for i in xrange(len(metadata)):
        if re.match(r'\s', metadata[i]):
            metadata[i] = ''

    dic = dict((pattern[i], metadata[i]) for i in xrange(0, len(pattern)))
    return dic


def save_to_database(dic):
    #print str(dic)
    node = Node()
    for key in dic.keys():
        #print 'key: '+ key
        exec "node.%s = dic[key]" % key
    node.save()
    #print "saved successfully!"



def main():
    connect('igemdata')
    basepath = '/Users/feiyicheng/Documents/igem/igem_database/ustc_igem_database/Database/Node/csv'

    #save the paths of .cvs files
    paths = []
    for filelist in os.listdir(basepath):
        filepath = os.path.join(basepath, filelist)
        paths.append(filepath)

    #walk the direction
    tag = 0
    for path in paths:
        print path

        #open file
        fp = open(path, 'rU')

        #loop on line
        if fp and re.search(r'.*txt$', path):
            print 'file '+path+' opened'

            #get pattern
            line = fp.readline()
            line = line.replace('\n', '')
            #print 'firstline:  '+line+'\n\n'

            pattern = re.split(r'\t+', line)
            for i in xrange(len(pattern)):
                replacere = re.compile(r"[ ,\"()+-?*]{1}|[\[]{1}|[]]{1}|[']{1}")
                pattern[i] = replacere.sub('_', pattern[i])
                '''pattern[i] = pattern[i].replace(' ', '_')
                pattern[i] = pattern[i].replace(',', '_')
                pattern[i] = pattern[i].replace('"', '_')
                pattern[i] = pattern[i].replace('(', '_')
                pattern[i] = pattern[i].replace(')', '_')
                pattern[i] = pattern[i].replace('+', '_')
                pattern[i] = pattern[i].replace('-', '_')
                pattern[i] = pattern[i].replace('?', '_')
                pattern[i] = pattern[i].replace("'", "_")
                pattern[i] = pattern[i].replace('*', "_")
                '''
            print "pattern:  "+str(pattern)+ '\n'+str(len(pattern))+'\n\n'

            while line:
                line = fp.readline()
                line = line.replace('\n', '')

                if line:
                    dic = dataprocess(pattern, line)
                    save_to_database(dic)
        tag = tag + 1

if __name__ == '__main__':
    main()

