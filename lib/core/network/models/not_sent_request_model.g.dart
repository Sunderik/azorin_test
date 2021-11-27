// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'not_sent_request_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NotSentRequestModel> _$notSentRequestModelSerializer =
    new _$NotSentRequestModelSerializer();

class _$NotSentRequestModelSerializer
    implements StructuredSerializer<NotSentRequestModel> {
  @override
  final Iterable<Type> types = const [
    NotSentRequestModel,
    _$NotSentRequestModel
  ];
  @override
  final String wireName = 'NotSentRequestModel';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, NotSentRequestModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.timeSending;
    if (value != null) {
      result
        ..add('timeSending')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.url;
    if (value != null) {
      result
        ..add('url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.request;
    if (value != null) {
      result
        ..add('request')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.requestFields;
    if (value != null) {
      result
        ..add('requestFields')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltMap,
                const [const FullType(String), const FullType(String)])));
    }
    value = object.filePath;
    if (value != null) {
      result
        ..add('filePath')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.headers;
    if (value != null) {
      result
        ..add('headers')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltMap,
                const [const FullType(String), const FullType(String)])));
    }
    return result;
  }

  @override
  NotSentRequestModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NotSentRequestModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'timeSending':
          result.timeSending = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'request':
          result.request = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'requestFields':
          result.requestFields.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap,
                  const [const FullType(String), const FullType(String)]))!);
          break;
        case 'filePath':
          result.filePath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'headers':
          result.headers.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap,
                  const [const FullType(String), const FullType(String)]))!);
          break;
      }
    }

    return result.build();
  }
}

class _$NotSentRequestModel extends NotSentRequestModel {
  @override
  final String? timeSending;
  @override
  final String? description;
  @override
  final String? url;
  @override
  final String? request;
  @override
  final BuiltMap<String, String>? requestFields;
  @override
  final String? filePath;
  @override
  final BuiltMap<String, String>? headers;

  factory _$NotSentRequestModel(
          [void Function(NotSentRequestModelBuilder)? updates]) =>
      (new NotSentRequestModelBuilder()..update(updates)).build();

  _$NotSentRequestModel._(
      {this.timeSending,
      this.description,
      this.url,
      this.request,
      this.requestFields,
      this.filePath,
      this.headers})
      : super._();

  @override
  NotSentRequestModel rebuild(
          void Function(NotSentRequestModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotSentRequestModelBuilder toBuilder() =>
      new NotSentRequestModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotSentRequestModel &&
        timeSending == other.timeSending &&
        description == other.description &&
        url == other.url &&
        request == other.request &&
        requestFields == other.requestFields &&
        filePath == other.filePath &&
        headers == other.headers;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, timeSending.hashCode), description.hashCode),
                        url.hashCode),
                    request.hashCode),
                requestFields.hashCode),
            filePath.hashCode),
        headers.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NotSentRequestModel')
          ..add('timeSending', timeSending)
          ..add('description', description)
          ..add('url', url)
          ..add('request', request)
          ..add('requestFields', requestFields)
          ..add('filePath', filePath)
          ..add('headers', headers))
        .toString();
  }
}

class NotSentRequestModelBuilder
    implements Builder<NotSentRequestModel, NotSentRequestModelBuilder> {
  _$NotSentRequestModel? _$v;

  String? _timeSending;
  String? get timeSending => _$this._timeSending;
  set timeSending(String? timeSending) => _$this._timeSending = timeSending;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _request;
  String? get request => _$this._request;
  set request(String? request) => _$this._request = request;

  MapBuilder<String, String>? _requestFields;
  MapBuilder<String, String> get requestFields =>
      _$this._requestFields ??= new MapBuilder<String, String>();
  set requestFields(MapBuilder<String, String>? requestFields) =>
      _$this._requestFields = requestFields;

  String? _filePath;
  String? get filePath => _$this._filePath;
  set filePath(String? filePath) => _$this._filePath = filePath;

  MapBuilder<String, String>? _headers;
  MapBuilder<String, String> get headers =>
      _$this._headers ??= new MapBuilder<String, String>();
  set headers(MapBuilder<String, String>? headers) => _$this._headers = headers;

  NotSentRequestModelBuilder();

  NotSentRequestModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _timeSending = $v.timeSending;
      _description = $v.description;
      _url = $v.url;
      _request = $v.request;
      _requestFields = $v.requestFields?.toBuilder();
      _filePath = $v.filePath;
      _headers = $v.headers?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotSentRequestModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NotSentRequestModel;
  }

  @override
  void update(void Function(NotSentRequestModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NotSentRequestModel build() {
    _$NotSentRequestModel _$result;
    try {
      _$result = _$v ??
          new _$NotSentRequestModel._(
              timeSending: timeSending,
              description: description,
              url: url,
              request: request,
              requestFields: _requestFields?.build(),
              filePath: filePath,
              headers: _headers?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'requestFields';
        _requestFields?.build();

        _$failedField = 'headers';
        _headers?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NotSentRequestModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
