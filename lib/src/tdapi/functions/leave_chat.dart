import '../tdapi.dart';

/// Removes the current user from chat members. Private and secret chats can't
/// left using this method
/// Returns [Ok]
class LeaveChat extends TdFunction {
  LeaveChat({required this.chatId});

  /// [chatId] Chat identifier
  final int chatId;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'leaveChat';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_id': this.chatId, '@type': CONSTRUCTOR, '@extra': this.extra};
}
