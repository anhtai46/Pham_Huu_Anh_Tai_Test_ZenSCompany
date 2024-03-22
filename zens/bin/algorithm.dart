void miniMaxSum(List<int> arr) {
  List<double> doubleArr = arr.map((e) => e.toDouble()).toList();

  doubleArr.sort();

  double min = doubleArr.sublist(0, 4).reduce((a, b) => a + b);
  double max = doubleArr.sublist(1).reduce((a, b) => a + b);

  print('$min $max');
}

void main() {
  List<int> arr = [1, 3, 5, 7, 9];
  miniMaxSum(arr);
}
