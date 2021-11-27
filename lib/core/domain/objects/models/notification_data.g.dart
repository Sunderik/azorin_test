// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NotificationData> _$notificationDataSerializer =
    new _$NotificationDataSerializer();

class _$NotificationDataSerializer
    implements StructuredSerializer<NotificationData> {
  @override
  final Iterable<Type> types = const [NotificationData, _$NotificationData];
  @override
  final String wireName = 'NotificationData';

  @override
  Iterable<Object?> serialize(Serializers serializers, NotificationData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.authorName;
    if (value != null) {
      result
        ..add('authorName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.projectGuid;
    if (value != null) {
      result
        ..add('projectGuid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.projectName;
    if (value != null) {
      result
        ..add('projectName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.instanceId;
    if (value != null) {
      result
        ..add('instanceId')
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
    value = object.objectGuid;
    if (value != null) {
      result
        ..add('objectGuid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.comment;
    if (value != null) {
      result
        ..add('comment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fileName;
    if (value != null) {
      result
        ..add('fileName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.oldTypeGuid;
    if (value != null) {
      result
        ..add('oldTypeGuid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.newTypeGuid;
    if (value != null) {
      result
        ..add('newTypeGuid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.oldStatusGuid;
    if (value != null) {
      result
        ..add('oldStatusGuid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.newStatusGuid;
    if (value != null) {
      result
        ..add('newStatusGuid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.notificationTypeGuid;
    if (value != null) {
      result
        ..add('notificationTypeGuid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  NotificationData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NotificationDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'authorName':
          result.authorName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'projectGuid':
          result.projectGuid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'projectName':
          result.projectName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'instanceId':
          result.instanceId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'objectGuid':
          result.objectGuid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'comment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fileName':
          result.fileName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'oldTypeGuid':
          result.oldTypeGuid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'newTypeGuid':
          result.newTypeGuid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'oldStatusGuid':
          result.oldStatusGuid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'newStatusGuid':
          result.newStatusGuid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'notificationTypeGuid':
          result.notificationTypeGuid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$NotificationData extends NotificationData {
  @override
  final String? authorName;
  @override
  final String? projectGuid;
  @override
  final String? projectName;
  @override
  final String? instanceId;
  @override
  final String? description;
  @override
  final String? objectGuid;
  @override
  final String? comment;
  @override
  final String? fileName;
  @override
  final String? oldTypeGuid;
  @override
  final String? newTypeGuid;
  @override
  final String? oldStatusGuid;
  @override
  final String? newStatusGuid;
  @override
  final String? notificationTypeGuid;

  factory _$NotificationData(
          [void Function(NotificationDataBuilder)? updates]) =>
      (new NotificationDataBuilder()..update(updates)).build();

  _$NotificationData._(
      {this.authorName,
      this.projectGuid,
      this.projectName,
      this.instanceId,
      this.description,
      this.objectGuid,
      this.comment,
      this.fileName,
      this.oldTypeGuid,
      this.newTypeGuid,
      this.oldStatusGuid,
      this.newStatusGuid,
      this.notificationTypeGuid})
      : super._();

  @override
  NotificationData rebuild(void Function(NotificationDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationDataBuilder toBuilder() =>
      new NotificationDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationData &&
        authorName == other.authorName &&
        projectGuid == other.projectGuid &&
        projectName == other.projectName &&
        instanceId == other.instanceId &&
        description == other.description &&
        objectGuid == other.objectGuid &&
        comment == other.comment &&
        fileName == other.fileName &&
        oldTypeGuid == other.oldTypeGuid &&
        newTypeGuid == other.newTypeGuid &&
        oldStatusGuid == other.oldStatusGuid &&
        newStatusGuid == other.newStatusGuid &&
        notificationTypeGuid == other.notificationTypeGuid;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc($jc(0, authorName.hashCode),
                                                    projectGuid.hashCode),
                                                projectName.hashCode),
                                            instanceId.hashCode),
                                        description.hashCode),
                                    objectGuid.hashCode),
                                comment.hashCode),
                            fileName.hashCode),
                        oldTypeGuid.hashCode),
                    newTypeGuid.hashCode),
                oldStatusGuid.hashCode),
            newStatusGuid.hashCode),
        notificationTypeGuid.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NotificationData')
          ..add('authorName', authorName)
          ..add('projectGuid', projectGuid)
          ..add('projectName', projectName)
          ..add('instanceId', instanceId)
          ..add('description', description)
          ..add('objectGuid', objectGuid)
          ..add('comment', comment)
          ..add('fileName', fileName)
          ..add('oldTypeGuid', oldTypeGuid)
          ..add('newTypeGuid', newTypeGuid)
          ..add('oldStatusGuid', oldStatusGuid)
          ..add('newStatusGuid', newStatusGuid)
          ..add('notificationTypeGuid', notificationTypeGuid))
        .toString();
  }
}

class NotificationDataBuilder
    implements Builder<NotificationData, NotificationDataBuilder> {
  _$NotificationData? _$v;

  String? _authorName;
  String? get authorName => _$this._authorName;
  set authorName(String? authorName) => _$this._authorName = authorName;

  String? _projectGuid;
  String? get projectGuid => _$this._projectGuid;
  set projectGuid(String? projectGuid) => _$this._projectGuid = projectGuid;

  String? _projectName;
  String? get projectName => _$this._projectName;
  set projectName(String? projectName) => _$this._projectName = projectName;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _objectGuid;
  String? get objectGuid => _$this._objectGuid;
  set objectGuid(String? objectGuid) => _$this._objectGuid = objectGuid;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  String? _fileName;
  String? get fileName => _$this._fileName;
  set fileName(String? fileName) => _$this._fileName = fileName;

  String? _oldTypeGuid;
  String? get oldTypeGuid => _$this._oldTypeGuid;
  set oldTypeGuid(String? oldTypeGuid) => _$this._oldTypeGuid = oldTypeGuid;

  String? _newTypeGuid;
  String? get newTypeGuid => _$this._newTypeGuid;
  set newTypeGuid(String? newTypeGuid) => _$this._newTypeGuid = newTypeGuid;

  String? _oldStatusGuid;
  String? get oldStatusGuid => _$this._oldStatusGuid;
  set oldStatusGuid(String? oldStatusGuid) =>
      _$this._oldStatusGuid = oldStatusGuid;

  String? _newStatusGuid;
  String? get newStatusGuid => _$this._newStatusGuid;
  set newStatusGuid(String? newStatusGuid) =>
      _$this._newStatusGuid = newStatusGuid;

  String? _notificationTypeGuid;
  String? get notificationTypeGuid => _$this._notificationTypeGuid;
  set notificationTypeGuid(String? notificationTypeGuid) =>
      _$this._notificationTypeGuid = notificationTypeGuid;

  NotificationDataBuilder();

  NotificationDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _authorName = $v.authorName;
      _projectGuid = $v.projectGuid;
      _projectName = $v.projectName;
      _instanceId = $v.instanceId;
      _description = $v.description;
      _objectGuid = $v.objectGuid;
      _comment = $v.comment;
      _fileName = $v.fileName;
      _oldTypeGuid = $v.oldTypeGuid;
      _newTypeGuid = $v.newTypeGuid;
      _oldStatusGuid = $v.oldStatusGuid;
      _newStatusGuid = $v.newStatusGuid;
      _notificationTypeGuid = $v.notificationTypeGuid;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NotificationData;
  }

  @override
  void update(void Function(NotificationDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NotificationData build() {
    final _$result = _$v ??
        new _$NotificationData._(
            authorName: authorName,
            projectGuid: projectGuid,
            projectName: projectName,
            instanceId: instanceId,
            description: description,
            objectGuid: objectGuid,
            comment: comment,
            fileName: fileName,
            oldTypeGuid: oldTypeGuid,
            newTypeGuid: newTypeGuid,
            oldStatusGuid: oldStatusGuid,
            newStatusGuid: newStatusGuid,
            notificationTypeGuid: notificationTypeGuid);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
