var
  z : array of integer;
  max1,max,nomer1,n,s,min1,min,nomer : integer;
  procedure f1();
  var s : integer;
    begin
        min := abs(z[1]);
        nomer := 1;
        for s := 1 to n-1 do
        if abs(z[s])<abs(min) then
        begin
          min := z[s];
          nomer := s;
        end;
      end;
  procedure f2();
  var s : integer;
  begin
    max := -100;
    nomer1 := 1;
    for s := 1 to n-1 do
      if (z[s]> max) and (z[s]<0) then
  begin
    max := z[s];
    nomer1 := s;
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
  begin
    min1 := abs(z[1]);
    max1 := z[1];
    f1();
    f2();
    writeln('Наименьший по модулю элемент = ',min, ' Номер = ', nomer);
    writeln('Макс. отрицательный элемент = ', max, ' Номер = ', nomer1);
  end;
  end.