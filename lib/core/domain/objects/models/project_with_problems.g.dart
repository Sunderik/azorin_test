// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_with_problems.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProjectWithProblems> _$projectWithProblemsSerializer =
    new _$ProjectWithProblemsSerializer();

class _$ProjectWithProblemsSerializer
    implements StructuredSerializer<ProjectWithProblems> {
  @override
  final Iterable<Type> types = const [
    ProjectWithProblems,
    _$ProjectWithProblems
  ];
  @override
  final String wireName = 'ProjectWithProblems';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ProjectWithProblems object,
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
    value = object.fullProjectName;
    if (value != null) {
      result
        ..add('fullProjectName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.problems;
    if (value != null) {
      result
        ..add('problems')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ProblemDetails)])));
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
  ProjectWithProblems deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProjectWithProblemsBuilder();

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
        case 'fullProjectName':
          result.fullProjectName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'problems':
          result.problems.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ProblemDetails)]))!
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

class _$ProjectWithProblems extends ProjectWithProblems {
  @override
  final String? guid;
  @override
  final String? fullProjectName;
  @override
  final BuiltList<ProblemDetails>? problems;
  @override
  final int? httpCode;

  factory _$ProjectWithProblems(
          [void Function(ProjectWithProblemsBuilder)? updates]) =>
      (new ProjectWithProblemsBuilder()..update(updates)).build();

  _$ProjectWithProblems._(
      {this.guid, this.fullProjectName, this.problems, this.httpCode})
      : super._();

  @override
  ProjectWithProblems rebuild(
          void Function(ProjectWithProblemsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectWithProblemsBuilder toBuilder() =>
      new ProjectWithProblemsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectWithProblems &&
        guid == other.guid &&
        fullProjectName == other.fullProjectName &&
        problems == other.problems &&
        httpCode == other.httpCode;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, guid.hashCode), fullProjectName.hashCode),
            problems.hashCode),
        httpCode.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProjectWithProblems')
          ..add('guid', guid)
          ..add('fullProjectName', fullProjectName)
          ..add('problems', problems)
          ..add('httpCode', httpCode))
        .toString();
  }
}

class ProjectWithProblemsBuilder
    implements
        Builder<ProjectWithProblems, ProjectWithProblemsBuilder>,
        BaseModelBuilder {
  _$ProjectWithProblems? _$v;

  String? _guid;
  String? get guid => _$this._guid;
  set guid(covariant String? guid) => _$this._guid = guid;

  String? _fullProjectName;
  String? get fullProjectName => _$this._fullProjectName;
  set fullProjectName(covariant String? fullProjectName) =>
      _$this._fullProjectName = fullProjectName;

  ListBuilder<ProblemDetails>? _problems;
  ListBuilder<ProblemDetails> get problems =>
      _$this._problems ??= new ListBuilder<ProblemDetails>();
  set problems(covariant ListBuilder<ProblemDetails>? problems) =>
      _$this._problems = problems;

  int? _httpCode;
  int? get httpCode => _$this._httpCode;
  set httpCode(covariant int? httpCode) => _$this._httpCode = httpCode;

  ProjectWithProblemsBuilder();

  ProjectWithProblemsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _guid = $v.guid;
      _fullProjectName = $v.fullProjectName;
      _problems = $v.problems?.toBuilder();
      _httpCode = $v.httpCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant ProjectWithProblems other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProjectWithProblems;
  }

  @override
  void update(void Function(ProjectWithProblemsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProjectWithProblems build() {
    _$ProjectWithProblems _$result;
    try {
      _$result = _$v ??
          new _$ProjectWithProblems._(
              guid: guid,
              fullProjectName: fullProjectName,
              problems: _problems?.build(),
              httpCode: httpCode);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'problems';
        _problems?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ProjectWithProblems', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
