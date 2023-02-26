import 'dart:convert';
import 'package:first/src/model/data.dart';
import 'package:first/src/model/product.dart';
import 'package:http/http.dart' as http;

String url = "https://63fb31a74e024687bf73c33b.mockapi.io/Product";
Future<void> getProductList() async {
  dynamic response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    for (Map<String, dynamic> data in jsonDecode(response.body.toString())) {
      AppData.productList.add(Product(
          name: data["name"],
          category: data["category"],
          price: data["price"],
          isliked: data["isliked"],
          description: data["description"],
          image: data["image"]));
    }
  }
}
