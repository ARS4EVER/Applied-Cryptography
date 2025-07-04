function FactorList = PrimeFactors(n)  
    FactorList = [];  
    n_new = n;  
    factor = 2;  
    while factor <= floor(sqrt(n_new))  
        if mod(n_new, factor) == 0  
            FactorList = [FactorList factor];  
            n_new = round(n_new/factor);  
        else  
            factor = factor + 1;  
        end  
    end  
    FactorList = [FactorList n_new];  
end