const
w = 8;
var
  z : array [1..w,1..w] of integer;
  x : array [1..8] of integer;
  s,d,f : integer;
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
  for f := 1 to 8 do   
    x[f] := -1;
  for s := 1 to w-1 do
  begin
    for d := 1 to w-1 do
    begin
      if z[s,d] + z[s,d+1] = 7 then
      begin
        x[s] := 1;
        break;
      end;
  end;
  end;
  for f := 1 to w do
    write(x[f]:5);
  
  
  
  
  
end.