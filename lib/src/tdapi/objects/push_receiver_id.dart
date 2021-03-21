import '../tdapi.dart';

/// Contains a globally unique push receiver identifier, which can be used to
/// which account has received a push notification
class PushReceiverId extends TdObject {
  PushReceiverId({required this.id, this.extra});

  /// [id] The globally unique identifier of push notification subscription
  final int id;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'pushReceiverId';

  static PushReceiverId? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PushReceiverId(
        id: int.tryParse(json['id']) ?? 0, extra: json['@extra']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'id': this.id, '@type': CONSTRUCTOR, '@extra': this.extra};
}
