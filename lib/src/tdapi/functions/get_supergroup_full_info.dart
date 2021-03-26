import '../tdapi.dart';

/// Returns full information about a supergroup or a channel by its
/// cached for up to 1 minute
/// Returns [SupergroupFullInfo]
class GetSupergroupFullInfo extends TdFunction {
  GetSupergroupFullInfo({required this.supergroupId, this.extra});

  /// [supergroupId] Supergroup or channel identifier
  final int supergroupId;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getSupergroupFullInfo';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'supergroup_id': this.supergroupId,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
