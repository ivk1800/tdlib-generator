import '../tdapi.dart';

/// Removes users from the contact list
class RemoveContacts extends TdFunction {
  RemoveContacts({required this.userIds});

  /// [userIds] Identifiers of users to be deleted
  final List<int> userIds;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'removeContacts';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'user_ids': this.userIds, '@type': CONSTRUCTOR, '@extra': this.extra};
}
