// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$listUserHash() => r'353dffa39ee377d4ee1e5008053e173914b1414c';

/// See also [ListUser].
@ProviderFor(ListUser)
final listUserProvider = AutoDisposeAsyncNotifierProvider<ListUser,
    (List<UserModel>, bool)>.internal(
  ListUser.new,
  name: r'listUserProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$listUserHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ListUser = AutoDisposeAsyncNotifier<(List<UserModel>, bool)>;
String _$selectedUserHash() => r'71f10c0842e3765d12b39192248eab112bc55562';

/// See also [SelectedUser].
@ProviderFor(SelectedUser)
final selectedUserProvider =
    AutoDisposeAsyncNotifierProvider<SelectedUser, UserModel?>.internal(
  SelectedUser.new,
  name: r'selectedUserProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$selectedUserHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SelectedUser = AutoDisposeAsyncNotifier<UserModel?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
