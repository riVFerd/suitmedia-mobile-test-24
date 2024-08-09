import 'package:fpdart/fpdart.dart';
import 'package:s_template/data/datasources/remote_datasources/user_remote_datasource.dart';
import 'package:s_template/data/repositories/repository.dart';
import 'package:s_template/injection.dart';

import '../../common/errors/app_error.dart';
import '../models/user_model.dart';

class UserRepository extends Repository {
  UserRepository(super.networkInfo);

  final userRemoteDatasource = locator<UserRemoteDatasource>();

  Future<Either<AppError, (List<UserModel>, bool isLast)>> getUsers(int page, int pageSize) async {
    return handleNetworkCall(
      call: userRemoteDatasource.getUsers(page, pageSize),
      onSuccess: (data) => data,
    );
  }
}
