program bai2;
var i,n,cnt:longint;
function sameDigits(n:longint):boolean;
var s:string;  i:longint;
begin
str(n,s);
for i:=1 to length(s)-1 do if s[i]<>s[i+1] then exit(false);
exit(true);
end;
procedure nhap;
begin
readln(n);
end;
procedure giai;
begin
for i:=10 to n do if sameDigits(i) and (i mod 9 = 0) then inc(cnt);
write(cnt);
end;
begin
cnt:=0;
nhap;
giai;
end.
