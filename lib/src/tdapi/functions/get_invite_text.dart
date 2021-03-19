part of '../tdapi.dart';

/// Group.Functions
/// Returns the default text for invitation messages to be used as a placeholder when the current user invites friends to Telegram
class GetInviteText extends TdFunction {
  GetInviteText();

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getInviteText';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
