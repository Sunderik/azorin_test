// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'action_permissions.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ActionPermissions> _$actionPermissionsSerializer =
    new _$ActionPermissionsSerializer();

class _$ActionPermissionsSerializer
    implements StructuredSerializer<ActionPermissions> {
  @override
  final Iterable<Type> types = const [ActionPermissions, _$ActionPermissions];
  @override
  final String wireName = 'ActionPermissions';

  @override
  Iterable<Object?> serialize(Serializers serializers, ActionPermissions object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.userRoleId;
    if (value != null) {
      result
        ..add('userRoleId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userRoleGuidsAtProject;
    if (value != null) {
      result
        ..add('userRoleGuidsAtProject')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.projectObjId;
    if (value != null) {
      result
        ..add('projectObjId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userActionsPermissions;
    if (value != null) {
      result
        ..add('userActionsPermissions')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(AvailableActions)));
    }
    value = object.taskActionsPermissions;
    if (value != null) {
      result
        ..add('taskActionsPermissions')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(AvailableActions)));
    }
    value = object.logisticsProblemActionsPermissions;
    if (value != null) {
      result
        ..add('logisticsProblemActionsPermissions')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(AvailableActions)));
    }
    value = object.installationProblemActionsPermissions;
    if (value != null) {
      result
        ..add('installationProblemActionsPermissions')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(AvailableActions)));
    }
    value = object.uztmProblemActionsPermissions;
    if (value != null) {
      result
        ..add('uztmProblemActionsPermissions')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(AvailableActions)));
    }
    value = object.projectProblemActionsPermissions;
    if (value != null) {
      result
        ..add('projectProblemActionsPermissions')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(AvailableActions)));
    }
    value = object.customerProblemActionsPermissions;
    if (value != null) {
      result
        ..add('customerProblemActionsPermissions')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(AvailableActions)));
    }
    value = object.commonProblemActionsPermissions;
    if (value != null) {
      result
        ..add('commonProblemActionsPermissions')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(AvailableActions)));
    }
    value = object.modulePCProblemActionsPermissions;
    if (value != null) {
      result
        ..add('modulePCProblemActionsPermissions')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(AvailableActions)));
    }
    value = object.productionProblemActionsPermissions;
    if (value != null) {
      result
        ..add('productionProblemActionsPermissions')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(AvailableActions)));
    }
    value = object.softwareProblemActionsPermissions;
    if (value != null) {
      result
        ..add('softwareProblemActionsPermissions')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(AvailableActions)));
    }
    return result;
  }

  @override
  ActionPermissions deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ActionPermissionsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'userRoleId':
          result.userRoleId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'userRoleGuidsAtProject':
          result.userRoleGuidsAtProject.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object>);
          break;
        case 'projectObjId':
          result.projectObjId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'userActionsPermissions':
          result.userActionsPermissions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(AvailableActions))!
              as AvailableActions);
          break;
        case 'taskActionsPermissions':
          result.taskActionsPermissions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(AvailableActions))!
              as AvailableActions);
          break;
        case 'logisticsProblemActionsPermissions':
          result.logisticsProblemActionsPermissions.replace(
              serializers.deserialize(value,
                      specifiedType: const FullType(AvailableActions))!
                  as AvailableActions);
          break;
        case 'installationProblemActionsPermissions':
          result.installationProblemActionsPermissions.replace(
              serializers.deserialize(value,
                      specifiedType: const FullType(AvailableActions))!
                  as AvailableActions);
          break;
        case 'uztmProblemActionsPermissions':
          result.uztmProblemActionsPermissions.replace(serializers.deserialize(
                  value,
                  specifiedType: const FullType(AvailableActions))!
              as AvailableActions);
          break;
        case 'projectProblemActionsPermissions':
          result.projectProblemActionsPermissions.replace(
              serializers.deserialize(value,
                      specifiedType: const FullType(AvailableActions))!
                  as AvailableActions);
          break;
        case 'customerProblemActionsPermissions':
          result.customerProblemActionsPermissions.replace(
              serializers.deserialize(value,
                      specifiedType: const FullType(AvailableActions))!
                  as AvailableActions);
          break;
        case 'commonProblemActionsPermissions':
          result.commonProblemActionsPermissions.replace(
              serializers.deserialize(value,
                      specifiedType: const FullType(AvailableActions))!
                  as AvailableActions);
          break;
        case 'modulePCProblemActionsPermissions':
          result.modulePCProblemActionsPermissions.replace(
              serializers.deserialize(value,
                      specifiedType: const FullType(AvailableActions))!
                  as AvailableActions);
          break;
        case 'productionProblemActionsPermissions':
          result.productionProblemActionsPermissions.replace(
              serializers.deserialize(value,
                      specifiedType: const FullType(AvailableActions))!
                  as AvailableActions);
          break;
        case 'softwareProblemActionsPermissions':
          result.softwareProblemActionsPermissions.replace(
              serializers.deserialize(value,
                      specifiedType: const FullType(AvailableActions))!
                  as AvailableActions);
          break;
      }
    }

    return result.build();
  }
}

class _$ActionPermissions extends ActionPermissions {
  @override
  final String? userRoleId;
  @override
  final BuiltList<String>? userRoleGuidsAtProject;
  @override
  final String? projectObjId;
  @override
  final AvailableActions? userActionsPermissions;
  @override
  final AvailableActions? taskActionsPermissions;
  @override
  final AvailableActions? logisticsProblemActionsPermissions;
  @override
  final AvailableActions? installationProblemActionsPermissions;
  @override
  final AvailableActions? uztmProblemActionsPermissions;
  @override
  final AvailableActions? projectProblemActionsPermissions;
  @override
  final AvailableActions? customerProblemActionsPermissions;
  @override
  final AvailableActions? commonProblemActionsPermissions;
  @override
  final AvailableActions? modulePCProblemActionsPermissions;
  @override
  final AvailableActions? productionProblemActionsPermissions;
  @override
  final AvailableActions? softwareProblemActionsPermissions;

  factory _$ActionPermissions(
          [void Function(ActionPermissionsBuilder)? updates]) =>
      (new ActionPermissionsBuilder()..update(updates)).build();

  _$ActionPermissions._(
      {this.userRoleId,
      this.userRoleGuidsAtProject,
      this.projectObjId,
      this.userActionsPermissions,
      this.taskActionsPermissions,
      this.logisticsProblemActionsPermissions,
      this.installationProblemActionsPermissions,
      this.uztmProblemActionsPermissions,
      this.projectProblemActionsPermissions,
      this.customerProblemActionsPermissions,
      this.commonProblemActionsPermissions,
      this.modulePCProblemActionsPermissions,
      this.productionProblemActionsPermissions,
      this.softwareProblemActionsPermissions})
      : super._();

  @override
  ActionPermissions rebuild(void Function(ActionPermissionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActionPermissionsBuilder toBuilder() =>
      new ActionPermissionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ActionPermissions &&
        userRoleId == other.userRoleId &&
        userRoleGuidsAtProject == other.userRoleGuidsAtProject &&
        projectObjId == other.projectObjId &&
        userActionsPermissions == other.userActionsPermissions &&
        taskActionsPermissions == other.taskActionsPermissions &&
        logisticsProblemActionsPermissions ==
            other.logisticsProblemActionsPermissions &&
        installationProblemActionsPermissions ==
            other.installationProblemActionsPermissions &&
        uztmProblemActionsPermissions == other.uztmProblemActionsPermissions &&
        projectProblemActionsPermissions ==
            other.projectProblemActionsPermissions &&
        customerProblemActionsPermissions ==
            other.customerProblemActionsPermissions &&
        commonProblemActionsPermissions ==
            other.commonProblemActionsPermissions &&
        modulePCProblemActionsPermissions ==
            other.modulePCProblemActionsPermissions &&
        productionProblemActionsPermissions ==
            other.productionProblemActionsPermissions &&
        softwareProblemActionsPermissions ==
            other.softwareProblemActionsPermissions;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            0,
                                                            userRoleId
                                                                .hashCode),
                                                        userRoleGuidsAtProject
                                                            .hashCode),
                                                    projectObjId.hashCode),
                                                userActionsPermissions
                                                    .hashCode),
                                            taskActionsPermissions.hashCode),
                                        logisticsProblemActionsPermissions
                                            .hashCode),
                                    installationProblemActionsPermissions
                                        .hashCode),
                                uztmProblemActionsPermissions.hashCode),
                            projectProblemActionsPermissions.hashCode),
                        customerProblemActionsPermissions.hashCode),
                    commonProblemActionsPermissions.hashCode),
                modulePCProblemActionsPermissions.hashCode),
            productionProblemActionsPermissions.hashCode),
        softwareProblemActionsPermissions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ActionPermissions')
          ..add('userRoleId', userRoleId)
          ..add('userRoleGuidsAtProject', userRoleGuidsAtProject)
          ..add('projectObjId', projectObjId)
          ..add('userActionsPermissions', userActionsPermissions)
          ..add('taskActionsPermissions', taskActionsPermissions)
          ..add('logisticsProblemActionsPermissions',
              logisticsProblemActionsPermissions)
          ..add('installationProblemActionsPermissions',
              installationProblemActionsPermissions)
          ..add('uztmProblemActionsPermissions', uztmProblemActionsPermissions)
          ..add('projectProblemActionsPermissions',
              projectProblemActionsPermissions)
          ..add('customerProblemActionsPermissions',
              customerProblemActionsPermissions)
          ..add('commonProblemActionsPermissions',
              commonProblemActionsPermissions)
          ..add('modulePCProblemActionsPermissions',
              modulePCProblemActionsPermissions)
          ..add('productionProblemActionsPermissions',
              productionProblemActionsPermissions)
          ..add('softwareProblemActionsPermissions',
              softwareProblemActionsPermissions))
        .toString();
  }
}

class ActionPermissionsBuilder
    implements Builder<ActionPermissions, ActionPermissionsBuilder> {
  _$ActionPermissions? _$v;

  String? _userRoleId;
  String? get userRoleId => _$this._userRoleId;
  set userRoleId(String? userRoleId) => _$this._userRoleId = userRoleId;

  ListBuilder<String>? _userRoleGuidsAtProject;
  ListBuilder<String> get userRoleGuidsAtProject =>
      _$this._userRoleGuidsAtProject ??= new ListBuilder<String>();
  set userRoleGuidsAtProject(ListBuilder<String>? userRoleGuidsAtProject) =>
      _$this._userRoleGuidsAtProject = userRoleGuidsAtProject;

  String? _projectObjId;
  String? get projectObjId => _$this._projectObjId;
  set projectObjId(String? projectObjId) => _$this._projectObjId = projectObjId;

  AvailableActionsBuilder? _userActionsPermissions;
  AvailableActionsBuilder get userActionsPermissions =>
      _$this._userActionsPermissions ??= new AvailableActionsBuilder();
  set userActionsPermissions(AvailableActionsBuilder? userActionsPermissions) =>
      _$this._userActionsPermissions = userActionsPermissions;

  AvailableActionsBuilder? _taskActionsPermissions;
  AvailableActionsBuilder get taskActionsPermissions =>
      _$this._taskActionsPermissions ??= new AvailableActionsBuilder();
  set taskActionsPermissions(AvailableActionsBuilder? taskActionsPermissions) =>
      _$this._taskActionsPermissions = taskActionsPermissions;

  AvailableActionsBuilder? _logisticsProblemActionsPermissions;
  AvailableActionsBuilder get logisticsProblemActionsPermissions =>
      _$this._logisticsProblemActionsPermissions ??=
          new AvailableActionsBuilder();
  set logisticsProblemActionsPermissions(
          AvailableActionsBuilder? logisticsProblemActionsPermissions) =>
      _$this._logisticsProblemActionsPermissions =
          logisticsProblemActionsPermissions;

  AvailableActionsBuilder? _installationProblemActionsPermissions;
  AvailableActionsBuilder get installationProblemActionsPermissions =>
      _$this._installationProblemActionsPermissions ??=
          new AvailableActionsBuilder();
  set installationProblemActionsPermissions(
          AvailableActionsBuilder? installationProblemActionsPermissions) =>
      _$this._installationProblemActionsPermissions =
          installationProblemActionsPermissions;

  AvailableActionsBuilder? _uztmProblemActionsPermissions;
  AvailableActionsBuilder get uztmProblemActionsPermissions =>
      _$this._uztmProblemActionsPermissions ??= new AvailableActionsBuilder();
  set uztmProblemActionsPermissions(
          AvailableActionsBuilder? uztmProblemActionsPermissions) =>
      _$this._uztmProblemActionsPermissions = uztmProblemActionsPermissions;

  AvailableActionsBuilder? _projectProblemActionsPermissions;
  AvailableActionsBuilder get projectProblemActionsPermissions =>
      _$this._projectProblemActionsPermissions ??=
          new AvailableActionsBuilder();
  set projectProblemActionsPermissions(
          AvailableActionsBuilder? projectProblemActionsPermissions) =>
      _$this._projectProblemActionsPermissions =
          projectProblemActionsPermissions;

  AvailableActionsBuilder? _customerProblemActionsPermissions;
  AvailableActionsBuilder get customerProblemActionsPermissions =>
      _$this._customerProblemActionsPermissions ??=
          new AvailableActionsBuilder();
  set customerProblemActionsPermissions(
          AvailableActionsBuilder? customerProblemActionsPermissions) =>
      _$this._customerProblemActionsPermissions =
          customerProblemActionsPermissions;

  AvailableActionsBuilder? _commonProblemActionsPermissions;
  AvailableActionsBuilder get commonProblemActionsPermissions =>
      _$this._commonProblemActionsPermissions ??= new AvailableActionsBuilder();
  set commonProblemActionsPermissions(
          AvailableActionsBuilder? commonProblemActionsPermissions) =>
      _$this._commonProblemActionsPermissions = commonProblemActionsPermissions;

  AvailableActionsBuilder? _modulePCProblemActionsPermissions;
  AvailableActionsBuilder get modulePCProblemActionsPermissions =>
      _$this._modulePCProblemActionsPermissions ??=
          new AvailableActionsBuilder();
  set modulePCProblemActionsPermissions(
          AvailableActionsBuilder? modulePCProblemActionsPermissions) =>
      _$this._modulePCProblemActionsPermissions =
          modulePCProblemActionsPermissions;

  AvailableActionsBuilder? _productionProblemActionsPermissions;
  AvailableActionsBuilder get productionProblemActionsPermissions =>
      _$this._productionProblemActionsPermissions ??=
          new AvailableActionsBuilder();
  set productionProblemActionsPermissions(
          AvailableActionsBuilder? productionProblemActionsPermissions) =>
      _$this._productionProblemActionsPermissions =
          productionProblemActionsPermissions;

  AvailableActionsBuilder? _softwareProblemActionsPermissions;
  AvailableActionsBuilder get softwareProblemActionsPermissions =>
      _$this._softwareProblemActionsPermissions ??=
          new AvailableActionsBuilder();
  set softwareProblemActionsPermissions(
          AvailableActionsBuilder? softwareProblemActionsPermissions) =>
      _$this._softwareProblemActionsPermissions =
          softwareProblemActionsPermissions;

  ActionPermissionsBuilder();

  ActionPermissionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userRoleId = $v.userRoleId;
      _userRoleGuidsAtProject = $v.userRoleGuidsAtProject?.toBuilder();
      _projectObjId = $v.projectObjId;
      _userActionsPermissions = $v.userActionsPermissions?.toBuilder();
      _taskActionsPermissions = $v.taskActionsPermissions?.toBuilder();
      _logisticsProblemActionsPermissions =
          $v.logisticsProblemActionsPermissions?.toBuilder();
      _installationProblemActionsPermissions =
          $v.installationProblemActionsPermissions?.toBuilder();
      _uztmProblemActionsPermissions =
          $v.uztmProblemActionsPermissions?.toBuilder();
      _projectProblemActionsPermissions =
          $v.projectProblemActionsPermissions?.toBuilder();
      _customerProblemActionsPermissions =
          $v.customerProblemActionsPermissions?.toBuilder();
      _commonProblemActionsPermissions =
          $v.commonProblemActionsPermissions?.toBuilder();
      _modulePCProblemActionsPermissions =
          $v.modulePCProblemActionsPermissions?.toBuilder();
      _productionProblemActionsPermissions =
          $v.productionProblemActionsPermissions?.toBuilder();
      _softwareProblemActionsPermissions =
          $v.softwareProblemActionsPermissions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ActionPermissions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ActionPermissions;
  }

  @override
  void update(void Function(ActionPermissionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ActionPermissions build() {
    _$ActionPermissions _$result;
    try {
      _$result = _$v ??
          new _$ActionPermissions._(
              userRoleId: userRoleId,
              userRoleGuidsAtProject: _userRoleGuidsAtProject?.build(),
              projectObjId: projectObjId,
              userActionsPermissions: _userActionsPermissions?.build(),
              taskActionsPermissions: _taskActionsPermissions?.build(),
              logisticsProblemActionsPermissions:
                  _logisticsProblemActionsPermissions?.build(),
              installationProblemActionsPermissions:
                  _installationProblemActionsPermissions?.build(),
              uztmProblemActionsPermissions:
                  _uztmProblemActionsPermissions?.build(),
              projectProblemActionsPermissions:
                  _projectProblemActionsPermissions?.build(),
              customerProblemActionsPermissions:
                  _customerProblemActionsPermissions?.build(),
              commonProblemActionsPermissions:
                  _commonProblemActionsPermissions?.build(),
              modulePCProblemActionsPermissions:
                  _modulePCProblemActionsPermissions?.build(),
              productionProblemActionsPermissions:
                  _productionProblemActionsPermissions?.build(),
              softwareProblemActionsPermissions:
                  _softwareProblemActionsPermissions?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userRoleGuidsAtProject';
        _userRoleGuidsAtProject?.build();

        _$failedField = 'userActionsPermissions';
        _userActionsPermissions?.build();
        _$failedField = 'taskActionsPermissions';
        _taskActionsPermissions?.build();
        _$failedField = 'logisticsProblemActionsPermissions';
        _logisticsProblemActionsPermissions?.build();
        _$failedField = 'installationProblemActionsPermissions';
        _installationProblemActionsPermissions?.build();
        _$failedField = 'uztmProblemActionsPermissions';
        _uztmProblemActionsPermissions?.build();
        _$failedField = 'projectProblemActionsPermissions';
        _projectProblemActionsPermissions?.build();
        _$failedField = 'customerProblemActionsPermissions';
        _customerProblemActionsPermissions?.build();
        _$failedField = 'commonProblemActionsPermissions';
        _commonProblemActionsPermissions?.build();
        _$failedField = 'modulePCProblemActionsPermissions';
        _modulePCProblemActionsPermissions?.build();
        _$failedField = 'productionProblemActionsPermissions';
        _productionProblemActionsPermissions?.build();
        _$failedField = 'softwareProblemActionsPermissions';
        _softwareProblemActionsPermissions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ActionPermissions', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
