import '../tdapi.dart';

/// Returns information about the current temporary password
class GetTemporaryPasswordState extends TdFunction {
  GetTemporaryPasswordState();

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getTemporaryPasswordState';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
