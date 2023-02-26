import 'package:first/src/model/category.dart';
import 'package:first/src/model/product.dart';

late Product prdSelected;

class AppData {
  static late List<dynamic> productList = [];
  // static List<dynamic> productList [
  //   Product(
  //       name: 'Nike Air Max 200',
  //       price: 240.00,
  //       isSelected: true,
  //       isliked: false,
  //       image: 'assets/shooe_tilt_1.png',
  //       description:
  //           "Clean lines, versatile and timeless—the people shoe returns with the Nike Air Max 90. Featuring the same iconic Waffle sole, stitched overlays and classic TPU accents you come to love, it lets you walk among the pantheon of Air. ßNothing as fly, nothing as comfortable, nothing as proven. The Nike Air Max 90 stays true to its OG running roots with the iconic Waffle sole, stitched overlays and classic TPU details. Classic colours celebrate your fresh look while Max Air cushioning adds comfort to the journey.",
  //       category: "Trending Now"),
  // Product(
  //     name: 'Nike Air Max 97',
  //     price: 220.00,
  //     isliked: false,
  //     image: 'assets/shoe_tilt_2.png',
  //     description:
  //         "Different Clean lines, versatile and timeless—the people shoe returns with the Nike Air Max 90. Featuring the same iconic Waffle sole, stitched overlays and classic TPU accents you come to love, it lets you walk among the pantheon of Air. ßNothing as fly, nothing as comfortable, nothing as proven. The Nike Air Max 90 stays true to its OG running roots with the iconic Waffle sole, stitched overlays and classic TPU details. Classic colours celebrate your fresh look while Max Air cushioning adds comfort to the journey.",
  //     category: "Trending Now"),
  //];
  static List<Product> cartList = [];
  static List<Category> categoryList = [
    Category(
        id: 1,
        name: "Sneakers",
        image: 'assets/shoe_thumb_2.png',
        isSelected: true),
    Category(id: 2, name: "Jacket", image: 'assets/jacket.png'),
    Category(id: 3, name: "Watch", image: 'assets/watch.png'),
    Category(id: 4, name: "Other", image: 'assets/jacket.png'),
  ];
  static List<String> showThumbnailList = [
    "assets/shoe_thumb_5.png",
    "assets/shoe_thumb_1.png",
    "assets/shoe_thumb_4.png",
    "assets/shoe_thumb_3.png",
  ];
}
