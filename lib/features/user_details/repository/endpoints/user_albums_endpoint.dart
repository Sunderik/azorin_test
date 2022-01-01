import 'package:azorin_test/core/core.dart';

class UserAlbumsEndpoint implements Endpoint {
  final int? userID;

  UserAlbumsEndpoint(this.userID);

  @override
  Uri create() {
    return Uri.https(Urls.users, '$userID/' + Urls.albums);
  }
}
