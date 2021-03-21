import '../tdapi.dart';

/// A custom reason provided by the user
class ChatReportReasonCustom extends ChatReportReason {
  ChatReportReasonCustom({required this.text});

  /// [text] Report text
  final String text;

  static const String CONSTRUCTOR = 'chatReportReasonCustom';

  static ChatReportReasonCustom? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatReportReasonCustom(text: json['text']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'text': this.text, '@type': CONSTRUCTOR};
}
