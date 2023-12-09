import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:news_app/presentation/components/app_theme.dart';
import 'package:news_app/presentation/screens/welcome_screen.dart';
import 'core/service_locator.dart';
import 'firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  ServiceLocator().init();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,

  );
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.appThemeData,
      debugShowCheckedModeBanner: false,
      home:const WelcomeScreen(),
    );
  }
}
