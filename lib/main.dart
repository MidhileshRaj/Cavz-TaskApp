import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_cavz/controller/create_accountpage_controller.dart';
import 'package:task_cavz/controller/splash_screen_coontroller.dart';
import 'package:task_cavz/firebase_options.dart';
import 'package:task_cavz/view/splash_screen.dart';

import 'controller/welcome_screen_controller.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SplashProvider(),),
        ChangeNotifierProvider(create: (context) => WelcomeScreenController(),),
        ChangeNotifierProvider(create: (context) => CreateAccountController(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
