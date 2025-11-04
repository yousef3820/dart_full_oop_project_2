import 'package:dart_full_oop_project_2/models/discounts/discount.dart';

class NoDiscount implements Discount {
  @override
  String get name => "No discount";

  @override
  double getDiscount(double price) {
    return price;
  }
}
