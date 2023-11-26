program cwV12;
var
  arr:array[0..4] of integer;
  max, min: integer;
begin
  writeln('Введите 5 значений в массив: ');
  for i:integer:=0 to 4 do
    readln(arr[i]);
  max:=arr[0];
  min:=arr[0];
  for  i:integer:=1 to 4 do
  begin
    if max < arr[i] then max := arr[i];
    if min > arr[i] then min := arr[i];
  end;
  writeln;
  writeln('Результаты: ');
  writeln('Массив: ');
  writeln(arr);
  writeln('Максимальная модульная разность: ', abs(max - min));
end.