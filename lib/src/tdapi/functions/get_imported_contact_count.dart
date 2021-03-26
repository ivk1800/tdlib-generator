import '../tdapi.dart';

/// Returns the total number of imported contacts
/// Returns [Count]
class GetImportedContactCount extends TdFunction {
  GetImportedContactCount({this.extra});

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getImportedContactCount';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
