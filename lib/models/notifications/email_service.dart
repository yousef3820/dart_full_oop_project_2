import 'package:dart_full_oop_project_2/models/notifications/notification_service.dart';

class EmailService implements NotificationService {
  @override
  void sendNotification(String message) {
    print("Email notification sent: $message");
  }

}