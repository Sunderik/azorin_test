// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppState> _$appStateSerializer = new _$AppStateSerializer();

class _$AppStateSerializer implements StructuredSerializer<AppState> {
  @override
  final Iterable<Type> types = const [AppState, _$AppState];
  @override
  final String wireName = 'AppState';

  @override
  Iterable<Object?> serialize(Serializers serializers, AppState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'appTheme',
      serializers.serialize(object.appTheme,
          specifiedType: const FullType(AppTheme)),
      'navigationState',
      serializers.serialize(object.navigationState,
          specifiedType: const FullType(NavigationState)),
      'usersState',
      serializers.serialize(object.usersState,
          specifiedType: const FullType(UsersState)),
      'usersListState',
      serializers.serialize(object.usersListState,
          specifiedType: const FullType(UsersListScreenState)),
    ];

    return result;
  }

  @override
  AppState deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'appTheme':
          result.appTheme = serializers.deserialize(value,
              specifiedType: const FullType(AppTheme)) as AppTheme;
          break;
        case 'navigationState':
          result.navigationState.replace(serializers.deserialize(value,
                  specifiedType: const FullType(NavigationState))!
              as NavigationState);
          break;
        case 'usersState':
          result.usersState.replace(serializers.deserialize(value,
              specifiedType: const FullType(UsersState))! as UsersState);
          break;
        case 'usersListState':
          result.usersListState.replace(serializers.deserialize(value,
                  specifiedType: const FullType(UsersListScreenState))!
              as UsersListScreenState);
          break;
      }
    }

    return result.build();
  }
}

class _$AppState extends AppState {
  @override
  final AppTheme appTheme;
  @override
  final NavigationState navigationState;
  @override
  final UsersState usersState;
  @override
  final UsersListScreenState usersListState;

  factory _$AppState([void Function(AppStateBuilder)? updates]) =>
      (new AppStateBuilder()..update(updates)).build();

  _$AppState._(
      {required this.appTheme,
      required this.navigationState,
      required this.usersState,
      required this.usersListState})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(appTheme, 'AppState', 'appTheme');
    BuiltValueNullFieldError.checkNotNull(
        navigationState, 'AppState', 'navigationState');
    BuiltValueNullFieldError.checkNotNull(usersState, 'AppState', 'usersState');
    BuiltValueNullFieldError.checkNotNull(
        usersListState, 'AppState', 'usersListState');
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        appTheme == other.appTheme &&
        navigationState == other.navigationState &&
        usersState == other.usersState &&
        usersListState == other.usersListState;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, appTheme.hashCode), navigationState.hashCode),
            usersState.hashCode),
        usersListState.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('appTheme', appTheme)
          ..add('navigationState', navigationState)
          ..add('usersState', usersState)
          ..add('usersListState', usersListState))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState? _$v;

  AppTheme? _appTheme;
  AppTheme? get appTheme => _$this._appTheme;
  set appTheme(AppTheme? appTheme) => _$this._appTheme = appTheme;

  NavigationStateBuilder? _navigationState;
  NavigationStateBuilder get navigationState =>
      _$this._navigationState ??= new NavigationStateBuilder();
  set navigationState(NavigationStateBuilder? navigationState) =>
      _$this._navigationState = navigationState;

  UsersStateBuilder? _usersState;
  UsersStateBuilder get usersState =>
      _$this._usersState ??= new UsersStateBuilder();
  set usersState(UsersStateBuilder? usersState) =>
      _$this._usersState = usersState;

  UsersListScreenStateBuilder? _usersListState;
  UsersListScreenStateBuilder get usersListState =>
      _$this._usersListState ??= new UsersListScreenStateBuilder();
  set usersListState(UsersListScreenStateBuilder? usersListState) =>
      _$this._usersListState = usersListState;

  AppStateBuilder();

  AppStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _appTheme = $v.appTheme;
      _navigationState = $v.navigationState.toBuilder();
      _usersState = $v.usersState.toBuilder();
      _usersListState = $v.usersListState.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppState build() {
    _$AppState _$result;
    try {
      _$result = _$v ??
          new _$AppState._(
              appTheme: BuiltValueNullFieldError.checkNotNull(
                  appTheme, 'AppState', 'appTheme'),
              navigationState: navigationState.build(),
              usersState: usersState.build(),
              usersListState: usersListState.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'navigationState';
        navigationState.build();
        _$failedField = 'usersState';
        usersState.build();
        _$failedField = 'usersListState';
        usersListState.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
