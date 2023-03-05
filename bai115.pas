program bai115;
uses crt;
var a:array [1..100,1..100] of char;
f:text;
i,j,d,k,r,dem,x,y,max,pos_i,pos_j:integer;
{procedure nhap_1;
begin
assign(f,'D:\TRANTIENDAT\bai115.inp.txt');
reset(f);
readln(f,d,r,k);
for i:=1 to d do
for j:=1 to r do read(f,a[i]);
close(f);
end;  }
procedure nhap;
var s:string;
begin
assign(f,'D:\TRANTIENDAT\bai115.inp.txt');
reset(f);
readln(f,d,r,k);
for i:=1 to d do
begin
readln(f,s);
for j:=1 to length(s) do a[i,j]:=s[j];
//writeln(s);
end;
close(f);
end;
procedure giai1;
var aim:longint;
begin
        aim:=k-2;
        for i:=1 to d-k+1 do
        for j:=1 to r-k+1 do
        begin
                dem:=0;
                for x:=i+1 to i+aim do
                begin
                for y:=j+1 to j+aim do
                      begin
                      //writeln(x,'  ',y);
                      //write(a[x,y],' ');
                      if a[x,y]='*' then inc(dem);
                      end;
                      //writeln;
                end;
        //writeln('-----------------------');
        if dem>max then
        begin
                max:=dem;
                pos_i:=i;
                pos_j:=j;
        end;
end;
end;
procedure giai2;
begin
if max=0 then begin pos_i:=1; pos_j:=1; end;
a[pos_i,pos_j]:='+';
a[pos_i+k-1,pos_j+k-1]:='+';
a[pos_i,pos_j+k-1]:='+';
a[pos_i+k-1,pos_j]:='+';
for i:=pos_i+1 to pos_i+k-2 do a[i,pos_j+k-1]:='|';
for i:=pos_i+1 to pos_i+k-2 do a[i,pos_j]:='|';
for j:=pos_j+1 to pos_j+k-2 do a[pos_i,j]:='-';
for j:=pos_j+1 to pos_j+k-2 do a[pos_i+k-1,j]:='-';
end;
begin
clrscr;
nhap;
giai1;
giai2;
for i:=1 to d do
begin
        for j:=1 to r do write(a[i,j]);
        writeln;
end;
readln;
end.
