import 'package:flutter/material.dart';
import 'package:desafioflutter/model/marcas.dart';

final List<Marca> marcas = Marca.getMarca();

class CarrosselMarcasWidget extends StatelessWidget {
  const CarrosselMarcasWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.maxFinite,
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: const Text(
                      "Marcas",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    child: const Text(
                      "Todas",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 84, 84, 84),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 130,
          //LIASTA COM AS MARCAS
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: marcas.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Center(
                      child: CircleAvatar(
                        backgroundColor: Color.fromARGB(175, 226, 226, 226),
                        radius: 30,
                        backgroundImage: NetworkImage(marcas[index].imagem.toString(), scale: 0.1),
                      ),
                    ),
                    Center(
                      child: Text(
                        marcas[index].nome,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF1F1F1F),
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        "${marcas[index].quantidade} itens",
                        style: const TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
