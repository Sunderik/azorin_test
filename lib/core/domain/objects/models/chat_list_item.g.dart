// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_list_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ChatListItem> _$chatListItemSerializer =
    new _$ChatListItemSerializer();

class _$ChatListItemSerializer implements StructuredSerializer<ChatListItem> {
  @override
  final Iterable<Type> types = const [ChatListItem, _$ChatListItem];
  @override
  final String wireName = 'ChatListItem';

  @override
  Iterable<Object?> serialize(Serializers serializers, ChatListItem object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.object;
    if (value != null) {
      result
        ..add('object')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(SimpleType)));
    }
    value = object.projectGuid;
    if (value != null) {
      result
        ..add('projectGuid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.group;
    if (value != null) {
      result
        ..add('group')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.countMessages;
    if (value != null) {
      result
        ..add('countMessages')
        ..add(serializers.serialize(value, specifiedType: const FullType(num)));
    }
    value = object.users;
    if (value != null) {
      result
        ..add('users')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltMap,
                const [const FullType(String), const FullType(num)])));
    }
    return result;
  }

  @override
  ChatListItem deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ChatListItemBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'object':
          result.object.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleType))! as SimpleType);
          break;
        case 'projectGuid':
          result.projectGuid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'group':
          result.group = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'countMessages':
          result.countMessages = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'users':
          result.users.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap,
                  const [const FullType(String), const FullType(num)]))!);
          break;
      }
    }

    return result.build();
  }
}

class _$ChatListItem extends ChatListItem {
  @override
  final SimpleType? object;
  @override
  final String? projectGuid;
  @override
  final String? type;
  @override
  final String? group;
  @override
  final String? status;
  @override
  final num? countMessages;
  @override
  final BuiltMap<String, num>? users;

  factory _$ChatListItem([void Function(ChatListItemBuilder)? updates]) =>
      (new ChatListItemBuilder()..update(updates)).build();

  _$ChatListItem._(
      {this.object,
      this.projectGuid,
      this.type,
      this.group,
      this.status,
      this.countMessages,
      this.users})
      : super._();

  @override
  ChatListItem rebuild(void Function(ChatListItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChatListItemBuilder toBuilder() => new ChatListItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChatListItem &&
        object == other.object &&
        projectGuid == other.projectGuid &&
        type == other.type &&
        group == other.group &&
        status == other.status &&
        countMessages == other.countMessages &&
        users == other.users;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, object.hashCode), projectGuid.hashCode),
                        type.hashCode),
                    group.hashCode),
                status.hashCode),
            countMessages.hashCode),
        users.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ChatListItem')
          ..add('object', object)
          ..add('projectGuid', projectGuid)
          ..add('type', type)
          ..add('group', group)
          ..add('status', status)
          ..add('countMessages', countMessages)
          ..add('users', users))
        .toString();
  }
}

class ChatListItemBuilder
    implements Builder<ChatListItem, ChatListItemBuilder> {
  _$ChatListItem? _$v;

  SimpleTypeBuilder? _object;
  SimpleTypeBuilder get object => _$this._object ??= new SimpleTypeBuilder();
  set object(SimpleTypeBuilder? object) => _$this._object = object;

  String? _projectGuid;
  String? get projectGuid => _$this._projectGuid;
  set projectGuid(String? projectGuid) => _$this._projectGuid = projectGuid;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _group;
  String? get group => _$this._group;
  set group(String? group) => _$this._group = group;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  num? _countMessages;
  num? get countMessages => _$this._countMessages;
  set countMessages(num? countMessages) =>
      _$this._countMessages = countMessages;

  MapBuilder<String, num>? _users;
  MapBuilder<String, num> get users =>
      _$this._users ??= new MapBuilder<String, num>();
  set users(MapBuilder<String, num>? users) => _$this._users = users;

  ChatListItemBuilder();

  ChatListItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _object = $v.object?.toBuilder();
      _projectGuid = $v.projectGuid;
      _type = $v.type;
      _group = $v.group;
      _status = $v.status;
      _countMessages = $v.countMessages;
      _users = $v.users?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChatListItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChatListItem;
  }

  @override
  void update(void Function(ChatListItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ChatListItem build() {
    _$ChatListItem _$result;
    try {
      _$result = _$v ??
          new _$ChatListItem._(
              object: _object?.build(),
              projectGuid: projectGuid,
              type: type,
              group: group,
              status: status,
              countMessages: countMessages,
              users: _users?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'object';
        _object?.build();

        _$failedField = 'users';
        _users?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ChatListItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
