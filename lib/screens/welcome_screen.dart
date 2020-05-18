import 'package:flutter/material.dart';
//import screens
import 'package:newapp/screens/home_screen.dart';
//import components
import 'package:newapp/components/welcome_page_slide.dart';
//import packages
import 'package:page_indicator/page_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WelcomeScreen extends StatefulWidget {
  static String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff01192C),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: PageIndicatorContainer(
                  child: PageView(
                    controller: PageController(),
                    children: <Widget>[
                      WelcomePageSlide(
                        image: AssetImage('assets/images/logo.png'),
                        tittle: 'مرحباً',
                        description:
                            'أهلاً بكم في التطبيق الرسمي للاتحاد العربي للدراجات',
                      ),
                      WelcomePageSlide(
                        image: AssetImage('assets/images/logo.png'),
                        tittle: 'الاخبار',
                        description: 'تصفح آخر أخبار الاتحاد ضمن تبويب الاخبار',
                      ),
                      WelcomePageSlide(
                        image: AssetImage('assets/images/logo.png'),
                        tittle: 'النتائج',
                        description:
                            'تابع نتائج جميع البطولات العربية للدراجات',
                      ),
                    ],
                  ),
                  align: IndicatorAlign.bottom,
                  length: 3,
                  indicatorSpace: 10.0,
                  padding: EdgeInsets.only(bottom: 70.0),
                  indicatorColor: Colors.white,
                  indicatorSelectorColor: Color(0xffFFBD34),
                  shape: IndicatorShape.circle(size: 8.0),
                ),
              ),
              FlatButton(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                color: Color(0xffFFBD34),
                child: Text(
                  'ادخل التطبيق',
                  style: TextStyle(color: Color(0xff01192C), fontSize: 16.0),
                ),
                onPressed: () {
                  _updateSeen();
                  Navigator.pushNamed(context, HomeScreen.id);
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  void _updateSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('seen', true);
  }
}
