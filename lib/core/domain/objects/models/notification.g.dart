// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Notification extends Notification {
  @override
  final String? notificationTitle;
  @override
  final String? notificationBody;
  @override
  final String? imageUrl;
  @override
  final String? senderId;
  @override
  final String? category;
  @override
  final String? collapseKey;
  @override
  final String? from;
  @override
  final String? messageId;
  @override
  final String? messageType;
  @override
  final String? threadId;
  @override
  final NotificationData? data;

  factory _$Notification([void Function(NotificationBuilder)? updates]) =>
      (new NotificationBuilder()..update(updates)).build();

  _$Notification._(
      {this.notificationTitle,
      this.notificationBody,
      this.imageUrl,
      this.senderId,
      this.category,
      this.collapseKey,
      this.from,
      this.messageId,
      this.messageType,
      this.threadId,
      this.data})
      : super._();

  @override
  Notification rebuild(void Function(NotificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationBuilder toBuilder() => new NotificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Notification &&
        notificationTitle == other.notificationTitle &&
        notificationBody == other.notificationBody &&
        imageUrl == other.imageUrl &&
        senderId == other.senderId &&
        category == other.category &&
        collapseKey == other.collapseKey &&
        from == other.from &&
        messageId == other.messageId &&
        messageType == other.messageType &&
        threadId == other.threadId &&
        data == other.data;
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
                                        $jc($jc(0, notificationTitle.hashCode),
                                            notificationBody.hashCode),
                                        imageUrl.hashCode),
                                    senderId.hashCode),
                                category.hashCode),
                            collapseKey.hashCode),
                        from.hashCode),
                    messageId.hashCode),
                messageType.hashCode),
            threadId.hashCode),
        data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Notification')
          ..add('notificationTitle', notificationTitle)
          ..add('notificationBody', notificationBody)
          ..add('imageUrl', imageUrl)
          ..add('senderId', senderId)
          ..add('category', category)
          ..add('collapseKey', collapseKey)
          ..add('from', from)
          ..add('messageId', messageId)
          ..add('messageType', messageType)
          ..add('threadId', threadId)
          ..add('data', data))
        .toString();
  }
}

class NotificationBuilder
    implements Builder<Notification, NotificationBuilder> {
  _$Notification? _$v;

  String? _notificationTitle;
  String? get notificationTitle => _$this._notificationTitle;
  set notificationTitle(String? notificationTitle) =>
      _$this._notificationTitle = notificationTitle;

  String? _notificationBody;
  String? get notificationBody => _$this._notificationBody;
  set notificationBody(String? notificationBody) =>
      _$this._notificationBody = notificationBody;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  String? _senderId;
  String? get senderId => _$this._senderId;
  set senderId(String? senderId) => _$this._senderId = senderId;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  String? _collapseKey;
  String? get collapseKey => _$this._collapseKey;
  set collapseKey(String? collapseKey) => _$this._collapseKey = collapseKey;

  String? _from;
  String? get from => _$this._from;
  set from(String? from) => _$this._from = from;

  String? _messageId;
  String? get messageId => _$this._messageId;
  set messageId(String? messageId) => _$this._messageId = messageId;

  String? _messageType;
  String? get messageType => _$this._messageType;
  set messageType(String? messageType) => _$this._messageType = messageType;

  String? _threadId;
  String? get threadId => _$this._threadId;
  set threadId(String? threadId) => _$this._threadId = threadId;

  NotificationDataBuilder? _data;
  NotificationDataBuilder get data =>
      _$this._data ??= new NotificationDataBuilder();
  set data(NotificationDataBuilder? data) => _$this._data = data;

  NotificationBuilder();

  NotificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _notificationTitle = $v.notificationTitle;
      _notificationBody = $v.notificationBody;
      _imageUrl = $v.imageUrl;
      _senderId = $v.senderId;
      _category = $v.category;
      _collapseKey = $v.collapseKey;
      _from = $v.from;
      _messageId = $v.messageId;
      _messageType = $v.messageType;
      _threadId = $v.threadId;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Notification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Notification;
  }

  @override
  void update(void Function(NotificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Notification build() {
    _$Notification _$result;
    try {
      _$result = _$v ??
          new _$Notification._(
              notificationTitle: notificationTitle,
              notificationBody: notificationBody,
              imageUrl: imageUrl,
              senderId: senderId,
              category: category,
              collapseKey: collapseKey,
              from: from,
              messageId: messageId,
              messageType: messageType,
              threadId: threadId,
              data: _data?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Notification', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
