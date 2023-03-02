import 'package:lanceapi/data/network_api_service.dart';
import 'package:lanceapi/resources/app_url/app_url.dart';

class LoginReprosotory {
  final _apiService = NetworkApiService();
  Future<dynamic> loginApi(var data) async {
    var response = await _apiService.postApi(data, AppUrl.loginApi);
    return response;
  }
}
