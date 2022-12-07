var
  z : array [1..8,1..6] of integer;
  x : array [1..8] of integer;
  s,d,f : integer;
begin
  for s := 1 to 8 do
  begin
    for d := 1 to 6 do
    begin
      z[s,d] := random(50)-10;
      write(z[s,d]:3);
    end;
    writeln;
  end;
  for s := 1 to 8 do
  begin
    for d := 1 to 6 do
      if z[s,d] > 0 then
       inc(f);
      if f = 6 then
       x[s] := 1
      else
        x[s] := -1;
      f := 0;
  end;
  for s := 1 to 8 do
    write(x[s]:4);
 
end.