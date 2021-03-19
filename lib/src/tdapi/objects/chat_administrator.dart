part of '../tdapi.dart';

/// Group.Objects
/// Contains information about a chat administrator
class ChatAdministrator extends TdObject {
  ChatAdministrator(
      {required this.userId, required this.customTitle, required this.isOwner});

  /// user_id User identifier of the administrator
  final int userId;

  /// custom_title Custom title of the administrator
  final String customTitle;

  /// is_owner True, if the user is the owner of the chat
  final bool isOwner;

  static const String CONSTRUCTOR = 'chatAdministrator';

  static ChatAdministrator? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatAdministrator(
        userId: json['user_id'],
        customTitle: json['custom_title'],
        isOwner: json['is_owner']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'user_id': this.userId,
        'custom_title': this.customTitle,
        'is_owner': this.isOwner,
        '@type': CONSTRUCTOR
      };
}
