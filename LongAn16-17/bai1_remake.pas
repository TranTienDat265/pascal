program bai1_remake;
var a:array [1..80] of byte;
s:string;
n,i,min,_pos,start,j:byte;    //534976
procedure nhap;
begin
readln(s);
end;
procedure swap(i,j:byte);
var tmp:byte;
begin
tmp:=a[i];
a[i]:=a[j];
a[j]:=tmp;
end;
procedure giai;
begin
n:=length(s);
for i:=1 to n do val(s[i],a[i]);
for i:=n downto 1 do if a[i]<a[i+1] then break;
if i=1 then
        begin
        write(0);
        halt;
        end;
start:=i+1;
min:=a[i+1];
_pos:=i+1;
for i:=start to n do
        if a[i]<min then
                begin
                min:=a[i];
                _pos:=i;
                end;
//write(min,' ',_pos);
swap(start-1,_pos);
for i:=start to n-1 do
for j:=i+1 to n do
if a[i]>a[j] then swap(i,j);
for i:=1 to n do write(a[i]);
end;
begin
nhap;
giai;
end.