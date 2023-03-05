program res_curios;
var f:text;
a:array [1..35,1..35] of integer;
sum,i,n,j:integer;
procedure nhap;
begin
assign(f,'D:\TRANTIENDAT\Hue20-21\curios.inp.txt');
reset(f);
readln(f,n);
close(f);
end;
procedure giai;
begin
assign(f,'D:\TRANTIENDAT\Hue20-21\curios.out.txt');
rewrite(f);
sum:=((2*n+1)*n) div 2;
if n mod 2 <> 0 then write(f,'No solution')
else
        begin
        for i:=1 to n do
                begin
                if i mod 2 <> 0 then
                        begin
                        a[1,i]:=i;
                        a[2,i]:=2*n+1 - i;
                        end
                else
                        begin
                        a[1,i]:=2*n+1 -i;
                        a[2,i]:=i;
                        end;
                end;
        for i:=1 to 2 do
                begin
                for j:=1 to n do write(f,a[i,j],' ');
                writeln(f);
                end;
        end;
close(f);
end;
begin
nhap;
giai;
end.
