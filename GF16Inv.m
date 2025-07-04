function outHex = GF16Inv(inHex)  


for i = 1:15  
    elem = dec2hex(i);  
    if GF16Mult(elem, inHex) == '1' % inverse found  
        outHex = elem;   return  
    end  
end  
outHex = 'no inverse';  