void miniMaxSum(List<int> arr) {
  List<int> sortedArr = List.from(arr)..sort();

  int min = sortedArr.sublist(0, 4).reduce((a, b) => a + b);
  int max = sortedArr.sublist(1).reduce((a, b) => a + b);

  if (sortedArr.length == 4) {
    int sum = sortedArr.reduce((a, b) => a + b);
    print(sum);
    return;
  }

  print('$min $max');
}

void main() {
  List<int> arr = [1, 2, 3, 4, 5];
  miniMaxSum(arr);
}
