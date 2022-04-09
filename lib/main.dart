import 'package:desafioflutter/model/produtos.dart';
import 'package:desafioflutter/util/formatar_moeda.dart';
import 'package:desafioflutter/widgets/detalhe_produto.dart';
import 'package:flutter/material.dart';
import 'package:desafioflutter/widgets/carrossel_imagens.dart';
import 'package:desafioflutter/widgets/carrossel_marcas.dart';
import 'package:desafioflutter/widgets/carrossel_especial_voce.dart';
import 'package:desafioflutter/widgets/lista_mais_populares.dart';

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
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
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
            child: Column(
              children: const [
                CarrosselImagemWidget(),
                CarrosselMarcasWidget(),
                CarrosselEspecialVoceWidget(),
                ListaMaisPopularesWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DetalheProduto extends StatelessWidget {
  final Produto produto;

  const DetalheProduto({Key? key, required this.produto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: DetalheProdutoWidget(produto: produto),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Container(
                          child: const Text(
                            "Preço",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Color.fromARGB(255, 109, 109, 109),
                            ),
                          ),
                        ),
                      ),
                      Text(FormatarMoeda.formatar(produto.preco),
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff333333),
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(255, 0, 0, 0)),
                    ),
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        'ADICIONAR',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
