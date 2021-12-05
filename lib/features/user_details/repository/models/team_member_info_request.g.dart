// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_member_info_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TeamMemberInfoRequest> _$teamMemberInfoRequestSerializer =
    new _$TeamMemberInfoRequestSerializer();

class _$TeamMemberInfoRequestSerializer
    implements StructuredSerializer<TeamMemberInfoRequest> {
  @override
  final Iterable<Type> types = const [
    TeamMemberInfoRequest,
    _$TeamMemberInfoRequest
  ];
  @override
  final String wireName = 'TeamMemberInfoRequest';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, TeamMemberInfoRequest object,
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
    return result;
  }

  @override
  TeamMemberInfoRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TeamMemberInfoRequestBuilder();

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
      }
    }

    return result.build();
  }
}

class _$TeamMemberInfoRequest extends TeamMemberInfoRequest {
  @override
  final String? guid;

  factory _$TeamMemberInfoRequest(
          [void Function(TeamMemberInfoRequestBuilder)? updates]) =>
      (new TeamMemberInfoRequestBuilder()..update(updates)).build();

  _$TeamMemberInfoRequest._({this.guid}) : super._();

  @override
  TeamMemberInfoRequest rebuild(
          void Function(TeamMemberInfoRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TeamMemberInfoRequestBuilder toBuilder() =>
      new TeamMemberInfoRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TeamMemberInfoRequest && guid == other.guid;
  }

  @override
  int get hashCode {
    return $jf($jc(0, guid.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TeamMemberInfoRequest')
          ..add('guid', guid))
        .toString();
  }
}

class TeamMemberInfoRequestBuilder
    implements Builder<TeamMemberInfoRequest, TeamMemberInfoRequestBuilder> {
  _$TeamMemberInfoRequest? _$v;

  String? _guid;
  String? get guid => _$this._guid;
  set guid(String? guid) => _$this._guid = guid;

  TeamMemberInfoRequestBuilder();

  TeamMemberInfoRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _guid = $v.guid;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TeamMemberInfoRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TeamMemberInfoRequest;
  }

  @override
  void update(void Function(TeamMemberInfoRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TeamMemberInfoRequest build() {
    final _$result = _$v ?? new _$TeamMemberInfoRequest._(guid: guid);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
