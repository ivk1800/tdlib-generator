import '../tdapi.dart';

/// Returns information about the current temporary password
/// Returns [TemporaryPasswordState]
class GetTemporaryPasswordState extends TdFunction {
  GetTemporaryPasswordState({this.extra});

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getTemporaryPasswordState';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
