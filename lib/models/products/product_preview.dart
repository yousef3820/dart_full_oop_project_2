import 'package:dart_full_oop_project_2/models/products/product.dart';

class ProductPreview {
  void showAllProducts(List<Product> products)
  {
    for(var product in products)
    {
      print(product.name);
    }
  }
}