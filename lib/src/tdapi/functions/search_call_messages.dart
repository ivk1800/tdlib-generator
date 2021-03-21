import '../tdapi.dart';

/// Searches for call messages. Returns the results in reverse chronological
/// (i. e., in order of decreasing message_id). For optimal performance the
/// of returned messages is chosen by the library
class SearchCallMessages extends TdFunction {
  SearchCallMessages(
      {required this.fromMessageId,
      required this.limit,
      required this.onlyMissed});

  /// [fromMessageId] Identifier of the message from which to search; use 0 to
  /// results from the last message
  final int fromMessageId;

  /// [limit] The maximum number of messages to be returned; up to 100. Fewer
  /// may be returned than specified by the limit, even if the end of the
  /// history has not been reached
  final int limit;

  /// [onlyMissed] If true, returns only messages with missed calls
  final bool onlyMissed;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'searchCallMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'from_message_id': this.fromMessageId,
        'limit': this.limit,
        'only_missed': this.onlyMissed,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
