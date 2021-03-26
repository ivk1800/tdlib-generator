import '../tdapi.dart';

/// Returns full information about a basic group by its identifier
/// Returns [BasicGroupFullInfo]
class GetBasicGroupFullInfo extends TdFunction {
  GetBasicGroupFullInfo({required this.basicGroupId, this.extra});

  /// [basicGroupId] Basic group identifier
  final int basicGroupId;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getBasicGroupFullInfo';

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
