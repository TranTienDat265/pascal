program palin;
var fin,fout:text;
t:integer;
s:ansistring;
function isPalin(s:ansistring):boolean;
var i:integer; st:ansistring;
begin
st:='';
for i:=length(s) downto 1 do st:=st+s[i];
exit(st=s);
end;
procedure nhap;
begin
readln(fin,s);
end;
procedure giai;
begin
if isPalin(s) then writeln(fout,'Yes') else writeln(fout,'No');
end;
begin
assign(fin,'D:\TRANTIENDAT\QuangNam21-22\palin.inp.txt');
reset(fin);
assign(fout,'D:\TRANTIENDAT\QuangNam21-22\palin.out.txt');
rewrite(fout);
readln(fin,t);
while t>0 do
        begin
        dec(t);
        nhap;
        giai;
        end;
close(fout);
close(fin);
end.