//
// Tela Oração Selecionada (Oracoes\Oracao)
//

import 'TelaOracoes.dart';
import 'package:flutter/material.dart';
import 'MenuLateral.dart';

class TelaOracaoSelecionada extends StatefulWidget {
  const TelaOracaoSelecionada({ Key? key }) : super(key: key);

  @override
  State<TelaOracaoSelecionada> createState() => _TelaOracaoSelecionada();
}

class _TelaOracaoSelecionada extends State<TelaOracaoSelecionada> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(107, 126, 125, 1),

      endDrawer: NavDrawer(),
      
      appBar: AppBar(
        actions:[
          IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () { Navigator.of(context).pop(); },
          ),
        ],
        title: const Text(
          'Voltar',
          style: const TextStyle(
            color: Color.fromRGBO(107, 126, 125, 1)
          ),
        ),
        backgroundColor: Color.fromRGBO(243, 231, 216, 1),
      ),


      //
      // BODY
      //
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Column(

                children: [

                  Container(

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(0, 0, 0, 0.5),
                    ),

                    child: Column(

                      children: [
                        
                        Text(
                          'Oração do Anjo em Fátima',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold, //deixar as letras em negrito
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),

                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  
                  ),

                  SizedBox(height: 20),

                  Container(
                    
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(0, 0, 0, 0.5),
                    ),

                    child: Column(
                      children: [
                        Text(
                          'Santíssima Trindade, Pai, Filho, Espírito Santo, adoro-Vos profundamente e ofereço-Vos o preciosíssimo Corpo, Sangue, Alma e Divindade de Jesus Cristo, presente em todos os sacrários da terra, em reparação dos ultrajes, sacrilégios e indiferenças com que Ele mesmo é ofendido. E pelos méritos infinitos do Seu Santíssimo Coração e do Coração Imaculado de Maria, peço-Vos a conversão dos pobres pecadores.',
                          style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}