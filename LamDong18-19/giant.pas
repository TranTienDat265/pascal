program giant;
var ok:boolean;
sum,tmp,i:integer;
s:ansistring;
function isPrime(n:integer):boolean;
var i:integer;
begin
if (n = 1) or (n = 0) then exit(false);
for i:=2 to trunc(sqrt(n)) do if n mod i = 0 then exit(false);
exit(true);
end;
procedure nhap;
begin
readln(s);
end;
procedure giai;
begin
ok:=true;
for i:=1 to length(s) do
        begin
        if s[i] in ['0'..'9'] then
                begin
                val(s[i],tmp);
                if not isPrime(tmp) then
                        begin
                        ok:=false;
                        break;
                        end;
                inc(sum,tmp);
                end;
        end;
if ok and isPrime(sum) then write('YES') else write('NO');
end;
begin
nhap;
giai;
end.