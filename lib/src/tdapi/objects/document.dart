part of '../tdapi.dart';

/// Group.Objects
/// Describes a document of any type
class Document extends TdObject {
  Document(
      {required this.fileName,
      required this.mimeType,
      Minithumbnail? this.minithumbnail,
      Thumbnail? this.thumbnail,
      required this.document});

  /// file_name Original name of the file; as defined by the sender
  final String fileName;

  /// mime_type MIME type of the file; as defined by the sender
  final String mimeType;

  /// minithumbnail Document minithumbnail; may be null
  final Minithumbnail? minithumbnail;

  /// thumbnail Document thumbnail in JPEG or PNG format (PNG will be used only for background patterns); as defined by the sender; may be null
  final Thumbnail? thumbnail;

  /// document File containing the document
  final File document;

  static const String CONSTRUCTOR = 'document';

  static Document? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Document(
        fileName: json['file_name'],
        mimeType: json['mime_type'],
        minithumbnail: Minithumbnail.fromJson(json['minithumbnail']),
        thumbnail: Thumbnail.fromJson(json['thumbnail']),
        document: File.fromJson(json['document'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'file_name': this.fileName,
        'mime_type': this.mimeType,
        'minithumbnail': this.minithumbnail,
        'thumbnail': this.thumbnail,
        'document': this.document,
        '@type': CONSTRUCTOR
      };
}
