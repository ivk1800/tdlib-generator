import '../tdapi.dart';

/// Changes the photo of a chat. Supported only for basic groups, supergroups
/// channels. Requires can_change_info rights
/// Returns [Ok]
class SetChatPhoto extends TdFunction {
  SetChatPhoto({required this.chatId, required this.photo});

  /// [chatId] Chat identifier
  final int chatId;

  /// [photo] New chat photo. Pass null to delete the chat photo
  final InputChatPhoto photo;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'setChatPhoto';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'photo': this.photo.toJson(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
