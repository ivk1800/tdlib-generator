import '../tdapi.dart';

/// Creates a new secret chat. Returns the newly created chat
/// Returns [Chat]
class CreateNewSecretChat extends TdFunction {
  CreateNewSecretChat({required this.userId, this.extra});

  /// [userId] Identifier of the target user
  final int userId;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'createNewSecretChat';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'user_id': this.userId, '@type': CONSTRUCTOR, '@extra': this.extra};
}
