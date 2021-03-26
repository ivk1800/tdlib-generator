import '../tdapi.dart';

/// Returns information about a phone number by its prefix. Can be called
/// authorization
/// Returns [PhoneNumberInfo]
class GetPhoneNumberInfo extends TdFunction {
  GetPhoneNumberInfo({required this.phoneNumberPrefix});

  /// [phoneNumberPrefix] The phone number prefix
  final String phoneNumberPrefix;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getPhoneNumberInfo';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'phone_number_prefix': this.phoneNumberPrefix,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
