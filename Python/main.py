from linked_list import LinkedList
from array_list import ArrayList

# Linked List Demo
ll = LinkedList()
ll.insert_front(10)
ll.insert_front(20)
ll.insert_front(30)

print("Linked List:")
ll.print_list()
print("Size:", ll.get_size())

print("\n--------------------------\n")

# Array List Demo
al = ArrayList()
al.insert_end(5)
al.insert_end(15)
al.insert_end(25)

print("Array List:")
al.print_list()
print("Size:", al.get_size())