import '../tdapi.dart';

/// Removes a chat action bar without any other action
/// Returns [Ok]
class RemoveChatActionBar extends TdFunction {
  RemoveChatActionBar({required this.chatId, this.extra});

  /// [chatId] Chat identifier
  final int chatId;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'removeChatActionBar';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, '@type': CONSTRUCTOR, '@extra': this.extra};
}
