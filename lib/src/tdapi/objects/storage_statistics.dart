import '../tdapi.dart';

/// Contains the exact storage usage statistics split by chats and file type
class StorageStatistics extends TdObject {
  StorageStatistics(
      {required this.size,
      required this.count,
      required this.byChat,
      this.extra});

  /// [size] Total size of files
  final int size;

  /// [count] Total number of files
  final int count;

  /// [byChat] Statistics split by chats
  final List<StorageStatisticsByChat> byChat;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'storageStatistics';

  static StorageStatistics? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StorageStatistics(
        size: json['size'],
        count: json['count'],
        byChat: List<StorageStatisticsByChat>.from((json['by_chat'] ?? [])
            .map((item) => StorageStatisticsByChat.fromJson(item))
            .toList()),
        extra: json['@extra']);
  }

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'size': this.size,
        'count': this.count,
        'by_chat': byChat.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
