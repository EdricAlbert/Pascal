uses    crt;
var     n,i,j,dem:integer;
        x:string;
begin
        readln(n);
        if n>10 then
                for i:=n downto 10 do
                begin
                        dem:=0;
                        str(i,x);
                        for j:=1 to ((length(x)) div 2) do
                        begin
                                if x[j]=x[(length(x))-j+1] then
                                        dem:=dem+1;
                        end;
                        if dem=(length(x) div 2) then
                                write(i,' ');
                end;
        readln;
end.
