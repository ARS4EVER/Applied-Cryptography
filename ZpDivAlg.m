function [qx, rx] = ZpDivAlg(fx, gx, p)
    if length(fx) < length(gx)
        qx = 0; rx = fx; return;
    end
    
    lenQut = length(fx) - length(gx) + 1;
    qx = zeros(1, lenQut);
    rx = fx;
    gx_lead = gx(1);
    gx_lead_inv = ModInv(gx_lead, p);
    
    while length(rx) >= length(gx)
        curr_lead = rx(1);
        curr_quot = mod(curr_lead * gx_lead_inv, p);
        quot_exp = length(rx) - length(gx);
        qx(lenQut - quot_exp) = curr_quot;

        temp = zeros(1, quot_exp + 1);
        temp(1) = curr_quot;
        
        rx = ZpPolyAdd(rx, -ZpPolyMult(temp, gx, p), p);
        
        % 去除rx的前导零
        first_nonzero = find(rx ~= 0, 1);
        if isempty(first_nonzero)
            rx = 0; break;
        else
            rx = rx(first_nonzero:end);
        end
    end
    
    % 规范化输出
    if isscalar(qx) && qx == 0
        qx = 0;
    else
        first_nonzero = find(qx ~= 0, 1);
        if isempty(first_nonzero)
            qx = 0;
        else
            qx = qx(first_nonzero:end);
        end
    end
end