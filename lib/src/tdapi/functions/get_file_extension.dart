part of '../tdapi.dart';

/// Returns the extension of a file, guessed by its MIME type. Returns an
/// string on failure. Can be called synchronously
class GetFileExtension extends TdFunction {
  GetFileExtension({required this.mimeType});

  /// [mimeType] The MIME type of the file
  final String mimeType;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getFileExtension';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'mime_type': this.mimeType, '@type': CONSTRUCTOR, '@extra': this.extra};
}
