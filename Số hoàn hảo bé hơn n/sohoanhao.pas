uses    crt;
var     tg,n,i,k,r,j:longint;
begin
        clrscr;
        readln(n);
        for j:=n downto 1 do
        begin
        tg:=0;
        k:=j;
        r:=j;
        for i:=1 to k-1 do
        begin
                if r mod i=0 then
                        tg:=tg+i;
        end;
        if (tg=k) then
                write(k,' ');
        end;
        readln;
end.
