import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:tecon_task/core/core.dart';
import 'package:tecon_task/core/domain/objects/enums.dart';

part 'role_enum.g.dart';

class RoleEnum extends EnumClass {
  static const RoleEnum ceo = _$ceo;

  static const RoleEnum guest = _$guest;

  static const RoleEnum dispatcher = _$dispatcher;
  static const RoleEnum observer = _$observer;

  static const RoleEnum curator = _$curator;
  static const RoleEnum foreman = _$foreman;

  static const RoleEnum headOfDesignDepartment = _$headOfDesignDepartment;
  static const RoleEnum headOfServiceDepartment = _$headOfServiceDepartment;

  static const RoleEnum designEngineer = _$designEngineer;
  static const RoleEnum serviceman = _$serviceman;

  static const RoleEnum expertLogistician = _$expertLogistician;
  static const RoleEnum expertUZTM = _$expertUZTM;
  static const RoleEnum expertProject = _$expertProject;
  static const RoleEnum expertCustomer = _$expertCustomer;
  static const RoleEnum expertPCModule = _$expertPCModule;
  static const RoleEnum expertInstallation = _$expertInstallation;
  static const RoleEnum expertProduction = _$expertProduction;
  static const RoleEnum expertSoftware = _$expertSoftware;

  String get ids => _ids[this] ?? (throw StateError('No id for Role.$name'));

  String get translates => _translates[this] ?? (throw StateError('No translate for Role.$name'));

  int get priority => _priority[this] ?? (throw StateError('No priority for Role.$name'));

  List<DepartmentEnum> get department => _department[this] ?? (throw StateError('No department for Role.$name'));

  static const _ids = const {
    ceo: 'e3c12ddd-ffbe-4694-8a64-7d3ab2d7e2ac',
    guest: '1',
    dispatcher: 'd465f99a-aded-4e68-80af-ded5b5cc57b7',
    observer: 'ad3c5ab7-855a-499a-940d-a5d11a00855c',
    curator: 'e84825aa-a94d-4844-8918-f37a07ce8b08',
    foreman: '43ca66f4-a497-499f-87b5-0bad70b77f7a',
    headOfDesignDepartment: '4e34bd73-a856-42c7-be14-4acbc2cd2fff',
    headOfServiceDepartment: 'b6d52cbf-1113-4fd8-8599-2361c3edb72c',
    designEngineer: '20f5611e-75ce-468f-9c91-57c68ba846e1',
    serviceman: '20d589a9-a977-4110-b6e5-07f1128a2f11',
    expertLogistician: '2d3b0895-9514-484c-a6bf-954cb437a24b',
    expertUZTM: 'c9145e50-abdc-4183-8776-4a5b11f295ad',
    expertProject: 'c0c8357d-51fa-457a-9755-f402c8f00a01',
    expertCustomer: '633af268-f4e5-4250-9967-f57588867321',
    expertPCModule: '97623ddb-1ca9-4d25-8144-3a6831f3111b',
    expertInstallation: '6dfbc9e7-0f2d-46cf-85cc-2dc76b67f167',
    expertProduction: '4d9e9957-1066-46cf-8ac2-3b7f75f7366f',
    expertSoftware: '24c767bf-e687-41b7-b531-49dc3428aba4',
  };

  static const _translates = const {
    ceo: 'Директор',
    guest: 'Аноним',
    dispatcher: 'Диспетчер',
    observer: 'Наблюдатель',
    curator: 'Куратор',
    foreman: 'Бригадир',
    headOfDesignDepartment: 'Начальник отдела проектирования',
    headOfServiceDepartment: 'Начальник отдела наладки',
    designEngineer: 'Инженер-проектировщик',
    serviceman: 'Наладчик',
    expertLogistician: 'Специалист логистики',
    expertUZTM: 'Специалист УЗТМ',
    expertProject: 'Специалист по проекту',
    expertCustomer: 'Специалист по работе с заказчиком',
    expertPCModule: 'Специалист по ПК Модулю',
    expertInstallation: 'Специалист монтажа',
    expertProduction: 'Специалист по производству',
    expertSoftware: 'Программист',
  };

  static const _priority = const {
    ceo: 0,
    dispatcher: 0,
    observer: 0,
    curator: 1,
    foreman: 2,
    headOfDesignDepartment: 3,
    headOfServiceDepartment: 3,
    designEngineer: 4,
    serviceman: 4,
    expertLogistician: 5,
    expertUZTM: 5,
    expertProject: 5,
    expertCustomer: 5,
    expertPCModule: 5,
    expertInstallation: 5,
    expertProduction: 5,
    expertSoftware: 5,
    guest: 6,
  };

  static RoleEnum getRoleById(String id) {
    if (id == ceo.ids) return ceo;
    if (id == dispatcher.ids) return dispatcher;
    if (id == observer.ids) return observer;
    if (id == curator.ids) return curator;
    if (id == foreman.ids) return foreman;
    if (id == headOfDesignDepartment.ids) return headOfDesignDepartment;
    if (id == headOfServiceDepartment.ids) return headOfServiceDepartment;
    if (id == designEngineer.ids) return designEngineer;
    if (id == serviceman.ids) return serviceman;
    if (id == expertLogistician.ids) return expertLogistician;
    if (id == expertUZTM.ids) return expertUZTM;
    if (id == expertProject.ids) return expertProject;
    if (id == expertCustomer.ids) return expertCustomer;
    if (id == expertPCModule.ids) return expertPCModule;
    if (id == expertInstallation.ids) return expertInstallation;
    if (id == expertProduction.ids) return expertProduction;
    if (id == expertSoftware.ids) return expertSoftware;
    return guest;
  }

  static const _department = const {
    ceo: [DepartmentEnum.install, DepartmentEnum.design, DepartmentEnum.service],
    dispatcher: [DepartmentEnum.install],
    observer: [DepartmentEnum.install],
    curator: [DepartmentEnum.install],
    foreman: [DepartmentEnum.install],
    headOfDesignDepartment: [DepartmentEnum.design],
    designEngineer: [DepartmentEnum.design],
    headOfServiceDepartment: [DepartmentEnum.service],
    serviceman: [DepartmentEnum.service],
    expertLogistician: [DepartmentEnum.install],
    expertUZTM: [DepartmentEnum.install],
    expertProject: [DepartmentEnum.install],
    expertCustomer: [DepartmentEnum.install],
    expertPCModule: [DepartmentEnum.install],
    expertInstallation: [DepartmentEnum.install],
    expertProduction: [DepartmentEnum.install],
    expertSoftware: [DepartmentEnum.install],
    guest: [DepartmentEnum.install, DepartmentEnum.design, DepartmentEnum.service],
  };

  const RoleEnum._(String name) : super(name);

  static BuiltSet<RoleEnum> get values => _$roleEnumValues;

  static RoleEnum valueOf(String name) => _$roleEnumValueOf(name);
}
