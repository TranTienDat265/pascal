uses crt;

{var g:int64;
const g=100000000;}
var c: array[1..100000000] of longint;
procedure taomang(n:longint);
var i, k, j:longint;
begin
        i:=1; k:=1;
        while i<=n do
        begin
        j:=1;
        while j<=i do
        begin
                c[k]:=i;
                k:=k+1;
                j:=j+1;
        end;
        i:=i+1;
        end;
        {for i:=1 to k-1 do write(c[i],' '); }
end;
function tongdu(a, b:longint):longint;
var i,l,tong:longint;
begin
tong:=0;
for i:=a to b do tong:=tong + c[i];
l:=tong mod (10000000000 +7);
tongdu:=l;
end;
begin
clrscr;
taomang(50);
writeln;
write(tongdu(50,50));
readln;
end.
