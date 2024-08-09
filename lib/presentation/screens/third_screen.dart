import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../components/app_bar.dart';
import '../components/user_card.dart';
import '../providers/user_provider.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  static const path = '/third-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getStyledAppBar(context, 'Third Screen'),
      body: const ListUserView(),
    );
  }
}

class ListUserView extends HookConsumerWidget {
  const ListUserView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = useScrollController();
    final hasReachedMax = ref.watch(listUserProvider).value?.$2 ?? false;
    final users = ref.watch(listUserProvider).value?.$1 ?? [];

    useEffect(() {
      scrollController.addListener(() {
        if (scrollController.position.pixels == scrollController.position.maxScrollExtent) {
          if (hasReachedMax) return;
          ref.read(listUserProvider.notifier).fetchMore();
        }
      });

      return null;
    }, []);

    return RefreshIndicator(
      onRefresh: () async {
        ref.read(listUserProvider.notifier).reset();
      },
      child: ListView.builder(
        itemCount: users.length + (hasReachedMax ? 0 : 1),
        physics: const AlwaysScrollableScrollPhysics(),
        controller: scrollController,
        itemBuilder: (context, index) {
          if (index < users.length) {
            final user = users[index];
            return UserCard(
              user: user,
              onTap: () {
                ref.read(selectedUserProvider.notifier).selectUser(user);
                context.pop();
              },
            );
          } else if (hasReachedMax) {
            return const Center(
              child: Text('No more users'),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
