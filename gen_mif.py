print('WIDTH=3;')
print('DEPTH=131072;')
print('ADDRESS_RADIX=UNS;')
print('DATA_RADIX=UNS;')
print('CONTENT BEGIN')
for i in range(131072):
    print("\t",i,':',(i%8),';')
print('END;')
