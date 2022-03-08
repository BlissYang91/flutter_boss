import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_boss/home.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() {
    return SplashState();
  }
}

class SplashState extends State<SplashPage> {
  late Timer _timer;

  @override
  void initState() {
    _timer = Timer(const Duration(milliseconds: 1500), () {
      log("timer 执行");
      try {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (BuildContext content) => BossAPP()),
            (Route route) => route == null);
      } catch (e) {
        log("e = " + e.toString());
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color.fromARGB(255, 0, 215, 198),
      child: Padding(
        padding: const EdgeInsets.only(top: 150.0),
        child: Column(
          children: const [
            Text(
              "Boss直聘",
              style: TextStyle(
                color: Colors.white,
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}
