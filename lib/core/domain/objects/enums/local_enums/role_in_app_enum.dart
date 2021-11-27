import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:tecon_task/core/domain/objects/enums.dart';

part 'role_in_app_enum.g.dart';

class RoleInAppEnum extends EnumClass {
  /// Директор
  static const RoleInAppEnum ceo = _$ceo;

  /// Гость
  static const RoleInAppEnum guest = _$guest;

  /// Диспетчер
  static const RoleInAppEnum dispatcher = _$dispatcher;

  /// Наблюдатель
  static const RoleInAppEnum observer = _$observer;

  /// Куратор
  static const RoleInAppEnum curator = _$curator;

  /// Бригадир
  static const RoleInAppEnum foreman = _$foreman;

  /// Специалист
  static const RoleInAppEnum expert = _$expert;

  /// Специалист на разных проектах
  static const RoleInAppEnum multiExpert = _$multiExpert;

  /// Наблюдатель + Специалист
  static const RoleInAppEnum expertObserver = _$expertObserver;

  /// Начальник отдела проектирования
  static const RoleInAppEnum headOfDesignDepartment = _$headOfDesignDepartment;

  /// Начальник отдела наладки
  static const RoleInAppEnum headOfServiceDepartment = _$headOfServiceDepartment;

  /// Инженер-проектировщик
  static const RoleInAppEnum designEngineer = _$designEngineer;

  /// Наладчик
  static const RoleInAppEnum serviceman = _$serviceman;

  String get translates => _translates[this] ?? (throw StateError('No translate for Role.$name'));

  List<DepartmentEnum> get department => _department[this] ?? (throw StateError('No department for Role.$name'));

  static const _translates = const {
    ceo: 'Директор',
    guest: 'Гость',
    dispatcher: 'Диспетчер',
    observer: 'Наблюдатель',
    curator: 'Куратор',
    foreman: 'Бригадир',
    expert: 'Специалист',
    multiExpert: 'Специалист',
    expertObserver: 'Наблюдатель / Специалист',
    headOfDesignDepartment: 'Начальник отдела проектирования',
    headOfServiceDepartment: 'Начальник отдела наладки',
    designEngineer: 'Инженер-проектировщик',
    serviceman: 'Наладчик',
  };

  static const _department = const {
    ceo: [DepartmentEnum.install, DepartmentEnum.design, DepartmentEnum.service],
    guest: [DepartmentEnum.install, DepartmentEnum.design, DepartmentEnum.service],
    dispatcher: [DepartmentEnum.install],
    observer: [DepartmentEnum.install],
    curator: [DepartmentEnum.install],
    foreman: [DepartmentEnum.install],
    expert: [DepartmentEnum.install],
    multiExpert: [DepartmentEnum.install],
    expertObserver: [DepartmentEnum.install],
    headOfDesignDepartment: [DepartmentEnum.design],
    designEngineer: [DepartmentEnum.design],
    headOfServiceDepartment: [DepartmentEnum.service],
    serviceman: [DepartmentEnum.service],
  };

  const RoleInAppEnum._(String name) : super(name);

  static BuiltSet<RoleInAppEnum> get values => _$roleInAppEnumValues;

  static RoleInAppEnum valueOf(String name) => _$roleInAppEnumValueOf(name);
}
