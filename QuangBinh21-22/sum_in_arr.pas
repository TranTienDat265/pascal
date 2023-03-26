program sum_in_arr;
var a,x:array [1..1000000] of integer;
tong,i,n,cnt,s:integer;
{procedure sort(l,r:integer);
var i,j:longint;
tmp,pivot:int64;
begin
i:=l;
j:=r;
pivot:=x[(l+r) div 2];
while x[i]<pivot do inc(i);
while x[j]>pivot do dec(j);
if i<=j then
        begin
        tmp:=x[i];
        x[i]:=x[j];
        x[j]:=tmp;
        inc(i);
        dec(j);
        end;
        if j>l then sort(l,j);
        if i<r then sort(i,r);
end; }
function check(i,j:integer): boolean;
var k,tmp,l,m:integer;
begin
//writeln('      ',i,' ',j);
for k:=i to j-1 do
for l:=i+1 to j do
if x[k]<x[l] then
        begin
        tmp:=x[k];
        x[k]:=x[l];
        x[l]:=tmp;
        end;
        write('test      ');
for k:=i to j do write(x[k],' ');
writeln;
for m:=i to j do
begin
//write(x[k],' ');
if x[m]=x[m+1] then exit(false);
end;
exit(true);
end;
procedure print(i:integer);
var j:integer;
begin
for j:=1 to i do write(x[j],' ');
writeln;
end;
procedure try(i:integer);
var j,k:integer;
begin
for j:=i to n do
        begin
        tong:=tong+a[j];
        //writeln(a[j]);
        x[i]:=j;
        //writeln(i);
        if (j<n) and (tong<s) then try(i+1)
        else if tong=s then begin if check(1,i) then begin inc(cnt);print(i); end; end;
        tong:=tong-a[j];
        end;
end;
procedure nhap;
begin
readln(n,s);
for i:=1 to n do read(a[i]);
end;
procedure giai;
begin
try(1);
write(cnt);
end;
begin
cnt:=0;
tong:=0;
nhap;
giai;
end.
