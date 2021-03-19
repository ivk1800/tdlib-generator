part of '../tdapi.dart';

/// Group.Functions
/// Forces an updates.getDifference call to the Telegram servers; for testing only
class TestGetDifference extends TdFunction {
  TestGetDifference();

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'testGetDifference';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
