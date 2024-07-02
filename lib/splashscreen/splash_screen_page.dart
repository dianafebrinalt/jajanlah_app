import 'package:flutter/material.dart';
import 'package:jajanlah_app/onboarding/page/onboarding_page.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  _goToOnboardingPage(BuildContext context) {
    Navigator.pushAndRemoveUntil(
        context, MaterialPageRoute(builder: (context) => const OnboardingPage()), (route) => false);
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(afterBuild);
  }

  void afterBuild(s) {
    Future.delayed(const Duration(milliseconds: 250), () {
      _goToOnboardingPage(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
            color: Colors.white,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Image.asset(
                "assets/images/jajanlah_logo.png",
              ),
            )));
  }
}
