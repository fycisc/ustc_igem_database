__author__ = 'feiyicheng'

from mongoengine import *
import re


class Operon(Document):
    Operon_name = StringField(max_length=100, required=True)
    First_gene_position_left = StringField(max_length=20)
    Last_gene_position_right = StringField(max_length=20)
    Coded_strand = StringField(max_length=10)
    Numberofgenes_contained = IntField()
    Name_gene_contained = ListField(StringField(max_length=20))
    Evidence = StringField()






def dataprocess(pattern, line, repattern):
    '''split a line into a dict
        pattern is a list
        line is a string
        return a dic
    '''
    metadata = re.split(r'\s', line)
    annotation_match = re.search(repattern, line)
    if annotation_match:
        annotation = annotation_match.group(0)
    else:
        annotation = ''
    dic = dict((pattern[i], metadata[i]) for i in xrange(0, 6))
    dic[pattern[6]] = annotation
    return dic

def save_to_database(dic):
    op = model.Operon()
    op.Operon_name = dic['Operon_name']
    op.First_gene_position_left = dic['First_gene_position_left']
    op.Last_gene_position_right = dic['Last_gene_position_right']
    op.Coded_strand = dic['Coded_strand']
    op.Numberofgenes_contained = dic['Numberofgenes_contained']
    op.Name_gene_contained= dic['Name_gene_contained'].split(',')
    op.Evidence = dic['Evidence']
    op.save()





def main():
    connect('igemdata')
    fp = open('/Users/feiyicheng/Documents/igem/database/RegulonDB_in_xml_xlsx_format/Operons/OperonSet.txt')
    #ziduanming
    pattern = ['Operon_name', 'First_gene_position_left', 'Last_gene_position_right', 'Coded_strand', 'Numberofgenes_contained', 'Name_gene_contained', 'Evidence']
    #zhengze
    repattern = r'\s'
    if fp:
        line = fp.readline()
        while line:
            line = fp.readline()
            if line:
                if line[0] != '#':
                    dic = dataprocess(pattern, line, repattern)
                    for key in dic.keys():
                        save_to_database(dic)



if __name__ == '__main__':
    main()
    connect('igemdata')
    model.Operon.objects()

