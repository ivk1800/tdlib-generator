part of '../tdapi.dart';

/// Group.Functions
/// Sets the result of a pre-checkout query; for bots only
class AnswerPreCheckoutQuery extends TdFunction {
  AnswerPreCheckoutQuery(
      {required this.preCheckoutQueryId, required this.errorMessage});

  /// pre_checkout_query_id Identifier of the pre-checkout query
  final int preCheckoutQueryId;

  /// error_message An error message, empty on success
  final String errorMessage;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'answerPreCheckoutQuery';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'pre_checkout_query_id': this.preCheckoutQueryId,
        'error_message': this.errorMessage,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
