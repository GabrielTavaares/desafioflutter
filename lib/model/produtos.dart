class Produto {
  String nome;
  double preco;
  String imagem;
  String imagemMarca;
  double avaliacao;
  List<int> tamanho;
  String descricao;

  Produto({
    required this.nome,
    required this.preco,
    required this.imagem,
    required this.imagemMarca,
    required this.avaliacao,
    required this.tamanho,
    required this.descricao,
  });

  static List<Produto> getProduto() {
    var produtos = List<Produto>.empty(growable: true);

    produtos.add(Produto(
      nome: "Tênis Asics Gel-Dedicate 7",
      preco: 399.99,
      imagem:
          "https://static.netshoes.com.br/produtos/tenis-asics-gel-dedicate-7-clay-masculino/26/2FV-8428-026/2FV-8428-026_zoom1.jpg?ts=1647537409&ims=544x",
      avaliacao: 4.5,
      imagemMarca:
          "https://netshoes-image-store.s3.amazonaws.com/marketplace/seller-logo/12138.png",
      tamanho: [42, 41, 43, 39, 38],
      descricao:
          "Lorem ipsum non potenti sapien interdum nullam vel, justo risus sagittis tincidunt tristique porta dictum tristique, litora proin ligula leo varius nec. dictum dui aliquam vitae litora fames dapibus condimentum etiam habitasse, etiam vulputate velit sem sapien ut eleifend faucibus felis, pretium aliquam facilisis augue diam duis leo sapien. commodo nulla libero nulla risus eros viverra potenti aliquet sagittis sodales consectetur hendrerit, quisque placerat vulputate malesuada amet at sodales et ultrices nibh et aptent, id varius mollis ut blandit ut metus at eu lacus gravida. curae enim quisque felis fames ligula, at semper libero curae morbi metus, eget scelerisque pretium venenatis.",
    ));

    produtos.add(Produto(
      nome: "Chuteira Adidas Artilheira V",
      preco: 99.99,
      imagem:
          "https://static.netshoes.com.br/produtos/chuteira-society-adidas-artilheira-v/08/3ZP-5281-008/3ZP-5281-008_zoom1.jpg",
      avaliacao: 4.5,
      imagemMarca: "https://cdn-icons-png.flaticon.com/512/731/731962.png",
      tamanho: [42, 41, 43, 39, 38],
      descricao:
          "Lorem ipsum non potenti sapien interdum nullam vel, justo risus sagittis tincidunt tristique porta dictum tristique, litora proin ligula leo varius nec. dictum dui aliquam vitae litora fames dapibus condimentum etiam habitasse, etiam vulputate velit sem sapien ut eleifend faucibus felis, pretium aliquam facilisis augue diam duis leo sapien. commodo nulla libero nulla risus eros viverra potenti aliquet sagittis sodales consectetur hendrerit, quisque placerat vulputate malesuada amet at sodales et ultrices nibh et aptent, id varius mollis ut blandit ut metus at eu lacus gravida. curae enim quisque felis fames ligula, at semper libero curae morbi metus, eget scelerisque pretium venenatis.",
    ));

    produtos.add(Produto(
      nome: "Tênis Asics Gel-Backhand",
      preco: 199.99,
      imagem:
          "https://static.netshoes.com.br/produtos/tenis-asics-gel-backhand-masculino/08/2FV-8421-008/2FV-8421-008_zoom1.jpg",
      avaliacao: 3,
      imagemMarca:
          "https://netshoes-image-store.s3.amazonaws.com/marketplace/seller-logo/12138.png",
      tamanho: [42, 41, 43, 39, 38],
      descricao:
          "Lorem ipsum non potenti sapien interdum nullam vel, justo risus sagittis tincidunt tristique porta dictum tristique, litora proin ligula leo varius nec. dictum dui aliquam vitae litora fames dapibus condimentum etiam habitasse, etiam vulputate velit sem sapien ut eleifend faucibus felis, pretium aliquam facilisis augue diam duis leo sapien. commodo nulla libero nulla risus eros viverra potenti aliquet sagittis sodales consectetur hendrerit, quisque placerat vulputate malesuada amet at sodales et ultrices nibh et aptent, id varius mollis ut blandit ut metus at eu lacus gravida. curae enim quisque felis fames ligula, at semper libero curae morbi metus, eget scelerisque pretium venenatis.",
    ));

    produtos.add(Produto(
      nome: "Tênis Adidas Runfalcon 2.0",
      preco: 199.99,
      imagem:
          "https://static.netshoes.com.br/produtos/tenis-infantil-adidas-runfalcon-20/18/3ZP-2116-118/3ZP-2116-118_zoom1.jpg",
      avaliacao: 4.5,
      imagemMarca: "https://cdn-icons-png.flaticon.com/512/731/731962.png",
      tamanho: [42, 41, 43, 39, 38],
      descricao:
          "Lorem ipsum non potenti sapien interdum nullam vel, justo risus sagittis tincidunt tristique porta dictum tristique, litora proin ligula leo varius nec. dictum dui aliquam vitae litora fames dapibus condimentum etiam habitasse, etiam vulputate velit sem sapien ut eleifend faucibus felis, pretium aliquam facilisis augue diam duis leo sapien. commodo nulla libero nulla risus eros viverra potenti aliquet sagittis sodales consectetur hendrerit, quisque placerat vulputate malesuada amet at sodales et ultrices nibh et aptent, id varius mollis ut blandit ut metus at eu lacus gravida. curae enim quisque felis fames ligula, at semper libero curae morbi metus, eget scelerisque pretium venenatis.",
    ));

    produtos.add(Produto(
      nome: "Tênis Nike Fly By Mid 3",
      preco: 1199.99,
      imagem:
          "https://static.netshoes.com.br/produtos/tenis-nike-fly-by-mid-3-masculino/58/2IC-5654-158/2IC-5654-158_zoom1.jpg",
      avaliacao: 4.5,
      imagemMarca:
          "https://www.r7.com/cupons/static/shop/32617/logo/cupom-de-desconto-nike.png",
      tamanho: [42, 39, 38, 39, 38, 39, 38, 39, 38, 39, 38, 39, 38, 39, 38, 39, 38],
      descricao:
          "Lorem ipsum non potenti sapien interdum nullam vel, justo risus sagittis tincidunt tristique porta dictum tristique, litora proin ligula leo varius nec. dictum dui aliquam vitae litora fames dapibus condimentum etiam habitasse, etiam vulputate velit sem sapien ut eleifend faucibus felis, pretium aliquam facilisis augue diam duis leo sapien. commodo nulla libero nulla risus eros viverra potenti aliquet sagittis sodales consectetur hendrerit, quisque placerat vulputate malesuada amet at sodales et ultrices nibh et aptent, id varius mollis ut blandit ut metus at eu lacus gravida. curae enim quisque felis fames ligula, at semper libero curae morbi metus, eget scelerisque pretium venenatis.",
    ));

    produtos.add(Produto(
      nome: "Tênis Asics Gel-Game 8",
      preco: 199.99,
      imagem:
          "https://static.netshoes.com.br/produtos/tenis-asics-gel-game-8-feminino/04/D18-7726-904/D18-7726-904_zoom1.jpg",
      avaliacao: 4.44,
      imagemMarca:
          "https://netshoes-image-store.s3.amazonaws.com/marketplace/seller-logo/12138.png",
      tamanho: [42, 41],
      descricao:
          "Lorem ipsum non potenti sapien interdum nullam vel, justo risus sagittis tincidunt tristique porta dictum tristique, litora proin ligula leo varius nec. dictum dui aliquam vitae litora fames dapibus condimentum etiam habitasse, etiam vulputate velit sem sapien ut eleifend faucibus felis, pretium aliquam facilisis augue diam duis leo sapien. commodo nulla libero nulla risus eros viverra potenti aliquet sagittis sodales consectetur hendrerit, quisque placerat vulputate malesuada amet at sodales et ultrices nibh et aptent, id varius mollis ut blandit ut metus at eu lacus gravida. curae enim quisque felis fames ligula, at semper libero curae morbi metus, eget scelerisque pretium venenatis.",
    ));

    return produtos;
  }
}
