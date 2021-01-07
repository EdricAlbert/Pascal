uses    crt;
var     n,i,dem,m,j,r,k,s,d,dema:longint;
        f:text;
        a:array[1..100000] of longint;
        b,c:array[1..100000] of longint;
begin
        assign(f,'thuaso.inp');
        reset(f);
        readln(f,n);
        close(f);
        for i:=2 to n do
                for j:=2 to i do
                begin
                        if i=j then
                        begin
                                m:=m+1;
                                a[m]:=i;
                                break;
                        end;
                        if i mod j = 0 then
                                break;
                end;
                assign(f,'thuaso.out');
                rewrite(f);
                for i:=2 to n do
                begin
                     r:=2;
                     k:=i;
                     while k>1 do
                     begin
                        if k mod r=0 then
                        begin
                                k:=k div r;
                                s:=s+1;
                                b[s]:=r;
                        end
                        else
                                r:=r+1;
                     end;
                     for j:=1 to m do
                     begin
                        dem:=0;
                        for d:=1 to s do
                        begin
                                if a[j]=b[d] then
                                        dem:=dem+1;
                                if d=s then
                                        c[j]:=c[j]+dem;
                        end;
                        dema:=dema+dem;
                        if dema=s then
                                break;
                     end;
                     for d:=1 to s do
                        b[d]:=0;
                     s:=0;
                     dema:=0;
                end;
                for i:=1 to m do
                        write(f,c[i],' ');
                close(f);
end.
