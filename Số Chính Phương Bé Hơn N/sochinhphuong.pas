uses    crt;
var     r,i,n:integer;
        k:real;
begin
        readln(n);
        for i:=n downto 1 do
        begin

                r:=trunc(sqrt(i));
                k:=sqrt(i);
                if k-r=0 then
                        write(i,' ');
        end;
end.
