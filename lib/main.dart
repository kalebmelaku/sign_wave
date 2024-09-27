import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:signwave/components/panel_data/battery_data.dart';
import 'package:signwave/components/panel_data/load_data.dart';
import 'package:signwave/components/panel_data/plot_data.dart';
import 'package:signwave/components/panel_data/solar_panel_data.dart';
import 'package:signwave/pages/ForgetPassword/confirm.dart';
import 'package:signwave/pages/ForgetPassword/forget_pass.dart';
import 'package:signwave/pages/battery_setting.dart';
import 'package:signwave/pages/device_setting.dart';
import 'package:signwave/pages/home.dart';
import 'package:signwave/pages/load_setting.dart';
import 'package:signwave/pages/login.dart';
import 'package:signwave/pages/monitoring.dart';
import 'package:signwave/pages/setting.dart';
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
          ? const Home()
          : const Login(),
      routes: {
        '/home': (context) => const Home(),
        '/login': (context) => const Login(),
        '/confirm': (context) => const Confirm(),
        '/signup': (context) => const Signup(),
        '/forgetPass': (context) => const ForgetPass(),
        '/monitoring': (context) => const Monitoring(),
        '/batterySetting': (context) => const BatterySetting(),
        '/deviceSetting': (context) => const DeviceSetting(),
        '/loadSetting': (context) => const LoadSetting(),
        '/solar_panel_data': (context) => const SolarPanelData(),
        '/battery_data': (context) => const BatteryData(),
        '/load_data': (context) => const LoadData(),
        '/plot_data': (context) => const PlotData(),
        '/setting': (context) => const Setting(),
      },
      theme: lightMode,
      darkTheme: darkMode,
      themeMode: ThemeMode.system,
    ),
  ));
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
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
