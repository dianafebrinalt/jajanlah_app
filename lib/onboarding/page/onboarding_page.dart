import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:jajanlah_app/login/login_page.dart';
import 'package:jajanlah_app/onboarding/model/onboarding_item_model.dart';
import 'package:jajanlah_app/onboarding/view/onboarding_item_view.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => OnboardingPageState();
}

class OnboardingPageState extends State<OnboardingPage> {
  int currentPage = 0;
  final PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Column(children: <Widget>[
                  Expanded(
                    child: PageView(
                      onPageChanged: (page) {
                        setState(() {
                          currentPage = page;
                        });
                      },
                      controller: _pageController,
                      children: OnboardingItem.allItems().map((item) {
                        return OnboardingItemView(
                          item: item,
                        );
                      }).toList(),
                    ),
                  ),
                  const SizedBox(height: 30),
                  SafeArea(
                    child: Container(
                        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            (currentPage + 1) == OnboardingItem.allItems().length
                                ? GestureDetector(
                                    onTap: () {
                                      print("BISAAAAA UNTUK LEWATI");
                                      goToLogin();
                                    },
                                    child: Container(
                                        width: MediaQuery.of(context).size.width / 3.5,
                                        padding: const EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Colors.amber[700] ?? Colors.black),
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(6),
                                        ),
                                        child: const Text(
                                          "Lewati",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontFamily: 'SF-Pro-Rounded',
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w300),
                                        )),
                                  )
                                : InkWell(
                                    onTap: () {
                                      goToLogin();
                                    },
                                    child: Row(
                                      children: <Widget>[
                                        Text(
                                          "Lewati",
                                          style: TextStyle(
                                              fontFamily: 'SF-Pro-Rounded',
                                              color: Colors.amber[700],
                                              fontSize: 15,
                                              fontWeight: FontWeight.w300),
                                        )
                                      ],
                                    )),
                            DotsIndicator(
                              dotsCount: OnboardingItem.allItems().length,
                              axis: Axis.horizontal,
                              position: 1.0 * currentPage,
                              decorator: DotsDecorator(
                                  activeSize: const Size(20, 10),
                                  activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                                  activeColor: Colors.amber[700],
                                  color: Colors.black54,
                                  spacing: const EdgeInsets.all(3)),
                            ),
                            (currentPage + 1) == OnboardingItem.allItems().length
                                ? GestureDetector(
                                    onTap: () {
                                      print("BISAAAAA UNTUK DAFTAR");
                                      goToLogin();
                                    },
                                    child: Container(
                                        width: MediaQuery.of(context).size.width / 3.5,
                                        padding: const EdgeInsets.all(8),
                                        decoration: BoxDecoration(
                                          color: Colors.amber[700],
                                          borderRadius: BorderRadius.circular(6),
                                        ),
                                        // constraints: const BoxConstraints(
                                        //   minWidth: 14,
                                        //   minHeight: 14,
                                        // ),
                                        child: const Text(
                                          "Daftar Akun",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontFamily: 'SF-Pro-Rounded',
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w300),
                                        )),
                                  )
                                : InkWell(
                                    onTap: () {
                                      if ((currentPage + 1) == OnboardingItem.allItems().length) {
                                        goToLogin();
                                      } else {
                                        _pageController.animateToPage(currentPage + 1,
                                            duration: const Duration(milliseconds: 250), curve: Curves.easeOutCubic);
                                      }
                                    },
                                    child: Container(
                                        padding: const EdgeInsets.all(2),
                                        decoration: BoxDecoration(
                                          color: Colors.amber[700],
                                          borderRadius: BorderRadius.circular(6),
                                        ),
                                        constraints: const BoxConstraints(
                                          minWidth: 14,
                                          minHeight: 14,
                                        ),
                                        child: const Icon(Icons.chevron_right_rounded, color: Colors.white))),
                          ],
                        )),
                  ),
                ]))));
  }

  void goToLogin() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginPage()));
  }
}
