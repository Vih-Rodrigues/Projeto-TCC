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
    );
  }
}