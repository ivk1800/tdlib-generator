part of '../tdapi.dart';

/// Group.Objects
/// Describes a poll
class Poll extends TdObject {
  Poll(
      {required this.id,
      required this.question,
      required this.options,
      required this.totalVoterCount,
      required this.recentVoterUserIds,
      required this.isAnonymous,
      required this.type,
      required this.openPeriod,
      required this.closeDate,
      required this.isClosed});

  /// id Unique poll identifier
  final int id;

  /// question Poll question, 1-300 characters
  final String question;

  /// options List of poll answer options
  final List<PollOption> options;

  /// total_voter_count Total number of voters, participating in the poll
  final int totalVoterCount;

  /// recent_voter_user_ids User identifiers of recent voters, if the poll is non-anonymous
  final List<int> recentVoterUserIds;

  /// is_anonymous True, if the poll is anonymous
  final bool isAnonymous;

  /// type Type of the poll
  final PollType type;

  /// open_period Amount of time the poll will be active after creation, in seconds
  final int openPeriod;

  /// close_date Point in time (Unix timestamp) when the poll will be automatically closed
  final int closeDate;

  /// is_closed True, if the poll is closed
  final bool isClosed;

  static const String CONSTRUCTOR = 'poll';

  static Poll? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Poll(
        id: int.tryParse(json['id']) ?? 0,
        question: json['question'],
        options: List<PollOption>.from((json['options}'] ?? [])
            .map((item) => PollOption.fromJson(json['PollOption'])!)
            .toList()),
        totalVoterCount: json['total_voter_count'],
        recentVoterUserIds: List<int>.from(
            (json['recent_voter_user_ids}'] ?? [])
                .map((item) => json['int'])
                .toList()),
        isAnonymous: json['is_anonymous'],
        type: PollType.fromJson(json['type'])!,
        openPeriod: json['open_period'],
        closeDate: json['close_date'],
        isClosed: json['is_closed']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'id': this.id,
        'question': this.question,
        'options': this.options,
        'total_voter_count': this.totalVoterCount,
        'recent_voter_user_ids': this.recentVoterUserIds,
        'is_anonymous': this.isAnonymous,
        'type': this.type,
        'open_period': this.openPeriod,
        'close_date': this.closeDate,
        'is_closed': this.isClosed,
        '@type': CONSTRUCTOR
      };
}
