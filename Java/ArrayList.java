public class ArrayList {
    private int[] arr;
    private int size;

    public ArrayList() {
        arr = new int[100];  // fixed capacity for assignment
        size = 0;
    }

    public void insertEnd(int value) {
        arr[size] = value;
        size++;
    }

    public int getSize() {
        return size;
    }

    public void printList() {
        for (int i = 0; i < size; i++) {
            System.out.print(arr[i] + "  ");
        }
        System.out.println();
    }
}