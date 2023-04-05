program bocvac;
var a,b:array [1..1000] of integer;
f:text;
i,j,n,m,max,_pos:integer;
procedure nhap;
begin
assign(f,'D:\TRANTIENDAT\LamDong18-19\bocvac.inp.txt');
reset(f);
readln(f,n,m);
for i:=1 to m do read(f,a[i]);
close(f);
end;
procedure giai;
begin
j:=0;
for i:=1 to m do
        begin
        inc(j);
        inc(b[j],a[i]);
        if j=n then j:=0;
        end;
max:=b[1];
_pos:=1;
for i:=1 to n do
        begin
        write(b[i],' ');
        if max<b[i] then
                begin
                max:=b[i];
                _pos:=i;
                end;
        end;
writeln;
write(_pos);
end;
begin
nhap;
giai;
end.