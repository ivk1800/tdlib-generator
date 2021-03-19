part of '../tdapi.dart';

/// Group.Functions
/// Finishes the file generation
class FinishFileGeneration extends TdFunction {
  FinishFileGeneration({required this.generationId, required this.error});

  /// generation_id The identifier of the generation process
  final int generationId;

  /// error If set, means that file generation has failed and should be terminated
  final TdError error;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'finishFileGeneration';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'generation_id': this.generationId,
        'error': this.error,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
