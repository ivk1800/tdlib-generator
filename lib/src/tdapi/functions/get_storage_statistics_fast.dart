import '../tdapi.dart';

/// Quickly returns approximate storage usage statistics. Can be called before
class GetStorageStatisticsFast extends TdFunction {
  GetStorageStatisticsFast();

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getStorageStatisticsFast';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
