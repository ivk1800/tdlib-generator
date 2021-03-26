import '../tdapi.dart';

/// Returns storage usage statistics. Can be called before authorization
/// Returns [StorageStatistics]
class GetStorageStatistics extends TdFunction {
  GetStorageStatistics({required this.chatLimit});

  /// [chatLimit] The maximum number of chats with the largest storage usage for
  /// separate statistics should be returned. All other chats will be grouped in
  /// with chat_id == 0. If the chat info database is not used, the chat_limit
  /// ignored and is always set to 0
  final int chatLimit;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getStorageStatistics';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_limit': this.chatLimit,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
