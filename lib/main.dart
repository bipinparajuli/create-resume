import 'package:create_resume/screens/utility_screens/splash_screen.dart';
import 'package:flutter/material.dart';

import 'utils/constants.dart';
import 'utils/routes_handler.dart';
import 'utils/theme.dart';

void main() {
  runApp(
    const App(),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Create Resume",
      theme: createTheme(),
      onGenerateRoute: generateRoute,
      home: const SplashScreen(),
    );
  }
}
