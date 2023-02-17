program express;
var res,ave,res1:real;  f:text;
n:int64;
procedure nhap;
begin
assign(f,'D:\TRANTIENDAT\DongNai20-21\express.inp.txt');
reset(f);
readln(f,n);
close(f);
end;
procedure gen_ave;
var dem:byte;
begin
dem:=0;
while n>0 do
begin
ave:=ave+n mod 10;
n:=n div 10;
inc(dem);
end;
ave:=ave/dem*1000;
res1:=ave;
end;
procedure giai;
begin
assign(f,'D:\TRANTIENDAT\DongNai20-21\express.out.txt');
rewrite(f);
gen_ave;
if ave<=1000 then res:=6500*(1000-ave)
else if ave<=2500 then res:=6500*1000+ 8000*(ave-1000)
else if ave<=5000 then res:=6500*1000+8000*1500+12000*(ave-2500)
else res:=6500*1000+8000*1500+12000*2500+19000*(ave-5000);
writeln(f,res1:0:0);
write(f,res+(res/10):0:2);
close(f);
end;
begin
nhap;
giai;
end.