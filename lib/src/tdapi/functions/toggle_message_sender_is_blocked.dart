part of '../tdapi.dart';

/// Changes the block state of a message sender. Currently, only users and
/// chats can be blocked
class ToggleMessageSenderIsBlocked extends TdFunction {
  ToggleMessageSenderIsBlocked({required this.sender, required this.isBlocked});

  /// [sender] Message Sender
  final MessageSender sender;

  /// [isBlocked] New value of is_blocked
  final bool isBlocked;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'toggleMessageSenderIsBlocked';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'sender': this.sender,
        'is_blocked': this.isBlocked,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
