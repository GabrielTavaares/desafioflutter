import 'package:desafioflutter/util/formatar_moeda.dart';
import 'package:desafioflutter/widgets/detalhe_produto.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomBarCarrinhoWidget extends StatelessWidget {
  const BottomBarCarrinhoWidget({Key? key}) : super(key: key);

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
                          "Total",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 109, 109, 109),
                          ),
                        ),
                      ),
                    ),
                    Consumer<ProdutoAdicionado>(
                      builder: (context, value, children) => Text(
                        FormatarMoeda.formatar(value.totalPedido()),
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff333333),
                        ),
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
                      'FINALIZAR',
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
