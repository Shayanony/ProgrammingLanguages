public class Main {
    public static void main(String[] args) {

        // Linked List Demo
        LinkedList ll = new LinkedList();
        ll.insertFront(40);
        ll.insertFront(50);
        ll.insertFront(60);

        System.out.println("Linked List:");
        ll.printList();
        System.out.println("Size: " + ll.getSize());

        System.out.println("\n----------------------\n");

        // Array List Demo
        ArrayList al = new ArrayList();
        al.insertEnd(15);
        al.insertEnd(25);
        al.insertEnd(35);

        System.out.println("Array List:");
        al.printList();
        System.out.println("Size: " + al.getSize());
    }
}