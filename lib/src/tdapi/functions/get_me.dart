import '../tdapi.dart';

/// Returns the current user
/// Returns [User]
class GetMe extends TdFunction {
  GetMe();

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getMe';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
