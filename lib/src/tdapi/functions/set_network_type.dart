import '../tdapi.dart';

/// Sets the current network type. Can be called before authorization. Calling
/// method forces all network connections to reopen, mitigating the delay in
/// between different networks, so it should be called whenever the network is
/// even if the network type remains the same.. Network type is used to check
/// the library can use the network at all and also for collecting detailed
/// data usage statistics
/// Returns [Ok]
class SetNetworkType extends TdFunction {
  SetNetworkType({required this.type});

  /// [type] The new network type. By default, networkTypeOther
  final NetworkType type;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'setNetworkType';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'type': this.type.toJson(), '@type': CONSTRUCTOR, '@extra': this.extra};
}
