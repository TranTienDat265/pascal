program totaldivN;
uses crt;
var a:array [1..500000] of longint;
n,m,j,i,k,dem,tong:longint;
fin,fout:text;
procedure titapdequy;
begin

end;
begin
clrscr;
assign(fin,'D:\TRANTIENDAT\VinhPhuc101121-22\totaldivN.inp.txt');
reset(fin);
assign(fout,'D:\TRANTIENDAT\VinhPhuc101121-22\totaldivN.out.txt');
rewrite(fout);
readln(fin,m,n);
for i:=1 to m do read(fin,a[i]);
for i:=1 to m do
begin
tong:=a[i];                      j:=i;
while tong<n do begin inc(j); tong:=tong+a[j]; end;
if tong mod n = 0 then writeln(a[i],'  ',i);
end;
close(fin);
close(fout);
readln;
end.