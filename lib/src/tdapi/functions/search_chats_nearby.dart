part of '../tdapi.dart';

/// Returns a list of users and location-based supergroups nearby. The list of
/// nearby will be updated for 60 seconds after the request by the updates
/// The request should be sent again every 25 seconds with adjusted location
/// not miss new chats
class SearchChatsNearby extends TdFunction {
  SearchChatsNearby({required this.location});

  /// [location] Current user location
  final Location location;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'searchChatsNearby';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'location': this.location, '@type': CONSTRUCTOR, '@extra': this.extra};
}
