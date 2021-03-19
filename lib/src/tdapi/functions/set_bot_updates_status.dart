part of '../tdapi.dart';

/// Group.Functions
/// Informs the server about the number of pending bot updates if they haven't been processed for a long time; for bots only
class SetBotUpdatesStatus extends TdFunction {
  SetBotUpdatesStatus(
      {required this.pendingUpdateCount, required this.errorMessage});

  /// pending_update_count The number of pending updates
  final int pendingUpdateCount;

  /// error_message The last error message
  final String errorMessage;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'setBotUpdatesStatus';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'pending_update_count': this.pendingUpdateCount,
        'error_message': this.errorMessage,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
