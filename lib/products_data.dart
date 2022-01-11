
import 'package:http/http.dart' as http;
import 'package:quanlydctt/products.dart';


Future<List<Products>> fetchData() async {
  String url =
      "https://61da97584593510017aff5a2.mockapi.io/product";
  var client = http.Client();
  var response = await client.get(Uri.parse(url));
  List<Products> ls = [];
  if (response.statusCode == 200) {
    print('Tai du lieu thanh cong');
    var result = response.body;
    ls = productsFromJson(result);
    print(ls[0].name);
    return ls;
  } else {
    print('Tai du lieu that bai');
    throw Exception("Loi lay du lieu. Chi tiết: ${response.statusCode}");
  }
}