class Produto {
 
  String nome;
  double preco;
  String imagem;
  double avaliacao;

  Produto({
    required this.nome,
    required this.preco,
    required this.imagem,
    required this.avaliacao,
  });

  static List<Produto> getProduto(){
    var produtos = List<Produto>.empty(growable: true);

    produtos.add(Produto(
      nome: "Tênis Asics Gel-Dedicate 7",
      preco: 399.99,
      imagem:
          "https://static.netshoes.com.br/produtos/tenis-asics-gel-dedicate-7-clay-masculino/26/2FV-8428-026/2FV-8428-026_zoom1.jpg?ts=1647537409&ims=544x",
      avaliacao: 4.5,
    ));

    produtos.add(Produto(
      nome: "Chuteira Society Adidas Artilheira V",
      preco: 99.99,
      imagem:
          "https://static.netshoes.com.br/produtos/chuteira-society-adidas-artilheira-v/08/3ZP-5281-008/3ZP-5281-008_zoom1.jpg",
      avaliacao: 4.5,
    ));

    produtos.add(Produto(
      nome: "Tênis Asics Gel-Backhand Masculino",
      preco: 199.99,
      imagem:
          "https://static.netshoes.com.br/produtos/tenis-asics-gel-backhand-masculino/08/2FV-8421-008/2FV-8421-008_zoom1.jpg",
      avaliacao: 4.5,
    ));

    produtos.add(Produto(
      nome: "Tênis Infantil Adidas Runfalcon 2.0",
      preco: 199.99,
      imagem:
          "https://static.netshoes.com.br/produtos/tenis-infantil-adidas-runfalcon-20/18/3ZP-2116-118/3ZP-2116-118_zoom1.jpg",
      avaliacao: 4.5,
    ));

    produtos.add(Produto(
      nome: "Tênis Nike Fly By Mid 3 Masculino",
      preco: 1199.99,
      imagem:
          "https://static.netshoes.com.br/produtos/tenis-nike-fly-by-mid-3-masculino/58/2IC-5654-158/2IC-5654-158_zoom1.jpg",
      avaliacao: 4.5,
    ));

    produtos.add(Produto(
      nome: "Tênis Asics Gel-Game 8 Feminino",
      preco: 199.99,
      imagem:
          "https://static.netshoes.com.br/produtos/tenis-asics-gel-game-8-feminino/04/D18-7726-904/D18-7726-904_zoom1.jpg",
        avaliacao: 4.44,
    ));

    return produtos;

  }  

}