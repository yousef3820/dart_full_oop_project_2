import 'package:dart_full_oop_project_2/models/payment/payment.dart';

class PayWithCash implements Payment {
  @override
  void pay() {
    print("Paid using cash");
  }
}