program bai2;
var tmp,temp:string;
cur,pass:array [1..100] of byte;
i,j,count,dem,dis,n:integer;
procedure nhap;
begin
readln(n);
readln(tmp);
readln(temp);
end;
procedure giai;
begin
for i:=1 to n do
        begin
        val(tmp[i],cur[i]);
        val(temp[i],pass[i]);
        end;
count:=0;
dem:=0;
for i:=1 to n do
        begin
        dis:=abs(cur[i]-pass[i]);
        if dis>5 then
                begin
                if cur[i]= 0 then
                        begin
                        count:=10-pass[i];
                        //writeln(pass[i],' ',count);
                        inc(dem,count);
                        //writeln(dem);
                        end
                else
                        begin
                        if pass[i]>cur[i] then
                                begin
                                count:=10-pass[i];
                                inc(count,cur[i]);
                                end
                        else
                                begin
                                count:=10-cur[i];
                                //inc(count,pass[i]);
                                end;
                        //writeln('    ',pass[i],' ',count);

                        //writeln('   ',count);
                        inc(dem,count);
                        //writeln(dem);
                        end;
                end
        else
                begin
                inc(dem,dis);
                //writeln(pass[i],' ',dis);
                end;
        end;
write(dem);
end;
begin
nhap;
giai;
end.
