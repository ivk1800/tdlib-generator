part of '../tdapi.dart';

/// Group.Functions
/// Sets the result of a shipping query; for bots only
class AnswerShippingQuery extends TdFunction {
  AnswerShippingQuery(
      {required this.shippingQueryId,
      required this.shippingOptions,
      required this.errorMessage});

  /// shipping_query_id Identifier of the shipping query
  final int shippingQueryId;

  /// shipping_options Available shipping options
  final List<ShippingOption> shippingOptions;

  /// error_message An error message, empty on success
  final String errorMessage;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'answerShippingQuery';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'shipping_query_id': this.shippingQueryId,
        'shipping_options': this.shippingOptions,
        'error_message': this.errorMessage,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
