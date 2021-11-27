import 'package:http/http.dart';
import 'package:tecon_task/core/di/provider/store_provider.dart';
import 'package:tecon_task/core/network/interceptor/interceptor.dart';
import 'package:tecon_task/injection.dart';

const contentTypeHeader = 'application/json';

class AuthInterceptor implements Interceptor {
  final StoreProvider _storeProvider = injector.get<StoreProvider>();

  @override
  BaseRequest intercept(BaseRequest request) {
    final token = _storeProvider.store!.state.userState.currentUser?.apiKey;
    request.headers.update('content-type', (update) => contentTypeHeader, ifAbsent: () => contentTypeHeader);
    request.headers.update('ApiKey', (update) => '$token', ifAbsent: () => '$token');
    return request;
  }

  @override
  String toString() {
    return '$runtimeType';
  }
}
