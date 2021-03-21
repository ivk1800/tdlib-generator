part of '../tdapi.dart';

/// Returns information about a secret chat by its identifier. This is an
/// request
class GetSecretChat extends TdFunction {
  GetSecretChat({required this.secretChatId});

  /// [secretChatId] Secret chat identifier
  final int secretChatId;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getSecretChat';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'secret_chat_id': this.secretChatId,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
