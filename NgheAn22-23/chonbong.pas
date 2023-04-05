program chonbong;
var a:array [1..200000] of longint;
i,n,_begin,_end,res,k:longint;
f:text;
ok:boolean;
procedure sort(l,r:longint);
var tmp,pivot:int64;
i,j:longint;
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
assign(f,'chonbong.inp');
reset(f);
readln(f,n,k);
for i:=1 to n do read(f,a[i]);
close(f);
end;
procedure giai;
begin
sort(1,n);
ok:=false;
_begin:=1;
_end:=n;
while ok=false do
        begin
        if (_begin = n+1) or (_end = 0) then break;

        if a[_begin]<>a[_end] then inc(res,2)
        else if (a[_begin]=a[_end]) or (_begin=_end) or (_begin=n) or (_end=1) then ok:=true;
        inc(_begin);
        dec(_end);
        if n mod 2 = 0 then
                if (_begin > n div 2) or (_end  < n div 2 ) then  break;
        end;
end;
procedure xuat;
begin
assign(f,'chonbong.out');
rewrite(f);
write(f,res);
close(f);
end;
begin
res:=0;
nhap;
giai;
xuat;
end.
