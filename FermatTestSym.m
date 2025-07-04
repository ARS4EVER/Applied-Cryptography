function FermatTestSym(n, k)
% y = FermatTestSym(n, k)
% Input: an integer n > 3, and an optional second input k, a positive integer.
% Default value for k: 1
% The program will apply the Fermat primality test k times.
% Output: y will be 1 if at least one of the k tests has found n to be
% composite, and 0 in case all of the tests were inconclusive (meaning,
% informally, they all found n to be probably prime).
% Program accepts symbolic inputs and calls on the FastExpSym program.
% y = 1 at the end, y will be 1 if at least one of the k tests has found n to be
% composite, and 0 in case all of the tests were inconclusive (meaning,
% informally, they all found n to be probably prime).

if nargin < 2, k = 1; end
for test = 1:k
    a = ceil((n-3)*rand)+1; % randomly select a base a: 1<a<n-1
    pwr = FastExpSym(a, n-1, n);
    if pwr ~= 1 % proof that n is composite
        y = 1;
        fprintf('Inputted number was proved composite using the Fermat text.\r')
        fprintf('Here is a corresponding witness: \r')
        a
        return
    end
end

if y ==0
    fprintf('Inputted integer n is declared probably prime after %d applications\r', k)
    fprintf('of the Fermat test.\r')
end