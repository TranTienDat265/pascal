program phantuluong;
var numb,pt,s:string;
i,res,x:longint;     f:text;
procedure nhap;
begin
assign(f,'D:\TRANTIENDAT\DakNong22-23\phantu.inp.txt');
reset(f);
readln(f,s);
close(f);
end;
procedure giai;
begin
assign(f,'D:\TRANTIENDAT\DakNong22-23\phantu.out.txt');
rewrite(f);
i:=0;
res:=0;
while i<length(s) do
        begin
        inc(i);
        if s[i] in ['0'..'9'] then
                begin
                numb:='';
                pt:=s[i-1];
                while s[i] in ['0'..'9'] do
                        begin
                        numb:=numb+s[i];
                        inc(i);
                        end;
                val(numb,x);
                case pt of
                        'H': inc(res,x);
                        'O': inc(res,16*x);
                        'N': inc(res,14*x);
                        'C': inc(res,12*x);
                        end;
                end;
        end;
write(f,res);
close(f);
end;
begin
nhap;
giai;
end.