import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:tecon_task/core/domain/objects/models/team_tape_record.dart';

part 'team_tape.g.dart';

/// Объект ленты бригады.
abstract class TeamTape implements Built<TeamTape, TeamTapeBuilder> {
  /// Идентификатор проекта.
  String? get projectGuid;

  /// Определяет достигнут ли максимум записей.
  bool? get hasReachedMax;

  /// Коллекция объектов ленты бригады.
  BuiltList<TeamTapeRecord>? get records;

  TeamTape._();

  factory TeamTape([void Function(TeamTapeBuilder) updates]) = _$TeamTape;
}
