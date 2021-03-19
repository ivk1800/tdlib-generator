part of '../tdapi.dart';

/// Group.Functions
/// Returns information about a phone number by its prefix. Can be called before authorization
class GetPhoneNumberInfo extends TdFunction {
  GetPhoneNumberInfo({required this.phoneNumberPrefix});

  /// phone_number_prefix The phone number prefix
  final String phoneNumberPrefix;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getPhoneNumberInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'phone_number_prefix': this.phoneNumberPrefix,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
