import '../tdapi.dart';

/// Adds the specified data to data usage statistics. Can be called before
/// Returns [Ok]
class AddNetworkStatistics extends TdFunction {
  AddNetworkStatistics({required this.entry});

  /// [entry] The network statistics entry with the data to be added to
  final NetworkStatisticsEntry entry;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'addNetworkStatistics';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'entry': this.entry.toJson(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
