function vec = int2baseb(n, b, k)  


vec = [];  
if n == 0, vec = [0];  
else  
    for j = floor(log2(n)/log2(b)):-1:0  
        if b^j <= n, c = floor(n/b^j); n = n - c*b^j; vec = [vec c];  
        else vec = [vec 0];  
        end  
    end  
end  
if nargin > 2  
    if length(vec) > k, error('vector length parameter is too small');  
    else vec = [zeros(1, k - length(vec)), vec];  
    end  
end  
