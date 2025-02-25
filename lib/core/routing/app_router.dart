import 'package:flutter/material.dart';
import 'package:flutter_advance/core/routing/routes.dart';
import 'package:flutter_advance/features/onboarding/onboarding_screen.dart';

import '../../features/auth/ui/login_screen.dart';
class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      default:
        return MaterialPageRoute(builder: (_) => Scaffold(
            body: Center(
                child: Text('No route defined for ${settings.name}'),
        ),
        ),
        );
    }
  }
}