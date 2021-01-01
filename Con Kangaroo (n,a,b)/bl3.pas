uses    crt;
var     n,b,a,solan:integer;
        f:text;
begin
        assign(f,'bl3.inp');
        reset(f);
        readln(f,n,a,b);
        close(f);
        assign(f,'bl3.out');
        rewrite(f);
        if n mod b=0 then
                write(f,(n div b))
        else
                if n mod (b+a) = 0 then
                begin
                        solan:=solan + (n div b);
                        solan:=solan + ((n mod b) div a);
                        write(f,solan);
                end
        else
                if n mod (a) = 0 then
                        write(f,(n div a))
        else
                write(f,'-1');
        close(f);
end.
