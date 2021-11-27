import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'notification_type_enum.g.dart';

class NotificationTypeEnum extends EnumClass {
  static const NotificationTypeEnum unknown = _$unknown;
  static const NotificationTypeEnum createTask = _$createTask;
  static const NotificationTypeEnum createProblem = _$createProblem;
  static const NotificationTypeEnum addCommentTask = _$addCommentTask;
  static const NotificationTypeEnum addCommentProblem = _$addCommentProblem;
  static const NotificationTypeEnum addPhotoTask = _$addPhotoTask;
  static const NotificationTypeEnum addPhotoProblem = _$addPhotoProblem;
  static const NotificationTypeEnum addFileTask = _$addFileTask;
  static const NotificationTypeEnum addFileProblem = _$addFileProblem;
  static const NotificationTypeEnum changeProblemType = _$changeProblemType;
  static const NotificationTypeEnum changeProblemStatus = _$changeProblemStatus;
  static const NotificationTypeEnum stoppedProject = _$stoppedProject;
  static const NotificationTypeEnum startedProject = _$startedProject;
  static const NotificationTypeEnum takeShift = _$takeShift;
  static const NotificationTypeEnum passShift = _$passShift;
  static const NotificationTypeEnum chatMessage = _$chatMessage;
  static const NotificationTypeEnum employeeTruancy = _$employeeTruancy;

  String get guids => _guids[this] ?? (throw StateError('No guid for NotificationTypeEnum.$name'));

  static const _guids = const {
    unknown: '1',
    createTask: '2',
    createProblem: '3',
    addCommentTask: '4',
    addCommentProblem: '5',
    addPhotoTask: '6',
    addPhotoProblem: '7',
    addFileTask: '8',
    addFileProblem: '9',
    changeProblemType: '10',
    changeProblemStatus: '11',
    stoppedProject: '12',
    startedProject: '13',
    takeShift: '14',
    passShift: '15',
    chatMessage: '16',
    employeeTruancy: '17'
  };

  const NotificationTypeEnum._(String name) : super(name);

  static BuiltSet<NotificationTypeEnum> get values => _$notificationTypeEnum;

  static NotificationTypeEnum valueOf(String name) => _$notificationTypeEnumValueOf(name);
}
