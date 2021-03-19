part of '../tdapi.dart';

/// Group.Objects
/// The message failed to be sent
class MessageSendingStateFailed extends MessageSendingState {
  MessageSendingStateFailed(
      {required this.errorCode,
      required this.errorMessage,
      required this.canRetry,
      required this.retryAfter});

  /// error_code An error code; 0 if unknown
  final int errorCode;

  /// error_message Error message
  final String errorMessage;

  /// can_retry True, if the message can be re-sent
  final bool canRetry;

  /// retry_after Time left before the message can be re-sent, in seconds. No update is sent when this field changes
  final double retryAfter;

  static const String CONSTRUCTOR = 'messageSendingStateFailed';

  static MessageSendingStateFailed? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageSendingStateFailed(
        errorCode: json['error_code'],
        errorMessage: json['error_message'],
        canRetry: json['can_retry'],
        retryAfter: json['retry_after']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'error_code': this.errorCode,
        'error_message': this.errorMessage,
        'can_retry': this.canRetry,
        'retry_after': this.retryAfter,
        '@type': CONSTRUCTOR
      };
}
