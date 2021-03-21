import '../tdapi.dart';

/// Returns the total number of imported contacts
class GetImportedContactCount extends TdFunction {
  GetImportedContactCount();

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getImportedContactCount';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
