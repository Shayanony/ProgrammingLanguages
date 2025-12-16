class ArrayList:
    def _init_(self):
        self.arr = []

    def insert_end(self, value):
        self.arr.append(value)   # dynamic array growth handled by Python internally

    def get_size(self):
        return len(self.arr)

    def print_list(self):
        for item in self.arr:
            print(item, end="  ")
        print()