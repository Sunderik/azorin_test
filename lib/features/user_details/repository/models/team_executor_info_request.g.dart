// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_executor_info_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TeamExecutorInfoRequest> _$teamExecutorInfoRequestSerializer =
    new _$TeamExecutorInfoRequestSerializer();

class _$TeamExecutorInfoRequestSerializer
    implements StructuredSerializer<TeamExecutorInfoRequest> {
  @override
  final Iterable<Type> types = const [
    TeamExecutorInfoRequest,
    _$TeamExecutorInfoRequest
  ];
  @override
  final String wireName = 'TeamExecutorInfoRequest';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, TeamExecutorInfoRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.projectGuid;
    if (value != null) {
      result
        ..add('projectGuid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.executorGuid;
    if (value != null) {
      result
        ..add('executorGuid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  TeamExecutorInfoRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TeamExecutorInfoRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'projectGuid':
          result.projectGuid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'executorGuid':
          result.executorGuid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TeamExecutorInfoRequest extends TeamExecutorInfoRequest {
  @override
  final String? projectGuid;
  @override
  final String? executorGuid;

  factory _$TeamExecutorInfoRequest(
          [void Function(TeamExecutorInfoRequestBuilder)? updates]) =>
      (new TeamExecutorInfoRequestBuilder()..update(updates)).build();

  _$TeamExecutorInfoRequest._({this.projectGuid, this.executorGuid})
      : super._();

  @override
  TeamExecutorInfoRequest rebuild(
          void Function(TeamExecutorInfoRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TeamExecutorInfoRequestBuilder toBuilder() =>
      new TeamExecutorInfoRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TeamExecutorInfoRequest &&
        projectGuid == other.projectGuid &&
        executorGuid == other.executorGuid;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, projectGuid.hashCode), executorGuid.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TeamExecutorInfoRequest')
          ..add('projectGuid', projectGuid)
          ..add('executorGuid', executorGuid))
        .toString();
  }
}

class TeamExecutorInfoRequestBuilder
    implements
        Builder<TeamExecutorInfoRequest, TeamExecutorInfoRequestBuilder> {
  _$TeamExecutorInfoRequest? _$v;

  String? _projectGuid;
  String? get projectGuid => _$this._projectGuid;
  set projectGuid(String? projectGuid) => _$this._projectGuid = projectGuid;

  String? _executorGuid;
  String? get executorGuid => _$this._executorGuid;
  set executorGuid(String? executorGuid) => _$this._executorGuid = executorGuid;

  TeamExecutorInfoRequestBuilder();

  TeamExecutorInfoRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _projectGuid = $v.projectGuid;
      _executorGuid = $v.executorGuid;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TeamExecutorInfoRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TeamExecutorInfoRequest;
  }

  @override
  void update(void Function(TeamExecutorInfoRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TeamExecutorInfoRequest build() {
    final _$result = _$v ??
        new _$TeamExecutorInfoRequest._(
            projectGuid: projectGuid, executorGuid: executorGuid);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
