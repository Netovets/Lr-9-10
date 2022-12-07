const n = 10;
var
  z,x : array [1..n] of integer;
  s,max1,max2,sxran,dxran,maxnom1,maxnom2,min1,min2,minnom1,minnom2 : integer;
    procedure fmax1();
    var s : integer;
    begin
      for s := 1 to n do
        if z[s] > max1 then
        begin
          max1 := z[s];
          maxnom1 := s
          end;
    end;
    procedure fmax2();
    var s : integer;
    begin
      for s := 1 to n do
        if x[s] > max2 then
        begin
          max2 := x[s];
          maxnom2 := s
          end;
    end;
    procedure fmin1();
    begin
      var s : integer;
      min1 := max1;
      for s := 1 to n do
        if x[s] < min1 then
      begin
        min1 := z[s];
        minnom1 := s;
      end;
    end;      
    procedure fmin2();
    begin
      var s : integer;
      min2 := max2;
      for s := 1 to n do
        if x[s] < min2 then
      begin
        min2 := x[s];
        minnom2 := s;
      end;
    end;        
begin
    for s := 1 to n do
    begin
      z[s] := random(167);
      write(z[s], ' ');
    end;
    writeln;
  for s := 1 to n do
    begin
      x[s] := random(167);
      write(x[s], ' ');
    end;
    writeln;
fmax1();
fmin1();
fmax2();
fmin2();
  for s := 1 to n do
    if z[s] mod 5 = 0 then
      sxran := s;
  for s := 1 to n do
    if x[s] mod 5 = 0 then
      dxran := s;    
    if sxran < dxran then
      for s := 1 to n do
      begin
        z[maxnom1] := 0;
      end
    else
      for s := 1 to n do
      begin
        x[maxnom2] := 0;  
      end;
    if sxran < dxran then
      for s := minnom1 + 1 to n do
      begin
        x[s] := x[s] * 2;  
      end
    else
      for s := minnom2 + 1 to n do
      begin
        z[s] := z[s] * 2; 
      end;
      writeln('Готовый первый массив ', x);
      writeln('Готовый второй массив ', z);
 end.