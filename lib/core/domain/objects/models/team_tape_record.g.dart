// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_tape_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TeamTapeRecord> _$teamTapeRecordSerializer =
    new _$TeamTapeRecordSerializer();

class _$TeamTapeRecordSerializer
    implements StructuredSerializer<TeamTapeRecord> {
  @override
  final Iterable<Type> types = const [TeamTapeRecord, _$TeamTapeRecord];
  @override
  final String wireName = 'TeamTapeRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, TeamTapeRecord object,
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
    value = object.date;
    if (value != null) {
      result
        ..add('date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.coordinates;
    if (value != null) {
      result
        ..add('coordinates')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Coordinates)));
    }
    value = object.actor;
    if (value != null) {
      result
        ..add('actor')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Actor)));
    }
    value = object.statusGuid;
    if (value != null) {
      result
        ..add('statusGuid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reasonGuid;
    if (value != null) {
      result
        ..add('reasonGuid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reasonForAbsenceComment;
    if (value != null) {
      result
        ..add('reasonForAbsenceComment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.startDate;
    if (value != null) {
      result
        ..add('startDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.endDate;
    if (value != null) {
      result
        ..add('endDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.imageGuid;
    if (value != null) {
      result
        ..add('imageGuid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  TeamTapeRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TeamTapeRecordBuilder();

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
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'coordinates':
          result.coordinates.replace(serializers.deserialize(value,
              specifiedType: const FullType(Coordinates))! as Coordinates);
          break;
        case 'actor':
          result.actor.replace(serializers.deserialize(value,
              specifiedType: const FullType(Actor))! as Actor);
          break;
        case 'statusGuid':
          result.statusGuid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'reasonGuid':
          result.reasonGuid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'reasonForAbsenceComment':
          result.reasonForAbsenceComment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'startDate':
          result.startDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'endDate':
          result.endDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'imageGuid':
          result.imageGuid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TeamTapeRecord extends TeamTapeRecord {
  @override
  final String? guid;
  @override
  final DateTime? date;
  @override
  final Coordinates? coordinates;
  @override
  final Actor? actor;
  @override
  final String? statusGuid;
  @override
  final String? reasonGuid;
  @override
  final String? reasonForAbsenceComment;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final String? imageGuid;

  factory _$TeamTapeRecord([void Function(TeamTapeRecordBuilder)? updates]) =>
      (new TeamTapeRecordBuilder()..update(updates)).build();

  _$TeamTapeRecord._(
      {this.guid,
      this.date,
      this.coordinates,
      this.actor,
      this.statusGuid,
      this.reasonGuid,
      this.reasonForAbsenceComment,
      this.startDate,
      this.endDate,
      this.imageGuid})
      : super._();

  @override
  TeamTapeRecord rebuild(void Function(TeamTapeRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TeamTapeRecordBuilder toBuilder() =>
      new TeamTapeRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TeamTapeRecord &&
        guid == other.guid &&
        date == other.date &&
        coordinates == other.coordinates &&
        actor == other.actor &&
        statusGuid == other.statusGuid &&
        reasonGuid == other.reasonGuid &&
        reasonForAbsenceComment == other.reasonForAbsenceComment &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        imageGuid == other.imageGuid;
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
                                $jc($jc($jc(0, guid.hashCode), date.hashCode),
                                    coordinates.hashCode),
                                actor.hashCode),
                            statusGuid.hashCode),
                        reasonGuid.hashCode),
                    reasonForAbsenceComment.hashCode),
                startDate.hashCode),
            endDate.hashCode),
        imageGuid.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TeamTapeRecord')
          ..add('guid', guid)
          ..add('date', date)
          ..add('coordinates', coordinates)
          ..add('actor', actor)
          ..add('statusGuid', statusGuid)
          ..add('reasonGuid', reasonGuid)
          ..add('reasonForAbsenceComment', reasonForAbsenceComment)
          ..add('startDate', startDate)
          ..add('endDate', endDate)
          ..add('imageGuid', imageGuid))
        .toString();
  }
}

class TeamTapeRecordBuilder
    implements Builder<TeamTapeRecord, TeamTapeRecordBuilder> {
  _$TeamTapeRecord? _$v;

  String? _guid;
  String? get guid => _$this._guid;
  set guid(String? guid) => _$this._guid = guid;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  CoordinatesBuilder? _coordinates;
  CoordinatesBuilder get coordinates =>
      _$this._coordinates ??= new CoordinatesBuilder();
  set coordinates(CoordinatesBuilder? coordinates) =>
      _$this._coordinates = coordinates;

  ActorBuilder? _actor;
  ActorBuilder get actor => _$this._actor ??= new ActorBuilder();
  set actor(ActorBuilder? actor) => _$this._actor = actor;

  String? _statusGuid;
  String? get statusGuid => _$this._statusGuid;
  set statusGuid(String? statusGuid) => _$this._statusGuid = statusGuid;

  String? _reasonGuid;
  String? get reasonGuid => _$this._reasonGuid;
  set reasonGuid(String? reasonGuid) => _$this._reasonGuid = reasonGuid;

  String? _reasonForAbsenceComment;
  String? get reasonForAbsenceComment => _$this._reasonForAbsenceComment;
  set reasonForAbsenceComment(String? reasonForAbsenceComment) =>
      _$this._reasonForAbsenceComment = reasonForAbsenceComment;

  DateTime? _startDate;
  DateTime? get startDate => _$this._startDate;
  set startDate(DateTime? startDate) => _$this._startDate = startDate;

  DateTime? _endDate;
  DateTime? get endDate => _$this._endDate;
  set endDate(DateTime? endDate) => _$this._endDate = endDate;

  String? _imageGuid;
  String? get imageGuid => _$this._imageGuid;
  set imageGuid(String? imageGuid) => _$this._imageGuid = imageGuid;

  TeamTapeRecordBuilder();

  TeamTapeRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _guid = $v.guid;
      _date = $v.date;
      _coordinates = $v.coordinates?.toBuilder();
      _actor = $v.actor?.toBuilder();
      _statusGuid = $v.statusGuid;
      _reasonGuid = $v.reasonGuid;
      _reasonForAbsenceComment = $v.reasonForAbsenceComment;
      _startDate = $v.startDate;
      _endDate = $v.endDate;
      _imageGuid = $v.imageGuid;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TeamTapeRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TeamTapeRecord;
  }

  @override
  void update(void Function(TeamTapeRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TeamTapeRecord build() {
    _$TeamTapeRecord _$result;
    try {
      _$result = _$v ??
          new _$TeamTapeRecord._(
              guid: guid,
              date: date,
              coordinates: _coordinates?.build(),
              actor: _actor?.build(),
              statusGuid: statusGuid,
              reasonGuid: reasonGuid,
              reasonForAbsenceComment: reasonForAbsenceComment,
              startDate: startDate,
              endDate: endDate,
              imageGuid: imageGuid);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'coordinates';
        _coordinates?.build();
        _$failedField = 'actor';
        _actor?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TeamTapeRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
