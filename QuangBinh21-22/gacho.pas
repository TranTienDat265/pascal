program gacho;
var n,k,ga,cho:qword;
procedure nhap;
begin
readln(n,k);
end;
procedure giai;
begin
if (k mod 2 = 1) and (((4*n)-k)  div 2 > 0) then write(-1)
else
        begin
        //write(((4*n)-k) div 2);
        write(((4*n)-k) div 2, ' ',n-(((4*n)-k) div 2));
        //write(ga,' ',cho);
        end;
end;
begin
nhap;
giai;
end.
