program bai2;
uses crt;
var n,k,i:longint;
procedure nhap;
begin
readln(n,k);
end;
procedure giai;
begin
if (n*4<k) or (k mod 2 = 1) then write(-1)
else
        begin
                for i:=1 to n do
                if i*2+(n-i)*4 = k then
                        begin
                        write(i,' ',n-i);
                        break;
                        end;
        end;
end;
begin
nhap;
giai;
end.