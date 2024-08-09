import 'package:s_template/data/datasources/remote_datasources/remote_datasource.dart';

import '../../models/user_model.dart';

class UserRemoteDatasource extends RemoteDatasource {
  UserRemoteDatasource(super.dio, super.session);

  Future<(List<UserModel>, bool isLast)> getUsers(int page, int pageSize) async {
    return networkRequest(request: (dio) async {
      return await dio.get('/users?page=$page&per_page=$pageSize');
    }, onResponse: (res) {
      final userList = (res['data'] as List).map((e) => UserModel.fromJson(e)).toList();
      final isLast = page >= res['total_pages'];
      return (userList, isLast);
    });
  }
}