program health;
var a,dem:array [1..200000] of longint;
i,n,min,_pos:longint; f:text;
procedure nhap;
begin
assign(f,'D:\TRANTIENDAT\QuangBinh21-22\health.inp.txt');
reset(f);
readln(f,n);
//write(n);
read(f,a[1]);
min:=a[1];
_pos:=1;
dem[a[1]]:=1;
for i:=2 to n do
        begin
        read(f,a[i]);
        if a[i]<min then
                begin
                min:=a[i];
                _pos:=i;
                end;
        inc(dem[a[i]]);
        writeln(a[i],' ',dem[a[i]]);
        end;
close(f);
end;
procedure giai;
begin
writeln(a[_pos]);
writeln(dem[a[_pos]]);
if (dem[a[_pos]]=1) then write(_pos) else write(-1);
end;
begin
nhap;
giai;
end.