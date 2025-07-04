function y = baseb2int(vec, b)  
  

N = length(vec);  
y = 0;  

for k = N:-1:1  
    y = y + b^(N-k) * vec(k);  
end  