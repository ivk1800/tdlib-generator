import '../tdapi.dart';

/// Changes information about a chat. Available for basic groups, supergroups,
/// channels. Requires can_change_info rights
/// Returns [Ok]
class SetChatDescription extends TdFunction {
  SetChatDescription({required this.chatId, required this.description});

  /// [chatId] Identifier of the chat
  final int chatId;

  /// param_[description] New chat description; 0-255 characters
  final String description;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'setChatDescription';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'description': this.description,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
