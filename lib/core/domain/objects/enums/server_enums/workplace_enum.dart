import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'workplace_enum.g.dart';

/// Перечисление 'Место работы'.
class WorkplaceEnum extends EnumClass {
  /// "Командировка".
  static const WorkplaceEnum businessTrip = _$businessTrip;

  /// "Работа в офисе".
  static const WorkplaceEnum officeWork = _$officeWork;

  /// "Удаленная работа".
  static const WorkplaceEnum remoteWork = _$remoteWork;

  int get appId => _appId[this] ?? (throw StateError('No appId for WorkplaceEnum.$name'));

  static const _appId = const {
    businessTrip: 1,
    officeWork: 2,
    remoteWork: 3,
  };

  const WorkplaceEnum._(String name) : super(name);

  static BuiltSet<WorkplaceEnum> get values => _$workplaceEnumValues;

  static WorkplaceEnum valueOf(String name) => _$workplaceEnumValueOf(name);
}
