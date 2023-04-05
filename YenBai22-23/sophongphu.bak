program sophongphu;
var a,b,cnt,i:longint;
function sum_divisors(n:longint):longint;
var res,i:longint;
begin
if n = 1 then exit(1);
res:=1;
for i:=2 to trunc(sqrt(n)) do
        if n mod i = 0 then
                begin
                res:=res+i;
                if (n div i <> i) then res:=res+ n div i;
                end;
exit(res);
end;
procedure nhap;
begin
readln(a,b);
end;
procedure giai;
begin
cnt:=0;
for i:=a to b do if sum_divisors(i)>i then cnt:=cnt+1;
write(cnt);
end;
begin
nhap;
giai;
end.
