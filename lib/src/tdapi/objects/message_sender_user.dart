part of '../tdapi.dart';

/// Group.Objects
/// The message was sent by a known user
class MessageSenderUser extends MessageSender {
  MessageSenderUser({required this.userId});

  /// user_id Identifier of the user that sent the message
  final int userId;

  static const String CONSTRUCTOR = 'messageSenderUser';

  static MessageSenderUser? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageSenderUser(userId: json['user_id']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'user_id': this.userId, '@type': CONSTRUCTOR};
}
