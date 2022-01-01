import 'package:azorin_test/core/core.dart';

class UserPostsEndpoint implements Endpoint {
  final int? userID;

  UserPostsEndpoint(this.userID);

  @override
  Uri create() {
    return Uri.https(Urls.users, '$userID/' + Urls.posts);
  }
}
