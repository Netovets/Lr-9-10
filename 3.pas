var
  z : array of integer;
  s,otr,xran,n: integer;
  function f(z : array of integer) : integer;
  begin 
    var s: integer;
    for s := 1 to n - 1 do
      if z[s] < 0 then
      begin
        otr := s;
      end;
  end;
  begin
    writeln('Введите количество элементов массива');
    readln(n);
    setlength(z,n);
    for s:=0 to n-1 do
    begin
      write('Введите элементы ',s,' = ');
      read(z[s]);
    end;
    xran := f(z);
    writeln('Номер последнего отрицательного элемента = ', otr);
    end.