import 'package:wasser_app/core/error/exception.dart';
import 'package:wasser_app/core/network/api_provider.dart';
import 'package:wasser_app/ui/pages/example/model/user_response.dart';

class ExampleRepository {
  Future<UserResponse> example() async {
    final responseJson = await ApiProvider.dio
        .get("https://jsonplaceholder.typicode.com/users/1");

    // print(responseJson.data);
    if (responseJson.statusCode == 200) {
      // var data = json.decode(responseJson.data);
      // var rest = data as List;
      // print(rest);
      // var list = rest
      //     .map<UserResponse>((json) => UserResponse.fromJson(json))
      //     .toList();
      //
      // print(json.decode(responseJson.data));
      //
      // // var list = (json.encode(responseJson.data) as List)
      // //     .map((data) => UserResponse.fromJson(data))
      // //     .toList();

      return UserResponse.fromJson(responseJson.data);
    } else {
      throw ServerException();
    }
  }
}
