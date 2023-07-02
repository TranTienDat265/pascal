program HT;
uses crt;
var x:array [0..100000] of longint;
n,k,len:longint;
d:qword;
fi,fo:text;
procedure try(i:longint);
var j,l:longint;
        begin
        for j:=i to n do
                begin
                if len<k then
                        begin
                        inc(len);
                        x[len]:=j;
                        if len=k then
                                begin
                                write(fo,'{');
                                for l:=1 to len-1 do write(fo,x[l],',');
                                writeln(fo,x[len],'}');
                                inc(d);
                                end;
                        try(j+1);
                        dec(len);
                        end;
                end;
        end;
procedure nhap;
begin
assign(fi,'HT.INP');
reset(fi);
readln(fi,n,k);
close(fi);
end;
procedure giai;
begin
assign(fo,'HT.OUT');
rewrite(fo);
len:=0;
x[len]:=0;
d:=0;
try(1);
write(fo,d);
close(fo);
end;
begin
nhap;
giai;
end.