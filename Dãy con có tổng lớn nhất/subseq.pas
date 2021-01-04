uses    crt;
var     f:text;
        i,max,tg,vtd,vtc,j:integer;
        n:longint;
        a:array[1..100] of integer;
begin
        assign(f,'subseq.inp');
        reset(f);
        readln(f,n);
        for i:=1 to n do
                read(f,a[i]);
        close(f);
        assign(f,'subseq.out');
        rewrite(f);
        max:=-32678;
        for i:=1 to n-1 do
        begin
                tg:=0;
                tg:=a[i];
                if tg>max then
                begin
                        max:=tg;
                        vtd:=i;
                        vtc:=i;
                end;
                for j:=i+1 to n do
                begin
                        tg:=tg+a[j];
                        if tg>max then
                        begin
                                max:=tg;
                                vtd:=i;
                                vtc:=j;
                        end;
                end;
        end;
        write(f,vtd,' ',vtc,' ',max);
        close(f);
end.