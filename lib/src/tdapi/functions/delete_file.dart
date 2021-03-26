import '../tdapi.dart';

/// Deletes a file from the TDLib file cache
/// Returns [Ok]
class DeleteFile extends TdFunction {
  DeleteFile({required this.fileId, this.extra});

  /// [fileId] Identifier of the file to delete
  final int fileId;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'deleteFile';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'file_id': this.fileId, '@type': CONSTRUCTOR, '@extra': this.extra};
}
