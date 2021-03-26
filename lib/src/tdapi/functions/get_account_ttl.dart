import '../tdapi.dart';

/// Returns the period of inactivity after which the account of the current
/// will automatically be deleted
/// Returns [AccountTtl]
class GetAccountTtl extends TdFunction {
  GetAccountTtl({this.extra});

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getAccountTtl';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
