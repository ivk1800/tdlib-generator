import '../tdapi.dart';

/// Returns information about a basic group by its identifier. This is an
/// request if the current user is not a bot
/// Returns [BasicGroup]
class GetBasicGroup extends TdFunction {
  GetBasicGroup({required this.basicGroupId, this.extra});

  /// [basicGroupId] Basic group identifier
  final int basicGroupId;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getBasicGroup';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'basic_group_id': this.basicGroupId,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
