// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'load.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoadController on _LoadControllerBase, Store {
  late final _$loadAtom =
      Atom(name: '_LoadControllerBase.load', context: context);

  @override
  bool get load {
    _$loadAtom.reportRead();
    return super.load;
  }

  @override
  set load(bool value) {
    _$loadAtom.reportWrite(value, super.load, () {
      super.load = value;
    });
  }

  late final _$progressAtom =
      Atom(name: '_LoadControllerBase.progress', context: context);

  @override
  double? get progress {
    _$progressAtom.reportRead();
    return super.progress;
  }

  @override
  set progress(double? value) {
    _$progressAtom.reportWrite(value, super.progress, () {
      super.progress = value;
    });
  }

  late final _$_LoadControllerBaseActionController =
      ActionController(name: '_LoadControllerBase', context: context);

  @override
  dynamic loading() {
    final _$actionInfo = _$_LoadControllerBaseActionController.startAction(
        name: '_LoadControllerBase.loading');
    try {
      return super.loading();
    } finally {
      _$_LoadControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
load: ${load},
progress: ${progress}
    ''';
  }
}
