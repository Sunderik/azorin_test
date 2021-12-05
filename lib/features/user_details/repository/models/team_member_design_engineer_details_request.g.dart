// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_member_design_engineer_details_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TeamMemberDesignEngineerDetailsRequest>
    _$teamMemberDesignEngineerDetailsRequestSerializer =
    new _$TeamMemberDesignEngineerDetailsRequestSerializer();

class _$TeamMemberDesignEngineerDetailsRequestSerializer
    implements StructuredSerializer<TeamMemberDesignEngineerDetailsRequest> {
  @override
  final Iterable<Type> types = const [
    TeamMemberDesignEngineerDetailsRequest,
    _$TeamMemberDesignEngineerDetailsRequest
  ];
  @override
  final String wireName = 'TeamMemberDesignEngineerDetailsRequest';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, TeamMemberDesignEngineerDetailsRequest object,
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
    value = object.factoryGuid;
    if (value != null) {
      result
        ..add('factoryGuid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  TeamMemberDesignEngineerDetailsRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TeamMemberDesignEngineerDetailsRequestBuilder();

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
        case 'factoryGuid':
          result.factoryGuid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TeamMemberDesignEngineerDetailsRequest
    extends TeamMemberDesignEngineerDetailsRequest {
  @override
  final String? guid;
  @override
  final String? factoryGuid;

  factory _$TeamMemberDesignEngineerDetailsRequest(
          [void Function(TeamMemberDesignEngineerDetailsRequestBuilder)?
              updates]) =>
      (new TeamMemberDesignEngineerDetailsRequestBuilder()..update(updates))
          .build();

  _$TeamMemberDesignEngineerDetailsRequest._({this.guid, this.factoryGuid})
      : super._();

  @override
  TeamMemberDesignEngineerDetailsRequest rebuild(
          void Function(TeamMemberDesignEngineerDetailsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TeamMemberDesignEngineerDetailsRequestBuilder toBuilder() =>
      new TeamMemberDesignEngineerDetailsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TeamMemberDesignEngineerDetailsRequest &&
        guid == other.guid &&
        factoryGuid == other.factoryGuid;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, guid.hashCode), factoryGuid.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'TeamMemberDesignEngineerDetailsRequest')
          ..add('guid', guid)
          ..add('factoryGuid', factoryGuid))
        .toString();
  }
}

class TeamMemberDesignEngineerDetailsRequestBuilder
    implements
        Builder<TeamMemberDesignEngineerDetailsRequest,
            TeamMemberDesignEngineerDetailsRequestBuilder> {
  _$TeamMemberDesignEngineerDetailsRequest? _$v;

  String? _guid;
  String? get guid => _$this._guid;
  set guid(String? guid) => _$this._guid = guid;

  String? _factoryGuid;
  String? get factoryGuid => _$this._factoryGuid;
  set factoryGuid(String? factoryGuid) => _$this._factoryGuid = factoryGuid;

  TeamMemberDesignEngineerDetailsRequestBuilder();

  TeamMemberDesignEngineerDetailsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _guid = $v.guid;
      _factoryGuid = $v.factoryGuid;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TeamMemberDesignEngineerDetailsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TeamMemberDesignEngineerDetailsRequest;
  }

  @override
  void update(
      void Function(TeamMemberDesignEngineerDetailsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TeamMemberDesignEngineerDetailsRequest build() {
    final _$result = _$v ??
        new _$TeamMemberDesignEngineerDetailsRequest._(
            guid: guid, factoryGuid: factoryGuid);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
