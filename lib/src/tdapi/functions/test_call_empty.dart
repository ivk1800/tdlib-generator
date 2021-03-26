import '../tdapi.dart';

/// Does nothing; for testing only. This is an offline method. Can be called
/// authorization
/// Returns [Ok]
class TestCallEmpty extends TdFunction {
  TestCallEmpty({this.extra});

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'testCallEmpty';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
