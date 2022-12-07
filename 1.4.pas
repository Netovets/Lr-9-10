const
w = 8;
var
  z : array [1..w,1..w] of integer;
  x : array [1..8] of integer;
  s,d,min,sum :integer;
  q : real;
begin
  for s := 1 to w do
  begin
    for d := 1 to w do
    begin
      z[s,d] := random(50);
      write(z[s,d]:3);
    end;
    writeln;
  end;
   for s := 1 to w do
  begin
    min := 1;
    for d := 2 to w do
    begin
      if z[s,min] > z[s,d] then  
        min := d;
        x[s] := z[s,min];
      end;
    end;
    writeln();
    sum := 0;
    for s := 1 to 8 do
      begin
    write(x[s]:4);
  end;
  writeln;
  for s := 1 to 8 do
    begin
      sum := sum + x[s];
  end;
  writeln('Сумма ', sum);
  q := sum/8;
  writeln('Среднее арифметическое значение ', q);
  
  
end.