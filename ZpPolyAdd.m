function Answer = ZpPolyAdd(px, qx, p)  

if length(px)<length(qx)  
    difference=length(qx)-length(px);  
    px = [zeros(1,difference) px];  
elseif length(px)>length(qx)  
    difference=length(px)-length(qx);  
    qx = [zeros(1,difference) qx];  
end  

Answer=mod(px+qx,p);  

Ind = find(Answer ~= 0);  

if isempty(Ind) 
    Answer = 0;  
else  
    ind = Ind(1);  
    Answer(1:ind-1) = [];  
end  