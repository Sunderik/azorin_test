import 'package:azorin_test/core/core.dart';
///
class UserAlbumsEndpoint implements Endpoint {
  ///
  final int? userId;

  UserAlbumsEndpoint(this.userId);

  @override
  Uri create() {
    return Uri.https(Urls.users, '$userId/' + Urls.albums);
  }
}
