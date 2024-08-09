// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getUsersHash() => r'c3c848aa0625313ebdcc1418a372765a4e0e7c81';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [getUsers].
@ProviderFor(getUsers)
const getUsersProvider = GetUsersFamily();

/// See also [getUsers].
class GetUsersFamily extends Family<AsyncValue<List<UserModel>>> {
  /// See also [getUsers].
  const GetUsersFamily();

  /// See also [getUsers].
  GetUsersProvider call(
    int page,
    int pageSize,
  ) {
    return GetUsersProvider(
      page,
      pageSize,
    );
  }

  @override
  GetUsersProvider getProviderOverride(
    covariant GetUsersProvider provider,
  ) {
    return call(
      provider.page,
      provider.pageSize,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getUsersProvider';
}

/// See also [getUsers].
class GetUsersProvider extends AutoDisposeFutureProvider<List<UserModel>> {
  /// See also [getUsers].
  GetUsersProvider(
    int page,
    int pageSize,
  ) : this._internal(
          (ref) => getUsers(
            ref as GetUsersRef,
            page,
            pageSize,
          ),
          from: getUsersProvider,
          name: r'getUsersProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getUsersHash,
          dependencies: GetUsersFamily._dependencies,
          allTransitiveDependencies: GetUsersFamily._allTransitiveDependencies,
          page: page,
          pageSize: pageSize,
        );

  GetUsersProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.page,
    required this.pageSize,
  }) : super.internal();

  final int page;
  final int pageSize;

  @override
  Override overrideWith(
    FutureOr<List<UserModel>> Function(GetUsersRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetUsersProvider._internal(
        (ref) => create(ref as GetUsersRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        page: page,
        pageSize: pageSize,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<UserModel>> createElement() {
    return _GetUsersProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetUsersProvider &&
        other.page == page &&
        other.pageSize == pageSize;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);
    hash = _SystemHash.combine(hash, pageSize.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetUsersRef on AutoDisposeFutureProviderRef<List<UserModel>> {
  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `pageSize` of this provider.
  int get pageSize;
}

class _GetUsersProviderElement
    extends AutoDisposeFutureProviderElement<List<UserModel>> with GetUsersRef {
  _GetUsersProviderElement(super.provider);

  @override
  int get page => (origin as GetUsersProvider).page;
  @override
  int get pageSize => (origin as GetUsersProvider).pageSize;
}

String _$selectedUserHash() => r'614250bf6d09387e2f8cddb30c2e04cde1b49824';

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
