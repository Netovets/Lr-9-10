var
  z: array of integer;
  s, xran,n ,proz : integer;
  function f( var z : array of integer) : integer;
  begin
  var
  s : integer;
  proz := 1;
  for s := 0 to n-1 do
  if z[s] mod 2 = 0 then
    begin
      proz := proz * z[s];
    end;
  end;
begin
  writeln('Введите размер массива');
  readln(n);
  setlength(z, n);
  for s:= 0 to n-1 do
  begin
    write('Введите элементы ',s,': ');
    read(z[s]);
   end;
   xran := f(z);
   writeln('Произведение чет = ', proz);
end.