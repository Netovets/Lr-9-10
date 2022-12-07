var
z,x : array [1..30] of integer;
s,d,sum1, sum2 : integer;
  begin
    for s := 1 to 30 do
    begin
      z[s] := random(100);
      write(z[s], ' '); 
    end;
    writeln;
      begin
        sum1 := 0;
        for s := 1 to 30 do
        sum1 := sum1 + z[s];
        writeln('Сумма элементов 1 массива = ', sum1)
      end;
      writeln;
        begin
          for d := 1 to 30 do
        begin
          x[d] := random(100);
          write(x[d], ' ');
        end;
        writeln;
        sum2 := 0;
          begin
            for d := 1 to 30 do
            sum2 := sum2 + x[d];
            writeln('Cумма элементов 2 массива = ', sum2)
          end;
          writeln;
        end;
    if sum1 < sum2 then
      for s := 1 to 30 do
      begin
      z[s]:= z[s]*10;
      write(z[s], ' ' );
      end
    else
      for d := 1 to 30 do
        begin
      x[d]:=x[d]*10;
    write(x[d], ' ' );
  end;
  end.
  