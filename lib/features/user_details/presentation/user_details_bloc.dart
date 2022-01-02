import 'dart:async';

import 'package:azorin_test/core/bloc/base_bloc.dart';
import 'package:azorin_test/core/core.dart';
import 'package:azorin_test/core/domain/models/post.dart';
import 'package:azorin_test/features/user_details/repository/models/_models.dart';
import 'package:built_collection/built_collection.dart';

///
class UserDetailsBloc extends BaseBloc {
  UserDetailsBloc(this.userId);

  ///
  final int userId;

  ///
  User? user;

  ///
  List<Post>? _posts;

  /// Стрим данных контроллера [_userDetailsScreenStatusController].
  Stream<ScreenStatusEnum?>? get userDetailsScreenStatusStream => _userDetailsScreenStatusController?.stream;

  /// Стрим данных контроллера [_appBarNameController].
  Stream<String>? get appBarNameStream => _appBarNameController?.stream;

  /// Стрим данных контроллера [_appBarNameController].
  Stream<List<Post>?>? get postsStream => _postsController?.stream;

  /// Контроллер статуса экрана.
  late StreamController<ScreenStatusEnum?>? _userDetailsScreenStatusController;

  /// Подписка на значения поля [UserDetailsState.screenStatus].
  late StreamSubscription<ScreenStatusEnum?>? _userDetailsScreenStatusSubscription;

  /// Контроллер имени экрана.
  late StreamController<String>? _appBarNameController;

  /// Контроллер списка постов пользователя.
  late StreamController<List<Post>?>? _postsController;

  /// Подписка на значения поля UsersState.users[userId].posts.
  late StreamSubscription<BuiltList<Post>?>? _postsSubscription;

  /// Возвращает информацию об исполнителе (сотруднике).
  User? getUserDetails() {
    return user;
  }

  /// Очищает информацию о сотруднике.
  void clearUserDetails() {
    actions.userScreen.clearUserDetails(null);
  }

  @override
  void init() {
    super.init();
    _userDetailsScreenStatusSubscription = store
        ?.nextSubstate((AppState state) => state.userDetailsState.screenStatus)
        .listen((ScreenStatusEnum? screenStatus) {
      if (screenStatus != null) {
        _userDetailsScreenStatusController?.sink.add(screenStatus);
      }
    });
    _userDetailsScreenStatusController = StreamController<ScreenStatusEnum>.broadcast();

    _appBarNameController = StreamController<String>.broadcast();

    _postsSubscription =
        store?.nextSubstate((AppState state) => state.userDetailsState.user?.posts).listen((BuiltList<Post>? posts) {
      if (posts != null) {
        _postsController?.sink.add(posts.toList());
      }
    });
    _postsController = StreamController<List<Post>?>.broadcast();
  }

  ///
  void loadUserInfo() {
    user = store!.state.usersState.users.firstWhere((_user) => _user.id == userId);

    Future.delayed(const Duration(microseconds: 1)) //для разделения инциализирующего потока (чтоб инит не перекрывал)
        .then((value) => {
              if (user != null)
                {
                  store!.actions.userScreen.setUserDetails(user!),
                  _userDetailsScreenStatusController?.sink.add(ScreenStatusEnum.wait),
                  _appBarNameController?.sink.add(user!.userName!),
                }
              else
                {
                  _userDetailsScreenStatusController?.sink.add(ScreenStatusEnum.loading),
                }
            });
  }

  @override
  void dispose() {
    _userDetailsScreenStatusController?.close();
    _userDetailsScreenStatusSubscription?.cancel();
    _appBarNameController?.close();
    _postsController?.close();
    _postsSubscription?.cancel();
    super.dispose();
  }

  ///
  loadUserPosts() {
    _posts = user!.posts?.toList();
    if (_posts != null && _posts!.isNotEmpty) {
      _postsController?.sink.add(_posts);
    } else {
      _downloadUserPosts();
    }
  }

  ///
  _downloadUserPosts() {
    final request = UserPostsRequest((builder) => builder..userId = userId);
    // Выполяем запрос.
    store?.actions.userScreen.userPostsRequest(request);
  }
}
