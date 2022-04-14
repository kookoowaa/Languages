def clearS(s):    
    a = s
    b = []
    for i in a:
        if i not in b:
            b.append(i)
    return a,b

def calcS(a, b):
    out = []
    for i in b:
        x=0
        for j in a:
            if i==j:
                x+=1
            else:
                continue
        out.append(x)
        
    return len(a) == sum(out)

out = 0
for i in range(int(input())):
    a,b = clearS(input())
    if calcS(a,b):
        out +=1 
print(out)
