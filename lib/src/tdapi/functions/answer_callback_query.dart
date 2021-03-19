part of '../tdapi.dart';

/// Group.Functions
/// Sets the result of a callback query; for bots only
class AnswerCallbackQuery extends TdFunction {
  AnswerCallbackQuery(
      {required this.callbackQueryId,
      required this.text,
      required this.showAlert,
      required this.url,
      required this.cacheTime});

  /// callback_query_id Identifier of the callback query
  final int callbackQueryId;

  /// text Text of the answer
  final String text;

  /// show_alert If true, an alert should be shown to the user instead of a toast notification
  final bool showAlert;

  /// url URL to be opened
  final String url;

  /// cache_time Time during which the result of the query can be cached, in seconds
  final int cacheTime;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'answerCallbackQuery';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'callback_query_id': this.callbackQueryId,
        'text': this.text,
        'show_alert': this.showAlert,
        'url': this.url,
        'cache_time': this.cacheTime,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
