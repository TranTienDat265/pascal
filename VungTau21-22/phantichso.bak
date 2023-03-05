program phantichso;
var n,x,y,z,t,dem:longint;
f:text;
procedure nhap;
begin
assign(f,'D:\TRANTIENDAT\VungTau21-22\phantichso.inp.txt');
reset(f);
readln(f,n);
close(f);
end;
{procedure check(x:integer);
begin
if (x+y+z+t=n) and (x<=y) and (y<=z) and (z<=t) then x:=x+1;
end;}
procedure giai;
begin
assign(f,'D:\TRANTIENDAT\VungTau21-22\phantichso.out.txt');
rewrite(f);
dem:=0;
for x:=1 to (n div 4) do
for y:=1 to (n div 4) do
for z:=1 to (n div 4) do
for t:=1 to (n div 4) do  if (x+y+z+t=n) and (x<=y) and (y<=z) and (z<=t) then
begin inc(dem); writeln(x,' ',y,' ',z,' ',t); end;
//else if (x+y+z+t>n) then break;
write(f,dem);
close(f);
end;
begin
nhap;
giai;
end.
