import 'package:dart_full_oop_project_2/models/discounts/discount.dart';

class FiftyPercentDiscount implements Discount {
  @override
  double getDiscount(double price) {
    return price * 0.5;
  }

  @override
  String get name => "50% Discount";

}