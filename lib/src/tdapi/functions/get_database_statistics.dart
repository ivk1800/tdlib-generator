import '../tdapi.dart';

/// Returns database statistics
/// Returns [DatabaseStatistics]
class GetDatabaseStatistics extends TdFunction {
  GetDatabaseStatistics({this.extra});

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getDatabaseStatistics';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
