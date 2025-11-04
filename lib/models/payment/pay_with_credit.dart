import 'package:dart_full_oop_project_2/models/payment/payment.dart';

class PayWithCredit extends Payment {
  @override
  void pay() {
    print("Paid with Credit");
  }
}
