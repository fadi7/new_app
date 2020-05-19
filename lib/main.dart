import 'package:flutter/material.dart';
//import screens
import 'package:newapp/screens/welcome_screen.dart';
import 'package:newapp/screens/home_screen.dart';
import 'package:newapp/utitities/app_theme.dart';
//import packages
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool seen = prefs.getBool('seen');
  String _initScreen;
  if (seen == null || seen == false)
    _initScreen = WelcomeScreen.id;
  else
    _initScreen = HomeScreen.id;
  runApp(NewsApp(_initScreen));
}

class NewsApp extends StatelessWidget {
  final String initScreen;

  NewsApp(this.initScreen);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.appTheme,
      debugShowCheckedModeBanner: false,
      title: 'News App',
      initialRoute: this.initScreen,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        HomeScreen.id: (context) => HomeScreen(),
      },
    );
  }
}
