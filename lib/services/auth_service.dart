import 'package:Tranquilo/models/api_response.dart';
import 'package:Tranquilo/models/login_response.dart';
import 'package:http/http.dart' as http;
import 'package:Tranquilo/utils/app_constants.dart' as Constants;

class AuthService {
  final String ENDPOINT = Constants.LOGIN_ENDPOINT;

  Future<APIResponse<LoginResponse>> login() {
    return http.get(ENDPOINT, headers: null).then((data) {
      return APIResponse();
    });
  }
}
