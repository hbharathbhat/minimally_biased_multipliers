# -*- coding: utf-8 -*-
"""
Created on Sat Jul 20 22:55:33 2024

@author: bharath
"""
from binary_fractions import TwosComplement, Binary
import sys

#conversion of binary float to decimal
def parse_bin(s):
    t = s.split('.')
    return int(t[0], 2) + int(t[1], 2) / 2.**len(t[1])

#input formatter
def mbm_one(real_no, real_no1):
    b1 = len(real_no)
    b2 = len(real_no1)

    if(b1<23):
        in_1 = ("0"*(8-b1) + real_no)
    
    else:
        in_1 = real_no
        
    
    if(b2<23):
        in_2 = ("0"*(8-b2) + real_no1)
    
    else:
        in_2 = real_no1
    
    return in_1, in_2

#input accepter
a = int(input("Enter first integer: "))

if(a==0): 
    sys.exit("The product of the two integers is 0.")
    
in_put1 = bin(a)[2:]

f = int(input("Enter second integer: "))

if(f==0):
    sys.exit("The product of the two integers is 0.")
    
in_put2 = bin(f)[2:]

in_1, in_2 = mbm_one(in_put1, in_put2)

#leading-one detector
def lead_detector(real_no):
    bin_str = real_no
    l = bin_str.index('1')
    k = 7 - l
    k = int(k)
    return k

k1 = lead_detector(in_1)
k2 = lead_detector(in_2)

#barrel shifter
def barrel_shifter(a,k):
    k = a.index('1')
    
    if(k==7):
        a = "0.000000"
    else:
        a = a[k+1:]
        a = "0." + a + "0"*(7-len(a))
        
    return a

x1 = barrel_shifter(in_1,k1)
x2 = barrel_shifter(in_2,k2)

#fractional and characteristic part adders
k = k1 + k2
x = parse_bin(x1) + parse_bin(x2)

#taking care of the carry from fractional part to characteristic part
if(x>=1.0):
    k = k + 1
    x = x - 1
    c = "0.0000101"
    
else:
    k = k
    x = x
    c = "0.000101"
    
x = str(Binary(x))[2:]

#to avoid x collapsing into an int value instead of a float
if(x.find(".")>=0):
    x = x
else:
    x = x + "." + "0"*(7-len(x))
    
#addition of error-correction term to fractional part
def term_adder(a,b):
    
    f = a.index(".")
    xint = a[:f]
    xint = int(xint,2)
    xflo = a[f+1:]

    g = b.index(".")
    cint = b[:g]
    cint = int(cint,2)
    cflo = b[g+1:]

    h = max(len(xflo), len(cflo))
    
    d = len(xflo)
    e = len(cflo)
    
    if(d<h):
        xflo = xflo + "0"*(h - d)
    if(e<h):
        cflo = cflo + "0"*(h - e)
    
    result = ''
    carry = 0
    for i in range(h - 1, -1, -1):
        r = carry
        r += 1 if xflo[i] == '1' else 0
        r += 1 if cflo[i] == '1' else 0
        result = ('1' if r % 2 == 1 else '0') + result
        carry = 0 if r < 2 else 1
    
    if(carry==0):
        result = "01" + "." + result
    else:
        result = "10" + "." + result
    
    if(result.rfind("0")>result.rfind("1")):
        result = result[:result.rfind("1")+1]
        
    return result

correctedx = term_adder(x,c)

#scaling barrel shifter
def scaling_shifter(a,x):
        b = a.index(".")
        if(x>=len(a[b+1:])):
            a = a + "0"*(x-len(a[b+1:])+1) #appending zeros to LSB
            a = a.replace('.', '', 1) #removing the decimal point
            a = a[0:b+x] + "." + a[b+x:] #adding the decimal point in the new place
        else:
            a = a.replace('.', '', 1) #removing the decimal point
            a = a[0:b+x] + "." + a[b+x:] #adding the decimal point in the new place

        return a

product = scaling_shifter(correctedx,k)
print(product)
