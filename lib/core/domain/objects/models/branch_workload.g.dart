// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch_workload.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BranchWorkload extends BranchWorkload {
  @override
  final bool? allObjectsLoaded;
  @override
  final BuiltList<DivisionWorkload>? divisions;

  factory _$BranchWorkload([void Function(BranchWorkloadBuilder)? updates]) =>
      (new BranchWorkloadBuilder()..update(updates)).build();

  _$BranchWorkload._({this.allObjectsLoaded, this.divisions}) : super._();

  @override
  BranchWorkload rebuild(void Function(BranchWorkloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BranchWorkloadBuilder toBuilder() =>
      new BranchWorkloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BranchWorkload &&
        allObjectsLoaded == other.allObjectsLoaded &&
        divisions == other.divisions;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, allObjectsLoaded.hashCode), divisions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BranchWorkload')
          ..add('allObjectsLoaded', allObjectsLoaded)
          ..add('divisions', divisions))
        .toString();
  }
}

class BranchWorkloadBuilder
    implements Builder<BranchWorkload, BranchWorkloadBuilder> {
  _$BranchWorkload? _$v;

  bool? _allObjectsLoaded;
  bool? get allObjectsLoaded => _$this._allObjectsLoaded;
  set allObjectsLoaded(bool? allObjectsLoaded) =>
      _$this._allObjectsLoaded = allObjectsLoaded;

  ListBuilder<DivisionWorkload>? _divisions;
  ListBuilder<DivisionWorkload> get divisions =>
      _$this._divisions ??= new ListBuilder<DivisionWorkload>();
  set divisions(ListBuilder<DivisionWorkload>? divisions) =>
      _$this._divisions = divisions;

  BranchWorkloadBuilder();

  BranchWorkloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _allObjectsLoaded = $v.allObjectsLoaded;
      _divisions = $v.divisions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BranchWorkload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BranchWorkload;
  }

  @override
  void update(void Function(BranchWorkloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BranchWorkload build() {
    _$BranchWorkload _$result;
    try {
      _$result = _$v ??
          new _$BranchWorkload._(
              allObjectsLoaded: allObjectsLoaded,
              divisions: _divisions?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'divisions';
        _divisions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BranchWorkload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
