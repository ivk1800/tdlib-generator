part of '../tdapi.dart';

/// Toggles whether the message history of a supergroup is available to new members; requires can_change_info rights
class ToggleSupergroupIsAllHistoryAvailable extends TdFunction {
  ToggleSupergroupIsAllHistoryAvailable(
      {required this.supergroupId, required this.isAllHistoryAvailable});

  /// [supergroupId] The identifier of the supergroup
  final int supergroupId;

  /// [isAllHistoryAvailable] The new value of is_all_history_available
  final bool isAllHistoryAvailable;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'toggleSupergroupIsAllHistoryAvailable';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'supergroup_id': this.supergroupId,
        'is_all_history_available': this.isAllHistoryAvailable,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
