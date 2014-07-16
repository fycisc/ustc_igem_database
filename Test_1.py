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


def save_to_database(dic, typ):
    #print str(dic)
    node = Node()
    for key in dic.keys():
        #print 'key: '+ key
        exec "node.%s = dic[key]" % key
    node.type = typ
    node.save()
    #print "saved successfully!"



def main():
    connect('igemdata')
    basepath = './Database/Node/csv/txt'

    #save the paths of .cvs files
    paths = []
    for filelist in os.listdir(basepath):
        filepath = os.path.join(basepath, filelist)
        paths.append(filepath)

    #walk the direction
    tag = 0
    for path in paths:
        print path
        typ = re.search(r'(?<=txt/).*?(?=\.txt)', path)
        if typ:
            typ = typ.group(0)

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

            print "pattern:  "+str(pattern)+ '\n'+str(len(pattern))+'\n\n'

            while line:
                line = fp.readline()
                line = line.replace('\n', '')

                if line:
                    dic = dataprocess(pattern, line)
                    save_to_database(dic, typ)
        tag = tag + 1


if __name__ == '__main__':
    main()

