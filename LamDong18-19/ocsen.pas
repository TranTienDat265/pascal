program ocsen;
var ans,a,b,v,cnt,res:byte;
procedure nhap;
begin
readln(a,b,v);
end;
procedure giai;
begin
ans:=0;   cnt:=0;    res:=0;
while ans<v do
        begin
        if ans+a<v then
                begin
                ans:=ans+a-b;
                res:=res+a+b;
                //writeln('    ',ans,' ',res);
                inc(cnt);
                end
        else
                begin
                res:=res+v-ans;
                ans:=v;
                //writeln(ans,' ',res);
                inc(cnt);
                end;

        end;
write(cnt,' ',res);
end;
begin
nhap;
giai;
end.