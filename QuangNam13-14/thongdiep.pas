program thongdiep;
var a:array [1..10000] of string;
s:string;
cnt,_pos,i,tmp:integer;
fi,fo:text;
procedure split;
begin
cnt:=0;
_pos:=1;
for i:=1 to length(s) do if (s[i]=' ') or (i=length(s)) then
        begin
        inc(cnt);
        if i<> length(s) then a[cnt]:=copy(s,_pos,i-_pos)
        else a[cnt]:=copy(s,_pos,i-_pos+1);
        _pos:=i+1;
        end;
end;
procedure nhap_giai;
begin
readln(fi,s);
split;
for i:=1 to cnt do
        begin
        read(fi,tmp);
        if i<cnt then write(fo,a[tmp],' ')
        else write(fo,a[tmp]);
        end;
end;
begin
assign(fi,'D:\TRANTIENDAT\QuangNam13-14\thongdiep.inp.txt');
reset(fi);
assign(fo,'D:\TRANTIENDAT\QuangNam13-14\thongdiep.out.txt');
rewrite(fo);
nhap_giai;
close(fi);
close(fo);
end.