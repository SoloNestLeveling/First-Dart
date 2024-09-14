void main() {
  for (int i = 0; i < 10; i++) {
    if (i % 2 == 0) {
      List<int> even = [i];
      print(even);
    }
  }

  print(calculate(10, 20, 30, subnumbers));
}

typedef Operation = int Function(int x, int y, int z);

int sumnumbers(int x, int y, int z) => x + y + z;
int subnumbers(int x, int y, int z) => x - y - z;

int calculate(int x, int y, int z, Operation operation) {
  return operation(x, y, z);
}
