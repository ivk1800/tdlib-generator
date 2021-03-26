import '../tdapi.dart';

/// Adds multiple new members to a chat. Currently this method is only
/// for supergroups and channels. This method can't be used to join a chat.
/// can't be added to a channel if it has more than 200 members. Members will
/// be added until the chat state has been synchronized with the server
/// Returns [Ok]
class AddChatMembers extends TdFunction {
  AddChatMembers({required this.chatId, required this.userIds});

  /// [chatId] Chat identifier
  final int chatId;

  /// [userIds] Identifiers of the users to be added to the chat. The maximum
  /// of added users is 20 for supergroups and 100 for channels
  final List<int> userIds;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'addChatMembers';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'user_ids': userIds.map((item) => item).toList(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
