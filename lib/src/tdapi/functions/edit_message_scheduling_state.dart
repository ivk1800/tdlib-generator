import '../tdapi.dart';

/// Edits the time when a scheduled message will be sent. Scheduling state of
/// messages in the same album or forwarded together with the message will be
/// changed
class EditMessageSchedulingState extends TdFunction {
  EditMessageSchedulingState(
      {required this.chatId,
      required this.messageId,
      required this.schedulingState});

  /// [chatId] The chat the message belongs to
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// [schedulingState] The new message scheduling state. Pass null to send the
  /// immediately
  final MessageSchedulingState schedulingState;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'editMessageSchedulingState';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        'scheduling_state': this.schedulingState,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
