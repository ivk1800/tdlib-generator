import '../tdapi.dart';

/// Returns information about a file by its remote ID; this is an offline
/// Can be used to register a URL as a file for further uploading, or sending
/// a message. Even the request succeeds, the file can be used only if it is
/// accessible to the user.. For example, if the file is from a message, then
/// message must be not deleted and accessible to the user. If the file
/// is disabled, then the corresponding object with the file must be preloaded
/// the application
/// Returns [File]
class GetRemoteFile extends TdFunction {
  GetRemoteFile(
      {required this.remoteFileId, required this.fileType, this.extra});

  /// [remoteFileId] Remote identifier of the file to get
  final String remoteFileId;

  /// [fileType] File type, if known
  final FileType fileType;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getRemoteFile';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'remote_file_id': this.remoteFileId,
        'file_type': this.fileType.toJson(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
