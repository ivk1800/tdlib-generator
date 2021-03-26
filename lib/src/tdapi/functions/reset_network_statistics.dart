import '../tdapi.dart';

/// Resets all network data usage statistics to zero. Can be called before
/// Returns [Ok]
class ResetNetworkStatistics extends TdFunction {
  ResetNetworkStatistics({this.extra});

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'resetNetworkStatistics';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
