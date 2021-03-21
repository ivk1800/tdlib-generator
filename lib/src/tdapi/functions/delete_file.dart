import '../tdapi.dart';

/// Deletes a file from the TDLib file cache
class DeleteFile extends TdFunction {
  DeleteFile({required this.fileId});

  /// [fileId] Identifier of the file to delete
  final int fileId;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'deleteFile';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'file_id': this.fileId, '@type': CONSTRUCTOR, '@extra': this.extra};
}
