import '../tdapi.dart';

/// Removes users from the contact list
/// Returns [Ok]
class RemoveContacts extends TdFunction {
  RemoveContacts({required this.userIds, this.extra});

  /// [userIds] Identifiers of users to be deleted
  final List<int> userIds;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'removeContacts';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'user_ids': userIds.map((item) => item).toList(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
