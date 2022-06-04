// CLASSE COM MÉTODOS PARA:
// - ADICIONAR EVENTO À TELA TelaCalendario
// - ADICIONAR MÚSICAS À TELA TelaCancoes
// - ADICIONAR ORAÇÕES À TELA TelaOracoes

import 'package:flutter/material.dart';

class ServicoConteudo {

  //
  // MÉTODO
  //
  adicionarDataEvento(dataParametro){
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          dataParametro,
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }

  /*
  //
  // MÉTODO
  //
  // context como parâmetro serve para referenciar a tela a qual está utilizando o método, nesse caso, TelaCalendario
  adicionarEvento(context, nomeEventoParametro, imagemParametro){
    return SizedBox(
      //
      // LINHA
      //
      height: 100,

      child: SingleChildScrollView(
        
        scrollDirection: Axis.horizontal,
 
        child: Row(
          children: [

            // 
            // Espaçamento
            //
            const SizedBox(
              height: 10,
            ),   

            //
            // IMAGEM
            //
            SizedBox(
              width: 150,
              height: 500,
                          
              /*child: Stack(

                children: [

                  ShaderMask( 
                    shaderCallback: (rect) {
                      return const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.white, Color.fromARGB(255, 85, 85, 85)],
                      ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
                    },*/
                                  
                    child: Image.asset(
                      imagemParametro,
                      width: MediaQuery.of(context).size.width,
                    )
                  //),
                //],
              //),
            ),
          ]
        ),
      )
    );
  }*/

  //
  // MÉTODO
  //
  // context como parâmetro serve para referenciar a tela a qual está utilizando o método, nesse caso, TelaCalendario
  adicionarEvento(context, nomeEventoParametro, imagemParametro){
    return SizedBox(
      child: Container(
    
        // Margem de 19!!

        height: 100,
        width: 500,
        color: Colors.blue,

        child: SingleChildScrollView(
          
          scrollDirection: Axis.horizontal,
 
          child: Row(
            children: [
              Container(

                width: 100,
                height: 100,
                                              
                  child: Image.asset(
                    imagemParametro,
                    width: MediaQuery.of(context).size.width,
                  )
              ),
            ]
          ),
        )
      ),
    );
  }

  //
}