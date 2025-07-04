function Answer = ZpPolyMult(px, qx, p)  

n=length(px)-1; m=length(qx)-1;  
  
Vec=zeros(1,n+m+1); sumVec=zeros(1,n+1);  

for i=1:m+1  
    sumvec(1:n+1)=qx(i)*px;  
    Vec(i:i+n)=mod(Vec(i:i+n)+sumvec,p);  
    sumvec=zeros(1,n+1);  
end  

Answer = Vec;  
if max(Answer) == 0 
    Answer = [0]; 
end