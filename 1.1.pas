var
  z : array [1..6, 1..8] of integer;
  x : array [1..6] of integer;
  s,d : integer;
begin
  for s := 1 to 6 do
    begin
    for d := 1 to 8 do
    begin
      z[s,d] := random(20);
      write(z[s,d]: 3);
      end;
      writeln();
      x[s] := 0;
    end;
    writeln('Полученный массив');
  for s := 1 to 6 do
    begin
    for d := 1 to 8-7 do
    begin
      if z[s,d] > abs(4) then
      begin
        x[s] := z[s,d]
      end
        else
        x[s] := 0;
    end;
    end;
  for s := 1 to 6 do
    write(x[s]:4);
  
end.