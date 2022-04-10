import 'package:badges/badges.dart';
import 'package:desafioflutter/model/produtos.dart';
import 'package:desafioflutter/widgets/bottom_bar_carrinho.dart';
import 'package:desafioflutter/widgets/bottom_bar_detalhe_produto.dart';
import 'package:desafioflutter/widgets/carrinho.dart';
import 'package:desafioflutter/widgets/detalhe_produto.dart';
import 'package:desafioflutter/widgets/form_login.dart';
import 'package:desafioflutter/widgets/lista_favoritos.dart';
import 'package:flutter/material.dart';
import 'package:desafioflutter/widgets/carrossel_imagens.dart';
import 'package:desafioflutter/widgets/carrossel_marcas.dart';
import 'package:desafioflutter/widgets/carrossel_especial_voce.dart';
import 'package:desafioflutter/widgets/lista_mais_populares.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ProdutoAdicionado(),
      child: const MyApp(),
    ),
  );
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
        primaryColor: Colors.black,
        fontFamily: "Texgyreadventor",
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static final List<Widget> _widgetOptions = <Widget>[
    Column(
      children: const [
        CarrosselImagemWidget(),
        CarrosselMarcasWidget(),
        CarrosselEspecialVoceWidget(),
        ListaMaisPopularesWidget(),
      ],
    ),
    const Carrinho(),
    const ListaFavoritosWidget(),
    const FormLoginWidget(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: _widgetOptions.elementAt(_selectedIndex),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: [
          const BottomNavigationBarItem(
            icon: const Icon(Icons.home_rounded),
            label: ('Home'),
          ),
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Carrinho(),
                  ),
                );
              },
              child: Badge(
                badgeContent: Consumer<ProdutoAdicionado>(
                  builder: (context, counter, child) => Text(
                    '${counter.value}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                position: const BadgePosition(end: 1, top: 1),
                badgeColor: Colors.black,
                child: const IconButton(
                  icon: Icon(Icons.shopping_bag_outlined),
                  onPressed: null,
                ),
              ),
            ),
            label: ('Carrinho'),
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined),
            label: ('Favoritos'),
          ),
          const BottomNavigationBarItem(
            icon: const Icon(Icons.person_outline_rounded),
            label: ('Perfil'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
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
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Badge(
              toAnimate: true,
              animationType: BadgeAnimationType.fade,
              badgeContent: Consumer<ProdutoAdicionado>(
                builder: (context, counter, child) => Text(
                  '${counter.value}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              position: const BadgePosition(end: 1, top: 1),
              badgeColor: Colors.black,
              child: IconButton(
                icon: const Icon(Icons.shopping_bag_outlined),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Carrinho(),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
        shadowColor: Colors.transparent,
        backgroundColor: Theme.of(context).backgroundColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: DetalheProdutoWidget(produto: produto),
        ),
      ),
      bottomNavigationBar: BottomBarDetalheProdutoWidget(produto: produto),
    );
  }
}

class Carrinho extends StatelessWidget {
  const Carrinho({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        shadowColor: Colors.transparent,
        backgroundColor: Theme.of(context).backgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: const CarrinhoWidget(),
      ),
      bottomNavigationBar: const BottomBarCarrinhoWidget(),
    );
  }
}
