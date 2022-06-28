import 'dart:async';

import 'package:mobx/mobx.dart';

part 'load.controller.g.dart';

class LoadController = _LoadControllerBase with _$LoadController;

abstract class _LoadControllerBase with Store {
  _LoadControllerBase() {}

  @observable
  bool load = false;

  @observable
  double? progress = 0.0;

  @action
  loading() {
    load = true;
    Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      if (progress! >= 1.0) {
        timer.cancel();
        load = false;
      } else {
        progress = progress! + 0.1;
      }
    });
  }
}
