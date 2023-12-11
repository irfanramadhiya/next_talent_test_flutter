import 'package:dio/dio.dart';

class Service {
  var baseUrl = "https://reqres.in";

  Future<void> postStaff(String staffId, String staffName, String hobby) async {
    try {
      await Dio().post('$baseUrl/api/users', data: {
        "staff_id": staffId,
        "staff_name": staffName,
        "hobby": hobby,
      });
      print("success");
    } on DioException catch (e) {
      print(e);
    }
  }
}
