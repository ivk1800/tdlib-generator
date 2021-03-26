abstract class TdObject {
  static const CONSTRUCTOR = 'object';

  const TdObject();

  TdObject.fromJson(Map<String, dynamic> json);

  Map<String, dynamic> toJson();

  dynamic? getExtra() => null;

  String getConstructor() => CONSTRUCTOR;
}
