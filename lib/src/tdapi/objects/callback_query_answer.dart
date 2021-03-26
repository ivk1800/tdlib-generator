import '../tdapi.dart';

/// Contains a bot's answer to a callback query
class CallbackQueryAnswer extends TdObject {
  CallbackQueryAnswer(
      {required this.text,
      required this.showAlert,
      required this.url,
      this.extra});

  /// [text] Text of the answer
  final String text;

  /// [showAlert] True, if an alert should be shown to the user instead of a
  /// notification
  final bool showAlert;

  /// [url] URL to be opened
  final String url;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'callbackQueryAnswer';

  static CallbackQueryAnswer? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CallbackQueryAnswer(
        text: json['text'],
        showAlert: json['show_alert'],
        url: json['url'],
        extra: json['@extra']);
  }

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'text': this.text,
        'show_alert': this.showAlert,
        'url': this.url,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
