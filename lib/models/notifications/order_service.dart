import 'package:dart_full_oop_project_2/models/notifications/notification_service.dart';
import 'package:dart_full_oop_project_2/models/payment/payment.dart';

class OrderService {
  final NotificationService notificationService;
  OrderService(this.notificationService);
  void processOrder(String name, Payment payment)
  {
    payment.pay();
    notificationService.sendNotification("order processed for $name");
  }
}