program hangcay;
var a:array [1..2000] of byte;
t,n,m,_pos,r,j,cnt,i:integer;
fi,fo:text;
procedure watering(_pos,r:integer);
var i,_begin,_end:integer;
begin
if _pos+r>n then _end:=n else _end:=_pos+r;
if _pos-r<1 then _begin:=1 else _begin:=_pos-r;
for i:=_pos to _end do a[i]:=1;
for i:=_begin to _pos do a[i]:=1;
end;
procedure check;
begin
for j:=1 to n do write(a[j],' ');
writeln;
end;
procedure nhap_giai;
begin
assign(fi,'D:\TRANTIENDAT\NgheAn22-23\hangcay.inp.txt');
reset(fi);
readln(fi,n,m);
for t:=1 to m do
        begin
        readln(fi,_pos,r);
        watering(_pos,r);
        check;
        end;
cnt:=0;
for i:=1 to n do if a[i] = 1 then inc(cnt);
close(fi);
end;
procedure xuat;
begin
assign(fo,'D:\TRANTIENDAT\NgheAn22-23\hangcay.out.txt');
rewrite(fo);
write(fo,cnt);
close(fo);
end;
begin
nhap_giai;
xuat;
end.