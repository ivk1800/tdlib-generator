import '../tdapi.dart';

/// Returns information about a supergroup or a channel by its identifier.
/// is an offline request if the current user is not a bot
/// Returns [Supergroup]
class GetSupergroup extends TdFunction {
  GetSupergroup({required this.supergroupId, this.extra});

  /// [supergroupId] Supergroup or channel identifier
  final int supergroupId;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getSupergroup';

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
