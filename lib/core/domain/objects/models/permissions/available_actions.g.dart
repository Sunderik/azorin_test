// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'available_actions.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AvailableActions> _$availableActionsSerializer =
    new _$AvailableActionsSerializer();

class _$AvailableActionsSerializer
    implements StructuredSerializer<AvailableActions> {
  @override
  final Iterable<Type> types = const [AvailableActions, _$AvailableActions];
  @override
  final String wireName = 'AvailableActions';

  @override
  Iterable<Object?> serialize(Serializers serializers, AvailableActions object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.canSee;
    if (value != null) {
      result
        ..add('canSee')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.canCreate;
    if (value != null) {
      result
        ..add('canCreate')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.canComment;
    if (value != null) {
      result
        ..add('canComment')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.canAttachPhoto;
    if (value != null) {
      result
        ..add('canAttachPhoto')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.canTakeInWork;
    if (value != null) {
      result
        ..add('canTakeInWork')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.canReturnInWork;
    if (value != null) {
      result
        ..add('canReturnInWork')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.canFeedback;
    if (value != null) {
      result
        ..add('canFeedback')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.canComplete;
    if (value != null) {
      result
        ..add('canComplete')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.canCancel;
    if (value != null) {
      result
        ..add('canCancel')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.canSuspend;
    if (value != null) {
      result
        ..add('canSuspend')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.canChangeType;
    if (value != null) {
      result
        ..add('canChangeType')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.canGoToWork;
    if (value != null) {
      result
        ..add('canGoToWork')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.canReleaseToWork;
    if (value != null) {
      result
        ..add('canReleaseToWork')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.canSetReasonForAbsence;
    if (value != null) {
      result
        ..add('canSetReasonForAbsence')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  AvailableActions deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AvailableActionsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'canSee':
          result.canSee = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'canCreate':
          result.canCreate = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'canComment':
          result.canComment = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'canAttachPhoto':
          result.canAttachPhoto = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'canTakeInWork':
          result.canTakeInWork = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'canReturnInWork':
          result.canReturnInWork = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'canFeedback':
          result.canFeedback = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'canComplete':
          result.canComplete = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'canCancel':
          result.canCancel = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'canSuspend':
          result.canSuspend = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'canChangeType':
          result.canChangeType = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'canGoToWork':
          result.canGoToWork = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'canReleaseToWork':
          result.canReleaseToWork = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'canSetReasonForAbsence':
          result.canSetReasonForAbsence = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$AvailableActions extends AvailableActions {
  @override
  final bool? canSee;
  @override
  final bool? canCreate;
  @override
  final bool? canComment;
  @override
  final bool? canAttachPhoto;
  @override
  final bool? canTakeInWork;
  @override
  final bool? canReturnInWork;
  @override
  final bool? canFeedback;
  @override
  final bool? canComplete;
  @override
  final bool? canCancel;
  @override
  final bool? canSuspend;
  @override
  final bool? canChangeType;
  @override
  final bool? canGoToWork;
  @override
  final bool? canReleaseToWork;
  @override
  final bool? canSetReasonForAbsence;

  factory _$AvailableActions(
          [void Function(AvailableActionsBuilder)? updates]) =>
      (new AvailableActionsBuilder()..update(updates)).build();

  _$AvailableActions._(
      {this.canSee,
      this.canCreate,
      this.canComment,
      this.canAttachPhoto,
      this.canTakeInWork,
      this.canReturnInWork,
      this.canFeedback,
      this.canComplete,
      this.canCancel,
      this.canSuspend,
      this.canChangeType,
      this.canGoToWork,
      this.canReleaseToWork,
      this.canSetReasonForAbsence})
      : super._();

  @override
  AvailableActions rebuild(void Function(AvailableActionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AvailableActionsBuilder toBuilder() =>
      new AvailableActionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AvailableActions &&
        canSee == other.canSee &&
        canCreate == other.canCreate &&
        canComment == other.canComment &&
        canAttachPhoto == other.canAttachPhoto &&
        canTakeInWork == other.canTakeInWork &&
        canReturnInWork == other.canReturnInWork &&
        canFeedback == other.canFeedback &&
        canComplete == other.canComplete &&
        canCancel == other.canCancel &&
        canSuspend == other.canSuspend &&
        canChangeType == other.canChangeType &&
        canGoToWork == other.canGoToWork &&
        canReleaseToWork == other.canReleaseToWork &&
        canSetReasonForAbsence == other.canSetReasonForAbsence;
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
                                                $jc(
                                                    $jc($jc(0, canSee.hashCode),
                                                        canCreate.hashCode),
                                                    canComment.hashCode),
                                                canAttachPhoto.hashCode),
                                            canTakeInWork.hashCode),
                                        canReturnInWork.hashCode),
                                    canFeedback.hashCode),
                                canComplete.hashCode),
                            canCancel.hashCode),
                        canSuspend.hashCode),
                    canChangeType.hashCode),
                canGoToWork.hashCode),
            canReleaseToWork.hashCode),
        canSetReasonForAbsence.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AvailableActions')
          ..add('canSee', canSee)
          ..add('canCreate', canCreate)
          ..add('canComment', canComment)
          ..add('canAttachPhoto', canAttachPhoto)
          ..add('canTakeInWork', canTakeInWork)
          ..add('canReturnInWork', canReturnInWork)
          ..add('canFeedback', canFeedback)
          ..add('canComplete', canComplete)
          ..add('canCancel', canCancel)
          ..add('canSuspend', canSuspend)
          ..add('canChangeType', canChangeType)
          ..add('canGoToWork', canGoToWork)
          ..add('canReleaseToWork', canReleaseToWork)
          ..add('canSetReasonForAbsence', canSetReasonForAbsence))
        .toString();
  }
}

class AvailableActionsBuilder
    implements Builder<AvailableActions, AvailableActionsBuilder> {
  _$AvailableActions? _$v;

  bool? _canSee;
  bool? get canSee => _$this._canSee;
  set canSee(bool? canSee) => _$this._canSee = canSee;

  bool? _canCreate;
  bool? get canCreate => _$this._canCreate;
  set canCreate(bool? canCreate) => _$this._canCreate = canCreate;

  bool? _canComment;
  bool? get canComment => _$this._canComment;
  set canComment(bool? canComment) => _$this._canComment = canComment;

  bool? _canAttachPhoto;
  bool? get canAttachPhoto => _$this._canAttachPhoto;
  set canAttachPhoto(bool? canAttachPhoto) =>
      _$this._canAttachPhoto = canAttachPhoto;

  bool? _canTakeInWork;
  bool? get canTakeInWork => _$this._canTakeInWork;
  set canTakeInWork(bool? canTakeInWork) =>
      _$this._canTakeInWork = canTakeInWork;

  bool? _canReturnInWork;
  bool? get canReturnInWork => _$this._canReturnInWork;
  set canReturnInWork(bool? canReturnInWork) =>
      _$this._canReturnInWork = canReturnInWork;

  bool? _canFeedback;
  bool? get canFeedback => _$this._canFeedback;
  set canFeedback(bool? canFeedback) => _$this._canFeedback = canFeedback;

  bool? _canComplete;
  bool? get canComplete => _$this._canComplete;
  set canComplete(bool? canComplete) => _$this._canComplete = canComplete;

  bool? _canCancel;
  bool? get canCancel => _$this._canCancel;
  set canCancel(bool? canCancel) => _$this._canCancel = canCancel;

  bool? _canSuspend;
  bool? get canSuspend => _$this._canSuspend;
  set canSuspend(bool? canSuspend) => _$this._canSuspend = canSuspend;

  bool? _canChangeType;
  bool? get canChangeType => _$this._canChangeType;
  set canChangeType(bool? canChangeType) =>
      _$this._canChangeType = canChangeType;

  bool? _canGoToWork;
  bool? get canGoToWork => _$this._canGoToWork;
  set canGoToWork(bool? canGoToWork) => _$this._canGoToWork = canGoToWork;

  bool? _canReleaseToWork;
  bool? get canReleaseToWork => _$this._canReleaseToWork;
  set canReleaseToWork(bool? canReleaseToWork) =>
      _$this._canReleaseToWork = canReleaseToWork;

  bool? _canSetReasonForAbsence;
  bool? get canSetReasonForAbsence => _$this._canSetReasonForAbsence;
  set canSetReasonForAbsence(bool? canSetReasonForAbsence) =>
      _$this._canSetReasonForAbsence = canSetReasonForAbsence;

  AvailableActionsBuilder();

  AvailableActionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _canSee = $v.canSee;
      _canCreate = $v.canCreate;
      _canComment = $v.canComment;
      _canAttachPhoto = $v.canAttachPhoto;
      _canTakeInWork = $v.canTakeInWork;
      _canReturnInWork = $v.canReturnInWork;
      _canFeedback = $v.canFeedback;
      _canComplete = $v.canComplete;
      _canCancel = $v.canCancel;
      _canSuspend = $v.canSuspend;
      _canChangeType = $v.canChangeType;
      _canGoToWork = $v.canGoToWork;
      _canReleaseToWork = $v.canReleaseToWork;
      _canSetReasonForAbsence = $v.canSetReasonForAbsence;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AvailableActions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AvailableActions;
  }

  @override
  void update(void Function(AvailableActionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AvailableActions build() {
    final _$result = _$v ??
        new _$AvailableActions._(
            canSee: canSee,
            canCreate: canCreate,
            canComment: canComment,
            canAttachPhoto: canAttachPhoto,
            canTakeInWork: canTakeInWork,
            canReturnInWork: canReturnInWork,
            canFeedback: canFeedback,
            canComplete: canComplete,
            canCancel: canCancel,
            canSuspend: canSuspend,
            canChangeType: canChangeType,
            canGoToWork: canGoToWork,
            canReleaseToWork: canReleaseToWork,
            canSetReasonForAbsence: canSetReasonForAbsence);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
