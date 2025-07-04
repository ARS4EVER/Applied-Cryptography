function PtextHex = ScaledDownAESDecrypt(CtextHex, KeyHex)

RoundKeysHexStr = ScaledDownAESRoundKeys(KeyHex);

K0 = [RoundKeysHexStr(1) RoundKeysHexStr(2); RoundKeysHexStr(3) RoundKeysHexStr(4)]; K0 = K0';
K1 = [RoundKeysHexStr(5) RoundKeysHexStr(6); RoundKeysHexStr(7) RoundKeysHexStr(8)]; K1 = K1';
K2 = [RoundKeysHexStr(9) RoundKeysHexStr(10); RoundKeysHexStr(11) RoundKeysHexStr(12)]; K2 = K2';

C = [CtextHex(1) CtextHex(2); CtextHex(3) CtextHex(4)]; C = C';



Q = ScaledDownAESStateXOR(C, K2);
Q = ScaledDownAESShiftRow(Q);
Q = ScaledDownAESInvNibbleSub(Q);


Q = ScaledDownAESStateXOR(Q, K1);
Q = ScaledDownAESInvMixColumn(Q);
Q = ScaledDownAESShiftRow(Q);
Q = ScaledDownAESInvNibbleSub(Q);

Q = ScaledDownAESStateXOR(Q, K0);


PtextHex(1) = Q(1, 1); PtextHex(2) = Q(2, 1); PtextHex(3) = Q(1, 2); PtextHex(4) = Q(2, 2);