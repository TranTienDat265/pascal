program curios;
var f:text;
n,clm,sum,i,row1,tmp:longint;
a,b,c:array [1..100] of integer; ok:boolean;
procedure nhap;
begin
assign(f,'D:\TRANTIENDAT\Hue20-21\curios.inp.txt');
reset(f);
readln(f,n);
close(f);
end;
{procedure dq(i:integer);
begin
if (i = n) and (row1=sum div 2) then begin ok:=true;  end
//else if (i=n) then
else if (i<n) then
begin
        row1:=row1+a[i];
        writeln('a ',row1);
        dq(i+1);
        row1:=row1-a[i];

        row1:=row1+b[i];
        writeln('a ',row1);
        dq(i+1);
        row1:=row1-b[i];
end;
end; }
procedure dq(i:integer);
begin

end;
procedure giai;
begin
assign(f,'D:\TRANTIENDAT\Hue20-21\curios.out.txt');
rewrite(f);
sum:=0;
for i:=1 to 2*n do inc(sum,i);
clm:=sum div n;
a[1]:=1;
b[1]:=clm-a[1];
row1:=a[1];
for i:=2 to n do begin a[i]:=i; b[i]:=clm-a[i]; inc(row1,a[i]); end;
//dq(2);
if row1 = sum div 2 then
        begin
        for i:=1 to n do write(a[i],' ');
        writeln;
        for i:=1 to n do write(b[i],' ');
        end
else
        begin
        {for i:=2 to n do
                begin
                tmp:=a[i];
                a[i]:=b[i];
                b[i]:=tmp;
                end;}
        for i:=1 to n do write(a[i],' ');
        writeln;
        for i:=1 to n do write(b[i],' ');
        end;
close(f);
end;
begin
nhap;
giai;
end.