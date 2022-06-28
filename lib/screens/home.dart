import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:istory/mobx/controllers/load.controller.dart';
import 'package:istory/utils/load.dart';
import 'package:istory/utils/responsive.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  LoadController? _loadController;

  @override
  void initState() {
    super.initState();
    _loadController = LoadController();
    _loading();
  }

  _loading() async {
    _loadController = LoadController();
    _loadController!.loading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFB40C02),
        body: Center(child: Observer(builder: (context) {
          if (_loadController!.load) {
            return Load(_loadController!.progress);
          } else {
            return Container(
              width: responsive(context) * 30,
              height: responsive(context) * 30,
              color: Colors.green,
            );
          }
        })));
  }
}
