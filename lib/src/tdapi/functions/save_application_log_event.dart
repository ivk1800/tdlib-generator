part of '../tdapi.dart';

/// Group.Functions
/// Saves application log event on the server. Can be called before authorization
class SaveApplicationLogEvent extends TdFunction {
  SaveApplicationLogEvent(
      {required this.type, required this.chatId, required this.data});

  /// type Event type
  final String type;

  /// chat_id Optional chat identifier, associated with the event
  final int chatId;

  /// data The log event data
  final JsonValue data;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'saveApplicationLogEvent';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'type': this.type,
        'chat_id': this.chatId,
        'data': this.data,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
