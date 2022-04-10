import 'package:desafioflutter/model/produtos.dart';
import 'package:desafioflutter/util/formatar_moeda.dart';
import 'package:desafioflutter/widgets/detalhe_produto.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomBarDetalheProdutoWidget extends StatelessWidget {
  final Produto produto;
  const BottomBarDetalheProdutoWidget({ Key? key, required this.produto }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
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
                      Text(
                        FormatarMoeda.formatar(produto.preco),
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
                    onPressed: () {
                      var addProd = context.read<ProdutoAdicionado>();
                      addProd.adicionarPedido(produto, context);
                    },
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
      );
  }
}