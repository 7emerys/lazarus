program QueueImplementation;

const
  MAX_SIZE = 10;

type
  Queue = record
    data: array[1..MAX_SIZE] of Integer;
    front: Integer;
    rear: Integer;
  end;

procedure initQueue(var q: Queue);
begin
  q.front := -1;
  q.rear := -1;
end;

function isEmpty(var q: Queue): Boolean;
begin
  isEmpty := (q.front = -1) and (q.rear = -1);
end;

function isFull(var q: Queue): Boolean;
begin
  isFull := ((q.rear + 1) mod MAX_SIZE = q.front);
end;

procedure enqueue(var q: Queue; value: Integer);
begin
  if isFull(q) then
    writeln('Очередь переполнена!')
  else if isEmpty(q) then
  begin
    q.front := 1;
    q.rear := 1;
    q.data[q.rear] := value;
  end
  else
  begin
    q.rear := (q.rear mod MAX_SIZE) + 1;
    q.data[q.rear] := value;
  end;
end;

procedure dequeue(var q: Queue);
begin
  if isEmpty(q) then
    writeln('Очередь пуста!')
  else if q.front = q.rear then
  begin
    q.front := -1;
    q.rear := -1;
  end
  else
    q.front := (q.front mod MAX_SIZE) + 1;
end;

procedure displayQueue(var q: Queue);
var
  i: Integer;
begin
  if isEmpty(q) then
    writeln('Очередь пуста!')
  else
  begin
    writeln('Очередь: ');
    i := q.front;
    while i <> q.rear do
    begin
      writeln(q.data[i]);
      i := (i mod MAX_SIZE) + 1;
    end;
    writeln(q.data[q.rear]);
  end;
end;

var
  q: Queue;
  choice, value: Integer;

begin
  initQueue(q);

  repeat
    writeln;
    writeln('Меню:');
    writeln('1. Добавить в очередь');
    writeln('2. Убрать из очереди');
    writeln('3. Показать очередь');
    writeln('4. Выход');
    write('Выберите из списка: ');
    readln(choice);

    case choice of
      1:
      begin
        write('Введите цифру/число для добавления: ');
        readln(value);
        enqueue(q, value);
      end;
      2: dequeue(q);
      3: displayQueue(q);
      4: writeln('Программа завершена');
    else
      writeln('Неверное значение!');
    end;
  until choice = 4;
end.
