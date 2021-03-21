part of '../tdapi.dart';

/// Does nothing and ensures that the Update object is used; for testing only.
/// is an offline method. Can be called before authorization
class TestUseUpdate extends TdFunction {
  TestUseUpdate();

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'testUseUpdate';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
