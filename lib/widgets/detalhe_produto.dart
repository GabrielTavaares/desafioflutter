import 'package:desafioflutter/model/produtos.dart';
import 'package:flutter/material.dart';

class DetalheProdutoWidget extends StatelessWidget {
  final Produto produto;
  const DetalheProdutoWidget({Key? key, required this.produto})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                image: NetworkImage(produto.imagem),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  produto.nome,
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
              padding: const EdgeInsets.only(top: 18),
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
            SizedBox(
              height: 70,
              child: ListView(
                scrollDirection: Axis.horizontal,
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
            Text(produto.descricao,
            style: const TextStyle(
              color: Color.fromARGB(255, 84, 84, 84),
              fontWeight: FontWeight.w500,
            ),),
          ],
        ),
      ),
    );
  }

  List<Widget> _tamanho() {
    var tamanhos = produto.tamanho
        .map(
          (item) => Padding(
            padding: const EdgeInsets.only(right: 7),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xffE6E6E6),
                  width: 1,
                ),
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  child: Center(
                    child: Text(
                      item.toString(),
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff333333),
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

    for (int i = 0; i < produto.avaliacao.floor(); i++) {
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
