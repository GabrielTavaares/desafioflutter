import 'package:desafioflutter/main.dart';
import 'package:desafioflutter/model/produtos.dart';
import 'package:desafioflutter/widgets/detalhe_produto.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final List<Produto> produtos = Produto.getProduto();

var currency = NumberFormat('###.0#', 'pt_BR');

class CarrosselEspecialVoceWidget extends StatelessWidget {
  const CarrosselEspecialVoceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.maxFinite,
          child: Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
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
          height: 290,
          //LIASTA COM OS PRODUTOS
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: produtos.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetalheProduto(
                        produto: produtos[index],
                      ),
                    ),
                  ),
                },
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: SizedBox(
                    width: 200,
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Center(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image(
                                  width: 200,
                                  image: NetworkImage(
                                    produtos[index].imagem.toString(),
                                    scale: 0.5,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 10,
                              left: 10,
                              right: 10,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: CircleAvatar(
                                        radius: 20,
                                        backgroundColor: Colors.transparent,
                                        backgroundImage: NetworkImage(
                                          produtos[index].imagemMarca,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Expanded(
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Icon(
                                        Icons.favorite_rounded,
                                        color: Colors.black,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 6),
                          child: Container(
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                children: [
                                  RichText(
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    strutStyle:
                                        const StrutStyle(fontSize: 12.0),
                                    text: TextSpan(
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF1F1F1F),
                                      ),
                                      text: produtos[index].nome,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                const WidgetSpan(
                                  child: Icon(
                                    Icons.star_rounded,
                                    size: 14,
                                    color: Color(0xFFFFC107),
                                  ),
                                ),
                                TextSpan(
                                  text: "${produtos[index].avaliacao}",
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "R\$ ${currency.format(produtos[index].preco)}",
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
