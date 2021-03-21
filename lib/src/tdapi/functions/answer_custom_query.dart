part of '../tdapi.dart';

/// Answers a custom query; for bots only
class AnswerCustomQuery extends TdFunction {
  AnswerCustomQuery({required this.customQueryId, required this.data});

  /// [customQueryId] Identifier of a custom query
  final int customQueryId;

  /// [data] JSON-serialized answer to the query
  final String data;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'answerCustomQuery';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'custom_query_id': this.customQueryId,
        'data': this.data,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
