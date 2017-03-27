import sys, time, math  

def perform(i):  
    a = i + 1  
    b = 2.3  
    s = "helloworldhappynice Good Man"  

    if a > b:  
        a = a + 1  
    else:  
        b = b + 1  

    if a == b:  
        b = b + 1  

    c = a * b +a / b - math.pow(a, 2)  

    d = s[0: s.find("happy")] + str(c)  

    return d;


t = time.time()  

for i in xrange(0, 100000):  
    perform(i)

print 'Python time: %.02f' % (time.time() - t) 
