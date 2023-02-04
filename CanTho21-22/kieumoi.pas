program kieumoi;
uses crt;
var s,st,temp:string;
i,j,n,dem,z:integer;
fin,fout:text;
procedure giai;
begin
assign(fin,'D:\TRANTIENDAT\CanTho21-22\kieumoi.inp.txt');
reset(fin);
assign(fout,'D:\TRANTIENDAT\CanTho21-22\kieumoi.out.txt');
rewrite(fout);
readln(fin,n);
for j:=1 to n do
begin
        readln(fin,s);
        z:=1;
        st:='';
        for i:=1 to length(s) do
        if (i<>1) and (s[i] in ['A'..'Z']) then
                begin
                temp:=copy(s,z,i-z);
                st:=st+temp+'_';
                z:=i;
                end;
        for i:=z to length(s) do st:=st+s[i];
        st:=lowercase(st);
        writeln(fout,st);
end;
close(fin);
close(fout);
end;
begin
clrscr;
giai;
readln;
end.
