// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_address.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProjectAddress extends ProjectAddress {
  @override
  final String? guid;
  @override
  final String? path;
  @override
  final String? httpPort;
  @override
  final String? instanceId;

  factory _$ProjectAddress([void Function(ProjectAddressBuilder)? updates]) =>
      (new ProjectAddressBuilder()..update(updates)).build();

  _$ProjectAddress._({this.guid, this.path, this.httpPort, this.instanceId})
      : super._();

  @override
  ProjectAddress rebuild(void Function(ProjectAddressBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectAddressBuilder toBuilder() =>
      new ProjectAddressBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectAddress &&
        guid == other.guid &&
        path == other.path &&
        httpPort == other.httpPort &&
        instanceId == other.instanceId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, guid.hashCode), path.hashCode), httpPort.hashCode),
        instanceId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProjectAddress')
          ..add('guid', guid)
          ..add('path', path)
          ..add('httpPort', httpPort)
          ..add('instanceId', instanceId))
        .toString();
  }
}

class ProjectAddressBuilder
    implements Builder<ProjectAddress, ProjectAddressBuilder> {
  _$ProjectAddress? _$v;

  String? _guid;
  String? get guid => _$this._guid;
  set guid(String? guid) => _$this._guid = guid;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  String? _httpPort;
  String? get httpPort => _$this._httpPort;
  set httpPort(String? httpPort) => _$this._httpPort = httpPort;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  ProjectAddressBuilder();

  ProjectAddressBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _guid = $v.guid;
      _path = $v.path;
      _httpPort = $v.httpPort;
      _instanceId = $v.instanceId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectAddress other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProjectAddress;
  }

  @override
  void update(void Function(ProjectAddressBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProjectAddress build() {
    final _$result = _$v ??
        new _$ProjectAddress._(
            guid: guid, path: path, httpPort: httpPort, instanceId: instanceId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
