import 'package:desafioflutter/model/produtos.dart';
import 'package:flutter/material.dart';

int tamanhoSelecionado = 0;

class DetalheProdutoWidget extends StatefulWidget {
  final Produto produto;
  const DetalheProdutoWidget({Key? key, required this.produto})
      : super(key: key);

  @override
  State<DetalheProdutoWidget> createState() => _DetalheProdutoWidgetState();
}

class _DetalheProdutoWidgetState extends State<DetalheProdutoWidget> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        setState(() {
          tamanhoSelecionado = 0;
        });

        Navigator.of(context).pop(true);
        return false;
      },
      child: Container(
        child: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Stack(children: [
                  Image(
                    image: NetworkImage(widget.produto.imagem),
                  ),
                  Positioned(
                    top: 10,
                    left: 10,
                    right: 10,
                    child: Row(
                      children: const [
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Icon(
                              Icons.favorite_rounded,
                              color: Colors.black,
                              size: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    widget.produto.nome,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF333333),
                    ),
                  ),
                ),
              ),
              Row(
                children: _starsForRatings(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18, bottom: 15),
                child: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                    children: const [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Tamanhos",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff333333),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: _tamanho(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                    children: const [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Descrição",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff333333),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                widget.produto.descricao,
                style: const TextStyle(
                  color: Color.fromARGB(255, 84, 84, 84),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _tamanho() {
    var tamanhos = widget.produto.tamanho
        .map(
          (item) => Padding(
            padding: const EdgeInsets.only(right: 7),
            child: Container(
              decoration: BoxDecoration(
                color: item == tamanhoSelecionado ? Colors.black : Colors.white,
                border: Border.all(
                  color: const Color(0xffE6E6E6),
                  width: 1,
                ),
                shape: BoxShape.circle,
              ),
              child: InkWell(
                onTap: () => {
                  setState(() {
                    tamanhoSelecionado = item;
                  }),
                },
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    child: Center(
                      child: Text(
                        item.toString(),
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: item == tamanhoSelecionado
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
        .toList();

    return tamanhos;
  }

  List<Icon> _starsForRatings() {
    List<Icon> stars = [];

    for (int i = 0; i < widget.produto.avaliacao.floor(); i++) {
      stars.add(
        const Icon(
          Icons.star_rounded,
          size: 20,
          color: Color(0xFFFFC107),
        ),
      );
    }
    return stars;
  }
}

class ProdutoAdicionado with ChangeNotifier {
  int value = 0;

  void adicionar() {
    value += 1;
    notifyListeners();
  }

  void zerar() {
    value = 0;
    notifyListeners();
  }
}
