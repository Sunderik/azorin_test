// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;

import 'core/core.dart' as _i8;
import 'core/di/provider/store_provider.dart' as _i5;
import 'core/network/service/rest_service.dart' as _i3;
import 'core/network/url_factory.dart' as _i6;
import 'features/user_details_screen/domain/middlewares/epic/user_details_epic.dart'
    as _i10;
import 'features/user_details_screen/repository/user_details_repository.dart' as _i7;
import 'features/users_list_screen/domain/middlewares/epics/users_list_epic.dart'
    as _i11;
import 'features/users_list_screen/repository/users_list_repository.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.RestService>(() => _i3.RestServiceImpl(get<_i4.Client>()));
  gh.factory<_i5.StoreProvider>(() => _i5.StoreProviderImpl());
  gh.factory<_i6.UrlFactory>(() => _i6.UrlAbstractFactory());
  gh.factory<_i7.UserDetailsRepository>(() => _i7.UserDetailsRepositoryImpl(
      get<_i3.RestService>(), get<_i8.UrlFactory>()));
  gh.factory<_i9.UsersListRepository>(() =>
      _i9.UsersRepositoryImpl(get<_i3.RestService>(), get<_i8.UrlFactory>()));
  gh.factory<_i10.UserDetailsEpic>(
      () => _i10.UserDetailsEpic(get<_i7.UserDetailsRepository>()));
  gh.factory<_i11.UsersListEpic>(
      () => _i11.UsersListEpic(get<_i9.UsersListRepository>()));
  return get;
}
