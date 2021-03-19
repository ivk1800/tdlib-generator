part of '../tdapi.dart';

/// Group.Objects
/// A straight line to a given point
class VectorPathCommandLine extends VectorPathCommand {
  VectorPathCommandLine({required this.endPoint});

  /// end_point The end point of the straight line
  final Point endPoint;

  static const String CONSTRUCTOR = 'vectorPathCommandLine';

  static VectorPathCommandLine? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return VectorPathCommandLine(endPoint: Point.fromJson(json['end_point'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'end_point': this.endPoint, '@type': CONSTRUCTOR};
}
