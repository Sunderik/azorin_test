import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:azorin_test/core/core.dart';

import 'models.dart';

part 'team_member_design_engineer_details_response.g.dart';

abstract class TeamMemberDesignEngineerDetailsResponse
    implements
        BaseModel,
        Built<TeamMemberDesignEngineerDetailsResponse, TeamMemberDesignEngineerDetailsResponseBuilder> {
  /// Идентификатор сотрудника
  String? get guid;

  /// ФИО
  String? get fullName;

  /// Сокрощенное ФИО
  String? get shortName;

  /// Имя
  String? get name;

  /// Фамилия
  String? get surname;

  /// Отчество
  String? get patronymic;

  /// Описание
  String? get description;

  /// Первый почтовый адрес
  String? get email;

  /// Второй почтовый адрес
  String? get email2;

  /// Первый номер телефона
  String? get phoneFirst;

  /// Второй номер телефона
  String? get phoneSecond;

  /// Специальность
  String? get speciality;

  /// Идентификатор роли на предприятии
  String? get role;

  /// Идентификатор места работы
  String? get workPlace;

  /// Филиал
  String? get branch;

  /// Отдел филиала
  String? get department;

  /// Номер звена
  String? get unity;

  /// Наименование звена
  String? get unityName;

  /// Статус сотруднкиа
  bool? get status;

  /// Идентификатор причины отсутствия
  String? get reasonForAbsence;

  String? get message;

  TeamMemberDesignEngineerDetailsRequest? get request;

  TeamMemberDesignEngineerDetailsResponse._();

  factory TeamMemberDesignEngineerDetailsResponse(
          [void Function(TeamMemberDesignEngineerDetailsResponseBuilder) updates]) =
      _$TeamMemberDesignEngineerDetailsResponse;

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(TeamMemberDesignEngineerDetailsResponse.serializer, this) as Map<String, dynamic>;
  }

  static TeamMemberDesignEngineerDetailsResponse? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(TeamMemberDesignEngineerDetailsResponse.serializer, json);
  }

  static Serializer<TeamMemberDesignEngineerDetailsResponse> get serializer =>
      _$teamMemberDesignEngineerDetailsResponseSerializer;
}
