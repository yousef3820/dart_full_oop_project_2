import 'package:dart_full_oop_project_2/models/productManager/price_manager.dart';
import 'package:dart_full_oop_project_2/models/productManager/stock_manger.dart';
import 'package:dart_full_oop_project_2/models/products/product.dart';
import 'package:dart_full_oop_project_2/models/products/product_storage.dart';

class ProductManager implements StockManger , PriceManager {
  final ProductStorage productStorage;

  ProductManager({required this.productStorage});

  @override
  void updatePrice(String productId, double newPrice) {
    final Product? product = productStorage.getProduct(productId);
    if(product !=null)
    {
      product.price = newPrice;
    }
  }

  @override
  void updateStock(String productId, int newStock) {
    final Product? product = productStorage.getProduct(productId);
    if(product !=null)
    {
      product.stock = newStock;
    }
  }

}