// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permissions.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Permissions> _$permissionsSerializer = new _$PermissionsSerializer();

class _$PermissionsSerializer implements StructuredSerializer<Permissions> {
  @override
  final Iterable<Type> types = const [Permissions, _$Permissions];
  @override
  final String wireName = 'Permissions';

  @override
  Iterable<Object?> serialize(Serializers serializers, Permissions object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.accessPermissions;
    if (value != null) {
      result
        ..add('accessPermissions')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(AccessPermissions)));
    }
    value = object.actionsPermissions;
    if (value != null) {
      result
        ..add('actionsPermissions')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ActionPermissions)])));
    }
    value = object.actionPermissions;
    if (value != null) {
      result
        ..add('actionPermissions')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(ActionPermissions)));
    }
    return result;
  }

  @override
  Permissions deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PermissionsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'accessPermissions':
          result.accessPermissions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(AccessPermissions))!
              as AccessPermissions);
          break;
        case 'actionsPermissions':
          result.actionsPermissions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ActionPermissions)]))!
              as BuiltList<Object>);
          break;
        case 'actionPermissions':
          result.actionPermissions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ActionPermissions))!
              as ActionPermissions);
          break;
      }
    }

    return result.build();
  }
}

class _$Permissions extends Permissions {
  @override
  final AccessPermissions? accessPermissions;
  @override
  final BuiltList<ActionPermissions>? actionsPermissions;
  @override
  final ActionPermissions? actionPermissions;

  factory _$Permissions([void Function(PermissionsBuilder)? updates]) =>
      (new PermissionsBuilder()..update(updates)).build();

  _$Permissions._(
      {this.accessPermissions, this.actionsPermissions, this.actionPermissions})
      : super._();

  @override
  Permissions rebuild(void Function(PermissionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PermissionsBuilder toBuilder() => new PermissionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Permissions &&
        accessPermissions == other.accessPermissions &&
        actionsPermissions == other.actionsPermissions &&
        actionPermissions == other.actionPermissions;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, accessPermissions.hashCode), actionsPermissions.hashCode),
        actionPermissions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Permissions')
          ..add('accessPermissions', accessPermissions)
          ..add('actionsPermissions', actionsPermissions)
          ..add('actionPermissions', actionPermissions))
        .toString();
  }
}

class PermissionsBuilder implements Builder<Permissions, PermissionsBuilder> {
  _$Permissions? _$v;

  AccessPermissionsBuilder? _accessPermissions;
  AccessPermissionsBuilder get accessPermissions =>
      _$this._accessPermissions ??= new AccessPermissionsBuilder();
  set accessPermissions(AccessPermissionsBuilder? accessPermissions) =>
      _$this._accessPermissions = accessPermissions;

  ListBuilder<ActionPermissions>? _actionsPermissions;
  ListBuilder<ActionPermissions> get actionsPermissions =>
      _$this._actionsPermissions ??= new ListBuilder<ActionPermissions>();
  set actionsPermissions(ListBuilder<ActionPermissions>? actionsPermissions) =>
      _$this._actionsPermissions = actionsPermissions;

  ActionPermissionsBuilder? _actionPermissions;
  ActionPermissionsBuilder get actionPermissions =>
      _$this._actionPermissions ??= new ActionPermissionsBuilder();
  set actionPermissions(ActionPermissionsBuilder? actionPermissions) =>
      _$this._actionPermissions = actionPermissions;

  PermissionsBuilder();

  PermissionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessPermissions = $v.accessPermissions?.toBuilder();
      _actionsPermissions = $v.actionsPermissions?.toBuilder();
      _actionPermissions = $v.actionPermissions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Permissions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Permissions;
  }

  @override
  void update(void Function(PermissionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Permissions build() {
    _$Permissions _$result;
    try {
      _$result = _$v ??
          new _$Permissions._(
              accessPermissions: _accessPermissions?.build(),
              actionsPermissions: _actionsPermissions?.build(),
              actionPermissions: _actionPermissions?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'accessPermissions';
        _accessPermissions?.build();
        _$failedField = 'actionsPermissions';
        _actionsPermissions?.build();
        _$failedField = 'actionPermissions';
        _actionPermissions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Permissions', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
