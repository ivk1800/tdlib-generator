import '../tdapi.dart';

/// Contains the group call identifier
class GroupCallId extends TdObject {
  GroupCallId({required this.id, this.extra});

  /// [id] Group call identifier
  final int id;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'groupCallId';

  static GroupCallId? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return GroupCallId(id: json['id'], extra: json['@extra']);
  }

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'id': this.id, '@type': CONSTRUCTOR, '@extra': this.extra};
}
