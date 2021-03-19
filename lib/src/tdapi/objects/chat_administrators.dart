part of '../tdapi.dart';

/// Group.Objects
/// Represents a list of chat administrators
class ChatAdministrators extends TdObject {
  ChatAdministrators({required this.administrators});

  /// administrators A list of chat administrators
  final List<ChatAdministrator> administrators;

  static const String CONSTRUCTOR = 'chatAdministrators';

  static ChatAdministrators? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatAdministrators(
        administrators: List<ChatAdministrator>.from(
            (json['administrators}'] ?? [])
                .map((item) =>
                    ChatAdministrator.fromJson(json['ChatAdministrator'])!)
                .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'administrators': this.administrators, '@type': CONSTRUCTOR};
}
