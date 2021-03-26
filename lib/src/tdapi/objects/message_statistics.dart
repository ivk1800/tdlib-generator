import '../tdapi.dart';

/// A detailed statistics about a message
class MessageStatistics extends TdObject {
  MessageStatistics({required this.messageInteractionGraph, this.extra});

  /// [messageInteractionGraph] A graph containing number of message views and
  final StatisticalGraph messageInteractionGraph;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'messageStatistics';

  static MessageStatistics? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageStatistics(
        messageInteractionGraph:
            StatisticalGraph.fromJson(json['message_interaction_graph'])!,
        extra: json['@extra']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'message_interaction_graph': this.messageInteractionGraph.toJson(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
