import 'package:dart_full_oop_project_2/models/products/product.dart';

class ProductStorage {
  List<Product> _products = [];
  void addProduct(Product product) {
    _products.add(product);
  }
  List<Product> getAllProducts() => _products;
  Product? getProduct(String id)
  {
    return _products.firstWhere((product)=> product.id == id);
  }
}