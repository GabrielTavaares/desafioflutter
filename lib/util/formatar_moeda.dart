import 'package:intl/intl.dart';

var currency = NumberFormat('###.0#', 'pt_BR');


class FormatarMoeda {
  static String formatar(double valor) {
    var valorFormatado = "R\$ ${currency.format(valor)}";

    return valorFormatado;
  }
}