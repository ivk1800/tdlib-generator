part of '../tdapi.dart';

/// Group.Functions
/// Returns an existing chat corresponding to a known secret chat
class CreateSecretChat extends TdFunction {
  CreateSecretChat({required this.secretChatId});

  /// secret_chat_id Secret chat identifier
  final int secretChatId;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'createSecretChat';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'secret_chat_id': this.secretChatId,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
