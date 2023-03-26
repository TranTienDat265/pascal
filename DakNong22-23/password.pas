program password;
var i,a,b:longint; f:text;
function isPrime(n:longint):boolean;
var i:longint;
begin
if (n=0) or (n=1) then exit(false);
for i:=2 to trunc(sqrt(n)) do if n mod i =0 then exit(false);
exit(true);
end;
function sumDigits(n:longint):byte;
var ans:byte;
begin
ans:=0;
while n>0 do
        begin
        inc(ans,n mod 10);
        n:=n div 10;
        end;
exit(ans);
end;
procedure nhap;
begin
assign(f,'D:\TRANTIENDAT\DakNong22-23\password.inp.txt');
reset(f);
readln(f,a,b);
close(f);
end;
procedure giai;
begin
assign(f,'D:\TRANTIENDAT\DakNong22-23\password.out.txt');
rewrite(f);
for i:=a to b do if isPrime(i) and isPrime(sumDigits(i))  then write(f,i,' ');
close(f);
end;
begin
nhap;
giai;
end.