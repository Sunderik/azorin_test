// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_details_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TeamMemberDetailsState extends TeamMemberDetailsState {
  @override
  final Executor? executor;
  @override
  final ScreenStatusEnum? teamMemberDetailsScreenStatus;

  factory _$TeamMemberDetailsState(
          [void Function(TeamMemberDetailsStateBuilder)? updates]) =>
      (new TeamMemberDetailsStateBuilder()..update(updates)).build();

  _$TeamMemberDetailsState._(
      {this.executor, this.teamMemberDetailsScreenStatus})
      : super._();

  @override
  TeamMemberDetailsState rebuild(
          void Function(TeamMemberDetailsStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TeamMemberDetailsStateBuilder toBuilder() =>
      new TeamMemberDetailsStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TeamMemberDetailsState &&
        executor == other.executor &&
        teamMemberDetailsScreenStatus == other.teamMemberDetailsScreenStatus;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc(0, executor.hashCode), teamMemberDetailsScreenStatus.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TeamMemberDetailsState')
          ..add('executor', executor)
          ..add('teamMemberDetailsScreenStatus', teamMemberDetailsScreenStatus))
        .toString();
  }
}

class TeamMemberDetailsStateBuilder
    implements Builder<TeamMemberDetailsState, TeamMemberDetailsStateBuilder> {
  _$TeamMemberDetailsState? _$v;

  ExecutorBuilder? _executor;
  ExecutorBuilder get executor => _$this._executor ??= new ExecutorBuilder();
  set executor(ExecutorBuilder? executor) => _$this._executor = executor;

  ScreenStatusEnum? _teamMemberDetailsScreenStatus;
  ScreenStatusEnum? get teamMemberDetailsScreenStatus =>
      _$this._teamMemberDetailsScreenStatus;
  set teamMemberDetailsScreenStatus(
          ScreenStatusEnum? teamMemberDetailsScreenStatus) =>
      _$this._teamMemberDetailsScreenStatus = teamMemberDetailsScreenStatus;

  TeamMemberDetailsStateBuilder();

  TeamMemberDetailsStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _executor = $v.executor?.toBuilder();
      _teamMemberDetailsScreenStatus = $v.teamMemberDetailsScreenStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TeamMemberDetailsState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TeamMemberDetailsState;
  }

  @override
  void update(void Function(TeamMemberDetailsStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TeamMemberDetailsState build() {
    _$TeamMemberDetailsState _$result;
    try {
      _$result = _$v ??
          new _$TeamMemberDetailsState._(
              executor: _executor?.build(),
              teamMemberDetailsScreenStatus: teamMemberDetailsScreenStatus);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'executor';
        _executor?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TeamMemberDetailsState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
