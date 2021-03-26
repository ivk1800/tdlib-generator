import '../tdapi.dart';

/// Contains a part of a file
class FilePart extends TdObject {
  FilePart({required this.data, this.extra});

  /// [data] File bytes
  final String data;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'filePart';

  static FilePart? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FilePart(data: json['data'], extra: json['@extra']);
  }

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'data': this.data, '@type': CONSTRUCTOR, '@extra': this.extra};
}
