import '../tdapi.dart';

/// Contains a list of messages
class Messages extends TdObject {
  Messages({required this.totalCount, this.messages, this.extra});

  /// [totalCount] Approximate total count of messages found
  final int totalCount;

  /// [messages] List of messages; messages may be null
  final List<Message>? messages;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'messages';

  static Messages? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Messages(
        totalCount: json['total_count'],
        messages: List<Message>.from((json['messages'] ?? [])
            .map((item) => Message.fromJson(item))
            .toList()),
        extra: json['@extra']);
  }

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'total_count': this.totalCount,
        'messages': messages?.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
