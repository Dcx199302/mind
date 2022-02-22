/**
 * 不使用泛型
 */
// abstract class ObjectCache {
//   getBykey(String key);
//   void setByKey(String key, Object value);
// }

// abstract class StringCache {
//   getBykey(String key);
//   void setByKey(String key, String value);
// }

/**
 * 使用泛型接口
 * */
abstract class Cache<T> {
  getBykey(T key);
  void setByKey(String key, T value);
}

// 文件缓存
class FileCache<T> implements Cache<T> {
  @override
  getBykey(T key) {
    return null;
  }

  @override
  void setByKey(String key, T value) {
    print("文件缓存：key = ${key} value =${value}");
  }
}

// 内存缓存
class MemoryCache<T> implements Cache<T> {
  @override
  getBykey(T key) {
    return null;
  }

  @override
  void setByKey(String key, T value) {
    print("内存缓存：key = ${key} value =${value}");
  }
}

void main() {
  // 文件缓存 -- 字符串
  FileCache fc = new FileCache<String>();
  fc.setByKey("foo", "bar");
  // fc.setByKey("fo", 2);  -- 限定了字符串类型、这里会报错

  // 文件缓存 -- 缓存Map
  FileCache fcm = new FileCache<Map>();
  fcm.setByKey("index", {"name": "张三丰", "age": 218});

  // 内存缓存 - 缓存字符串
  MemoryCache mc = new MemoryCache<String>();
  mc.setByKey("foo", 'bar');

  // 内存缓存 - 缓存集合
  MemoryCache mcc = new MemoryCache<Set>();
  mcc.setByKey("home", {1, 2, 3});
}
