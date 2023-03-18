import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_design_practices_basic/src/dto/menu_option.dart';

class CardTable extends StatelessWidget {
  final List<MenuOption> menuOptions = [
    MenuOption('General', Icons.border_all, Colors.indigoAccent),
    MenuOption('Transport', Icons.directions_bus, Colors.purpleAccent),
    MenuOption('Bills', Icons.monetization_on_outlined, Colors.deepPurpleAccent),
    MenuOption('Shopping', Icons.shopping_bag, Colors.deepOrangeAccent),
    MenuOption('Entertainment', Icons.movie, Colors.lightBlueAccent),
    MenuOption('Cloud', Icons.backup_sharp, Colors.greenAccent),
    MenuOption('Temperature', Icons.ac_unit, Colors.blueGrey),
  ];

  CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: _getChildren(menuOptions),
    );
  }

  _getChildren(List<MenuOption> menuOptions) {
    List<TableRow> rows = [];

    for (int i = 0; i < menuOptions.length; i += 2) {
      rows.add(
        TableRow(children: [
          _SingleCard(
            menu: menuOptions[i],
          ),
          i + 1 < menuOptions.length
              ? _SingleCard(
                  menu: menuOptions[i + 1],
                )
              : Container(),
        ]),
      );
    }
    return rows;
  }
}

class _SingleCard extends StatelessWidget {
  final MenuOption menu;

  const _SingleCard({Key? key, required this.menu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _SingleCardBackground(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: menu.color,
          radius: 30,
          child: Icon(menu.icon, size: 35, color: Colors.white),
        ),
        const SizedBox(height: 10),
        Text(menu.text, style: const TextStyle(color: Colors.white, fontSize: 18)),
      ],
    ));
  }
}

class _SingleCardBackground extends StatelessWidget {
  const _SingleCardBackground({
    super.key,
    required this.child,
  });

  final Column child;

  @override
  Widget build(BuildContext context) {
    var decoration =
        BoxDecoration(color: const Color.fromRGBO(62, 66, 107, .7), borderRadius: BorderRadius.circular(20));
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: decoration,
            child: child,
          ),
        ),
      ),
    );
  }
}
