// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_design.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TaskDesign> _$taskDesignSerializer = new _$TaskDesignSerializer();

class _$TaskDesignSerializer implements StructuredSerializer<TaskDesign> {
  @override
  final Iterable<Type> types = const [TaskDesign, _$TaskDesign];
  @override
  final String wireName = 'TaskDesign';

  @override
  Iterable<Object?> serialize(Serializers serializers, TaskDesign object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.guid;
    if (value != null) {
      result
        ..add('guid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.duration;
    if (value != null) {
      result
        ..add('duration')
        ..add(serializers.serialize(value, specifiedType: const FullType(num)));
    }
    value = object.stage;
    if (value != null) {
      result
        ..add('stage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(SimpleType)));
    }
    value = object.section;
    if (value != null) {
      result
        ..add('section')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(SimpleType)));
    }
    value = object.currentExecutors;
    if (value != null) {
      result
        ..add('currentExecutors')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.maxExecutors;
    if (value != null) {
      result
        ..add('maxExecutors')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.fullPath;
    if (value != null) {
      result
        ..add('fullPath')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.month;
    if (value != null) {
      result
        ..add('month')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Month)));
    }
    value = object.subTasks;
    if (value != null) {
      result
        ..add('subTasks')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(SubTask)])));
    }
    return result;
  }

  @override
  TaskDesign deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TaskDesignBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'guid':
          result.guid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'duration':
          result.duration = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'stage':
          result.stage.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleType))! as SimpleType);
          break;
        case 'section':
          result.section.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleType))! as SimpleType);
          break;
        case 'currentExecutors':
          result.currentExecutors = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'maxExecutors':
          result.maxExecutors = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'fullPath':
          result.fullPath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'month':
          result.month.replace(serializers.deserialize(value,
              specifiedType: const FullType(Month))! as Month);
          break;
        case 'subTasks':
          result.subTasks.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SubTask)]))!
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$TaskDesign extends TaskDesign {
  @override
  final String? guid;
  @override
  final String? name;
  @override
  final String? status;
  @override
  final String? description;
  @override
  final num? duration;
  @override
  final SimpleType? stage;
  @override
  final SimpleType? section;
  @override
  final int? currentExecutors;
  @override
  final int? maxExecutors;
  @override
  final String? fullPath;
  @override
  final Month? month;
  @override
  final BuiltList<SubTask>? subTasks;

  factory _$TaskDesign([void Function(TaskDesignBuilder)? updates]) =>
      (new TaskDesignBuilder()..update(updates)).build();

  _$TaskDesign._(
      {this.guid,
      this.name,
      this.status,
      this.description,
      this.duration,
      this.stage,
      this.section,
      this.currentExecutors,
      this.maxExecutors,
      this.fullPath,
      this.month,
      this.subTasks})
      : super._();

  @override
  TaskDesign rebuild(void Function(TaskDesignBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TaskDesignBuilder toBuilder() => new TaskDesignBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TaskDesign &&
        guid == other.guid &&
        name == other.name &&
        status == other.status &&
        description == other.description &&
        duration == other.duration &&
        stage == other.stage &&
        section == other.section &&
        currentExecutors == other.currentExecutors &&
        maxExecutors == other.maxExecutors &&
        fullPath == other.fullPath &&
        month == other.month &&
        subTasks == other.subTasks;
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
                                            $jc($jc(0, guid.hashCode),
                                                name.hashCode),
                                            status.hashCode),
                                        description.hashCode),
                                    duration.hashCode),
                                stage.hashCode),
                            section.hashCode),
                        currentExecutors.hashCode),
                    maxExecutors.hashCode),
                fullPath.hashCode),
            month.hashCode),
        subTasks.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TaskDesign')
          ..add('guid', guid)
          ..add('name', name)
          ..add('status', status)
          ..add('description', description)
          ..add('duration', duration)
          ..add('stage', stage)
          ..add('section', section)
          ..add('currentExecutors', currentExecutors)
          ..add('maxExecutors', maxExecutors)
          ..add('fullPath', fullPath)
          ..add('month', month)
          ..add('subTasks', subTasks))
        .toString();
  }
}

class TaskDesignBuilder implements Builder<TaskDesign, TaskDesignBuilder> {
  _$TaskDesign? _$v;

  String? _guid;
  String? get guid => _$this._guid;
  set guid(String? guid) => _$this._guid = guid;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  num? _duration;
  num? get duration => _$this._duration;
  set duration(num? duration) => _$this._duration = duration;

  SimpleTypeBuilder? _stage;
  SimpleTypeBuilder get stage => _$this._stage ??= new SimpleTypeBuilder();
  set stage(SimpleTypeBuilder? stage) => _$this._stage = stage;

  SimpleTypeBuilder? _section;
  SimpleTypeBuilder get section => _$this._section ??= new SimpleTypeBuilder();
  set section(SimpleTypeBuilder? section) => _$this._section = section;

  int? _currentExecutors;
  int? get currentExecutors => _$this._currentExecutors;
  set currentExecutors(int? currentExecutors) =>
      _$this._currentExecutors = currentExecutors;

  int? _maxExecutors;
  int? get maxExecutors => _$this._maxExecutors;
  set maxExecutors(int? maxExecutors) => _$this._maxExecutors = maxExecutors;

  String? _fullPath;
  String? get fullPath => _$this._fullPath;
  set fullPath(String? fullPath) => _$this._fullPath = fullPath;

  MonthBuilder? _month;
  MonthBuilder get month => _$this._month ??= new MonthBuilder();
  set month(MonthBuilder? month) => _$this._month = month;

  ListBuilder<SubTask>? _subTasks;
  ListBuilder<SubTask> get subTasks =>
      _$this._subTasks ??= new ListBuilder<SubTask>();
  set subTasks(ListBuilder<SubTask>? subTasks) => _$this._subTasks = subTasks;

  TaskDesignBuilder();

  TaskDesignBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _guid = $v.guid;
      _name = $v.name;
      _status = $v.status;
      _description = $v.description;
      _duration = $v.duration;
      _stage = $v.stage?.toBuilder();
      _section = $v.section?.toBuilder();
      _currentExecutors = $v.currentExecutors;
      _maxExecutors = $v.maxExecutors;
      _fullPath = $v.fullPath;
      _month = $v.month?.toBuilder();
      _subTasks = $v.subTasks?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TaskDesign other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TaskDesign;
  }

  @override
  void update(void Function(TaskDesignBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TaskDesign build() {
    _$TaskDesign _$result;
    try {
      _$result = _$v ??
          new _$TaskDesign._(
              guid: guid,
              name: name,
              status: status,
              description: description,
              duration: duration,
              stage: _stage?.build(),
              section: _section?.build(),
              currentExecutors: currentExecutors,
              maxExecutors: maxExecutors,
              fullPath: fullPath,
              month: _month?.build(),
              subTasks: _subTasks?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'stage';
        _stage?.build();
        _$failedField = 'section';
        _section?.build();

        _$failedField = 'month';
        _month?.build();
        _$failedField = 'subTasks';
        _subTasks?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TaskDesign', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
