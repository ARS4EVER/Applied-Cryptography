function d = EuclidAlg(a,b)  

aa = max(a,b); bb = min(a,b);  
q = floor(aa/bb); r = aa - q*bb;  

while r > 0  
    aa = bb; bb = r; q = floor(aa/bb); r = aa - q*bb;  
end  
 