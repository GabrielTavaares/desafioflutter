import 'package:flutter/material.dart';
import 'package:desafioflutter/widgets/carrossel_imagens.dart';
import 'package:desafioflutter/widgets/carrossel_marcas.dart';
import 'package:desafioflutter/widgets/carrossel_especial_voce.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Desafio Flutter',
      theme: ThemeData(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        primarySwatch: Colors.blue,
        fontFamily: "Texgyreadventor",
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: SizedBox(
              height: double.maxFinite,
              width: double.maxFinite,
              child: Column(
                children: const [
                  CarrosselImagemWidget(),
                  CarrosselMarcasWidget(),
                  CarrosselEspecialVoceWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
