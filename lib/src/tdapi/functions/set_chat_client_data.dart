part of '../tdapi.dart';

/// Group.Functions
/// Changes application-specific data associated with a chat
class SetChatClientData extends TdFunction {
  SetChatClientData({required this.chatId, required this.clientData});

  /// chat_id Chat identifier
  final int chatId;

  /// client_data New value of client_data
  final String clientData;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'setChatClientData';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'client_data': this.clientData,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
