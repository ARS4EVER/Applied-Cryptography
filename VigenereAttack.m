function ciphertext_recovery=VigenereAttack(ciphertext)

STR=ciphertext;

% determine the keyword length
for i=1:8 % assume the key length of vigenere cipher does not exceed 8
    count(i)=ShiftedMatches(STR, i);
end
[max_num, key_len]=max(count);

% determine the keyword
for i=1:key_len
    freq=FrequencyCounts(STR, i, key_len); % compute frequency
    dot_product=ShiftedDotProducts(freq); 
    [max_value, key_word]=max(dot_product); % find the maximum dot product
    key(i)=char(key_word-1 + 'a');
end

% use the decrypted keyword to recover the ciphertext
ciphertext_recovery=VigenereDeCrypt(STR, key);