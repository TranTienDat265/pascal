program delelement;
uses crt;
var a,luu:array[1..300000] of longint;
i,n,j,dem,k,so,x,kt:longint;
fin,fout:text;
begin
clrscr;
assign(fin,'D:\TRANTIENDAT\VinhPhuc101121-22\delelement.inp.txt');
reset(fin);
assign(fout,'D:\TRANTIENDAT\VinhPhuc101121-22\delelement.out.txt');
rewrite(fout);
readln(fin,k,n);
dem:=k;
writeln(dem);
for i:=1 to n do  read(fin,a[i]);// for j:=1 to n do if    end;
for i:=1 to n do
begin
for j:=1 to k do
if j mod a[i] =0 then
begin
kt:=0;
for x:=1 to so do if luu[x]=j then begin kt:=1; break; end;
if kt<> 1 then begin
writeln(j,'  ',a[i]);
dec(dem);
inc(so);
luu[so]:=j;
end;
end;
end;
write(fout,dem);
close(fin);
close(fout);
readln;
end.
