import '../tdapi.dart';

/// Represents the result of an ImportContacts request
class ImportedContacts extends TdObject {
  ImportedContacts(
      {required this.userIds, required this.importerCount, this.extra});

  /// [userIds] User identifiers of the imported contacts in the same order as
  /// were specified in the request; 0 if the contact is not yet a registered
  final List<int> userIds;

  /// [importerCount] The number of users that imported the corresponding
  /// 0 for already registered users or if unavailable
  final List<int> importerCount;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'importedContacts';

  static ImportedContacts? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ImportedContacts(
        userIds: List<int>.from(
            (json['user_ids'] ?? []).map((item) => json['int']).toList()),
        importerCount: List<int>.from(
            (json['importer_count'] ?? []).map((item) => json['int']).toList()),
        extra: json['@extra']);
  }

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'user_ids': userIds.map((item) => item).toList(),
        'importer_count': importerCount.map((item) => item).toList(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
