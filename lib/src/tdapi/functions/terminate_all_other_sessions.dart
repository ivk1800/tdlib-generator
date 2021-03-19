part of '../tdapi.dart';

/// Group.Functions
/// Terminates all other sessions of the current user
class TerminateAllOtherSessions extends TdFunction {
  TerminateAllOtherSessions();

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'terminateAllOtherSessions';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
