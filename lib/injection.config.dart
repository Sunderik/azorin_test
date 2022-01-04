// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i5;

import 'core/core.dart' as _i9;
import 'core/di/provider/store_provider.dart' as _i6;
import 'core/network/service/rest_service.dart' as _i3;
import 'core/network/url_factory.dart' as _i7;
import 'core/services/cache_data_sevice.dart' as _i13;
import 'core/services/injections_module.dart' as _i14;
import 'features/user_details_screen/domain/middlewares/epic/user_details_epic.dart'
    as _i11;
import 'features/user_details_screen/repository/user_details_repository.dart'
    as _i8;
import 'features/users_list_screen/domain/middlewares/epics/users_list_epic.dart'
    as _i12;
import 'features/users_list_screen/repository/users_list_repository.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final injectionModule = _$InjectionModule();
  gh.factory<_i3.RestService>(() => _i3.RestServiceImpl(get<_i4.Client>()));
  await gh.factoryAsync<_i5.SharedPreferences>(() => injectionModule.prefs,
      preResolve: true);
  gh.factory<_i6.StoreProvider>(() => _i6.StoreProviderImpl());
  gh.factory<_i7.UrlFactory>(() => _i7.UrlAbstractFactory());
  gh.factory<_i8.UserDetailsRepository>(() => _i8.UserDetailsRepositoryImpl(
      get<_i3.RestService>(), get<_i9.UrlFactory>()));
  gh.factory<_i10.UsersListRepository>(() =>
      _i10.UsersRepositoryImpl(get<_i3.RestService>(), get<_i9.UrlFactory>()));
  gh.factory<_i11.UserDetailsEpic>(
      () => _i11.UserDetailsEpic(get<_i8.UserDetailsRepository>()));
  gh.factory<_i12.UsersListEpic>(
      () => _i12.UsersListEpic(get<_i10.UsersListRepository>()));
  gh.singleton<_i13.CacheDataService>(_i13.CacheDataService());
  return get;
}

class _$InjectionModule extends _i14.InjectionModule {}
