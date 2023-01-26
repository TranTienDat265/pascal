program abu;
uses crt;
function gcd(a,b:longint):longint;
begin
while a<>b do
begin
if a<b then b:=b-a
else if b<a then a:=a-b;
end;
gcd:=b;
end;
function tonguoc(n:longint):longint;
var tong,i:longint;
begin
tong:=1+n;
for i:=2 to (n div 2) do if n mod i = 0 then tong:=tong+i;
tonguoc:=tong;end;
var f:text;
i,j,n,dem,tong,uoc,ucln,mau,tu,tt_a,tt_b,a,b,tu_a,mau_a,tu_b,mau_b:longint;
//end;
begin
clrscr;
assign(f,'D:\TRANTIENDAT\VinhPhuc101121-22\abu.inp.txt');
reset(f);
readln(f,a);
readln(f,b);
close(f);
assign(f,'D:\TRANTIENDAT\VinhPhuc101121-22\abu.out.txt');
rewrite(f);
tu_a:=tonguoc(a) div (gcd(tonguoc(a),a));
mau_a:=a div (gcd(tonguoc(a),a));
//tt_a:=tu_a+ '/'+mau_a;
tu_b:= tonguoc(b) div (gcd(tonguoc(b),b));
mau_b:= b div (gcd(tonguoc(b),b));
//writeln(tu_b,'/',mau_b);
//tt_b:=tu_b+'/'+mau_b;
if (tu_a=tu_b) and (mau_a=mau_b) then write(f,tu_a,'/',mau_a)
else write(f,-1);
close(f);
readln;
end.
