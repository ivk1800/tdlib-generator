part of '../tdapi.dart';

/// The TTL (Time To Live) setting messages in a secret chat has been changed
class MessageChatSetTtl extends MessageContent {
  MessageChatSetTtl({required this.ttl});

  /// [ttl] New TTL
  final int ttl;

  static const String CONSTRUCTOR = 'messageChatSetTtl';

  static MessageChatSetTtl? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageChatSetTtl(ttl: json['ttl']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'ttl': this.ttl, '@type': CONSTRUCTOR};
}
