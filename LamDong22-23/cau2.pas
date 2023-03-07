program cau2;
var f,fout:text;
ok:boolean;
i,n:int64;
j,t:byte;
function isPrime(n:int64):boolean;
var i:int64;
begin
if (n=0) or (n=1) then exit(false);
i:=1;
while i<trunc(sqrt(n)) do begin inc(i); if n mod i = 0 then exit(false); end;
exit(true);
end;
procedure giai;
begin
//if n mod 2  = 1 then writeln(fout,'No')
//else
        begin
                ok:=false;
                i:=1;
                while i < (n div 2) do
                begin
                inc(i);
                if (isPrime(i)) and (isPrime(n-i)) then
                        begin
                        writeln(i);
                        writeln(fout,i,' ',n-i);
                        ok:=true;
                        break;
                        end;
                end;
        if ok = false then writeln(fout,'No');
        end;
end;
procedure nhap;
begin
assign(f,'D:\TRANTIENDAT\LamDong22-23\cau2.inp.txt');
reset(f);
assign(fout,'D:\TRANTIENDAT\LamDong22-23\cau2.out.txt');
rewrite(fout);
readln(f,t);
for j:=1 to t do
        begin
                readln(f,n);
                giai;
        end;
close(f);
close(fout);
end;
begin
nhap;
end.