void main() {
  // Runes(符文)

  print('\u{1f596} \u6211'); //🖖 我  一些类似icon的字符

  var str = "😀";
  print(str);
  print(str.length); // UTF-16  这里显示的是 2
  print(str.runes.length); // UTF-32  这里显示的是 1

  // Runes 可以将utf-32 字符集表示的内容转成符号
  // 编码和符号转换
  Runes input = new Runes('\u{1f680}');
  print(new String.fromCharCodes(input)); //🚀

  // Symbol 字面量
  var a = #abc; //这就是一个symbol
  print(a);

  var b = new Symbol('abc');
  print(b);

  print(#abc == new Symbol("abc")); //true

  // 声明动态类型的变量
  dynamic foo = 'bar';
  print(foo);
}
