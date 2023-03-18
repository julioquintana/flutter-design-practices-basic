import 'package:flutter/material.dart';
import 'package:flutter_design_practices_basic/src/widgets/background.dart';
import 'package:flutter_design_practices_basic/src/widgets/card_table.dart';
import 'package:flutter_design_practices_basic/src/widgets/custom_button_navigator.dart';
import 'package:flutter_design_practices_basic/src/widgets/page_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          Background(),
          _HomeBody(),
        ],
      ),
      bottomNavigationBar: const CustomButtonNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const PageTitle(),
          CardTable(),
        ],
      ),
    );
  }
}
