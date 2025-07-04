function strOut = ShiftDeCrypt(STR, kappa)  
% Inputs: STR = a string of Upper Case text (alphabet: A, B, ..., Z)  
%          kappa, an integer mod 26  
% Output: strOut = a string of corresponding lower case plaintext (alphabet: a, b, ..., c):  
% resulting from decrypting STR using the shift cipher y = Vec + kappa,  
% where Vec is the vector of mod 26 integers corresponding to str under the  
% basic correspondence  
% 0 <-> a, 1 <-> b, ..., 25 <-> z  

Vec = UCText2Int(STR);  
VecOut = mod(Vec - kappa, 26);  
strOut = Int2LCText(VecOut);  