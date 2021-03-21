import '../tdapi.dart';

/// Represents a list of chat administrators
class ChatAdministrators extends TdObject {
  ChatAdministrators({required this.administrators, this.extra});

  /// [administrators] A list of chat administrators
  final List<ChatAdministrator> administrators;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'chatAdministrators';

  static ChatAdministrators? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatAdministrators(
        administrators: List<ChatAdministrator>.from(
            (json['administrators}'] ?? [])
                .map((item) => ChatAdministrator.fromJson(item))
                .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'administrators': this.administrators,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
