import '../tdapi.dart';

/// Terminates all other sessions of the current user
/// Returns [Ok]
class TerminateAllOtherSessions extends TdFunction {
  TerminateAllOtherSessions({this.extra});

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'terminateAllOtherSessions';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
