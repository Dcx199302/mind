// import 'package:http/http.dart' as http; //需要在项目中安装

import 'dart:convert';

var http;
/**
   * 不使用async await
   */

// Future getIPAddress() {
//   final url = "https://httpbin.org/ip";
//   return http.get(url).then((res) {
//     print(res);
//   });
// }

// void main() {
//   getIPAddress().then((ip) {
//     print(ip);
//   }).catchError((err) {
//     print(err);
//   });
// }

/**
  * 使用async awiat
  */

Future getIPAddress() async {
  final url = "https://httpbin.org/ip";
  final response = await http.get(url);

  // 解析json
  String ip = jsonDecode(response.body)['origin'];
  return ip;
}

void main() async {
  try {
    final ip = await getIPAddress;
    print(ip);
  } catch (error) {
    print(error);
  }
}
