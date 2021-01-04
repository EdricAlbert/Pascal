uses    crt;
var     f:text;
        a,b:array[1..100] of integer;
        n,i,j,dem,k,r:integer;
begin
        assign(f,'dayso.inp');
        reset(f);
        readln(f,n);
        for i:=1 to n do
                read(f,a[i]);
        writeln;
        for i:=1 to n do
                read(f,b[i]);
        close(f);
        assign(f,'dayso.out');
        rewrite(f);
        k:=n;
        for i:=1 to n do
                for j:=1 to k do
                begin
                        if a[i]=b[j] then
                        begin
                                for r:=j to k do
                                        b[r]:=b[r+1];
                                k:=k-1;
                                inc(dem);
                                break;
                        end;
                end;
        write(f,dem);
        close(f);


        end.
