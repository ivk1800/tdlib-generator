part of '../tdapi.dart';

/// Sends a simple network request to the Telegram servers; for testing only. Can be called before authorization
class TestNetwork extends TdFunction {
  TestNetwork();

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'testNetwork';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
