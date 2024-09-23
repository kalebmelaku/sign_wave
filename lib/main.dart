import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:signwave/controller.dart';
import 'package:signwave/pages/ForgetPassword/confirm.dart';
import 'package:signwave/pages/ForgetPassword/forget_pass.dart';
import 'package:signwave/pages/home.dart';
import 'package:signwave/pages/login.dart';
import 'package:signwave/pages/signup.dart';
import 'package:signwave/theme/dark_mode.dart';
import 'package:signwave/theme/light_mode.dart';

late Box box1;
void main() async {
  await Hive.initFlutter();
  box1 = await Hive.openBox('userData');
  runApp(ScreenUtilInit(
    minTextAdapt: true,
    splitScreenMode: true,
    designSize: const Size(360, 640),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: box1.get('isLogged', defaultValue: false)
          ? const Controller()
          : const Login(),
      routes: {
        '/home': (context) => const Home(),
        '/login': (context) => const Login(),
        '/confirm': (context) => const Confirm(),
        '/signup': (context) => const Signup(),
        '/forgetPass': (context) => const ForgetPass(),
      },
      theme: lightMode,
      darkTheme: darkMode,
    ),
  ));
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
