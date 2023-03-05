program prime_divisor;
var a,b:longint;
f:text;
procedure nhap;
begin
assign(f,'D:\TRANTIENDAT\BinhDinh20-21\UOCNGTO.INP.txt');
reset(f);
readln(f,a,b);
close(f);
end;
function count(n:longint):integer;
var i,dem:integer;
begin
i:=2;
dem:=0;
while n<>1 do
   begin
      if n mod i = 0 then inc(dem);
      while n mod i = 0 do begin n:=n div i; write(i,'  '); end;
      inc(i);
   end;
exit(dem);
end;
procedure giai;
var i,max,so:longint;
begin
assign(f,'D:\TRANTIENDAT\BinhDinh20-21\UOCNGTO.OUT.txt');
rewrite(f);
max:=0;
for i:=b downto a do if count(i)>max then begin so:=i; max:=count(i);  end;
write(f,so,' ',max);
close(f);
end;
begin
nhap;
giai;
end.