import '../tdapi.dart';

/// Returns database statistics
class GetDatabaseStatistics extends TdFunction {
  GetDatabaseStatistics();

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getDatabaseStatistics';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
