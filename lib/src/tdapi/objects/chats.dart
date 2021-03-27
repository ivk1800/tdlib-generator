import '../tdapi.dart';

/// Represents a list of chats
class Chats extends TdObject {
  Chats({required this.totalCount, required this.chatIds, this.extra});

  /// [totalCount] Approximate total count of chats found
  final int totalCount;

  /// [chatIds] List of chat identifiers
  final List<int> chatIds;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'chats';

  static Chats? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Chats(
        totalCount: json['total_count'],
        chatIds: List<int>.from(
            (json['chat_ids'] ?? []).map((item) => item).toList()),
        extra: json['@extra']);
  }

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'total_count': this.totalCount,
        'chat_ids': chatIds.map((item) => item).toList(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
