enum Color { red, green, blue }

void main() {
  // 通过index返回枚举中具体常量的值
  print(Color.green.index);

  // 通过values返回常量列表
  print(Color.values);
  List<Color> colors = Color.values;
  print(colors);

  // 通过下标、访问列表中的内容
  print(colors[0]);

  // 通过forEach去遍历列表的内容
  colors.forEach((element) {
    print("value:$element,index:${element.index}");
  });
}
