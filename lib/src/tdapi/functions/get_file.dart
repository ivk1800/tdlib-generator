import '../tdapi.dart';

/// Returns information about a file; this is an offline request
class GetFile extends TdFunction {
  GetFile({required this.fileId});

  /// [fileId] Identifier of the file to get
  final int fileId;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getFile';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'file_id': this.fileId, '@type': CONSTRUCTOR, '@extra': this.extra};
}
