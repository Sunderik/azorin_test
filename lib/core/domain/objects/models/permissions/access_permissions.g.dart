// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_permissions.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AccessPermissions> _$accessPermissionsSerializer =
    new _$AccessPermissionsSerializer();

class _$AccessPermissionsSerializer
    implements StructuredSerializer<AccessPermissions> {
  @override
  final Iterable<Type> types = const [AccessPermissions, _$AccessPermissions];
  @override
  final String wireName = 'AccessPermissions';

  @override
  Iterable<Object?> serialize(Serializers serializers, AccessPermissions object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.mainMenuPage;
    if (value != null) {
      result
        ..add('mainMenuPage')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.projectsPage;
    if (value != null) {
      result
        ..add('projectsPage')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.problemsPage;
    if (value != null) {
      result
        ..add('problemsPage')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.tasksPage;
    if (value != null) {
      result
        ..add('tasksPage')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.inWorkTasksAtTasksPage;
    if (value != null) {
      result
        ..add('inWorkTasksAtTasksPage')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.newTasksAtTasksPage;
    if (value != null) {
      result
        ..add('newTasksAtTasksPage')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.closedTasksAtTasksPage;
    if (value != null) {
      result
        ..add('closedTasksAtTasksPage')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.calendarAtTasksPage;
    if (value != null) {
      result
        ..add('calendarAtTasksPage')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.myTasksAtTasksPage;
    if (value != null) {
      result
        ..add('myTasksAtTasksPage')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.allTasksAtTasksPage;
    if (value != null) {
      result
        ..add('allTasksAtTasksPage')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.searchAtTasksPage;
    if (value != null) {
      result
        ..add('searchAtTasksPage')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.teamPage;
    if (value != null) {
      result
        ..add('teamPage')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.memberDetails;
    if (value != null) {
      result
        ..add('memberDetails')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.statisticPage;
    if (value != null) {
      result
        ..add('statisticPage')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.taskTapePage;
    if (value != null) {
      result
        ..add('taskTapePage')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.teamTapePage;
    if (value != null) {
      result
        ..add('teamTapePage')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.reports;
    if (value != null) {
      result
        ..add('reports')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.chatList;
    if (value != null) {
      result
        ..add('chatList')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.workload;
    if (value != null) {
      result
        ..add('workload')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  AccessPermissions deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AccessPermissionsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'mainMenuPage':
          result.mainMenuPage = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'projectsPage':
          result.projectsPage = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'problemsPage':
          result.problemsPage = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'tasksPage':
          result.tasksPage = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'inWorkTasksAtTasksPage':
          result.inWorkTasksAtTasksPage = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'newTasksAtTasksPage':
          result.newTasksAtTasksPage = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'closedTasksAtTasksPage':
          result.closedTasksAtTasksPage = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'calendarAtTasksPage':
          result.calendarAtTasksPage = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'myTasksAtTasksPage':
          result.myTasksAtTasksPage = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'allTasksAtTasksPage':
          result.allTasksAtTasksPage = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'searchAtTasksPage':
          result.searchAtTasksPage = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'teamPage':
          result.teamPage = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'memberDetails':
          result.memberDetails = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'statisticPage':
          result.statisticPage = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'taskTapePage':
          result.taskTapePage = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'teamTapePage':
          result.teamTapePage = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'reports':
          result.reports = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'chatList':
          result.chatList = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'workload':
          result.workload = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$AccessPermissions extends AccessPermissions {
  @override
  final bool? mainMenuPage;
  @override
  final bool? projectsPage;
  @override
  final bool? problemsPage;
  @override
  final bool? tasksPage;
  @override
  final bool? inWorkTasksAtTasksPage;
  @override
  final bool? newTasksAtTasksPage;
  @override
  final bool? closedTasksAtTasksPage;
  @override
  final bool? calendarAtTasksPage;
  @override
  final bool? myTasksAtTasksPage;
  @override
  final bool? allTasksAtTasksPage;
  @override
  final bool? searchAtTasksPage;
  @override
  final bool? teamPage;
  @override
  final bool? memberDetails;
  @override
  final bool? statisticPage;
  @override
  final bool? taskTapePage;
  @override
  final bool? teamTapePage;
  @override
  final bool? reports;
  @override
  final bool? chatList;
  @override
  final bool? workload;

  factory _$AccessPermissions(
          [void Function(AccessPermissionsBuilder)? updates]) =>
      (new AccessPermissionsBuilder()..update(updates)).build();

  _$AccessPermissions._(
      {this.mainMenuPage,
      this.projectsPage,
      this.problemsPage,
      this.tasksPage,
      this.inWorkTasksAtTasksPage,
      this.newTasksAtTasksPage,
      this.closedTasksAtTasksPage,
      this.calendarAtTasksPage,
      this.myTasksAtTasksPage,
      this.allTasksAtTasksPage,
      this.searchAtTasksPage,
      this.teamPage,
      this.memberDetails,
      this.statisticPage,
      this.taskTapePage,
      this.teamTapePage,
      this.reports,
      this.chatList,
      this.workload})
      : super._();

  @override
  AccessPermissions rebuild(void Function(AccessPermissionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccessPermissionsBuilder toBuilder() =>
      new AccessPermissionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccessPermissions &&
        mainMenuPage == other.mainMenuPage &&
        projectsPage == other.projectsPage &&
        problemsPage == other.problemsPage &&
        tasksPage == other.tasksPage &&
        inWorkTasksAtTasksPage == other.inWorkTasksAtTasksPage &&
        newTasksAtTasksPage == other.newTasksAtTasksPage &&
        closedTasksAtTasksPage == other.closedTasksAtTasksPage &&
        calendarAtTasksPage == other.calendarAtTasksPage &&
        myTasksAtTasksPage == other.myTasksAtTasksPage &&
        allTasksAtTasksPage == other.allTasksAtTasksPage &&
        searchAtTasksPage == other.searchAtTasksPage &&
        teamPage == other.teamPage &&
        memberDetails == other.memberDetails &&
        statisticPage == other.statisticPage &&
        taskTapePage == other.taskTapePage &&
        teamTapePage == other.teamTapePage &&
        reports == other.reports &&
        chatList == other.chatList &&
        workload == other.workload;
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
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc(
                                                                                0,
                                                                                mainMenuPage
                                                                                    .hashCode),
                                                                            projectsPage
                                                                                .hashCode),
                                                                        problemsPage
                                                                            .hashCode),
                                                                    tasksPage
                                                                        .hashCode),
                                                                inWorkTasksAtTasksPage
                                                                    .hashCode),
                                                            newTasksAtTasksPage
                                                                .hashCode),
                                                        closedTasksAtTasksPage
                                                            .hashCode),
                                                    calendarAtTasksPage
                                                        .hashCode),
                                                myTasksAtTasksPage.hashCode),
                                            allTasksAtTasksPage.hashCode),
                                        searchAtTasksPage.hashCode),
                                    teamPage.hashCode),
                                memberDetails.hashCode),
                            statisticPage.hashCode),
                        taskTapePage.hashCode),
                    teamTapePage.hashCode),
                reports.hashCode),
            chatList.hashCode),
        workload.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AccessPermissions')
          ..add('mainMenuPage', mainMenuPage)
          ..add('projectsPage', projectsPage)
          ..add('problemsPage', problemsPage)
          ..add('tasksPage', tasksPage)
          ..add('inWorkTasksAtTasksPage', inWorkTasksAtTasksPage)
          ..add('newTasksAtTasksPage', newTasksAtTasksPage)
          ..add('closedTasksAtTasksPage', closedTasksAtTasksPage)
          ..add('calendarAtTasksPage', calendarAtTasksPage)
          ..add('myTasksAtTasksPage', myTasksAtTasksPage)
          ..add('allTasksAtTasksPage', allTasksAtTasksPage)
          ..add('searchAtTasksPage', searchAtTasksPage)
          ..add('teamPage', teamPage)
          ..add('memberDetails', memberDetails)
          ..add('statisticPage', statisticPage)
          ..add('taskTapePage', taskTapePage)
          ..add('teamTapePage', teamTapePage)
          ..add('reports', reports)
          ..add('chatList', chatList)
          ..add('workload', workload))
        .toString();
  }
}

class AccessPermissionsBuilder
    implements Builder<AccessPermissions, AccessPermissionsBuilder> {
  _$AccessPermissions? _$v;

  bool? _mainMenuPage;
  bool? get mainMenuPage => _$this._mainMenuPage;
  set mainMenuPage(bool? mainMenuPage) => _$this._mainMenuPage = mainMenuPage;

  bool? _projectsPage;
  bool? get projectsPage => _$this._projectsPage;
  set projectsPage(bool? projectsPage) => _$this._projectsPage = projectsPage;

  bool? _problemsPage;
  bool? get problemsPage => _$this._problemsPage;
  set problemsPage(bool? problemsPage) => _$this._problemsPage = problemsPage;

  bool? _tasksPage;
  bool? get tasksPage => _$this._tasksPage;
  set tasksPage(bool? tasksPage) => _$this._tasksPage = tasksPage;

  bool? _inWorkTasksAtTasksPage;
  bool? get inWorkTasksAtTasksPage => _$this._inWorkTasksAtTasksPage;
  set inWorkTasksAtTasksPage(bool? inWorkTasksAtTasksPage) =>
      _$this._inWorkTasksAtTasksPage = inWorkTasksAtTasksPage;

  bool? _newTasksAtTasksPage;
  bool? get newTasksAtTasksPage => _$this._newTasksAtTasksPage;
  set newTasksAtTasksPage(bool? newTasksAtTasksPage) =>
      _$this._newTasksAtTasksPage = newTasksAtTasksPage;

  bool? _closedTasksAtTasksPage;
  bool? get closedTasksAtTasksPage => _$this._closedTasksAtTasksPage;
  set closedTasksAtTasksPage(bool? closedTasksAtTasksPage) =>
      _$this._closedTasksAtTasksPage = closedTasksAtTasksPage;

  bool? _calendarAtTasksPage;
  bool? get calendarAtTasksPage => _$this._calendarAtTasksPage;
  set calendarAtTasksPage(bool? calendarAtTasksPage) =>
      _$this._calendarAtTasksPage = calendarAtTasksPage;

  bool? _myTasksAtTasksPage;
  bool? get myTasksAtTasksPage => _$this._myTasksAtTasksPage;
  set myTasksAtTasksPage(bool? myTasksAtTasksPage) =>
      _$this._myTasksAtTasksPage = myTasksAtTasksPage;

  bool? _allTasksAtTasksPage;
  bool? get allTasksAtTasksPage => _$this._allTasksAtTasksPage;
  set allTasksAtTasksPage(bool? allTasksAtTasksPage) =>
      _$this._allTasksAtTasksPage = allTasksAtTasksPage;

  bool? _searchAtTasksPage;
  bool? get searchAtTasksPage => _$this._searchAtTasksPage;
  set searchAtTasksPage(bool? searchAtTasksPage) =>
      _$this._searchAtTasksPage = searchAtTasksPage;

  bool? _teamPage;
  bool? get teamPage => _$this._teamPage;
  set teamPage(bool? teamPage) => _$this._teamPage = teamPage;

  bool? _memberDetails;
  bool? get memberDetails => _$this._memberDetails;
  set memberDetails(bool? memberDetails) =>
      _$this._memberDetails = memberDetails;

  bool? _statisticPage;
  bool? get statisticPage => _$this._statisticPage;
  set statisticPage(bool? statisticPage) =>
      _$this._statisticPage = statisticPage;

  bool? _taskTapePage;
  bool? get taskTapePage => _$this._taskTapePage;
  set taskTapePage(bool? taskTapePage) => _$this._taskTapePage = taskTapePage;

  bool? _teamTapePage;
  bool? get teamTapePage => _$this._teamTapePage;
  set teamTapePage(bool? teamTapePage) => _$this._teamTapePage = teamTapePage;

  bool? _reports;
  bool? get reports => _$this._reports;
  set reports(bool? reports) => _$this._reports = reports;

  bool? _chatList;
  bool? get chatList => _$this._chatList;
  set chatList(bool? chatList) => _$this._chatList = chatList;

  bool? _workload;
  bool? get workload => _$this._workload;
  set workload(bool? workload) => _$this._workload = workload;

  AccessPermissionsBuilder();

  AccessPermissionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mainMenuPage = $v.mainMenuPage;
      _projectsPage = $v.projectsPage;
      _problemsPage = $v.problemsPage;
      _tasksPage = $v.tasksPage;
      _inWorkTasksAtTasksPage = $v.inWorkTasksAtTasksPage;
      _newTasksAtTasksPage = $v.newTasksAtTasksPage;
      _closedTasksAtTasksPage = $v.closedTasksAtTasksPage;
      _calendarAtTasksPage = $v.calendarAtTasksPage;
      _myTasksAtTasksPage = $v.myTasksAtTasksPage;
      _allTasksAtTasksPage = $v.allTasksAtTasksPage;
      _searchAtTasksPage = $v.searchAtTasksPage;
      _teamPage = $v.teamPage;
      _memberDetails = $v.memberDetails;
      _statisticPage = $v.statisticPage;
      _taskTapePage = $v.taskTapePage;
      _teamTapePage = $v.teamTapePage;
      _reports = $v.reports;
      _chatList = $v.chatList;
      _workload = $v.workload;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccessPermissions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccessPermissions;
  }

  @override
  void update(void Function(AccessPermissionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AccessPermissions build() {
    final _$result = _$v ??
        new _$AccessPermissions._(
            mainMenuPage: mainMenuPage,
            projectsPage: projectsPage,
            problemsPage: problemsPage,
            tasksPage: tasksPage,
            inWorkTasksAtTasksPage: inWorkTasksAtTasksPage,
            newTasksAtTasksPage: newTasksAtTasksPage,
            closedTasksAtTasksPage: closedTasksAtTasksPage,
            calendarAtTasksPage: calendarAtTasksPage,
            myTasksAtTasksPage: myTasksAtTasksPage,
            allTasksAtTasksPage: allTasksAtTasksPage,
            searchAtTasksPage: searchAtTasksPage,
            teamPage: teamPage,
            memberDetails: memberDetails,
            statisticPage: statisticPage,
            taskTapePage: taskTapePage,
            teamTapePage: teamTapePage,
            reports: reports,
            chatList: chatList,
            workload: workload);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
