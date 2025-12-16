public class LinkedList {
    private Node head;

    public LinkedList() {
        this.head = null;
    }

    public void insertFront(int value) {
        Node newNode = new Node(value);
        newNode.next = head;
        head = newNode;
    }

    public int getSize() {
        int count = 0;
        Node current = head;

        while (current != null) {
            count++;
            current = current.next;
        }

        return count;
    }

    public void printList() {
        Node current = head;

        while (current != null) {
            System.out.print(current.data + " -> ");
            current = current.next;
        }

        System.out.println("null");
    }
}