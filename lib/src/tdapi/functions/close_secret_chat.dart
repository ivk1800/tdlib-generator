part of '../tdapi.dart';

/// Group.Functions
/// Closes a secret chat, effectively transferring its state to secretChatStateClosed
class CloseSecretChat extends TdFunction {
  CloseSecretChat({required this.secretChatId});

  /// secret_chat_id Secret chat identifier
  final int secretChatId;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'closeSecretChat';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'secret_chat_id': this.secretChatId,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
