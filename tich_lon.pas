uses CRT;
var a:array[1..100] of longint;
d:longint;
{procedure xuat;
var i: longint;
begin
for i:=1 to d do
write(a[i],' ');
end;}
function tich:longint;
        var y,i:integer;
begin
        y:=1;
        for i:=1 to d do y:= y*a[i];
        tich:=y;
end;
function dq(n,c:longint): longint;
var i, max: longint;
begin
        {xuat;
        writeln(n); }
        max:= tich*n;
        {writeln(max);}
        if n>=2*c then
        for i:=c to n div 2 do
        begin
                d:=d+1;
                a[d]:=i; if dq(n-i,i) > max then max:= dq(n-i,i);
                d:=d-1;
        end; dq:=max;


end;
begin
clrscr;
write(dq(8,1));
readln;
end.
