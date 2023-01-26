program sodoilap;
uses crt;
var fin,fout:text;
n,i,j:longint;
function songuoc(n:longint):longint;
var s,st:string;
i,j:longint;
begin
s:='';
str(n,st);
for i:=length(st) downto 1 do s:=s+st[i];
val(s,j);
songuoc:=j;
end;
function gcd(a,b:longint):longint;
begin
while a<>b do
if a>b then a:=a-b
else if a<b then b:=b-a;
gcd:=b;
end;
procedure giai;
begin
if gcd(j,songuoc(j)) = 1 then writeln(fout,1) else writeln(fout,0);
end;
begin
clrscr;
assign(fin,'D:\TRANTIENDAT\QUANGTRI21-22\sodoilap.inp.txt');
reset(fin);
assign(fout,'D:\TRANTIENDAT\QUANGTRI21-22\sodoilap.out.txt');
rewrite(fout);
readln(fin,n);
for i:=1 to n do begin readln(fin,j);giai; end;
close(fin);
close(fout);
readln;
end.