import 'package:azorin_test/core/core.dart';

class UserPostsEndpoint implements Endpoint {
  final int? userID;

  UserPostsEndpoint(this.userID);

  @override
  Uri create() {
    String path = Urls.users + '/$userID' + Urls.posts;
    var url = Uri.https(Urls.baseUrl, path);
    return url;
  }
}
