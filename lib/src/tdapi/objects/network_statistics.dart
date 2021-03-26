import '../tdapi.dart';

/// A full list of available network statistic entries
class NetworkStatistics extends TdObject {
  NetworkStatistics(
      {required this.sinceDate, required this.entries, this.extra});

  /// [sinceDate] Point in time (Unix timestamp) from which the statistics are
  ///
  final int sinceDate;

  /// [entries] Network statistics entries
  final List<NetworkStatisticsEntry> entries;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'networkStatistics';

  static NetworkStatistics? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return NetworkStatistics(
        sinceDate: json['since_date'],
        entries: List<NetworkStatisticsEntry>.from((json['entries'] ?? [])
            .map((item) => NetworkStatisticsEntry.fromJson(item))
            .toList()),
        extra: json['@extra']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'since_date': this.sinceDate,
        'entries': entries.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
