import '../tdapi.dart';

/// Sends a call rating
/// Returns [Ok]
class SendCallRating extends TdFunction {
  SendCallRating(
      {required this.callId,
      required this.rating,
      required this.comment,
      required this.problems,
      this.extra});

  /// [callId] Call identifier
  final int callId;

  /// [rating] Call rating; 1-5
  final int rating;

  /// [comment] An optional user comment if the rating is less than 5
  final String comment;

  /// [problems] List of the exact types of problems with the call, specified by
  /// user
  final List<CallProblem> problems;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'sendCallRating';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'call_id': this.callId,
        'rating': this.rating,
        'comment': this.comment,
        'problems': problems.map((item) => item.toJson()).toList(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
