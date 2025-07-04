function number=Bin2StrHex(vec)
convert_number=length(vec)/4;
for i=1:convert_number
    temp=vec((i-1)*4+1:i*4);
    s=temp(1)*8+temp(2)*4+temp(3)*2+temp(4);
    if s<10
        number(i)=char(s+48);
    else
        number(i)=char(s-10+65);
    end
end