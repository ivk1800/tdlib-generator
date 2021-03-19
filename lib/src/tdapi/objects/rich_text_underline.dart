part of '../tdapi.dart';

/// Group.Objects
/// An underlined rich text
class RichTextUnderline extends RichText {
  RichTextUnderline({required this.text});

  /// text Text
  final RichText text;

  static const String CONSTRUCTOR = 'richTextUnderline';

  static RichTextUnderline? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextUnderline(text: RichText.fromJson(json['text'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'text': this.text, '@type': CONSTRUCTOR};
}
