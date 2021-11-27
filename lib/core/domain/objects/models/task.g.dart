// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Task> _$taskSerializer = new _$TaskSerializer();

class _$TaskSerializer implements StructuredSerializer<Task> {
  @override
  final Iterable<Type> types = const [Task, _$Task];
  @override
  final String wireName = 'Task';

  @override
  Iterable<Object?> serialize(Serializers serializers, Task object,
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
    value = object.duration;
    if (value != null) {
      result
        ..add('duration')
        ..add(serializers.serialize(value, specifiedType: const FullType(num)));
    }
    value = object.countFact;
    if (value != null) {
      result
        ..add('countFact')
        ..add(serializers.serialize(value, specifiedType: const FullType(num)));
    }
    value = object.countNorm;
    if (value != null) {
      result
        ..add('countNorm')
        ..add(serializers.serialize(value, specifiedType: const FullType(num)));
    }
    value = object.simpleTask;
    if (value != null) {
      result
        ..add('simpleTask')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isSelected;
    if (value != null) {
      result
        ..add('isSelected')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.day;
    if (value != null) {
      result
        ..add('day')
        ..add(serializers.serialize(value, specifiedType: const FullType(Day)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.category;
    if (value != null) {
      result
        ..add('category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.project;
    if (value != null) {
      result
        ..add('project')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(SimpleType)));
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
    value = object.executors;
    if (value != null) {
      result
        ..add('executors')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Executor)])));
    }
    return result;
  }

  @override
  Task deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TaskBuilder();

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
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'order':
          result.order = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'duration':
          result.duration = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'countFact':
          result.countFact = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'countNorm':
          result.countNorm = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'simpleTask':
          result.simpleTask = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'isSelected':
          result.isSelected = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'day':
          result.day.replace(serializers.deserialize(value,
              specifiedType: const FullType(Day))! as Day);
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'project':
          result.project.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleType))! as SimpleType);
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
        case 'executors':
          result.executors.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Executor)]))!
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$Task extends Task {
  @override
  final String? guid;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final num? order;
  @override
  final num? duration;
  @override
  final num? countFact;
  @override
  final num? countNorm;
  @override
  final bool? simpleTask;
  @override
  final bool? isSelected;
  @override
  final Day? day;
  @override
  final String? status;
  @override
  final String? category;
  @override
  final SimpleType? project;
  @override
  final MaterialModel? materials;
  @override
  final BuiltList<TaskElement>? elements;
  @override
  final BuiltList<Executor>? executors;

  factory _$Task([void Function(TaskBuilder)? updates]) =>
      (new TaskBuilder()..update(updates)).build();

  _$Task._(
      {this.guid,
      this.name,
      this.description,
      this.order,
      this.duration,
      this.countFact,
      this.countNorm,
      this.simpleTask,
      this.isSelected,
      this.day,
      this.status,
      this.category,
      this.project,
      this.materials,
      this.elements,
      this.executors})
      : super._();

  @override
  Task rebuild(void Function(TaskBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TaskBuilder toBuilder() => new TaskBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Task &&
        guid == other.guid &&
        name == other.name &&
        description == other.description &&
        order == other.order &&
        duration == other.duration &&
        countFact == other.countFact &&
        countNorm == other.countNorm &&
        simpleTask == other.simpleTask &&
        isSelected == other.isSelected &&
        day == other.day &&
        status == other.status &&
        category == other.category &&
        project == other.project &&
        materials == other.materials &&
        elements == other.elements &&
        executors == other.executors;
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
                                                                    0,
                                                                    guid
                                                                        .hashCode),
                                                                name.hashCode),
                                                            description
                                                                .hashCode),
                                                        order.hashCode),
                                                    duration.hashCode),
                                                countFact.hashCode),
                                            countNorm.hashCode),
                                        simpleTask.hashCode),
                                    isSelected.hashCode),
                                day.hashCode),
                            status.hashCode),
                        category.hashCode),
                    project.hashCode),
                materials.hashCode),
            elements.hashCode),
        executors.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Task')
          ..add('guid', guid)
          ..add('name', name)
          ..add('description', description)
          ..add('order', order)
          ..add('duration', duration)
          ..add('countFact', countFact)
          ..add('countNorm', countNorm)
          ..add('simpleTask', simpleTask)
          ..add('isSelected', isSelected)
          ..add('day', day)
          ..add('status', status)
          ..add('category', category)
          ..add('project', project)
          ..add('materials', materials)
          ..add('elements', elements)
          ..add('executors', executors))
        .toString();
  }
}

class TaskBuilder implements Builder<Task, TaskBuilder> {
  _$Task? _$v;

  String? _guid;
  String? get guid => _$this._guid;
  set guid(String? guid) => _$this._guid = guid;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  num? _order;
  num? get order => _$this._order;
  set order(num? order) => _$this._order = order;

  num? _duration;
  num? get duration => _$this._duration;
  set duration(num? duration) => _$this._duration = duration;

  num? _countFact;
  num? get countFact => _$this._countFact;
  set countFact(num? countFact) => _$this._countFact = countFact;

  num? _countNorm;
  num? get countNorm => _$this._countNorm;
  set countNorm(num? countNorm) => _$this._countNorm = countNorm;

  bool? _simpleTask;
  bool? get simpleTask => _$this._simpleTask;
  set simpleTask(bool? simpleTask) => _$this._simpleTask = simpleTask;

  bool? _isSelected;
  bool? get isSelected => _$this._isSelected;
  set isSelected(bool? isSelected) => _$this._isSelected = isSelected;

  DayBuilder? _day;
  DayBuilder get day => _$this._day ??= new DayBuilder();
  set day(DayBuilder? day) => _$this._day = day;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  SimpleTypeBuilder? _project;
  SimpleTypeBuilder get project => _$this._project ??= new SimpleTypeBuilder();
  set project(SimpleTypeBuilder? project) => _$this._project = project;

  MaterialModelBuilder? _materials;
  MaterialModelBuilder get materials =>
      _$this._materials ??= new MaterialModelBuilder();
  set materials(MaterialModelBuilder? materials) =>
      _$this._materials = materials;

  ListBuilder<TaskElement>? _elements;
  ListBuilder<TaskElement> get elements =>
      _$this._elements ??= new ListBuilder<TaskElement>();
  set elements(ListBuilder<TaskElement>? elements) =>
      _$this._elements = elements;

  ListBuilder<Executor>? _executors;
  ListBuilder<Executor> get executors =>
      _$this._executors ??= new ListBuilder<Executor>();
  set executors(ListBuilder<Executor>? executors) =>
      _$this._executors = executors;

  TaskBuilder();

  TaskBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _guid = $v.guid;
      _name = $v.name;
      _description = $v.description;
      _order = $v.order;
      _duration = $v.duration;
      _countFact = $v.countFact;
      _countNorm = $v.countNorm;
      _simpleTask = $v.simpleTask;
      _isSelected = $v.isSelected;
      _day = $v.day?.toBuilder();
      _status = $v.status;
      _category = $v.category;
      _project = $v.project?.toBuilder();
      _materials = $v.materials?.toBuilder();
      _elements = $v.elements?.toBuilder();
      _executors = $v.executors?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Task other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Task;
  }

  @override
  void update(void Function(TaskBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Task build() {
    _$Task _$result;
    try {
      _$result = _$v ??
          new _$Task._(
              guid: guid,
              name: name,
              description: description,
              order: order,
              duration: duration,
              countFact: countFact,
              countNorm: countNorm,
              simpleTask: simpleTask,
              isSelected: isSelected,
              day: _day?.build(),
              status: status,
              category: category,
              project: _project?.build(),
              materials: _materials?.build(),
              elements: _elements?.build(),
              executors: _executors?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'day';
        _day?.build();

        _$failedField = 'project';
        _project?.build();
        _$failedField = 'materials';
        _materials?.build();
        _$failedField = 'elements';
        _elements?.build();
        _$failedField = 'executors';
        _executors?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Task', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
