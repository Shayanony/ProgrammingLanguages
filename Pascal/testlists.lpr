program testlists;

uses
  SysUtils, Unit1;

var
  head: PNode;
  arrList: TArrayList;
begin
  head := nil;
  arrList.size := 0;

  // --- Linked List Demo ---
  InsertLinkedList(head, 10);
  InsertLinkedList(head, 20);
  InsertLinkedList(head, 30);
  Writeln('Linked List:');
  PrintLinkedList(head);
  Writeln('Linked List Size: ', GetLinkedListSize(head));

  // --- Array List Demo ---
  InsertArrayList(arrList, 5);
  InsertArrayList(arrList, 15);
  InsertArrayList(arrList, 25);
  Writeln('Array List:');
  PrintArrayList(arrList);
  Writeln('Array List Size: ', GetArrayListSize(arrList));

  Readln;
end.