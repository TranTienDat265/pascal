program Kth_digit;
{
give up is not in my vocabulary
}
var aux,digit,ans,helpers,k:int64;
i:longint;
f:text;
procedure nhap;
begin
assign(f,'D:\TRANTIENDAT\KhanhHoa22-23\kth.inp.txt');
reset(f);
readln(f,k);
close(f);
end;
procedure giai;
begin
assign(f,'D:\TRANTIENDAT\KhanhHoa22-23\kth.out.txt');
rewrite(f);
aux:=9;
digit:=1;
while (k > (aux*digit)) do
        begin
        k:=k-aux*digit;
        aux:=aux*10;
        digit:=digit+1;
        end;
ans:=1;
for i:=0 to digit-2 do ans:=ans*10;
ans:=ans+((k-1) div digit);
k:=k-((k-1) div digit*digit);
helpers:=1;
for i:=0 to digit-k-1 do helpers:=helpers*10;
write(f,ans div helpers mod 10);
close(f);
end;
begin
nhap;
giai;
end.
