import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
            color: Colors.white,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(height: 50),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/jajanlah_logo.png",
                      ),
                      const Text(
                        "Tidak takut ngemil bersama Jajanlah!",
                        style: TextStyle(
                            fontFamily: 'SF-Pro-Rounded',
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            height: 1.5),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        print("BISAAAAA UNTUK Apple");
                      },
                      child: Container(
                          width: MediaQuery.of(context).size.width / 1.15,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            // border: Border.all(color: Colors.amber[700] ?? Colors.black),
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/images/apple_logo.png"),
                              const SizedBox(width: 10),
                              const Text(
                                "Lanjut dengan Apple",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'SF-Pro-Rounded',
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          )),
                    ),
                    const SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        print("BISAAAAA UNTUK Google");
                      },
                      child: Container(
                          width: MediaQuery.of(context).size.width / 1.15,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.amber[700] ?? Colors.black),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/images/google_logo.png"),
                              const SizedBox(width: 10),
                              const Text(
                                "Lanjut dengan Google",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'SF-Pro-Rounded',
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          )),
                    ),
                  ],
                ),
                const SizedBox(height: 1),
              ],
            )));
  }
}
