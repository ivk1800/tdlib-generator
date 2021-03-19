part of '../tdapi.dart';

/// Group.Functions
/// Returns full information about a basic group by its identifier
class GetBasicGroupFullInfo extends TdFunction {
  GetBasicGroupFullInfo({required this.basicGroupId});

  /// basic_group_id Basic group identifier
  final int basicGroupId;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getBasicGroupFullInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'basic_group_id': this.basicGroupId,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
