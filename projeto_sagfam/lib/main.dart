//
// Projeto de TCC - Disciplina de PDM
//
// Importação de bibliotecas

import 'package:flutter/material.dart';
import 'package:projeto_sagfam/telas/TelaCalendario.dart';
import 'package:projeto_sagfam/telas/TelaCancoes.dart';
import 'package:projeto_sagfam/telas/TelaLogin.dart';
import 'package:projeto_sagfam/telas/TelaOracaoSelecionada.dart';
import 'package:projeto_sagfam/telas/TelaOracoes.dart';
import 'package:projeto_sagfam/telas/MenuLateral.dart';
import 'package:projeto_sagfam/telas/TelaSobre.dart';
//
// FUNÇÃO PRINCIPAL
//
void main(List<String> args) {
  // Inicia a execução do app
  runApp(
    // 'const' indica que o tipo de aplicativo não sofrerá alterações + 'MaterialApp' é utilizado para os padrões de design
    MaterialApp(
      //'debugShowCheckedModeBanner: false' remove o ícone de debug do app
      debugShowCheckedModeBanner: false,
      title: 'Projeto SagFam',

      /*
      // Indica qual é a tela de login
      home: TelaLogin(),
      */

      initialRoute: 'tela01',
      routes: {
        'tela01' : (context) => const TelaLogin(),
        'tela02' : (context) => const TelaOracoes(),
        'menulateral' : (context) => NavDrawer(),
        'tela03' : (context) => const TelaOracaoSelecionada(),
        'tela04' : (context) => const TelaSobre(),
        'tela05' : (context) => const TelaCancoes(),
        'tela06' : (context) => const TelaCalendario()
      },
    ),
  );
}

