import 'package:dart_full_oop_project_2/models/discounts/discount.dart';

class ProductDiscount {
  double getTotalPrice(double price, Discount discount) {
    double finalPrice = discount.getDiscount(price);
    print(
      "the discount ${discount.name} is applied to the product and the final price is = $finalPrice",
    );
    return finalPrice;
  }
}
