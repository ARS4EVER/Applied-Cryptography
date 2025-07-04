function RoundKeys = DESRoundKeys(Key)
TKeyPerm = [57 49 41 33 25 17 9 1 58 50 42 34 26 18 10 2 59 51 43 35 27 19 11 3 60 52 44 36 63 55 47 39 31 23 15 7 62 54 46 38 30 22 14 6 61 53 45 37 29 21 13 5 28 20 12 4];
% Permute the key with respect to the above permutation.
Key1=Key(TKeyPerm); 
FinKeyPerm=[14 17 11 24 1 5 3 28 15 6 21 10 23 19 12 4 26 8 16 7 27 20 13 2 41 52 31 37 47 55 30 40 51 45 33 48 44 49 39 56 34 53 46 42 50 36 29 32];
LeftShifts=2*ones(1,16);LeftShifts([1,2,9,16])=1;
C=Key1(1:28);D=Key1(29:end);
for round = 1:16
% do the left shifts on C and D
e11 = LeftShifts(round);
Cnew(1:28-e11)=C(e11+1:28); Cnew(28-e11+1:28)=C(1:e11);
Dnew(1:28-e11)=D(e11+1:28); Dnew(28-e11+1:28)=D(1:e11);
C=Cnew;D=Dnew;
% Perform selection permutation on juxtaposition of C and D
JuxtCD = [C D];
% The ith key is now the final permutation of JuxtCD
RoundKeys(round,:)=JuxtCD(FinKeyPerm);
end