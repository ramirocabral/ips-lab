function s2 = sistema2 (n,s)
    s2(1) = 1/2 * s(1);
    for k=2:length(n)
        s2(k) = (1/2).*s(k) - (1/2).*s(k-1);
    end
end