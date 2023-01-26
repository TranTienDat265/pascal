program somayman;
uses crt;
var n,m:string;
function tong(n:string):string;
var i,t,so:longint;
st:string;
begin
t:=0; 
for i:=1 to length(n) do begin val(n[i],so); t:=t+so; end;
str(t,st);
exit(st);
end;
procedure nhap;
begin
write('Nhap n:  '); readln(n);
write('Nhap m:  '); readln(m);
end;
procedure giai;
begin
n:=tong(n);
while length(n)<>1 do n:=tong(n);
if n=m then write(1) else write(0);
end;
begin
clrscr;
nhap;
giai;
end.