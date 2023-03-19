clc

A=[ 6 -8 6; 4 -10 6; 3 5 -7; ];
B=[ -8; 30; 15 ];

[m,m]    = size (A);
Es       = ones(m,1);
Er       = Es;
Es       = 10D-3*Es;
max_iter = 20;
xhsl     = zeros(m,1);
x        = xhsl;
Iter     = 1;

while Er>Es & Iter<max_iter,
    for i=1 : m
        jum = B(i,1);
        for j = 1 : m
            if j <> i then
                jum = jum-A (i,j)*xhsl(j,1);
            end
        end
        xhsl(i,1) = jum / A (i,i);
    end
    if Iter > 1 then
        Er = abs((xhsl-x)./xhsl);
    end
    x = xhsl
    Er
    Iter = Iter + 1
end
