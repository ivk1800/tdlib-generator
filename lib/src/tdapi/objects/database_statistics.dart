import '../tdapi.dart';

/// Contains database statistics
class DatabaseStatistics extends TdObject {
  DatabaseStatistics({required this.statistics, this.extra});

  /// [statistics] Database statistics in an unspecified human-readable format
  final String statistics;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'databaseStatistics';

  static DatabaseStatistics? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DatabaseStatistics(
        statistics: json['statistics'], extra: json['@extra']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'statistics': this.statistics,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
