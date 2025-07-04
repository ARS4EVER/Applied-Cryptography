function c = FastExpSym(a, b, n)
% c = FastExpSym(a, b, n)
% Modification of my FastExp function that
% has symbolic functionality.
% Input: a, b, < n positive integers, n = the modulus
% Output: c = a^b (mod n)
% Program uses the fast exponentiation method to calculate c = a^b (mod n).
% Beginning with factor = a^1:
% on each pass, it is determined whether this is a desired factor. If so, then
% it is multiplied into a variable containing a cumulative product of desired
% factors. Then the factor is squared, and the process repeated.

exp = b;
c = ones(size(a));
factor = a;

while (exp ~= 0)
    if (mod(exp, 2) == 1)
        c = mod(c .*factor, n);
    end
    exp = floor(exp/2);
    factor = mod(factor .*factor, n);
end