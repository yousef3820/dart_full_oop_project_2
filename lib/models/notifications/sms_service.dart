import 'package:dart_full_oop_project_2/models/notifications/notification_service.dart';

class SmsService implements NotificationService {
  @override
  void sendNotification(String message) {
    print("SMS notification sent: $message");
  }
}