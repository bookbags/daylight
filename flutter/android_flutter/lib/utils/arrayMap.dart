// 遍历列表返回一个新的列表
List<K> arrayMap<T, K>(List<T> array, K Function(T item, int i) options) {
  final length = array.length;
  int i = -1;
  List<K> resultArray = [];
  while (++i < length) {
    resultArray.add(options(array[i], i));
  }
  return resultArray;
}