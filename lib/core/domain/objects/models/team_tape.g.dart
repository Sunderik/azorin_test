// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_tape.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TeamTape extends TeamTape {
  @override
  final String? projectGuid;
  @override
  final bool? hasReachedMax;
  @override
  final BuiltList<TeamTapeRecord>? records;

  factory _$TeamTape([void Function(TeamTapeBuilder)? updates]) =>
      (new TeamTapeBuilder()..update(updates)).build();

  _$TeamTape._({this.projectGuid, this.hasReachedMax, this.records})
      : super._();

  @override
  TeamTape rebuild(void Function(TeamTapeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TeamTapeBuilder toBuilder() => new TeamTapeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TeamTape &&
        projectGuid == other.projectGuid &&
        hasReachedMax == other.hasReachedMax &&
        records == other.records;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, projectGuid.hashCode), hasReachedMax.hashCode),
        records.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TeamTape')
          ..add('projectGuid', projectGuid)
          ..add('hasReachedMax', hasReachedMax)
          ..add('records', records))
        .toString();
  }
}

class TeamTapeBuilder implements Builder<TeamTape, TeamTapeBuilder> {
  _$TeamTape? _$v;

  String? _projectGuid;
  String? get projectGuid => _$this._projectGuid;
  set projectGuid(String? projectGuid) => _$this._projectGuid = projectGuid;

  bool? _hasReachedMax;
  bool? get hasReachedMax => _$this._hasReachedMax;
  set hasReachedMax(bool? hasReachedMax) =>
      _$this._hasReachedMax = hasReachedMax;

  ListBuilder<TeamTapeRecord>? _records;
  ListBuilder<TeamTapeRecord> get records =>
      _$this._records ??= new ListBuilder<TeamTapeRecord>();
  set records(ListBuilder<TeamTapeRecord>? records) =>
      _$this._records = records;

  TeamTapeBuilder();

  TeamTapeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _projectGuid = $v.projectGuid;
      _hasReachedMax = $v.hasReachedMax;
      _records = $v.records?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TeamTape other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TeamTape;
  }

  @override
  void update(void Function(TeamTapeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TeamTape build() {
    _$TeamTape _$result;
    try {
      _$result = _$v ??
          new _$TeamTape._(
              projectGuid: projectGuid,
              hasReachedMax: hasReachedMax,
              records: _records?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'records';
        _records?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TeamTape', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
