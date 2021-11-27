// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_details.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TaskDetails> _$taskDetailsSerializer = new _$TaskDetailsSerializer();

class _$TaskDetailsSerializer implements StructuredSerializer<TaskDetails> {
  @override
  final Iterable<Type> types = const [TaskDetails, _$TaskDetails];
  @override
  final String wireName = 'TaskDetails';

  @override
  Iterable<Object?> serialize(Serializers serializers, TaskDetails object,
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
    value = object.order;
    if (value != null) {
      result
        ..add('order')
        ..add(serializers.serialize(value, specifiedType: const FullType(num)));
    }
    value = object.category;
    if (value != null) {
      result
        ..add('category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.duration;
    if (value != null) {
      result
        ..add('duration')
        ..add(serializers.serialize(value, specifiedType: const FullType(num)));
    }
    value = object.tryComplete;
    if (value != null) {
      result
        ..add('tryComplete')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.countNorm;
    if (value != null) {
      result
        ..add('countNorm')
        ..add(serializers.serialize(value, specifiedType: const FullType(num)));
    }
    value = object.countFact;
    if (value != null) {
      result
        ..add('countFact')
        ..add(serializers.serialize(value, specifiedType: const FullType(num)));
    }
    value = object.materials;
    if (value != null) {
      result
        ..add('materials')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(MaterialModel)));
    }
    value = object.elements;
    if (value != null) {
      result
        ..add('elements')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(TaskElement)])));
    }
    value = object.day;
    if (value != null) {
      result
        ..add('day')
        ..add(serializers.serialize(value, specifiedType: const FullType(Day)));
    }
    value = object.projectType;
    if (value != null) {
      result
        ..add('projectType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(SimpleType)));
    }
    value = object.executors;
    if (value != null) {
      result
        ..add('executors')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Executor)])));
    }
    value = object.taskCategory;
    if (value != null) {
      result
        ..add('taskCategory')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.history;
    if (value != null) {
      result
        ..add('history')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(HistoryItem)])));
    }
    value = object.maxExecutors;
    if (value != null) {
      result
        ..add('maxExecutors')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.currentExecutors;
    if (value != null) {
      result
        ..add('currentExecutors')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.month;
    if (value != null) {
      result
        ..add('month')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Month)));
    }
    value = object.fullPath;
    if (value != null) {
      result
        ..add('fullPath')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.section;
    if (value != null) {
      result
        ..add('section')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(SimpleType)));
    }
    value = object.stage;
    if (value != null) {
      result
        ..add('stage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(SimpleType)));
    }
    value = object.subTasks;
    if (value != null) {
      result
        ..add('subTasks')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(SubTask)])));
    }
    value = object.httpCode;
    if (value != null) {
      result
        ..add('httpCode')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  TaskDetails deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TaskDetailsBuilder();

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
        case 'order':
          result.order = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'duration':
          result.duration = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'tryComplete':
          result.tryComplete = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'countNorm':
          result.countNorm = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'countFact':
          result.countFact = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'materials':
          result.materials.replace(serializers.deserialize(value,
              specifiedType: const FullType(MaterialModel))! as MaterialModel);
          break;
        case 'elements':
          result.elements.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(TaskElement)]))!
              as BuiltList<Object>);
          break;
        case 'day':
          result.day.replace(serializers.deserialize(value,
              specifiedType: const FullType(Day))! as Day);
          break;
        case 'projectType':
          result.projectType.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleType))! as SimpleType);
          break;
        case 'executors':
          result.executors.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Executor)]))!
              as BuiltList<Object>);
          break;
        case 'taskCategory':
          result.taskCategory = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'history':
          result.history.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(HistoryItem)]))!
              as BuiltList<Object>);
          break;
        case 'maxExecutors':
          result.maxExecutors = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'currentExecutors':
          result.currentExecutors = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'month':
          result.month.replace(serializers.deserialize(value,
              specifiedType: const FullType(Month))! as Month);
          break;
        case 'fullPath':
          result.fullPath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'section':
          result.section.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleType))! as SimpleType);
          break;
        case 'stage':
          result.stage.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleType))! as SimpleType);
          break;
        case 'subTasks':
          result.subTasks.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SubTask)]))!
              as BuiltList<Object>);
          break;
        case 'httpCode':
          result.httpCode = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$TaskDetails extends TaskDetails {
  @override
  final String? guid;
  @override
  final String? name;
  @override
  final String? status;
  @override
  final String? description;
  @override
  final num? order;
  @override
  final String? category;
  @override
  final num? duration;
  @override
  final bool? tryComplete;
  @override
  final num? countNorm;
  @override
  final num? countFact;
  @override
  final MaterialModel? materials;
  @override
  final BuiltList<TaskElement>? elements;
  @override
  final Day? day;
  @override
  final SimpleType? projectType;
  @override
  final BuiltList<Executor>? executors;
  @override
  final String? taskCategory;
  @override
  final BuiltList<HistoryItem>? history;
  @override
  final int? maxExecutors;
  @override
  final int? currentExecutors;
  @override
  final Month? month;
  @override
  final String? fullPath;
  @override
  final SimpleType? section;
  @override
  final SimpleType? stage;
  @override
  final BuiltList<SubTask>? subTasks;
  @override
  final int? httpCode;

  factory _$TaskDetails([void Function(TaskDetailsBuilder)? updates]) =>
      (new TaskDetailsBuilder()..update(updates)).build();

  _$TaskDetails._(
      {this.guid,
      this.name,
      this.status,
      this.description,
      this.order,
      this.category,
      this.duration,
      this.tryComplete,
      this.countNorm,
      this.countFact,
      this.materials,
      this.elements,
      this.day,
      this.projectType,
      this.executors,
      this.taskCategory,
      this.history,
      this.maxExecutors,
      this.currentExecutors,
      this.month,
      this.fullPath,
      this.section,
      this.stage,
      this.subTasks,
      this.httpCode})
      : super._();

  @override
  TaskDetails rebuild(void Function(TaskDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TaskDetailsBuilder toBuilder() => new TaskDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TaskDetails &&
        guid == other.guid &&
        name == other.name &&
        status == other.status &&
        description == other.description &&
        order == other.order &&
        category == other.category &&
        duration == other.duration &&
        tryComplete == other.tryComplete &&
        countNorm == other.countNorm &&
        countFact == other.countFact &&
        materials == other.materials &&
        elements == other.elements &&
        day == other.day &&
        projectType == other.projectType &&
        executors == other.executors &&
        taskCategory == other.taskCategory &&
        history == other.history &&
        maxExecutors == other.maxExecutors &&
        currentExecutors == other.currentExecutors &&
        month == other.month &&
        fullPath == other.fullPath &&
        section == other.section &&
        stage == other.stage &&
        subTasks == other.subTasks &&
        httpCode == other.httpCode;
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
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc(0, guid.hashCode), name.hashCode), status.hashCode), description.hashCode), order.hashCode), category.hashCode),
                                                                                duration.hashCode),
                                                                            tryComplete.hashCode),
                                                                        countNorm.hashCode),
                                                                    countFact.hashCode),
                                                                materials.hashCode),
                                                            elements.hashCode),
                                                        day.hashCode),
                                                    projectType.hashCode),
                                                executors.hashCode),
                                            taskCategory.hashCode),
                                        history.hashCode),
                                    maxExecutors.hashCode),
                                currentExecutors.hashCode),
                            month.hashCode),
                        fullPath.hashCode),
                    section.hashCode),
                stage.hashCode),
            subTasks.hashCode),
        httpCode.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TaskDetails')
          ..add('guid', guid)
          ..add('name', name)
          ..add('status', status)
          ..add('description', description)
          ..add('order', order)
          ..add('category', category)
          ..add('duration', duration)
          ..add('tryComplete', tryComplete)
          ..add('countNorm', countNorm)
          ..add('countFact', countFact)
          ..add('materials', materials)
          ..add('elements', elements)
          ..add('day', day)
          ..add('projectType', projectType)
          ..add('executors', executors)
          ..add('taskCategory', taskCategory)
          ..add('history', history)
          ..add('maxExecutors', maxExecutors)
          ..add('currentExecutors', currentExecutors)
          ..add('month', month)
          ..add('fullPath', fullPath)
          ..add('section', section)
          ..add('stage', stage)
          ..add('subTasks', subTasks)
          ..add('httpCode', httpCode))
        .toString();
  }
}

class TaskDetailsBuilder
    implements Builder<TaskDetails, TaskDetailsBuilder>, BaseModelBuilder {
  _$TaskDetails? _$v;

  String? _guid;
  String? get guid => _$this._guid;
  set guid(covariant String? guid) => _$this._guid = guid;

  String? _name;
  String? get name => _$this._name;
  set name(covariant String? name) => _$this._name = name;

  String? _status;
  String? get status => _$this._status;
  set status(covariant String? status) => _$this._status = status;

  String? _description;
  String? get description => _$this._description;
  set description(covariant String? description) =>
      _$this._description = description;

  num? _order;
  num? get order => _$this._order;
  set order(covariant num? order) => _$this._order = order;

  String? _category;
  String? get category => _$this._category;
  set category(covariant String? category) => _$this._category = category;

  num? _duration;
  num? get duration => _$this._duration;
  set duration(covariant num? duration) => _$this._duration = duration;

  bool? _tryComplete;
  bool? get tryComplete => _$this._tryComplete;
  set tryComplete(covariant bool? tryComplete) =>
      _$this._tryComplete = tryComplete;

  num? _countNorm;
  num? get countNorm => _$this._countNorm;
  set countNorm(covariant num? countNorm) => _$this._countNorm = countNorm;

  num? _countFact;
  num? get countFact => _$this._countFact;
  set countFact(covariant num? countFact) => _$this._countFact = countFact;

  MaterialModelBuilder? _materials;
  MaterialModelBuilder get materials =>
      _$this._materials ??= new MaterialModelBuilder();
  set materials(covariant MaterialModelBuilder? materials) =>
      _$this._materials = materials;

  ListBuilder<TaskElement>? _elements;
  ListBuilder<TaskElement> get elements =>
      _$this._elements ??= new ListBuilder<TaskElement>();
  set elements(covariant ListBuilder<TaskElement>? elements) =>
      _$this._elements = elements;

  DayBuilder? _day;
  DayBuilder get day => _$this._day ??= new DayBuilder();
  set day(covariant DayBuilder? day) => _$this._day = day;

  SimpleTypeBuilder? _projectType;
  SimpleTypeBuilder get projectType =>
      _$this._projectType ??= new SimpleTypeBuilder();
  set projectType(covariant SimpleTypeBuilder? projectType) =>
      _$this._projectType = projectType;

  ListBuilder<Executor>? _executors;
  ListBuilder<Executor> get executors =>
      _$this._executors ??= new ListBuilder<Executor>();
  set executors(covariant ListBuilder<Executor>? executors) =>
      _$this._executors = executors;

  String? _taskCategory;
  String? get taskCategory => _$this._taskCategory;
  set taskCategory(covariant String? taskCategory) =>
      _$this._taskCategory = taskCategory;

  ListBuilder<HistoryItem>? _history;
  ListBuilder<HistoryItem> get history =>
      _$this._history ??= new ListBuilder<HistoryItem>();
  set history(covariant ListBuilder<HistoryItem>? history) =>
      _$this._history = history;

  int? _maxExecutors;
  int? get maxExecutors => _$this._maxExecutors;
  set maxExecutors(covariant int? maxExecutors) =>
      _$this._maxExecutors = maxExecutors;

  int? _currentExecutors;
  int? get currentExecutors => _$this._currentExecutors;
  set currentExecutors(covariant int? currentExecutors) =>
      _$this._currentExecutors = currentExecutors;

  MonthBuilder? _month;
  MonthBuilder get month => _$this._month ??= new MonthBuilder();
  set month(covariant MonthBuilder? month) => _$this._month = month;

  String? _fullPath;
  String? get fullPath => _$this._fullPath;
  set fullPath(covariant String? fullPath) => _$this._fullPath = fullPath;

  SimpleTypeBuilder? _section;
  SimpleTypeBuilder get section => _$this._section ??= new SimpleTypeBuilder();
  set section(covariant SimpleTypeBuilder? section) =>
      _$this._section = section;

  SimpleTypeBuilder? _stage;
  SimpleTypeBuilder get stage => _$this._stage ??= new SimpleTypeBuilder();
  set stage(covariant SimpleTypeBuilder? stage) => _$this._stage = stage;

  ListBuilder<SubTask>? _subTasks;
  ListBuilder<SubTask> get subTasks =>
      _$this._subTasks ??= new ListBuilder<SubTask>();
  set subTasks(covariant ListBuilder<SubTask>? subTasks) =>
      _$this._subTasks = subTasks;

  int? _httpCode;
  int? get httpCode => _$this._httpCode;
  set httpCode(covariant int? httpCode) => _$this._httpCode = httpCode;

  TaskDetailsBuilder();

  TaskDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _guid = $v.guid;
      _name = $v.name;
      _status = $v.status;
      _description = $v.description;
      _order = $v.order;
      _category = $v.category;
      _duration = $v.duration;
      _tryComplete = $v.tryComplete;
      _countNorm = $v.countNorm;
      _countFact = $v.countFact;
      _materials = $v.materials?.toBuilder();
      _elements = $v.elements?.toBuilder();
      _day = $v.day?.toBuilder();
      _projectType = $v.projectType?.toBuilder();
      _executors = $v.executors?.toBuilder();
      _taskCategory = $v.taskCategory;
      _history = $v.history?.toBuilder();
      _maxExecutors = $v.maxExecutors;
      _currentExecutors = $v.currentExecutors;
      _month = $v.month?.toBuilder();
      _fullPath = $v.fullPath;
      _section = $v.section?.toBuilder();
      _stage = $v.stage?.toBuilder();
      _subTasks = $v.subTasks?.toBuilder();
      _httpCode = $v.httpCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant TaskDetails other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TaskDetails;
  }

  @override
  void update(void Function(TaskDetailsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TaskDetails build() {
    _$TaskDetails _$result;
    try {
      _$result = _$v ??
          new _$TaskDetails._(
              guid: guid,
              name: name,
              status: status,
              description: description,
              order: order,
              category: category,
              duration: duration,
              tryComplete: tryComplete,
              countNorm: countNorm,
              countFact: countFact,
              materials: _materials?.build(),
              elements: _elements?.build(),
              day: _day?.build(),
              projectType: _projectType?.build(),
              executors: _executors?.build(),
              taskCategory: taskCategory,
              history: _history?.build(),
              maxExecutors: maxExecutors,
              currentExecutors: currentExecutors,
              month: _month?.build(),
              fullPath: fullPath,
              section: _section?.build(),
              stage: _stage?.build(),
              subTasks: _subTasks?.build(),
              httpCode: httpCode);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'materials';
        _materials?.build();
        _$failedField = 'elements';
        _elements?.build();
        _$failedField = 'day';
        _day?.build();
        _$failedField = 'projectType';
        _projectType?.build();
        _$failedField = 'executors';
        _executors?.build();

        _$failedField = 'history';
        _history?.build();

        _$failedField = 'month';
        _month?.build();

        _$failedField = 'section';
        _section?.build();
        _$failedField = 'stage';
        _stage?.build();
        _$failedField = 'subTasks';
        _subTasks?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TaskDetails', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
