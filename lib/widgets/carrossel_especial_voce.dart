import 'package:desafioflutter/model/produtos.dart';
import 'package:flutter/material.dart';

final List<Produto> produtos = Produto.getProduto();

class CarrosselEspecialVoceWidget extends StatelessWidget {
  const CarrosselEspecialVoceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.maxFinite,
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: const Text(
                      "Especial para você",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    child: const Text(
                      "Todas",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 84, 84, 84),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: double.maxFinite,
          //LIASTA COM OS PRODUTOS
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: produtos.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image(
                          width: 200,
                          image: NetworkImage(
                            produtos[index].imagem.toString(),
                            scale: 0.5,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        produtos[index].nome,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF1F1F1F),
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        "${produtos[index].avaliacao}",
                        style: const TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
