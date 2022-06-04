import 'package:flutter/material.dart';
import 'MenuLateral.dart';
import 'package:projeto_sagfam/servicos/ServicoConteudo.dart';

class TelaCalendario extends StatefulWidget {
  const TelaCalendario({ Key? key }) : super(key: key);

  @override
  State<TelaCalendario> createState() => _TelaCalendarioState();
}

class _TelaCalendarioState extends State<TelaCalendario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color.fromRGBO(114, 107, 126, 1), // Cor de fundo

      endDrawer: NavDrawer(), // Menu lateral
      
      appBar: AppBar(
        title: const Text(
          'Calendário',
          style: const TextStyle(
            color: Color.fromRGBO(114, 107, 126, 1) // Cor texto
          ),
        ),
        backgroundColor: Color.fromRGBO(243, 231, 216, 1), // Cor appBar
      ),

      //
      // BODY
      //
      body: Container (
        child: Column (
          children: [

            //
            // Adiciona a data do(s) evento(s)
            //
            ServicoConteudo().adicionarDataEvento("08/07"),

            //
            // Método adicionarEvento da classe ServicoConteudo
            //
            ServicoConteudo().adicionarEvento(context, "Nome do evento", "lib/images/imagem05.png"),
            
          ],
        )
      )
    );
  }
}