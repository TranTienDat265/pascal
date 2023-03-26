program bai4;
var a:array [1..1000000] of longint;
i,n,j,k,max,cur,cnt_am,cnt_duong:longint;
procedure sort(l,r:longint);
var i,j:integer;
tmp,pivot:longint;
begin
i:=l;
j:=r;
pivot:=a[(l+r) div 2];
while i<j do
        begin
        while a[i]<pivot do inc(i);
        while a[j]>pivot do dec(j);
        if i<=j then
                begin
                tmp:=a[i];
                a[i]:=a[j];
                a[j]:=tmp;
                inc(i);
                dec(j);
                end;
        end;
if j>l then sort(l,j);
if i<r then sort(i,r);
end;
procedure nhap;
begin
readln(n);
for i:=1 to n do read(a[i]);
end;
procedure giai;
begin
//max:=a[1]*a[2]*a[3];
sort(1,n);
{for i:=1 to n-2 do
for j:=i+1 to n-1 do
for k:=j+1 to n do
if a[i]*a[j]*a[k]>max then max:=a[i]*a[j]*a[k];
write(max);}
max:=a[n-2]*a[n-1]*a[n];
for i:=1 to n do if a[i]<0 then inc(cnt_am) else if a[i]>0 then break;
if cnt_am>=2 then
        begin
        cur:=a[1]*a[2]*a[n];
        if cur>max then max:=cur;
        end;
write(max);
end;
begin
nhap;
giai;
end.
