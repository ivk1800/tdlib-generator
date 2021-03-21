part of '../tdapi.dart';

/// Contains information about an invoice payment form
class PaymentForm extends TdObject {
  PaymentForm(
      {required this.invoice,
      required this.url,
      PaymentsProviderStripe? this.paymentsProvider,
      OrderInfo? this.savedOrderInfo,
      SavedCredentials? this.savedCredentials,
      required this.canSaveCredentials,
      required this.needPassword});

  /// [invoice] Full information of the invoice
  final Invoice invoice;

  /// [url] Payment form URL
  final String url;

  /// [paymentsProvider] Contains information about the payment provider, if available, to support it natively without the need for opening the URL; may be null
  final PaymentsProviderStripe? paymentsProvider;

  /// [savedOrderInfo] Saved server-side order information; may be null
  final OrderInfo? savedOrderInfo;

  /// [savedCredentials] Contains information about saved card credentials; may be null
  final SavedCredentials? savedCredentials;

  /// [canSaveCredentials] True, if the user can choose to save credentials
  final bool canSaveCredentials;

  /// [needPassword] True, if the user will be able to save credentials protected by a password they set up
  final bool needPassword;

  static const String CONSTRUCTOR = 'paymentForm';

  static PaymentForm? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PaymentForm(
        invoice: Invoice.fromJson(json['invoice'])!,
        url: json['url'],
        paymentsProvider:
            PaymentsProviderStripe.fromJson(json['payments_provider']),
        savedOrderInfo: OrderInfo.fromJson(json['saved_order_info']),
        savedCredentials: SavedCredentials.fromJson(json['saved_credentials']),
        canSaveCredentials: json['can_save_credentials'],
        needPassword: json['need_password']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'invoice': this.invoice,
        'url': this.url,
        'payments_provider': this.paymentsProvider,
        'saved_order_info': this.savedOrderInfo,
        'saved_credentials': this.savedCredentials,
        'can_save_credentials': this.canSaveCredentials,
        'need_password': this.needPassword,
        '@type': CONSTRUCTOR
      };
}
