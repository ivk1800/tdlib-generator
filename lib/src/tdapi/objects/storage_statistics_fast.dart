part of '../tdapi.dart';

/// Group.Objects
/// Contains approximate storage usage statistics, excluding files of unknown file type
class StorageStatisticsFast extends TdObject {
  StorageStatisticsFast(
      {required this.filesSize,
      required this.fileCount,
      required this.databaseSize,
      required this.languagePackDatabaseSize,
      required this.logSize});

  /// files_size Approximate total size of files
  final int filesSize;

  /// file_count Approximate number of files
  final int fileCount;

  /// database_size Size of the database
  final int databaseSize;

  /// language_pack_database_size Size of the language pack database
  final int languagePackDatabaseSize;

  /// log_size Size of the TDLib internal log
  final int logSize;

  static const String CONSTRUCTOR = 'storageStatisticsFast';

  static StorageStatisticsFast? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return StorageStatisticsFast(
        filesSize: json['files_size'],
        fileCount: json['file_count'],
        databaseSize: json['database_size'],
        languagePackDatabaseSize: json['language_pack_database_size'],
        logSize: json['log_size']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'files_size': this.filesSize,
        'file_count': this.fileCount,
        'database_size': this.databaseSize,
        'language_pack_database_size': this.languagePackDatabaseSize,
        'log_size': this.logSize,
        '@type': CONSTRUCTOR
      };
}
