import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  const ScrollScreen({Key? key}) : super(key: key);
  final boxDecoration = const BoxDecoration(
    gradient: LinearGradient(
      stops: [.5, .5],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Color(0xff5EE8c5), Color(0xff30BAd6)],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: boxDecoration,
        child: PageView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: const [Page1(), Page2()],
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAd6),
      child: Center(
        child: TextButton(
          onPressed: null,
          child: Container(
            alignment: Alignment.center,
            height: 70,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 50),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              gradient: const LinearGradient(
                colors: <Color>[
                  Color(0xFF0D47A1),
                  Color(0xFF1976D2),
                  Color(0xFF42A5F5),
                ],
              ),
            ),
            child: const Text(
              'Bienvenido',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),
            ),
          ),
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        Background(),
        InformationWidget(),
      ],
    );
  }
}

class InformationWidget extends StatelessWidget {
  const InformationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white);
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 30,
          ),
          const Text('11°', style: textStyle),
          const Text('Miercoles', style: textStyle),
          Expanded(child: Container()),
          const Icon(Icons.keyboard_arrow_down, size: 100, color: Colors.white)
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAd6),
      alignment: Alignment.topCenter,
      height: double.infinity,
      child: const Image(
        image: AssetImage('assets/scroll-1.png'),
      ),
    );
  }
}
