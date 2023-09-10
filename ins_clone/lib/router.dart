import 'package:go_router/go_router.dart';
import 'package:ins_clone/features/authentication/views/create_account_screen.dart';
import 'package:ins_clone/features/authentication/views/login_screen.dart';
import 'package:ins_clone/features/onboarding/views/welcome_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const WelcomeScreen(),
    ),
    GoRoute(
      path: "/login",
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: "/create-account",
      builder: (context, state) => const CreateAccountScreen(),
    ),
  ],
);
