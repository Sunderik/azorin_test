// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multipart_file_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MultipartFileModel extends MultipartFileModel {
  @override
  final String? field;
  @override
  final Uint8List? bytes;
  @override
  final String? filename;

  factory _$MultipartFileModel(
          [void Function(MultipartFileModelBuilder)? updates]) =>
      (new MultipartFileModelBuilder()..update(updates)).build();

  _$MultipartFileModel._({this.field, this.bytes, this.filename}) : super._();

  @override
  MultipartFileModel rebuild(
          void Function(MultipartFileModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MultipartFileModelBuilder toBuilder() =>
      new MultipartFileModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MultipartFileModel &&
        field == other.field &&
        bytes == other.bytes &&
        filename == other.filename;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, field.hashCode), bytes.hashCode), filename.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MultipartFileModel')
          ..add('field', field)
          ..add('bytes', bytes)
          ..add('filename', filename))
        .toString();
  }
}

class MultipartFileModelBuilder
    implements Builder<MultipartFileModel, MultipartFileModelBuilder> {
  _$MultipartFileModel? _$v;

  String? _field;
  String? get field => _$this._field;
  set field(String? field) => _$this._field = field;

  Uint8List? _bytes;
  Uint8List? get bytes => _$this._bytes;
  set bytes(Uint8List? bytes) => _$this._bytes = bytes;

  String? _filename;
  String? get filename => _$this._filename;
  set filename(String? filename) => _$this._filename = filename;

  MultipartFileModelBuilder();

  MultipartFileModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _field = $v.field;
      _bytes = $v.bytes;
      _filename = $v.filename;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MultipartFileModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MultipartFileModel;
  }

  @override
  void update(void Function(MultipartFileModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MultipartFileModel build() {
    final _$result = _$v ??
        new _$MultipartFileModel._(
            field: field, bytes: bytes, filename: filename);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
