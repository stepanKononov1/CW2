program switchStr;
var
  switch,  str, invSwitch : string;
  lenSwitch, lenStr, starts, ends, count : integer;
  arrStr: array of char;
  flag: boolean;
begin
  flag := False;
  
  // ввод
  while True do
  begin
    writeln('Введите исходную строку для изменений: ');
    readln(str);
    writeln('Введите изменяемый элемент: ');
    readln(switch);
    lenSwitch := length(switch);
    lenStr := length(str);
    if lenSwitch > lenStr then writeln('Изменяемое меньше изменяемой подстроки, введите снова: ')
    else break
  end;
  
  // перенос изменяемой строки в массив
  setlength(arrStr, lenStr);
  for i:integer:=0 to lenStr - 1 do
    arrStr[i] := str[i+1];
  
  // добавление инверсной подстроки для изменения
  invSwitch := '';
  for i:integer:=lenSwitch downto 1 do
    invSwitch := invSwitch + switch[i];  
  
  // основной скрипт
  for i:integer:=1 to lenStr - lenSwitch + 1 do
  begin
    if str[i] = switch[1] then
    begin
      starts := i;
      ends := starts + lenSwitch - 1;
    end;
    count := 2;
    for j:integer:=starts + 1 to ends do
    begin
      if str[j] = switch[count] then flag := True
      else begin flag := False; break; end;
      count := count + 1;
    end;
    count := 1;
    if flag = True then
      for j:integer:= starts - 1 to ends - 1 do
      begin
        arrStr[j] := invSwitch[count];
        count := count + 1;
      end;
  end;
  
  // вывод результата
  writeln('Результат: ');
  for i:integer:=0 to lenStr - 1 do
    write(arrStr[i]);
end.