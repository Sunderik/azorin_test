import 'package:azorin_test/core/core.dart';
import 'package:azorin_test/core/domain/global_state/domain_states/users_state.dart';
import 'package:azorin_test/core/domain/serializers/serializers.dart';

import 'package:azorin_test/features/navigation/navigation.dart';
import 'package:azorin_test/features/users_list_screen/domain/users_list_state.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';



part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  AppState._();

  factory AppState([void Function(AppStateBuilder)? updates]) {
    return _$AppState((b) => b
      ..appTheme = AppTheme.light
      ..navigationState = NavigationState((builder) => builder).toBuilder()
      ..usersState = UsersState().toBuilder()
      ..usersListState = UsersListScreenState().toBuilder()
      ..userDetailsState = UserDetailsState().toBuilder()
    );
  }

  AppTheme get appTheme;

  NavigationState get navigationState;

  UsersState get usersState;

  UsersListScreenState get usersListState;

  UserDetailsState get userDetailsState;

  Map<String, dynamic>? toJson() {
    return mainSerializers.serializeWith(AppState.serializer, this) as Map<String, dynamic>;
  }

  static AppState? fromJson(Map<String, dynamic> json) {
    return mainSerializers.deserializeWith(AppState.serializer, json);
  }

  static Serializer<AppState> get serializer => _$appStateSerializer;
}
