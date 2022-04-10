import 'package:desafioflutter/main.dart';
import 'package:desafioflutter/util/formatar_moeda.dart';
import 'package:desafioflutter/widgets/detalhe_produto.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CarrinhoWidget extends StatelessWidget {
  const CarrinhoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.maxFinite,
      child: Container(
        child: Column(
          children: [
            _buildListaCard(context),
          ],
        ),
      ),
    );
  }

  Consumer<ProdutoAdicionado> _buildListaCard(context) {
    var retorno = Consumer<ProdutoAdicionado>(
      builder: (context, counter, child) =>
          counter.pedido.isEmpty ? _carrinhoVazio() : _listView(counter),
    );

    return retorno;
  }

  Widget _carrinhoVazio() {
    return Expanded(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: const Text(
                        "Carrinho vazio",
                        textAlign: TextAlign.center,
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
            Container(
              child: Row(
                children: const [
                  Expanded(
                    child: Icon(
                      Icons.sentiment_dissatisfied_rounded,
                      size: 50,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _listView(counter) {
    return Expanded(
      child: Container(
        child: ListView.builder(
          itemCount: counter.pedido.length,
          itemBuilder: (context, index) => InkWell(
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetalheProduto(
                    produto: counter.pedido[index].produto,
                  ),
                ),
              ),
            },
            child: Row(
              children: [
                Padding(
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
                                counter.pedido[index].produto.imagem.toString(),
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
                                            radius: 16,
                                            backgroundColor: Colors.transparent,
                                            backgroundImage: NetworkImage(
                                              counter.pedido[index].produto
                                                  .imagemMarca,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Align(
                                          alignment: Alignment.centerRight,
                                          child: InkWell(
                                            onTap: () {
                                              var removeProduto = context
                                                  .read<ProdutoAdicionado>();
                                              removeProduto.removerProduto(
                                                  counter.pedido[index]);
                                            },
                                            child: const Icon(
                                              Icons.delete_rounded,
                                              color: Colors.black,
                                              size: 20,
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
                                          child: Row(
                                            children: [
                                              Text(
                                                counter
                                                    .pedido[index].produto.nome,
                                                style: const TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 10),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    border: Border.all(
                                                      color: const Color(
                                                          0xffE6E6E6),
                                                      width: 0.5,
                                                    ),
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(2),
                                                    child: Container(
                                                      child: Center(
                                                        child: Text(
                                                          counter.pedido[index]
                                                              .tamanho
                                                              .toString(),
                                                          style:
                                                              const TextStyle(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
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
                                                  color: Color(0xFFFFC107),
                                                ),
                                              ),
                                              Container(
                                                child: Container(
                                                  child: Text(
                                                    "${counter.pedido[index].produto.avaliacao}",
                                                    style: const TextStyle(
                                                      fontSize: 8,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w700,
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
                                            "R\$ ${currency.format(counter.pedido[index].produto.preco)}",
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
