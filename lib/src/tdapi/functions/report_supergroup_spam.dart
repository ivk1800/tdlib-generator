part of '../tdapi.dart';

/// Group.Functions
/// Reports some messages from a user in a supergroup as spam; requires administrator rights in the supergroup
class ReportSupergroupSpam extends TdFunction {
  ReportSupergroupSpam(
      {required this.supergroupId,
      required this.userId,
      required this.messageIds});

  /// supergroup_id Supergroup identifier
  final int supergroupId;

  /// user_id User identifier
  final int userId;

  /// message_ids Identifiers of messages sent in the supergroup by the user. This list must be non-empty
  final List<int> messageIds;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'reportSupergroupSpam';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'supergroup_id': this.supergroupId,
        'user_id': this.userId,
        'message_ids': this.messageIds,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
