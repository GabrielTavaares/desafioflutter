import 'package:desafioflutter/main.dart';
import 'package:flutter/material.dart';
import 'package:desafioflutter/model/produtos.dart';
import 'package:intl/intl.dart';

final List<Produto> produtos = Produto.getProduto();

var currency = NumberFormat('###.0#', 'pt_BR');

class ListaFavoritosWidget extends StatelessWidget {
  const ListaFavoritosWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: const Text(
                      "Favoritos",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ..._buildListaCard(context),
        ],
      ),
    );
  }

  List<Widget> _buildListaCard(context) {
    var retorno = produtos
        .map(
          (item) => InkWell(
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetalheProduto(
                    produto: item,
                  ),
                ),
              ),
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                child: Row(
                  children: [
                    SizedBox(
                      width: 80,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image(
                          width: 85,
                          image: NetworkImage(
                            item.imagem.toString(),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: SizedBox(
                        width: 300,
                        child: Column(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Colors.transparent,
                                        backgroundImage: NetworkImage(
                                          item.imagemMarca,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: SizedBox(
                                width: double.maxFinite,
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        item.nome,
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            child: const Icon(
                                              Icons.star_rounded,
                                              size: 12,
                                              color: const Color(0xFFFFC107),
                                            ),
                                          ),
                                          Container(
                                            child: Container(
                                              child: Text(
                                                "${item.avaliacao}",
                                                style: const TextStyle(
                                                  fontSize: 8,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "R\$ ${currency.format(item.preco)}",
                                        style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
        .toList();

    return retorno;
  }
}
