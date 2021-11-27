import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tecon_task/core/domain/global_state/serializers.dart';
import 'package:tecon_task/core/domain/objects/models/coordinates.dart';
import 'package:tecon_task/features/team_tape/repository/models/actor.dart';

part 'team_tape_record.g.dart';

/// Объект ленты бригады.
abstract class TeamTapeRecord implements Built<TeamTapeRecord, TeamTapeRecordBuilder> {
  /// Уникальный идентификатор записи.
  String? get guid;

  /// Дата создания записи.
  DateTime? get date;

  /// Координаты места заступления на смену бригадира.
  Coordinates? get coordinates;

  /// Работник, к которому относится данная запись.
  Actor? get actor;

  /// Идентефикатор статуса работника в данной записи.
  String? get statusGuid;

  /// Идентификатор причины отсутствия.
  String? get reasonGuid;

  /// Дополнительный комментарий к причине отсутствия.
  String? get reasonForAbsenceComment;

  /// Начальная дата, дополнительно указанная к причине отсутствия.
  DateTime? get startDate;

  /// Конечная дата, дополнительно указанная к причине отсутствия.
  DateTime? get endDate;

  /// Идентификатор прикрепленного изображения.
  String? get imageGuid;

  TeamTapeRecord._();

  factory TeamTapeRecord([void Function(TeamTapeRecordBuilder) updates]) = _$TeamTapeRecord;

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(TeamTapeRecord.serializer, this) as Map<String, dynamic>;
  }

  static TeamTapeRecord? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(TeamTapeRecord.serializer, json);
  }

  static Serializer<TeamTapeRecord> get serializer => _$teamTapeRecordSerializer;
}
