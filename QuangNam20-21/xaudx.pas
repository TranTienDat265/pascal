program xaudx;
var s,st:ansistring;
f:text;
i,max,j,n:longint;
function isDx(s:ansistring):boolean;
var st:ansistring;
i:integer;
begin
st:='';
for i:=length(s) downto 1 do st:=st+s[i];
exit(s=st);
end;
procedure nhap;
begin
assign(f,'D:\TRANTIENDAT\QuangNam20-21\xaudx.inp.txt');
reset(f);
readln(f,s);
close(f);
end;
procedure giai;
begin
st:='';
max:=1;
assign(f,'D:\TRANTIENDAT\QuangNam20-21\xaudx.out.txt');
rewrite(f);
n:=length(s);
for i:=1 to n-1 do
begin
        st:=s[i];
        for j:=i+1 to n do
                begin
                st:=st+s[j];
                if (isDx(st)) and (length(st)>max) then max:=length(st);
                end;
end;
write(f,max);
close(f);
end;
begin
nhap;
giai;
end.
