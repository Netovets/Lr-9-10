const
w = 8;
var
  z : array [1..w,1..w] of integer;
  x : array [1..8] of integer;
  s,d,f,q : integer;
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
  for s := 1 to w-1 do
  begin
    for d := 1 to w do
    begin
      q := z[s+1,d];
      if q>7  then
      begin
        x[s] := 1
      end
    else
      x[s]:= -1  
  end;
  end;
  for s := 1 to w do
    write(x[s]:4);
  
  
  
  
  
end.