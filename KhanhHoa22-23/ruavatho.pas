program ruavatho;
var a1,a2,b1,b2,v,opp1,opp2:integer;
f:text;
procedure nhap;
begin
assign(f,'D:\TRANTIENDAT\KhanhHoa22-23\thorua.inp.txt');
reset(f);
readln(f,v);
readln(f,a1,b1);
readln(f,a2,b2);
close(f);
end;
procedure giai;
begin
opp1:=0;
opp2:=0;
while (opp1<v) or (opp2<v) do
        begin
        opp1:=opp1+a1-b1;
        opp2:=opp2+a2-b2;
        end;
end;
procedure xuat;
begin
assign(f,'D:\TRANTIENDAT\KhanhHoa22-23\thorua.out.txt');
rewrite(f);
if opp1<opp2 then write(f,'RUA')
else if opp1>opp2 then write(f,'THO')
else write(f,'HOA');
close(f);
end;
begin
nhap;
giai;
xuat;
end.