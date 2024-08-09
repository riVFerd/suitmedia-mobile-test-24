import 'package:go_router/go_router.dart';
import 'package:s_template/presentation/screens/first_screen.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: FirstScreen.path,
    routes: [
      GoRoute(
        path: FirstScreen.path,
        builder: (_, __) => const FirstScreen(),
      ),
    ],
  );
}
