class Product {
  String name;
  String category;
  String description;
  String image;
  num price;
  bool isliked;
  bool isSelected;
  Product(
      {required this.name,
      required this.category,
      required this.price,
      required this.isliked,
      required this.description,
      this.isSelected = false,
      required this.image});
}
