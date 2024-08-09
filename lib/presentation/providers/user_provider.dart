import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:s_template/data/repositories/user_repository.dart';

import '../../data/models/user_model.dart';
import '../../injection.dart';

part 'user_provider.g.dart';

@Riverpod()
Future<List<UserModel>> getUsers(GetUsersRef ref, int page, int pageSize) async {
  final data = await locator<UserRepository>().getUsers(page, pageSize);
  return data.fold((l) => throw l, (r) => r);
}

@Riverpod()
class SelectedUser extends _$SelectedUser {

  @override
  FutureOr<UserModel?> build() {
    return null;
  }

  void selectUser(UserModel user) => state = AsyncValue.data(user);
}