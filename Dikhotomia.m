function Dikhotomia
function y=f(x)
y=(x+1)^2;
end
function y=D(a,b,eps)
if (round(abs(b-a)*10000)/10000>eps)
    while(round(abs(b-a)*10000)/10000>eps)
        t=0.5*(a+b-eps);
        z=0.5*(a+b+eps);
        ft=f(t);
        fz=f(z);
        if(ft<=fz)
            b=z;
        else
            a=t;
        x=0.5*(a+b);
        end
    end
else
    x=0.5*(a+b);
end
y=x;
end
end