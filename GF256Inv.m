function outHex = GF256Inv(inHex)  

for i = 1:255  
    elem = dec2hex(i);  
    if numel(elem) == 1  
        elem = ['0' elem];  
    end  
    
    if GF256Mult(elem, inHex) == '01' 
        outHex = elem;   
        return  
    end  
end  
outHex = 'no inverse';  