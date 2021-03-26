import '../tdapi.dart';

/// Describes a statistical graph
abstract class StatisticalGraph extends TdObject {
  const StatisticalGraph({this.extra});

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'statisticalGraph';

  /// Inherited by:
  /// [StatisticalGraphData]
  /// [StatisticalGraphAsync]
  /// [StatisticalGraphError]
  static StatisticalGraph? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case StatisticalGraphData.CONSTRUCTOR:
        return StatisticalGraphData.fromJson(json);
      case StatisticalGraphAsync.CONSTRUCTOR:
        return StatisticalGraphAsync.fromJson(json);
      case StatisticalGraphError.CONSTRUCTOR:
        return StatisticalGraphError.fromJson(json);
      default:
        return null;
    }
  }

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
}
