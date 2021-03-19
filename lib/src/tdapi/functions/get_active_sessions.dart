part of '../tdapi.dart';

/// Group.Functions
/// Returns all active sessions of the current user
class GetActiveSessions extends TdFunction {
  GetActiveSessions();

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getActiveSessions';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
