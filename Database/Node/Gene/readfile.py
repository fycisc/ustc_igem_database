fp = file('./Gene_sequence.txt','r')
word_list = [ 0 for i in range(0,20)]
for i in range(0,20):
    word_list[i] = fp.read(1)
    print i,word_list[i]
print '\t' == word_list[15]
ab = raw_input('wait')
