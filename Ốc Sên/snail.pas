uses    crt;
var     tg,k,h,a,b,day:integer;
        f:text;
begin
        assign(f,'snail.inp');
        reset(f);
        read(f,h,a,b);
        close(f);
        tg:=0;
        k:=0;
        day:=0;
        while k<>h do
        begin
                day:=day+1;
                k:=k+a;
                tg:=tg+a;
                if k>=h then
                begin
                        k:=k-h;
                        tg:=tg-k;
                        break;
                end;
                tg:=tg+b;
                k:=k-b;
        end;
        assign(f,'snail.out');
        rewrite(f);
        write(f,day,' ',tg);
        close(f);
end.
