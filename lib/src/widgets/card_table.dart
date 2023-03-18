import 'package:flutter/material.dart';
import 'package:flutter_design_practices_basic/src/dto/menu_option.dart';

class CardTable extends StatelessWidget {
  final List<MenuOption> menuOptions = [
    MenuOption('General', Icons.border_all, Colors.indigoAccent),
    MenuOption('Transport', Icons.directions_bus, Colors.purpleAccent),
    MenuOption('Bills', Icons.monetization_on_outlined, Colors.yellowAccent),
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
    var decoration =
        BoxDecoration(color: const Color.fromRGBO(62, 66, 107, .7), borderRadius: BorderRadius.circular(20));
    return Container(
      height: 180,
      margin: const EdgeInsets.all(15),
      decoration: decoration,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: menu.color,
            radius: 30,
            child: Icon(menu.icon, size: 35),
          ),
          const SizedBox(height: 10),
          Text(menu.text, style: const TextStyle(color: Colors.white, fontSize: 18)),
        ],
      ),
    );
  }
}
