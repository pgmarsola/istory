import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:istory/mobx/character/character.controller.dart';
import 'package:istory/mobx/load/load.controller.dart';
import 'package:istory/models/character.model.dart';
import 'package:istory/utils/load.dart';
import 'package:istory/utils/responsive.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  LoadController? _loadController;
  CharacterController? _characterController;

  @override
  void initState() {
    super.initState();
    _loadController = LoadController();
    _characterController = CharacterController();
    _loading();
    _characters();
  }

  _loading() async {
    _loadController = LoadController();
    _loadController!.loading();
  }

  _characters() async {
    _characterController = CharacterController();
    _characterController!.fetchCharacters();
  }

  Widget _list(
    List<Character>? data,
    BuildContext context,
  ) {
    List<Widget> list = <Widget>[];
    for (int i = 0; i < data!.length; i++) {
      list.add(Card(
        margin: const EdgeInsets.all(10),
        child: ListTile(
          leading: Image.asset(data[i].image.toString()),
          title: Text(data[i].name.toString()),
          subtitle: Text(data[i].description.toString()),
        ),
      ));
    }
    return Column(children: list);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFB40C02),
        body: Padding(
            padding: EdgeInsets.only(top: responsive(context) * 5),
            child: SingleChildScrollView(
                child: Center(child: Observer(builder: (context) {
              if (_characterController!.load) {
                return Load(_loadController!.progress);
              } else {
                if (_characterController!.characters != null &&
                    _characterController!.characters!.isNotEmpty) {
                  return Observer(
                      builder: (_) =>
                          _list(_characterController!.characters, context));
                } else {
                  return Column(
                    children: [
                      const Text("Não foi possivel carregar dados em tela")
                    ],
                  );
                }
              }
            })))));
  }
}
