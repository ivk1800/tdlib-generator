part of '../tdapi.dart';

/// Group.Objects
/// A graph data
class StatisticalGraphData extends StatisticalGraph {
  StatisticalGraphData({required this.jsonData, required this.zoomToken});

  /// json_data Graph data in JSON format
  final String jsonData;

  /// zoom_token If non-empty, a token which can be used to receive a zoomed in graph
  final String zoomToken;

  static const String CONSTRUCTOR = 'statisticalGraphData';

  static StatisticalGraphData? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StatisticalGraphData(
        jsonData: json['json_data'], zoomToken: json['zoom_token']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'json_data': this.jsonData,
        'zoom_token': this.zoomToken,
        '@type': CONSTRUCTOR
      };
}
