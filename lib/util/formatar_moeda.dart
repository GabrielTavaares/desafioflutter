import 'package:intl/intl.dart';

var currency = NumberFormat('###.0#', 'pt_BR');


class FormatarMoeda {
  static String formatar(double valor) {

    var valorFormatado = valor <=0 ? "R\$ 0" : "R\$ ${currency.format(valor)}";

    return valorFormatado;
  }
}