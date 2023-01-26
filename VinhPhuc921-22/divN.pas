program divN;
uses crt, windows;
var n,k,i,dem,time:longint;
f:text;
function ok(n:longint):boolean;
var dem,t:longint;
begin
dem:=0;
t:=0;
while n>0 do
begin
t:=t+n mod 10;
n:=n div 10;
inc(dem);
end;
exit(t mod dem = 0);
end;
procedure nhap;
begin
assign(f,'D:\TRANTIENDAT\VinhPhuc921-22\divN.inp.txt');
reset(f);
readln(f,n);
close(f);
end;
procedure giai;
begin
//time:=GetTickCount;
assign(f,'D:\TRANTIENDAT\VinhPhuc921-22\divN.out.txt');
rewrite(f);
i:=0;
while n<>0 do
begin
inc(i);
if ok(i) then dec(n);
end;
write(f,i);
close(f);
//time:=GetTickCount-time;
end;
begin
clrscr;
nhap;
giai;
//write(time);
readln;
end.