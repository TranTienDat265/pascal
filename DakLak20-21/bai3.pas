program bai3;
const a = ord('a');
      b = ord('z');
var dem: array [a..b] of byte;
i,cnt:byte;
s:string;
procedure nhap;
begin
readln(s);
end;
procedure giai;
begin
for i:=1 to length(s) do inc(dem[ord(s[i])]);
for i:=a to b do if dem[i]=2 then inc(cnt);
if cnt<>0 then write(cnt) else write(-1);
end;
begin
nhap;
giai;
end.