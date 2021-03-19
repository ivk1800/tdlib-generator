part of '../tdapi.dart';

/// Group.Objects
/// A cubic B
class VectorPathCommandCubicBezierCurve extends VectorPathCommand {
  VectorPathCommandCubicBezierCurve(
      {required this.startControlPoint,
      required this.endControlPoint,
      required this.endPoint});

  /// null
  final Point startControlPoint;

  /// null
  final Point endControlPoint;

  /// null
  final Point endPoint;

  static const String CONSTRUCTOR = 'vectorPathCommandCubicBezierCurve';

  static VectorPathCommandCubicBezierCurve? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return VectorPathCommandCubicBezierCurve(
        startControlPoint: Point.fromJson(json['start_control_point'])!,
        endControlPoint: Point.fromJson(json['end_control_point'])!,
        endPoint: Point.fromJson(json['end_point'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'start_control_point': this.startControlPoint,
        'end_control_point': this.endControlPoint,
        'end_point': this.endPoint,
        '@type': CONSTRUCTOR
      };
}
