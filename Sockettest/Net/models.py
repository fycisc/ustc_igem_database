#from django.db import models
from mongoengine import *

# Create your models here.
'''class Node(models.Model):
    title = models.CharField(max_length=20)
    x = models.FloatField()
    y = models.FloatField()
    width = models.FloatField()
    height = models.FloatField()
    minWidth = models.FloatField()
    biotype = models.CharField(max_length=20)
    father = models.ForeignKey('self',null = True,default = None)
'''

class Gene_sequence(Document):
    Gene_name = StringField()
    Gene_left_end_position_in_the_genome = IntField()
    Gene_right_end_position_in_the_genome = IntField()
    strand = ['forward','reverse','unknown','']
    DNA_strand_where_the_gene_is_coded = StringField(required=False,choices=strand)
    Product = StringField()
    Start_codon_sequence = StringField(max_length=10)
    Stop_codon_sequence = StringField(max_length=10)
    Gene_sequence = StringField()



'''class Node_mongo(mongoengine.Document):
    #title = models.CharField(max_length=20)
    x = models.FloatField()
    y = models.FloatField()
    #width = models.FloatField()
    #height = models.FloatField()
    #minWidth = models.FloatField()
    #biotype = models.CharField(max_length=20)
    #father = models.ForeignKey('self',null = True,default = None)
'''

