uses    crt;
var     kt:boolean;
        tg,i,n,a,x,dem,code,k,j:integer;
        r:string;
        f:text;
begin
        assign(f,'integer.inp');
        reset(f);
        read(f,n,k);
        close(f);
        assign(f,'integer.out');
        rewrite(f);
        a:=1;
        for i:=1 to n do
                a:=a*10;
        for i:=(a div 10) to (a-1) do
        begin
                tg:=0;
                kt:=true;
                str(i,r);
                for j:=1 to (length(r)) do
                begin
                        val(r[j],x,code);
                        tg:=tg+x;
                        if (r[j]=r[j+1]) or (r[j]='0') then
                                kt:=false;
                end;
                if kt=true then
                begin
                        if tg mod k = 0 then
                                inc(dem);
                end
        end;
        write(f,dem);
        close(f);
end.



