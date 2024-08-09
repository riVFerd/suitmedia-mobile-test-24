import 'package:s_template/data/datasources/remote_datasources/remote_datasource.dart';

import '../../models/user_model.dart';

class UserRemoteDatasource extends RemoteDatasource {
  UserRemoteDatasource(super.dio, super.session);

  Future<List<UserModel>> getUsers(int page, int pageSize) async {
    return networkRequest(request: (dio) async {
      final response = await dio.get('/users?page=$page&per_page=$pageSize');
      return response.data['data'];
    }, onResponse: (data) {
      return (data as List).map((e) => UserModel.fromJson(e)).toList();
    });
  }
}