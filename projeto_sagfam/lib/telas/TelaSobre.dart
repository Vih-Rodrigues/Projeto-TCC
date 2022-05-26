//
// TELA SOBRE
//

import 'package:flutter/material.dart';

import 'MenuLateral.dart';

class TelaSobre extends StatefulWidget {
  const TelaSobre({ Key? key }) : super(key: key);

  @override
  _TelaSobreState createState() => _TelaSobreState();
}

class _TelaSobreState extends State<TelaSobre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      endDrawer: NavDrawer(),

      appBar: AppBar(
        iconTheme: IconThemeData(color: Color.fromRGBO(107, 126, 125, 1)),
        title: Text(
          'Sobre', 
          style: TextStyle(color: Color.fromRGBO(107, 114, 126, 1)),
        ),
        backgroundColor: Color.fromRGBO(243, 231, 216, 1),
      ),

      backgroundColor: Color.fromRGBO(107, 114, 126, 1),

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
                          'Tema',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold, //deixar as letras em negrito
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),

                          textAlign: TextAlign.center,
                        ),

                        Text(
                          'O tema escolhido para esse projeto é o gerenciamento interno da secretaria da igreja Sagrada Família.',
                          style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          ),
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
                          'Objetivo',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold, //deixar as letras em negrito
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),

                        Text(
                          'O aplicativo tem o objetivo de auxiliar o gerenciamento no cadastro dos fiéis.',
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