uses    crt;
var     n,i,j,tg,vtc,vtd,max:integer;
        a:array[1..100] of integer;
begin
        readln(n);
        for i:=1 to n do
                read(a[i]);
        for i:=1 to n-1 do
        begin
                tg:=a[i];
                for j:=i+1 to n do
                begin
                        tg:=tg+a[j];
                        if (tg=0) and ((j-i+1)>max) then
                        begin
                                vtd:=i;
                                vtc:=j;
                                max:=(j-i+1);
                        end;
                end;
                tg:=0;
        end;
        write(vtd,' ',vtc);
        readln;
end.
