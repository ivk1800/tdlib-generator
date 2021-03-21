part of '../tdapi.dart';

/// Checks whether the maximum number of owned public chats has been reached.
/// corresponding error if the limit was reached
class CheckCreatedPublicChatsLimit extends TdFunction {
  CheckCreatedPublicChatsLimit({required this.type});

  /// [type] Type of the public chats, for which to check the limit
  final PublicChatType type;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'checkCreatedPublicChatsLimit';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'type': this.type, '@type': CONSTRUCTOR, '@extra': this.extra};
}
