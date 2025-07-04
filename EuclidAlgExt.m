function OutVec = EuclidAlgExt(a,b)  

aa = max(a,b); bb = min(a,b);  
U = [aa 1 0]; V = [bb 0 1];  

while V(1) > 0  
    W = U - floor(U(1)/V(1))*V;  
    U = V; V = W;  
end  

d = U(1); x = U(2); y = U(3);  
if aa == a  
    OutVec = [d x y];  
else  
    OutVec = [d y x];  
end  