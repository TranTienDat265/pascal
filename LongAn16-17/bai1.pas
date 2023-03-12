program bai1;
var s:string;   tmp:char;
i,j,pre_numb,numb,numb_i,numb_j,_pos,sth,min:integer;
procedure nhap;
begin
readln(s);
end;
procedure swap(i,j:integer);
begin
tmp:=s[i];
s[i]:=s[j];
s[j]:=tmp;
end;
procedure giai;   //534976
begin
for i:=length(s)-1 downto 1 do
        begin
        if s[i]>s[i-1] then break;
        end;
writeln(i);
dec(i);
val(s[i+1],min);
_pos:=i+1;
for j:=i+2 to length(s) do
        begin
        val(s[j],numb);
        writeln(numb,' ',min);
        if numb<min then
                begin
                min:=numb;
                _pos:=j;
                end;
        end;
swap(i,_pos);
sth:=i;
for i:=sth+1 to length(s)-1 do
for j:=i+1  to length(s) do
        begin
        val(s[i],numb_i);
        val(s[j],numb_j);
        if numb_i > numb_j then swap(i,j);
        end;
write(s);
end;
begin
nhap;
giai;
end.