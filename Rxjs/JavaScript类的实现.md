# 一、Javascript类的实现

- Javascript 从诞生之初就具备面对对象编程的特性，面对对象事件有“类（class）”的概念，但是Javascript 中类是通过函数实现的。

例如：

```javascript
/**
 * 实现一个“程序员”的类
 * Programmer : 程序员
 * Js中类是基于函数实现的
 * ES6的类(class)关键字： 只是语法糖。本质还是利用 prototype链实现面对对象的机制
 */
function Programmer(){}  //程序员类

// 直接赋值给Programmer
Programmer.create = function(){
    console.log("Programmer.create创建");
    return new Programmer();
}

// 赋值给Programmer.prototype
// prototype 是Js的一个很特殊的属性，用于实现继承关系 - 原型-原型链
Programmer.prototype.code = function(){
    console.log("Programmer.code 敲代码");
    return "hello world"
}
```