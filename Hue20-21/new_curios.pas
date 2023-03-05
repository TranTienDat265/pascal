program new_curios;
var a:array [1..35,1..35] of integer;
c:array [1..1000] of byte;
i,cur_row,row1,row2,clm,j,n,sum,row:longint;
procedure nhap;
begin
readln(n);
end;
procedure dq(i:integer);
begin
if (i=n) and (cur_row=row)  then exit
else if (i=n) and (cur_row<>row) then begin cur_row:=0; exit end
else
for j:=1 to 2 do
        begin
        inc(cur_row,a[j,i]);
        c[i]:=1;
        writeln('   ',cur_row);
        dq(i+1);
        dec(cur_row,a[j,i]);
        c[i]:=0;
        end;
end;
procedure giai;
begin
for i:=1 to 2*n do inc(sum,i);
clm:=sum div n;
row:=sum div 2;
a[1,1]:=1;
a[2,1]:=clm-1;
cur_row:=0;
for i:=2 to n do
        begin
        a[1,i]:=i;
        a[2,i]:=clm-i;
        inc(row1,a[1,i]);
        inc(row2,a[2,i]);
        end;
dq(2);
end;
begin
nhap;
giai;
end.