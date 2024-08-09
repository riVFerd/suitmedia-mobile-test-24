import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:s_template/data/repositories/user_repository.dart';

import '../../data/models/user_model.dart';
import '../../injection.dart';

part 'user_provider.g.dart';

@Riverpod()
class ListUser extends _$ListUser {
  final pageSize = 10;
  int page = 1;

  @override
  FutureOr<(List<UserModel>, bool)> build() {
    return _getUsers(page, pageSize);
  }

  void fetchMore() async {
    page++;
    final data = await _getUsers(page, pageSize);
    final users = state.value == null ? data.$1 : [...state.value!.$1, ...data.$1];
    state = AsyncValue.data((users, data.$2));
  }

  void reset() {
    page = 0;
    state = const AsyncValue.data(([], false));
    fetchMore();
  }

  Future<(List<UserModel>, bool)> _getUsers(int page, int pageSize) async {
    final data = await locator<UserRepository>().getUsers(page, pageSize);
    return data.fold((l) => throw l, (r) => r);
  }
}

@Riverpod()
class SelectedUser extends _$SelectedUser {
  @override
  FutureOr<UserModel?> build() {
    return null;
  }

  void selectUser(UserModel user) => state = AsyncValue.data(user);
}
