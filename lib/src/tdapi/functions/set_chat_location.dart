part of '../tdapi.dart';

/// Changes the location of a chat. Available only for some location-based
/// use supergroupFullInfo.can_set_location to check whether the method is
/// to use
class SetChatLocation extends TdFunction {
  SetChatLocation({required this.chatId, required this.location});

  /// [chatId] Chat identifier
  final int chatId;

  /// [location] New location for the chat; must be valid and not null
  final ChatLocation location;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'setChatLocation';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'location': this.location,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
