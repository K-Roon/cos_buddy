import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../features/auth/presentation/providers/auth_provider.dart';
import '../features/auth/presentation/screens/splash_screen.dart';
import '../features/auth/presentation/screens/login_screen.dart';
import '../features/auth/presentation/screens/register_screen.dart';
import '../features/home/presentation/screens/home_screen.dart';
import '../features/home/presentation/screens/home_screen.dart';

final routerProvider = Provider<GoRouter>((ref) {
  final authState = ref.watch(authStateProvider);

  return GoRouter(
    initialLocation: '/splash',
    redirect: (context, state) {
      final isLoading  = authState.isLoading;
      final isLoggedIn = authState.valueOrNull != null;

      if (isLoading) return '/splash';

      final loc        = state.matchedLocation;
      final isAuthRoute = loc == '/splash' ||
          loc == '/login' ||
          loc == '/register';

      if (!isLoggedIn && !isAuthRoute) return '/login';
      if (isLoggedIn && isAuthRoute && loc != '/splash') return '/home';
      return null;
    },
    routes: [
      GoRoute(
        path:    '/splash',
        builder: (_, __) => const SplashScreen(),
      ),
      GoRoute(
        path:    '/login',
        builder: (_, __) => const LoginScreen(),
      ),
      GoRoute(
        path: '/register',
        builder: (context, state) {
          final extra = state.extra as Map<String, String?>?;
          return RegisterScreen(
            prefillEmail:   extra?['email'],
            snsProvider:    extra?['provider'],
            snsProviderId:  extra?['providerId'],
          );
        },
      ),
      GoRoute(
        path:    '/home',
        builder: (_, __) => const HomeScreen(),
      ),
    ],
  );
});