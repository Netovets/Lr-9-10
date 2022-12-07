const
w = 8;
var
  z : array [1..w,1..w] of integer;
  x : array [1..8] of integer;
  s,d,max,f :integer;
  q : real;
begin
  for s := 1 to w do
  begin
    for d := 1 to w do
    begin
      z[s,d] := random(10);
      write(z[s,d]:3);
    end;
    writeln;
  end;
   for s := 1 to w do
  begin
    max:= 1;
    for d := 2 to w do
    begin
      if z[s,max] < z[s,d] then  
        max := d;
        x[s] := z[s,max];    
      end;
    end;
    for s := 1 to w do
    begin
      for d := 1 to w do
        begin
      begin
      if x[s] = z[s,d] then
      x[s] := -1
      else
        x[s] := 1;
      end;
        end;
        end;
    writeln();
    for s := 1 to w do
      begin
    write(x[s]:4);
      end;
  
  
end.