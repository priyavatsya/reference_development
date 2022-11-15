import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:reference_development/constants/constants.dart';
import 'package:reference_development/login/login_page.dart';
import 'package:reference_development/theme/app_theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      builder: (context, _) {
        final themeProvider = Provider.of<ThemeProvider>(context);

        return ResponsiveSizer(
          builder: (context, orientation, screenType) {
            return MaterialApp(
                themeMode: themeProvider.themeMode,
                theme: MyThemes.lightTheme,
                debugShowCheckedModeBanner: false,
                darkTheme: MyThemes.darkTheme,
                home: AnimatedSplashScreen(
                    duration: 2000,
                    splashIconSize: 300,
                    splash: Lottie.asset('images/lottie1.json'),
                    nextScreen: LoginPage(),
                    splashTransition: SplashTransition.slideTransition,
                    backgroundColor: AppColors.PRIMARY_COLOR));
          },
        );
      });
}
