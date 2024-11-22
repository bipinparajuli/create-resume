import 'package:create_resume/screens/main_screens/resume_details/education/education_screen.dart';
import 'package:create_resume/screens/main_screens/resume_details/experience/expirence_screen.dart';
import 'package:flutter/material.dart';
import 'package:create_resume/screens/utility_screens/not_found_screen.dart';
import 'package:create_resume/screens/utility_screens/splash_screen.dart';
import 'package:create_resume/screens/main_screens/create_cv_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashScreen.routeName:
      return MaterialPageRoute(builder: (context) => const SplashScreen());
    case WorkExperienceScreen.routeName:
      return MaterialPageRoute(builder: (context) => WorkExperienceScreen());
    case EducationDetailsScreen.routeName:
      return MaterialPageRoute(builder: (context) => EducationDetailsScreen());
    case CreateCvScreen.routeName:
      return MaterialPageRoute(builder: (context) => CreateCvScreen());
    default:
      return MaterialPageRoute(builder: (context) => const NotFoundScreen());
  }
}
