program longest_word;
var max,cnt,i:integer;
s:ansistring;
procedure nhap;
begin
readln(s);
end;
procedure giai;
begin
cnt:=0;
s:=s+' ';
for i:=1 to length(s) do if s[i]=' ' then
        begin
        if max<cnt then max:=cnt;
        cnt:=0;
        end
else inc(cnt);
write(max);
end;
begin
nhap;
giai;
end.