program bai1;
var n,a,b,i,l,r,cnt:longint;
procedure nhap;
begin
readln(n,a,b);
end;
procedure giai;
begin
for i:= (n div a)  downto 1 do
        begin
        l:=n-i*a;
        r:=l div b;
        if (i*a+r*b=n) and (r>0) then inc(cnt);
        if i<r then break;
        end;
write(cnt);
end;
begin
cnt:=0;
nhap;
giai;
end.
