import 'package:flutter_web_practice/core/exports/widget_exports.dart';
import 'package:flutter_web_practice/features/home/presentation/screens/home_screen.dart';
import 'package:flutter_web_practice/features/website_features/presentation/screens/features_screen.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  AppRoutes._();

  static final GoRouter router = GoRouter(
    initialLocation: AppRoutePath.home,
    //  errorBuilder: (context, state) => const NotFoundScreen(), // Create a simple 404 page
    debugLogDiagnostics: true, // Useful for web debugging
    routes: [
      ShellRoute(
        // The 'child' is the page being navigated to (Home, Features, etc.)
        builder: (context, state, child) {
          return MainLayoutWrapper(child: child);
        },
        routes: [
          GoRoute(
            path: AppRoutePath.home,
            name: AppRouteName.home,
            builder: (context, state) => const HomeScreen(),
          ),
          GoRoute(
            path: AppRoutePath.features,
            name: AppRouteName.features,
            builder: (context, state) => const FeaturesScreen(),
          ),
        ],
      ),
    ],
    redirect: (context, state) {
      // Example: Access your AuthBloc state here if needed
      // final isAuthenticated = context.read<AuthBloc>().state is Authenticated;
      return null;
    },
  );
}
