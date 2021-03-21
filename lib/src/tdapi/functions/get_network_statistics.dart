import '../tdapi.dart';

/// Returns network data usage statistics. Can be called before authorization
class GetNetworkStatistics extends TdFunction {
  GetNetworkStatistics({required this.onlyCurrent});

  /// [onlyCurrent] If true, returns only data for the current library launch
  final bool onlyCurrent;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getNetworkStatistics';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'only_current': this.onlyCurrent,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
