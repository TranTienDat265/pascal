program matma;
var  req:array [1..1000] of string;
     _pos:array [1..10000] of integer;
n,m,k,x,i,y,o:integer; f:text;
s:string;
procedure nhap;
begin
assign(f,'D:\TRANTIENDAT\HCM22-23\matma.inp.txt');
reset(f);
readln(f,n,m,k,o);
readln(f,s);
for i:=1 to m do readln(f,req[i]);
close(f);
end;
procedure xepAlphabet;
var tmp:char;
begin
for i:=1 to m do
        begin
        for x:=1 to k-1 do
        for y:=x+1 to k do
        if req[i][x]>req[i][y] then
                begin
                tmp:=req[i][x];
                req[i][x]:=req[i][y];
                req[i][y]:=tmp;
                end;
        end;
end;
procedure getPos;
var l:integer;
begin
l:=0;
for i:=1 to n do if s[i] = '#' then
        begin
        inc(l);
        _pos[l]:=i;
        if l=m then break;
        end;
end;
procedure giai;
begin
xepAlphabet;
getPos;
end;
procedure xuat;
begin
for i:=1 to m do writeln(req[i]);
end;
begin
nhap;
giai;
xuat;
end.
















