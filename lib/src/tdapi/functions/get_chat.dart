import '../tdapi.dart';

/// Returns information about a chat by its identifier, this is an offline
/// if the current user is not a bot
/// Returns [Chat]
class GetChat extends TdFunction {
  GetChat({required this.chatId});

  /// [chatId] Chat identifier
  final int chatId;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getChat';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, '@type': CONSTRUCTOR, '@extra': this.extra};
}
