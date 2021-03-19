part of '../tdapi.dart';

/// Group.Objects
/// New terms of service must be accepted by the user. If the terms of service are declined, then the deleteAccount method should be called with the reason "Decline ToS update"
class UpdateTermsOfService extends Update {
  UpdateTermsOfService(
      {required this.termsOfServiceId, required this.termsOfService});

  /// terms_of_service_id Identifier of the terms of service
  final String termsOfServiceId;

  /// terms_of_service_id Identifier of the terms of service
  final TermsOfService termsOfService;

  static const String CONSTRUCTOR = 'updateTermsOfService';

  static UpdateTermsOfService? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateTermsOfService(
        termsOfServiceId: json['terms_of_service_id'],
        termsOfService: TermsOfService.fromJson(json['terms_of_service'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'terms_of_service_id': this.termsOfServiceId,
        'terms_of_service': this.termsOfService,
        '@type': CONSTRUCTOR
      };
}
