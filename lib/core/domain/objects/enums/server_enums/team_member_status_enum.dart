import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'team_member_status_enum.g.dart';

/// Перечисление статуса сотрудника.
class TeamMemberStatusEnum extends EnumClass {
  /// На смене.
  static const TeamMemberStatusEnum onShift = _$onShift;

  /// Не на смене.
  static const TeamMemberStatusEnum offShift = _$offShift;

  /// Возвращает идентификатор элемента перечисления приложения.
  int get appId => _appId[this] ?? (throw StateError('No appId for TeamMemberStatusEnum.$name'));

  static const _appId = const {
    onShift: 0,
    offShift: 1,
  };

  const TeamMemberStatusEnum._(String name) : super(name);

  static BuiltSet<TeamMemberStatusEnum> get values => _$teamMemberStatusEnumValues;

  static TeamMemberStatusEnum valueOf(String name) => _$teamMemberStatusEnumValueOf(name);
}
