uses    crt;
var     f:text;
        st,r:string;
        k,n,i,q,j:integer;
begin
        assign(f,'bl2.inp');
        reset(f);
        readln(f,n);
        close(f);
        assign(f,'bl2.out');
        rewrite(f);
        if n=1 then
                write(f,'1')
        else if n>1 then
        begin
                q:=0;
                k:=n-1;
                for i:=1 to k do
                begin
                        if (i>9) or (q>0) then
                        begin
                                j:=(i+q) mod 10;
                                str(j,r);
                                q:=(i+q) div 10;
                                st:=r+st;
                        end
                else
                        begin
                                str(i,r);
                                st:=r+st;
                        end;
                end;
                if n>9 then
                begin
                        if q>0 then
                        begin
                                j:=(n+q) mod 10;
                                q:=(n+q) div 10;
                                str(j,r);
                                st:=r+st;
                        end
                else
                        if (n>9) then
                        begin
                                q:=n div 10;
                                j:=n mod 10;
                                str(j,r);
                                st:=r+st;
                        end
                else
                        begin
                                str(n,r);
                                st:=r+st;
                        end;
                end;
                for i:=k downto 1 do
                begin
                        if (i>9) or (q>0) then
                        begin
                                j:=(i+q) mod 10;
                                str(j,r);
                                q:=(i+q) div 10;
                                st:=r+st;
                        end
                else
                        begin
                                str(i,r);
                                st:=r+st;
                                end;
                end;
        end;
                write(f,st);
        close(f);
end.
