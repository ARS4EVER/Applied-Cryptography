function data_bin=StrHex2Bin(data)
for i=1:length(data)
    data_bin((i-1)*4+1:i*4)=double(dec2bin(hex2dec(data(i)),4)-'0');
end