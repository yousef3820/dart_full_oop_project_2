
import 'package:dart_full_oop_project_2/models/discounts/no_discount.dart';
import 'package:dart_full_oop_project_2/models/discounts/product_discount.dart';
import 'package:dart_full_oop_project_2/models/notifications/email_service.dart';
import 'package:dart_full_oop_project_2/models/notifications/order_service.dart';
import 'package:dart_full_oop_project_2/models/payment/pay_with_cash.dart';
import 'package:dart_full_oop_project_2/models/productManager/product_manager.dart';
import 'package:dart_full_oop_project_2/models/products/product.dart';
import 'package:dart_full_oop_project_2/models/products/product_preview.dart';
import 'package:dart_full_oop_project_2/models/products/product_storage.dart';

void main(List<String> arguments) {
  ProductStorage productStorage = ProductStorage();
  ProductManager productManager = ProductManager(productStorage: productStorage);
  OrderService orderService = OrderService(EmailService());
  ProductDiscount productDiscount = ProductDiscount();
  ProductPreview productPreview = ProductPreview();
  Product laptop =   Product(id:"1", name: "Laptop", price:  1500 , stock: 3);
  Product smartphone =  Product(id:"2", name:  "Smartphone", price:  800 , stock: 5);
  Product tablet =   Product(id:"3", name: "Tablet", price:  400 , stock: 10);
  print("////////////////////////////////////////////");
  productStorage.addProduct(laptop);
  productStorage.addProduct(smartphone);
  productStorage.addProduct(tablet);
  productPreview.showAllProducts(productStorage.getAllProducts());
  print("////////////////////////////////////////");
  productManager.updatePrice("1", 2600);
  print(laptop.price);
  productManager.updateStock("2", 3);
  print(smartphone.stock);
  print("////////////////////////////////////////////");
  orderService.processOrder(laptop.name, PayWithCash());
  print("//////////////////////////////////////////////");
  productDiscount.getTotalPrice(laptop.price, NoDiscount());
}
