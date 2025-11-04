import 'package:dart_full_oop_project_2/models/discounts/discount.dart';

class TenPercentDiscount implements Discount {
  @override
  String get name => "10% Discount";

  @override
  double getDiscount(double price) {
    return price * 0.9;
  }
}
