import '../tdapi.dart';

/// Changes the username of a supergroup or channel, requires owner privileges
/// the supergroup or channel
/// Returns [Ok]
class SetSupergroupUsername extends TdFunction {
  SetSupergroupUsername(
      {required this.supergroupId, required this.username, this.extra});

  /// [supergroupId] Identifier of the supergroup or channel
  final int supergroupId;

  /// [username] New value of the username. Use an empty string to remove the
  final String username;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'setSupergroupUsername';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'supergroup_id': this.supergroupId,
        'username': this.username,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
