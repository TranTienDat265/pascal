program cream;
uses crt;
var a,b:array [1..100000] of integer;
i,j,x,y,z,int1,int2,n,m:integer;
ok1,ok2:boolean;
f:text;
procedure nhap;
begin
assign(f,'D:\TRANTIENDAT\VinhPhuc921-22\cream.inp.txt');
reset(f);
readln(f,n,m);
for i:=1 to m do readln(f,a[i],b[i]);
close(f);
end;
procedure giai;
begin
assign(f,'D:\TRANTIENDAT\VinhPhuc921-22\cream.out.txt');
rewrite(f);
for x:=1 to n-2 do
for y:=x+1 to n-1 do
for z:=x+2 to n do
if (x<>y) and (y<>z) and (x<>z) then
begin
        for i:=1 to m do
        begin
                ok1:=false;
                ok2:=false;
                int1:=a[i];
                int2:=b[i];
                if ((x=int1) or (y=int1) or (z=int1)) then ok1:=true;
                if ((x=int2) or (y=int2) or (z=int2)) then ok2:=true;
                if (ok1<>true) and (ok2<>true) then writeln(f,x,' ',y,' ',z);
        end;
end;
close(f);
end;
begin
clrscr;
nhap;
giai;
readln;
end.
