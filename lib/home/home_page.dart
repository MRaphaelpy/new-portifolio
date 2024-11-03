import 'package:flutter/material.dart';
import 'package:new_portifolio/customAppBar/customAppBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isProgrammer = true;

  @override
  void initState() {
    super.initState();
    _startTextSwitching();
  }

  void _startTextSwitching() {
    Future.delayed(Duration(seconds: 2), () {
      if (mounted) {
        setState(() {
          _isProgrammer = !_isProgrammer;
        });
        _startTextSwitching();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Bem-vindo",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(height: 10),
              AnimatedSwitcher(
                duration: Duration(seconds: 1),
                child: Text(
                  _isProgrammer ? "Eu sou programador" : "Eu sou estudante",
                  key: ValueKey<bool>(_isProgrammer),
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Eu sou M. Raphael, um entusiasta de tecnologia com paixão por programação e aprendizado contínuo.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
