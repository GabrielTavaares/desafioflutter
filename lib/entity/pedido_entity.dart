import 'package:desafioflutter/model/produtos.dart';

class PedidoEntity {
  Produto produto;
  int quantidade;
  int tamanho;

  PedidoEntity({
    required this.produto,
    required this.quantidade,
    required this.tamanho,
  });

}