import '../tdapi.dart';

/// Changes the period of inactivity after which the account of the current
/// will automatically be deleted
/// Returns [Ok]
class SetAccountTtl extends TdFunction {
  SetAccountTtl({required this.ttl});

  /// [ttl] New account TTL
  final AccountTtl ttl;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'setAccountTtl';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'ttl': this.ttl.toJson(), '@type': CONSTRUCTOR, '@extra': this.extra};
}
