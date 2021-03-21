part of '../tdapi.dart';

/// Creates a new supergroup or channel and sends a corresponding
/// Returns the newly created chat
class CreateNewSupergroupChat extends TdFunction {
  CreateNewSupergroupChat(
      {required this.title,
      required this.isChannel,
      required this.description,
      required this.location});

  /// [title] Title of the new chat; 1-128 characters
  final String title;

  /// [isChannel] True, if a channel chat should be created
  final bool isChannel;

  /// param_[description] Chat description; 0-255 characters
  final String description;

  /// [location] Chat location if a location-based supergroup is being created
  final ChatLocation location;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'createNewSupergroupChat';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'title': this.title,
        'is_channel': this.isChannel,
        'description': this.description,
        'location': this.location,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
