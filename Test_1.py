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


def dataprocess(pattern, line, tag):
    '''split a line into a dict
        pattern is a list
        line is a string
        return a dic
    '''
    if tag == 1:
        metadata = line.split(',')
    else:
        metadata = line.split(';')
    print str(metadata)
    dic = {}
    for i in xrange(len(pattern)):
        if i<len(metadata):
            dic[pattern[i]] = metadata[i]
        else:
            dic[pattern[i]] = ''

    #dic = dict((pattern[i], metadata[i]) for i in xrange(0, len(pattern)))
    return dic


def save_to_database(dic):
    node = Node()
    for key in dic.keys():
        #di = dict((['node', node], ['key', key], ['dic', dic]))
        exec 'node.%s = dic[key]' % key
        #exe  node.key = dic[key]
    node.save()
    print "saved successfully!"



def main():
    connect('igemdata')
    basepath = '/Users/feiyicheng/Documents/igem/igem_database/ustc_igem_database/Database/Node/csv'

    #save the paths of .cvs files
    paths = []
    for filelist in os.listdir(basepath):
        filepath = os.path.join(basepath, filelist)
        paths.append(filepath)

    #walk the direction
    for path in paths:
        print path
        fp = open(path)
        #one file
        if fp and re.search(r'.*txt$', path):
            print 'file '+path+' opened'
            line = fp.readline()
            print 'firstline: '+line

            if re.search(r'Gene_sequence\.txt$', path):
                pattern = line.split(',')
                tag = 1
            else:
                pattern = line.split(';')
                tag = 2

            print "pattern: "+str(pattern)

            while line:
                line = fp.readline()
                if line:
                    dic = dataprocess(pattern, line, tag)
                    save_to_database(dic)

if __name__ == '__main__':
    main()

