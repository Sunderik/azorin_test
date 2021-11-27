// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_enum_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CommonEnumItem> _$commonEnumItemSerializer =
    new _$CommonEnumItemSerializer();

class _$CommonEnumItemSerializer
    implements StructuredSerializer<CommonEnumItem> {
  @override
  final Iterable<Type> types = const [CommonEnumItem, _$CommonEnumItem];
  @override
  final String wireName = 'CommonEnumItem';

  @override
  Iterable<Object?> serialize(Serializers serializers, CommonEnumItem object,
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
    value = object.appId;
    if (value != null) {
      result
        ..add('appId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fullName;
    if (value != null) {
      result
        ..add('fullName')
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
    value = object.color;
    if (value != null) {
      result
        ..add('color')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.priority;
    if (value != null) {
      result
        ..add('priority')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.order;
    if (value != null) {
      result
        ..add('order')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  CommonEnumItem deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommonEnumItemBuilder();

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
        case 'appId':
          result.appId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fullName':
          result.fullName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'priority':
          result.priority = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'order':
          result.order = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$CommonEnumItem extends CommonEnumItem {
  @override
  final String? guid;
  @override
  final int? appId;
  @override
  final String? name;
  @override
  final String? fullName;
  @override
  final String? description;
  @override
  final String? color;
  @override
  final int? priority;
  @override
  final int? order;

  factory _$CommonEnumItem([void Function(CommonEnumItemBuilder)? updates]) =>
      (new CommonEnumItemBuilder()..update(updates)).build();

  _$CommonEnumItem._(
      {this.guid,
      this.appId,
      this.name,
      this.fullName,
      this.description,
      this.color,
      this.priority,
      this.order})
      : super._();

  @override
  CommonEnumItem rebuild(void Function(CommonEnumItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommonEnumItemBuilder toBuilder() =>
      new CommonEnumItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommonEnumItem &&
        guid == other.guid &&
        appId == other.appId &&
        name == other.name &&
        fullName == other.fullName &&
        description == other.description &&
        color == other.color &&
        priority == other.priority &&
        order == other.order;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, guid.hashCode), appId.hashCode),
                            name.hashCode),
                        fullName.hashCode),
                    description.hashCode),
                color.hashCode),
            priority.hashCode),
        order.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CommonEnumItem')
          ..add('guid', guid)
          ..add('appId', appId)
          ..add('name', name)
          ..add('fullName', fullName)
          ..add('description', description)
          ..add('color', color)
          ..add('priority', priority)
          ..add('order', order))
        .toString();
  }
}

class CommonEnumItemBuilder
    implements Builder<CommonEnumItem, CommonEnumItemBuilder> {
  _$CommonEnumItem? _$v;

  String? _guid;
  String? get guid => _$this._guid;
  set guid(String? guid) => _$this._guid = guid;

  int? _appId;
  int? get appId => _$this._appId;
  set appId(int? appId) => _$this._appId = appId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  int? _priority;
  int? get priority => _$this._priority;
  set priority(int? priority) => _$this._priority = priority;

  int? _order;
  int? get order => _$this._order;
  set order(int? order) => _$this._order = order;

  CommonEnumItemBuilder();

  CommonEnumItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _guid = $v.guid;
      _appId = $v.appId;
      _name = $v.name;
      _fullName = $v.fullName;
      _description = $v.description;
      _color = $v.color;
      _priority = $v.priority;
      _order = $v.order;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommonEnumItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CommonEnumItem;
  }

  @override
  void update(void Function(CommonEnumItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CommonEnumItem build() {
    final _$result = _$v ??
        new _$CommonEnumItem._(
            guid: guid,
            appId: appId,
            name: name,
            fullName: fullName,
            description: description,
            color: color,
            priority: priority,
            order: order);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
