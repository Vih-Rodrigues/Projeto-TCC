//
// Tela Principal - Orações
//
import 'package:flutter/material.dart';

class TelaOracoes extends StatefulWidget {
  const TelaOracoes({ Key? key }) : super(key: key);

  @override
  State<TelaOracoes> createState() => _TelaOracoesState();
}

class _TelaOracoesState extends State<TelaOracoes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(107, 126, 125, 1),
      appBar: AppBar(
        title: const Text(
          'Orações',
          style: const TextStyle(
            color: Color.fromRGBO(107, 126, 125, 1)
          ),
        ),
        backgroundColor: Color.fromRGBO(243, 231, 216, 1),
      ),

      //
      // BODY
      //
      body: Container(
        margin: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  'Orações para antes de dormir',
                  style: TextStyle(color: Colors.white),
                ),
                
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 100,
                        height: 100,
                        
                        child: Stack(
                          
                        ),
                      )
                    ]
                  ),
                )
              ],
            ),
        ),
      ),
    );
  }
}
