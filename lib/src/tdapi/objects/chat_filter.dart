part of '../tdapi.dart';

/// Group.Objects
/// Represents a filter of user chats
class ChatFilter extends TdObject {
  ChatFilter(
      {required this.title,
      required this.iconName,
      required this.pinnedChatIds,
      required this.includedChatIds,
      required this.excludedChatIds,
      required this.excludeMuted,
      required this.excludeRead,
      required this.excludeArchived,
      required this.includeContacts,
      required this.includeNonContacts,
      required this.includeBots,
      required this.includeGroups,
      required this.includeChannels});

  /// title The title of the filter; 1-12 characters without line feeds
  final String title;

  /// icon_name The icon name for short filter representation. If non-empty, must be one of "All", "Unread", "Unmuted", "Bots", "Channels", "Groups", "Private", "Custom", "Setup", "Cat", "Crown", "Favorite", "Flower", "Game", "Home", "Love", "Mask", "Party", "Sport", "Study", "Trade", "Travel", "Work".. If empty, use getChatFilterDefaultIconName to get default icon name for the filter
  final String iconName;

  /// pinned_chat_ids The chat identifiers of pinned chats in the filtered chat list
  final List<int> pinnedChatIds;

  /// included_chat_ids The chat identifiers of always included chats in the filtered chat list
  final List<int> includedChatIds;

  /// excluded_chat_ids The chat identifiers of always excluded chats in the filtered chat list
  final List<int> excludedChatIds;

  /// exclude_muted True, if muted chats need to be excluded
  final bool excludeMuted;

  /// exclude_read True, if read chats need to be excluded
  final bool excludeRead;

  /// exclude_archived True, if archived chats need to be excluded
  final bool excludeArchived;

  /// include_contacts True, if contacts need to be included
  final bool includeContacts;

  /// include_non_contacts True, if non-contact users need to be included
  final bool includeNonContacts;

  /// include_bots True, if bots need to be included
  final bool includeBots;

  /// include_groups True, if basic groups and supergroups need to be included
  final bool includeGroups;

  /// include_channels True, if channels need to be included
  final bool includeChannels;

  static const String CONSTRUCTOR = 'chatFilter';

  static ChatFilter? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatFilter(
        title: json['title'],
        iconName: json['icon_name'],
        pinnedChatIds: List<int>.from((json['pinned_chat_ids}'] ?? [])
            .map((item) => json['int'])
            .toList()),
        includedChatIds: List<int>.from((json['included_chat_ids}'] ?? [])
            .map((item) => json['int'])
            .toList()),
        excludedChatIds: List<int>.from((json['excluded_chat_ids}'] ?? [])
            .map((item) => json['int'])
            .toList()),
        excludeMuted: json['exclude_muted'],
        excludeRead: json['exclude_read'],
        excludeArchived: json['exclude_archived'],
        includeContacts: json['include_contacts'],
        includeNonContacts: json['include_non_contacts'],
        includeBots: json['include_bots'],
        includeGroups: json['include_groups'],
        includeChannels: json['include_channels']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'title': this.title,
        'icon_name': this.iconName,
        'pinned_chat_ids': this.pinnedChatIds,
        'included_chat_ids': this.includedChatIds,
        'excluded_chat_ids': this.excludedChatIds,
        'exclude_muted': this.excludeMuted,
        'exclude_read': this.excludeRead,
        'exclude_archived': this.excludeArchived,
        'include_contacts': this.includeContacts,
        'include_non_contacts': this.includeNonContacts,
        'include_bots': this.includeBots,
        'include_groups': this.includeGroups,
        'include_channels': this.includeChannels,
        '@type': CONSTRUCTOR
      };
}
