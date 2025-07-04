function outHex = GF16Mult(n1Hex, n2Hex)  

n1BinVec = int2baseb(hex2dec(n1Hex), 2, 4);  
n2BinVec = int2baseb(hex2dec(n2Hex), 2, 4);  
 
n2BinVecPre = ZpPolyMult(n1BinVec, n2BinVec, 2);  

[qx rx] = ZpDivAlg(n2BinVecPre, [1 0 0 1 1], 2);  

outBinVec = rx;  

outInt = baseb2int(outBinVec, 2);  
outHex = dec2hex(outInt);  