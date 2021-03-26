import '../tdapi.dart';

/// Reports some messages from a user in a supergroup as spam; requires
/// rights in the supergroup
/// Returns [Ok]
class ReportSupergroupSpam extends TdFunction {
  ReportSupergroupSpam(
      {required this.supergroupId,
      required this.userId,
      required this.messageIds});

  /// [supergroupId] Supergroup identifier
  final int supergroupId;

  /// [userId] User identifier
  final int userId;

  /// [messageIds] Identifiers of messages sent in the supergroup by the user.
  /// list must be non-empty
  final List<int> messageIds;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'reportSupergroupSpam';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'supergroup_id': this.supergroupId,
        'user_id': this.userId,
        'message_ids': messageIds.map((item) => item).toList(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
