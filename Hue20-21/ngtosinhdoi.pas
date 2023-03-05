program ngtosinhdoi;
uses crt;
var n,pre_numb,numb,i:longint;
f:text;
procedure nhap;
begin
assign(f,'D:\TRANTIENDAT\Hue20-21\ngtosinhdoi.inp.txt');
reset(f);
readln(f,n);
close(f);
end;
function ngto(n:longint):boolean;
var i:longint;
begin
if (n = 0) or (n = 1) then exit(false);
for i:=2 to trunc(sqrt(n)) do if n mod i = 0 then exit(false);
exit(true);
end;
function isPrime(m:longint):boolean;
var i,dem,so:longint;
begin
//so:=m;
dem:=1;
for i:=1 to m div 2 do if m mod i = 0 then inc(dem);
if dem = 2 then exit(true) else exit(false);
end;
procedure giai;
var count:longint;
begin
assign(f,'D:\TRANTIENDAT\Hue20-21\ngtosinhdoi.out.txt');
rewrite(f);
count:=0;
pre_numb:=2;
numb:=3;
for i:=4 to n do
begin
        if ngto(i) then
        begin
                pre_numb:=numb;
                numb:=i;
                if numb-pre_numb=2 then
                begin
                        inc(count);
                        writeln(f,count,': [',pre_numb,',',numb,']');
                end;
        end;
end;
close(f);
end;
begin
clrscr;
nhap;
giai;
end.
