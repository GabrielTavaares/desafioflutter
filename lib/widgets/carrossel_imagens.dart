import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'https://static.netshoes.com.br/produtos/tenis-asics-gel-dedicate-7-clay-masculino/26/2FV-8428-026/2FV-8428-026_zoom1.jpg?ts=1647537409&ims=544x',
  'https://static.netshoes.com.br/produtos/chuteira-society-adidas-artilheira-v/08/3ZP-5281-008/3ZP-5281-008_zoom1.jpg?ts=1644408418&ims=544x',
  'https://static.netshoes.com.br/produtos/tenis-asics-gel-backhand-masculino/08/2FV-8421-008/2FV-8421-008_zoom1.jpg?ts=1647537065&ims=544x',
  'https://static.netshoes.com.br/produtos/tenis-infantil-adidas-runfalcon-20/18/3ZP-2116-118/3ZP-2116-118_zoom1.jpg?ts=1643210374&ims=544x',
  'https://static.netshoes.com.br/produtos/tenis-nike-fly-by-mid-3-masculino/58/2IC-5654-158/2IC-5654-158_zoom1.jpg?ts=1644579514&ims=544x',
  'https://static.netshoes.com.br/produtos/tenis-asics-gel-game-8-feminino/04/D18-7726-904/D18-7726-904_zoom1.jpg?ts=1648153901&ims=544x'
];

class CarrosselImagemWidget extends StatelessWidget {
  const CarrosselImagemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: imgList
          .map(
            (item) => Container(
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                child: Stack(
                  children: <Widget>[
                    Image.network(
                      item,
                      loadingBuilder: (BuildContext context, Widget child,
                          ImageChunkEvent? loadingProgress) {
                        if (loadingProgress == null) {
                          return child;
                        }
                        return Center(
                          child: CircularProgressIndicator(
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                    loadingProgress.expectedTotalBytes!
                                : null,
                          ),
                        );
                      },
                      fit: BoxFit.cover,
                      width: double.maxFinite,
                    ),
                    Positioned(
                      bottom: 30,
                      left: 30,
                      right: 0,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          width: double.maxFinite,
                          child: Container(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(5),
                                        ),
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.all(2),
                                        child: Text(
                                          'NOVO',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                      // begin: Alignment.centerLeft,
                                      // end: Alignment.centerRight,
                                      colors: [
                                        Color.fromARGB(255, 221, 221, 221),
                                        Colors.transparent,
                                        Colors.transparent,
                                      ],
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(3),
                                    child: Column(
                                      children: const [
                                        SizedBox(
                                          width: double.maxFinite,
                                          child: Text(
                                            'Produto',
                                            style: TextStyle(
                                              color: Color(0xff333333),
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 5),
                                          child: SizedBox(
                                            width: double.maxFinite,
                                            child: Text(
                                              'Produto',
                                              style: TextStyle(
                                                color: Color(0xff333333),
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
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
                    ),
                  ],
                ),
              ),
            ),
          )
          .toList(),
      options: CarouselOptions(
          aspectRatio: 19 / 9,
          viewportFraction: 1,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
          pageSnapping: true),
    );
  }
}
