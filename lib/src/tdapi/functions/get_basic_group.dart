part of '../tdapi.dart';

/// Group.Functions
/// Returns information about a basic group by its identifier. This is an offline request if the current user is not a bot
class GetBasicGroup extends TdFunction {
  GetBasicGroup({required this.basicGroupId});

  /// basic_group_id Basic group identifier
  final int basicGroupId;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getBasicGroup';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'basic_group_id': this.basicGroupId,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
