##                          Dart语法基础

- 声明函数

  ```dart
  void printInteger(int aNumber){
      print("The number is $aNumber.");   //打印到控制台、 使用了变量 aNumber （$  模板字符串）
  }
  ```

  

- 入口文件 - 应用从这里开始执行

  ```dart
  //dart程序执行总是从 main函数开始执行
  void main(){
      var number = 42;
      printInterger(number);
      // dart中，代码行结束时，必须添加分号 “;” 。 否则报错
  }
  ```

  

- dart注释

  ```dart
      // 我是单行注释
      
      /*多行注释*/
      
      ///是我文档注释
      
      //可以通过dartdoc将注释转成文档（文档注释支持markdown语法）
  ```

  

- 变量

  - 变量是一个引用、Dart万物皆对象，变量存储的是对象的引用

  - ```dart
    声明变量
        int age = 18;   //明确类型
    	var age = 18; 或 dynamic age = 18;   //不明确类型 
    //  变量名大小写敏感的
    //  age和Age是两个不同的变量
    //  变量默认值是 null （ js中 变量默认值是underfined）
    //  Dart变量的值不会隐式装换 （null不会自动转成false)
    ```

  - ```dart
    常量
        const age = 18;
    	final age = 18;
    
    // const 和 final 的区别
    // const time = DateTime.now();   - 报错 - 无法将运行时的值分配给const 变量
    // final time = DateTime.now();   - 成功 - 可以将运行时的值分配给Final 变量
    ```

    

### 语法基础

```dart
main() {
  var num = 123;
  print("hello wrold _ my_dart _app $num");

  // 指定数据类型的方式定义变量
  String name = "张三";
  print(name);

  var age = "18";

  //动态的
  dynamic myname = "李四";
  print(myname);

  // 变量的默认值
  var defaultName;
  print(defaultName); // null

  var Age = 30;
  print(age);
  print(Age);

  // 常量
  const n1 = 1;
  // n1 = 6  //错误。常量一旦声明不能修改
  print(n1);

  final time = DateTime.now();
  print(time);
}
```





### Number类型

```dart
main() {
  // 声明数字类型的三个关键字
  // 整型、浮点型、数值型
  int a = 16;
  print(a);

  double b = 16.66;
  print(b);

  num c = 18.6;
  print(c);

  // 类型转换
  print(c.toString()); //转字符串
  print(3.8.toInt()); //转整型 - 向下取整 输出3
  print(3.141592653.round()); //四舍五入  输出3
  print(3.1415926.toStringAsFixed(4)); //四舍五入到小数点后4位 输出3.1415
  print(10.remainder(4)); // 取余 。 10 除以 4  输出2
  print(10.compareTo(12)); //比较 0：相等 、  1：大于 、 -1:小于
  print(12.gcd(18)); //返回最大公约数  输出 6

  // 科学计数法
  print(1000.toStringAsExponential(1)); //输出 1.0e+3
}
```



### String类型

```javascript
void main() {
  // 声明字符串
  var str = '1234';
  print(str);

  // 类型声明
  String a = "123";
  print(a);

  //三个引号
  String str3 = '''hello
  world''';
  print(str3);

  // 常见操作
  print(str + str3); //字符串拼接
  print("$str $str3"); //模板字符串

  // 字符串的分隔
  print((str3.split('')));

  // 字符串的裁切. 去除空格
  print("  abc   ".trim());

  // 判断字符串是否为空
  print(''.isEmpty); //true
  print(''.isNotEmpty); //false

  // 字符串替换
  print(str3.replaceAll('hello', "Hello Dart"));
  //支持正则替换
  print("h1k2d3n4n5n6".replaceAll(RegExp(r'\d+'), '-'));
  // 输出 h-k-d-n-n-n-  正则将数字替换成横线

  // 通过正则匹配手机号
  var isPhone = RegExp(r'^1\d{10}$'); //简单的号码匹配  1开头，后面10位数字
  print(isPhone.hasMatch('13333333333')); //true

  // 查找字符串
  print(str3.contains('e')); //是否包含字符 e // true

  // 定位字符串
  print(str3.indexOf('e')); //字符出现的位置   这里是1
}
```



### Boolean类型

```dart
void main() {
  // 声明布尔值
  bool flag1 = true;
  print(flag1);

  // 显示地进行判断
  var flag3;
  // dart 没有 三个等号。
  if (flag3 == null) {
    print("真");
  } else {
    print("假");
  }

  var n1 = 0 / 0; //NaN
  print(n1);
  print(n1.isNaN); //判断数值是否非数字

  //其他： 一些特殊的判断场景
  // isFinite  是否有限数字
  // isInFinite  是否无限
  // isNegative  是否负数
}
```



### List类型

```dart
void main() {
  // 字面量方式
  List list = ["a", "b", 12]; //不限定元素的数据类型
  List list1 = <int>[1, 2, 111]; //限定元素的数据类型是 int

  // 构造函数方式
  List list3 = new List.empty(growable: true); //不限制长度的空列表
  List list4 = new List.filled(3, 0); //声明指定长度的填充列表

  // 扩展操作符（...）
  var list5 = [1, 2, 3];
  var list6 = [0, ...list5];

  print([list, list1, list3, list4, list5, list6]);

  // 如果前面没值
  var l6;
  var l7 = [7, ...?l6]; //使用 ？ 号判断是否可以扩展
  print(l7);

  // 返回列表的长度
  print(l7.length);

  // 列表翻转
  print(l7.reversed); //直接翻转不是列表了
  print(l7.reversed.toList()); // 翻转后转成列表

  // 添加元素
  l7.add(1);
  // l7.addAll(iterable)   //iterable ： 可迭代的
  l7.addAll([4, 5, 6, 7]);
  print(l7);

  // 删除元素
  l7.remove(6); //删除数组中的6
  print(l7);

  l7.removeAt(1); //根据下标删除
  print(l7);

  // l7.insert(index, element)     插入单个元素， 其他元素往后挪
  // l7.insertAll(index, iterable)    插入多个元素， 其他元素往后挪

  // 清空
  l7.clear();
  print(l7);
    
  // 合并元素
  List words = ['hello', 'world'];
  print(words.join('-')); //输出 ： hello-world
}
```



### List遍历

```dart
void main() {
  var nums = [1, 2, 3];

  // for循环
  for (var i = 0; i < nums.length; i++) {
    print(nums[i]);
  }

  // forEach
  nums.forEach((element) {
    print(element);
  });

  // 用for循环实现 map 的逻辑
  var newNums = [];
  for (var i = 0; i < nums.length; i++) {
    newNums.add(nums[i] * nums[i]);
  }
  print(newNums);

  // map
  var newNumbs = nums.map((e) {
    return e * e;
  });

  print(newNumbs);
  print(newNumbs.toList());

  // where()  返回符合条件的元素
  // 判断数字是否是奇数
  bool isOdd(n) => n % 2 == 1;
  var oddNum = nums.where((element) => isOdd(element));
  print(oddNum.toList());

  // 使用any检测是否有奇数 （至少一个）
  print(nums.any(isOdd));

  // 使用every（） 判断是否都是奇数
  print(nums.every(isOdd));

  // 扩展
  var pairs = [
    [1, 2],
    [
      3,
      4,
    ]
  ];
  var flattened = pairs.expand((element) => element).toList();
  print(flattened);

// 将二维数组进行一次降维度
// 输出： [1,2,3,4]

// 折叠  - -对列表中的每一个元素，做一个累计操作
  // int result = nums.fold(initialValue, (previousValue, element) => null);
  print(nums); //[1,2,3]
  int result = nums.fold(2, (p, element) => p * element);
  // 2 * 里面的元素依次去乘以   ： 2 * （1*2*3) = 12
  print(result);
}

```



### Set类型

```dart

void main() {
  //字面量创建set
  var nums = <int>{1, 2, 3, 3}; //重复的元素会被 set 去掉
  print(nums); //{1, 2, 3}

// 构造函数
  var fruits = new Set();
  fruits.add("香蕉");
  fruits.add("苹果");
  fruits.add("橘子");
  print(fruits);
  print(fruits.toList()); // set转换成数组

  List myNums = [1, 2, 3, 3, 4];
  print(myNums.toSet()); //list转set会去掉重复的元素

  // 集合特有的操作
  var caocao = new Set();
  caocao.addAll(['张辽', "司马懿", "关羽"]);

  var liubei = new Set();
  liubei.addAll(['关羽', "张飞", "诸葛亮"]);

// 求交集
  print(caocao.intersection(liubei)); //{关羽}

  // 求并集
  print(caocao.union(liubei)); //{张辽, 司马懿, 关羽, 张飞, 诸葛亮}

  //求差集
  print(caocao.difference(liubei)); //{张辽, 司马懿}

  // 返回第一个元素
  print(caocao.first); //张辽
  // 返回最后一个
  print(caocao.last); //关羽

  // 集合不能通过下标取值
}

```



### 其他

```dart
void main() {
  // Map声明方式  - 字面量
  var person = {"name": "张三", "age": 20};
  print(person);

  // 构造函数
  // var p = new Map();
  var p = Map(); //新版的dart中 可以省略new 关键字
  p["name"] = "李四";
  p["age"] = 22;

  print(p);

  // 访问属性
  print(p["name"]);

  // 有时候 这个key 【"name"】 不存在
  print(p.containsKey("name")); //判断这个key存不存在   这里是存在的 --true
  print(p.containsKey("aaa")); //判断这个key存不存在   这里不存在的 --false

  // 赋值
  // 如果key不存在，我们才赋值（如果kkey已经存在，则不赋值）
  p.putIfAbsent('gender', () => "男"); //这里不存在gender, 可以赋值
  print(p);
  p.putIfAbsent('gender', () => "女"); //这里存在gender, 不会再去覆盖这个值
  print(p);

  // 获取map中所有的key
  print(p.keys);
  // 获取map中所有的value
  print(p.values);

  // 根据条件进行删除
  p.removeWhere((key, value) => key == "gender");
  print(p);
  print(p['name']);

  print('\u{1f596} \u6211'); //🖖 我  一些类似icon的字符
}
```

