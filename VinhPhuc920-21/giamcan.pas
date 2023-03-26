program giamcan;
var f:text;
a,dis:array [1..100000] of integer;
max,_pos,i,k,n:integer;
procedure nhap;
begin
assign(f,'D:\TRANTIENDAT\VinhPhuc920-21\giamcan.inp.txt');
reset(f);
readln(f,n,k);
for i:=1 to n do read(f,a[i]);
close(f);
end;
procedure print;
begin
for i:=1 to n do write(dis[i],' ');
writeln;
end;
procedure giai;
begin
assign(f,'D:\TRANTIENDAT\VinhPhuc920-21\giamcan.out.txt');
rewrite(f);
for i:=1 to n-1 do dis[i]:=a[i+1]-a[i];
dec(n);
while k>0 do
        begin
        dec(k);
        max:=dis[1];
        _pos:=1;
        for i:=2 to n do if dis[i]>max then
                begin
                max:=dis[i];
                _pos:=i;
                end;
        inc(n);
        for i:=n downto _pos+2 do dis[i]:=dis[i-1];
        dis[_pos]:=max div 2;
        dis[_pos+1]:=max div 2;
        //print;
        end;
print;
max:=dis[1];
for i:=1 to n do if max<dis[i] then max:=dis[i];
write(f,max);
close(f);
end;
begin
nhap;
giai;
end.