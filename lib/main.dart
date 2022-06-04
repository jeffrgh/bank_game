import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'screens/create_room_screen.dart';
import 'screens/home_screen.dart';
import 'screens/lounge_screen.dart';
import 'screens/room_screen.dart';
import 'screens/setting_screen.dart';
import 'screens/single_plyr.dart';
import 'screens/username_screen.dart';
import 'widgets/config.dart';

void main() async {
  await Hive.initFlutter();
  box = await Hive.openBox('easyTheme');
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  ).then((_) {
    runApp(
      const MyApp(),
    );
  });
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    currentTheme.addListener(() {
      if (kDebugMode) {
        print('Changes');
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    var darkMode = ThemeData(
      fontFamily: 'Montserrat',
      colorScheme: ColorScheme(
        brightness: Brightness.dark,
        primary: const Color(0xFF3C3C3B),
        onPrimary: Colors.white,
        secondary: const Color(0xff65c8d0),
        onSecondary: Colors.black,
        error: Colors.red,
        onError: Colors.white,
        background: const Color(0xFF3C3C3B),
        onBackground: Colors.white,
        surface: Colors.grey[600]!,
        onSurface: Colors.white,
      ),
      splashColor: const Color(0xFF3C3C3B),
      textTheme: const TextTheme(
        bodyText1: TextStyle(
          color: Colors.white,
        ),
      ),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      useMaterial3: true,
    );
    var lightMode = ThemeData(
      fontFamily: 'Montserrat',
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: Colors.black,
        onPrimary: Color(0xFFE5E5E5),
        secondary: Color(0xff65c8d0),
        onSecondary: Colors.white,
        error: Colors.red,
        onError: Colors.white,
        background: Color(0xFFE5E5E5),
        onBackground: Colors.black,
        surface: Color(0xFFE5E5E5),
        onSurface: Colors.black,
      ),
      splashColor: Colors.white,
      textTheme: const TextTheme(
        bodyText1: TextStyle(
          color: Colors.black,
        ),
      ),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      useMaterial3: true,
    );
    precacheImage(const AssetImage("assets/Images/1.png"), context);
    precacheImage(const AssetImage("assets/Images/2.png"), context);
    precacheImage(const AssetImage("assets/Images/3.png"), context);
    precacheImage(const AssetImage("assets/Images/4.png"), context);
    precacheImage(const AssetImage("assets/Images/5.png"), context);
    precacheImage(const AssetImage("assets/Images/6.png"), context);
    precacheImage(const AssetImage("assets/Images/7.png"), context);
    precacheImage(const AssetImage("assets/Images/8.png"), context);
    precacheImage(const AssetImage("assets/Images/9.png"), context);
    precacheImage(const AssetImage("assets/Images/10.png"), context);
    precacheImage(const AssetImage("assets/Images/11.png"), context);
    precacheImage(const AssetImage("assets/Images/12.png"), context);
    precacheImage(const AssetImage("assets/Images/13.png"), context);
    precacheImage(const AssetImage("assets/Images/14.png"), context);
    precacheImage(const AssetImage("assets/Images/15.png"), context);
    precacheImage(const AssetImage("assets/Images/16.png"), context);
    precacheImage(const AssetImage("assets/Images/17.png"), context);
    precacheImage(const AssetImage("assets/Images/18.png"), context);
    precacheImage(const AssetImage("assets/Images/19.png"), context);
    precacheImage(const AssetImage("assets/Images/20.png"), context);
    precacheImage(const AssetImage("assets/Images/21.png"), context);
    precacheImage(const AssetImage("assets/Images/22.png"), context);
    precacheImage(const AssetImage("assets/Images/23.png"), context);
    precacheImage(const AssetImage("assets/Images/24.png"), context);
    precacheImage(const AssetImage("assets/Images/25.png"), context);
    precacheImage(const AssetImage("assets/Images/26.png"), context);
    precacheImage(const AssetImage("assets/Images/27.png"), context);
    precacheImage(const AssetImage("assets/Images/28.png"), context);
    precacheImage(const AssetImage("assets/Images/29.png"), context);
    precacheImage(const AssetImage("assets/Images/30.png"), context);
    precacheImage(const AssetImage("assets/Images/31.png"), context);
    precacheImage(const AssetImage("assets/Images/32.png"), context);
    precacheImage(const AssetImage("assets/Images/33.png"), context);
    precacheImage(const AssetImage("assets/Images/34.png"), context);
    precacheImage(const AssetImage("assets/Images/35.png"), context);
    precacheImage(const AssetImage("assets/Images/36.png"), context);
    precacheImage(const AssetImage("assets/Images/37.png"), context);
    precacheImage(const AssetImage("assets/Images/38.png"), context);
    precacheImage(const AssetImage("assets/Images/39.png"), context);
    precacheImage(const AssetImage("assets/Images/40.png"), context);
    precacheImage(const AssetImage("assets/Images/41.png"), context);
    precacheImage(const AssetImage("assets/Images/42.png"), context);
    precacheImage(const AssetImage("assets/Images/43.png"), context);
    precacheImage(const AssetImage("assets/Images/44.png"), context);
    precacheImage(const AssetImage("assets/Images/45.png"), context);
    precacheImage(const AssetImage("assets/Images/46.png"), context);
    precacheImage(const AssetImage("assets/Images/47.png"), context);
    precacheImage(const AssetImage("assets/Images/48.png"), context);
    precacheImage(const AssetImage("assets/Images/49.png"), context);
    precacheImage(const AssetImage("assets/Images/50.png"), context);
    precacheImage(const AssetImage("assets/Images/51.png"), context);
    precacheImage(const AssetImage("assets/Images/52.png"), context);
    precacheImage(const AssetImage("assets/Images/card_back.png"), context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      title: 'Bank Game',
      darkTheme: darkMode,
      theme: lightMode,
      themeMode: currentTheme.currentTheme(),
      routes: {
        CreateRoomScreen.routeName: (context) => const CreateRoomScreen(),
        RoomScreen.routeName: (context) => const RoomScreen(),
        SinglePlyr.routeName: (context) => const SinglePlyr(),
        HomeScreen.routeName: (context) => const HomeScreen(),
        SettingsScreen.routeName: (context) => const SettingsScreen(),
        UsernameScreen.routeName: (context) => const UsernameScreen(),
        LoungeScreen.routeName: (context) => const LoungeScreen(),
      },
    );
  }
}
