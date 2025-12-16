unit Unit1;

interface
uses
  SysUtils;

type
  // Linked List Node
  PNode = ^TNode;
  TNode = record
    data: Integer;
    next: PNode;
  end;

  // Array-based List
  TArrayList = record
    items: array[1..100] of Integer; // max size 100
    size: Integer;
  end;

procedure InsertLinkedList(var head: PNode; value: Integer);
procedure PrintLinkedList(head: PNode);
function GetLinkedListSize(head: PNode): Integer;

procedure InsertArrayList(var list: TArrayList; value: Integer);
procedure PrintArrayList(list: TArrayList);
function GetArrayListSize(list: TArrayList): Integer;

implementation

// --- LINKED LIST FUNCTIONS ---
procedure InsertLinkedList(var head: PNode; value: Integer);
var
  newNode, temp: PNode;
begin
  New(newNode);
  newNode^.data := value;
  newNode^.next := nil;

  if head = nil then
    head := newNode
  else
  begin
    temp := head;
    while temp^.next <> nil do
      temp := temp^.next;
    temp^.next := newNode;
  end;
end;

procedure PrintLinkedList(head: PNode);
var
  temp: PNode;
begin
  temp := head;
  while temp <> nil do
  begin
    Write(temp^.data, ' ');
    temp := temp^.next;
  end;
  Writeln;
end;

function GetLinkedListSize(head: PNode): Integer;
var
  temp: PNode;  // must be PNode, not Integer
  count: Integer;
begin
  count := 0;
  temp := head;
  while temp <> nil do
  begin
    Inc(count);
    temp := temp^.next;
  end;
  Result := count;
end;

// --- ARRAY LIST FUNCTIONS ---
procedure InsertArrayList(var list: TArrayList; value: Integer);
begin
  if list.size < 100 then
  begin
    Inc(list.size);
    list.items[list.size] := value;
  end
  else
    Writeln('ArrayList full!');
end;

procedure PrintArrayList(list: TArrayList);
var
  i: Integer;
begin
  for i := 1 to list.size do
    Write(list.items[i], ' ');
  Writeln;
end;

function GetArrayListSize(list: TArrayList): Integer;
begin
  Result := list.size;
end;

end.