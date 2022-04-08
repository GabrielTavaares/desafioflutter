class Marca {
  String nome;
  String imagem;
  int quantidade;

  Marca({
    required this.nome,
    required this.imagem,
    required this.quantidade,
  });

  static List<Marca> getMarca() {
    var marcas = List<Marca>.empty(growable: true);

    marcas.add(Marca(
      nome: "NIKE",
      imagem:
          "https://www.r7.com/cupons/static/shop/32617/logo/cupom-de-desconto-nike.png",
      quantidade: 100,
    ));

    marcas.add(Marca(
      nome: "Adidas",
      imagem:
          "https://cdn-icons-png.flaticon.com/512/731/731962.png",
      quantidade: 45,
    ));

    marcas.add(Marca(
      nome: "PUMA",
      imagem:
          "https://logospng.org/download/puma/logo-puma-icon-1024.png",
      quantidade: 17,
    ));

    marcas.add(Marca(
      nome: "Asics",
      imagem:
          "https://netshoes-image-store.s3.amazonaws.com/marketplace/seller-logo/12138.png",
      quantidade: 90,
    ));

    marcas.add(Marca(
      nome: "Rebok",
      imagem:
          "https://cdn.iconscout.com/icon/free/png-256/reebok-3421600-2854281.png",
      quantidade: 32,
    ));

    marcas.add(Marca(
      nome: "Olympikus",
      imagem:
          "https://cdn.iconscout.com/icon/free/png-256/olympikus-3421435-2853820.png",
      quantidade: 32,
    ));

    return marcas;
  }
}
