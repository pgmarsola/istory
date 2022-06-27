import 'dart:async';

import 'package:flutter/material.dart';
import 'package:istory/utils/load.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double progress = 0.0;
  bool value = false;

  @override
  void initState() {
    super.initState();
    downloadData();
  }

  void downloadData() {
    Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      setState(() {
        if (progress == 1.0) {
          timer.cancel();
          value = true;
        } else {
          progress = progress + 0.1;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFB40C02),
      body: Center(
          child: value == true
              ? Container(
                  height: 10,
                  width: 10,
                  color: Colors.green,
                )
              : Load(
                  progress,
                )),
    );
  }
}
