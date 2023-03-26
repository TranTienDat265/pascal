program xau;
var dem:array [1..127] of byte;
s:string;                       f:text;
i:integer;
procedure nhap;
begin
assign(f,'D:\TRANTIENDAT\HauGiang22-23\xau.inp.txt');
reset(f);
readln(f,s);
close(f);
end;
procedure giai;
begin
assign(f,'D:\TRANTIENDAT\HauGiang22-23\xau.out.txt');
rewrite(f);
for i:=1 to length(s) do inc(dem[ord(s[i])]);
for i:=ord('A') to ord('Z') do if dem[i]=0 then write(f,chr(i));
close(f);
end;
begin
nhap;
giai;
end.