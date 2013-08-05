'''
--[[
    created by : Narate Ketram
    twitter @eNarate
    facebook https://www.facebook.com/koonnarate
--]]
'''
fin = open('numbers.txt', 'r')
fout = open('run_result.txt', 'w')
din = []
for line in fin.readlines():
    din.append(line.strip())
    
dout = {}
for i in din:
    dout[i] = 0

for k in din:
    dout[k] = dout[k] + 1
    
for k, v in dout.items():
    if v > 1:
        fout.write("\"" + str(k) + "\", " + str(v) + "\n")
fin.close()
fout.close()
print "done :)"
