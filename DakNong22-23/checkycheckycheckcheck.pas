program checkycheckycheckcheck;
var sum,i,n,x:longint;
begin
readln(n,x);
sum:=0;
for i:=1 to n do if i mod 2 = 1 then sum:=sum+x;
write(sum);
end.