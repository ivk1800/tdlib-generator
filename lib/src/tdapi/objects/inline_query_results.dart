import '../tdapi.dart';

/// Represents the results of the inline query. Use
/// to send the result of the query
class InlineQueryResults extends TdObject {
  InlineQueryResults(
      {required this.inlineQueryId,
      required this.nextOffset,
      required this.results,
      required this.switchPmText,
      required this.switchPmParameter,
      this.extra});

  /// [inlineQueryId] Unique identifier of the inline query
  final int inlineQueryId;

  /// [nextOffset] The offset for the next request. If empty, there are no more
  ///
  final String nextOffset;

  /// [results] Results of the query
  final List<InlineQueryResult> results;

  /// [switchPmText] If non-empty, this text should be shown on the button,
  /// opens a private chat with the bot and sends the bot a start message with
  /// switch_pm_parameter
  final String switchPmText;

  /// [switchPmParameter] Parameter for the bot start message
  final String switchPmParameter;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'inlineQueryResults';

  static InlineQueryResults? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InlineQueryResults(
        inlineQueryId: int.tryParse(json['inline_query_id']) ?? 0,
        nextOffset: json['next_offset'],
        results: List<InlineQueryResult>.from((json['results}'] ?? [])
            .map((item) => InlineQueryResult.fromJson(item))
            .toList()),
        switchPmText: json['switch_pm_text'],
        switchPmParameter: json['switch_pm_parameter'],
        extra: json['@extra']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'inline_query_id': this.inlineQueryId,
        'next_offset': this.nextOffset,
        'results': results.map((item) => item.toJson()).toList(),
        'switch_pm_text': this.switchPmText,
        'switch_pm_parameter': this.switchPmParameter,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
