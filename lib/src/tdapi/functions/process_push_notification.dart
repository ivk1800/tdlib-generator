import '../tdapi.dart';

/// Handles a push notification. Returns error with code 406 if the push
/// is not supported and connection to the server is required to fetch new
/// Can be called before authorization
/// Returns [Ok]
class ProcessPushNotification extends TdFunction {
  ProcessPushNotification({required this.payload});

  /// [payload] JSON-encoded push notification payload with all fields sent by
  /// server, and "google.sent_time" and "google.notification.sound" fields
  final String payload;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'processPushNotification';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'payload': this.payload, '@type': CONSTRUCTOR, '@extra': this.extra};
}
