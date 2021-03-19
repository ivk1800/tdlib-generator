part of '../tdapi.dart';

/// Group.Objects
/// Specifies the supported call protocols
class CallProtocol extends TdObject {
  CallProtocol(
      {required this.udpP2p,
      required this.udpReflector,
      required this.minLayer,
      required this.maxLayer,
      required this.libraryVersions});

  /// udp_p2p True, if UDP peer-to-peer connections are supported
  final bool udpP2p;

  /// udp_reflector True, if connection through UDP reflectors is supported
  final bool udpReflector;

  /// min_layer The minimum supported API layer; use 65
  final int minLayer;

  /// max_layer The maximum supported API layer; use 65
  final int maxLayer;

  /// library_versions List of supported tgcalls versions
  final List<String> libraryVersions;

  static const String CONSTRUCTOR = 'callProtocol';

  static CallProtocol? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CallProtocol(
        udpP2p: json['udp_p2p'],
        udpReflector: json['udp_reflector'],
        minLayer: json['min_layer'],
        maxLayer: json['max_layer'],
        libraryVersions: List<String>.from((json['library_versions}'] ?? [])
            .map((item) => json['String'])
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'udp_p2p': this.udpP2p,
        'udp_reflector': this.udpReflector,
        'min_layer': this.minLayer,
        'max_layer': this.maxLayer,
        'library_versions': this.libraryVersions,
        '@type': CONSTRUCTOR
      };
}
