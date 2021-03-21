import '../tdapi.dart';

/// Resets all network data usage statistics to zero. Can be called before
class ResetNetworkStatistics extends TdFunction {
  ResetNetworkStatistics();

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'resetNetworkStatistics';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
