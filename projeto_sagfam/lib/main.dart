// Projeto de TCC + Disciplina de PDM
// Importação de bibliotecas
import 'package:flutter/material.dart';

//
// FUNÇÃO PRINCIPAL
//
void main(List<String> args) {
  // Inicia a execução do app
  runApp(
    // 'const' indica que o tipo de aplicativo não sofrerá alterações + 'MaterialApp' é utilizado para os padrões de design
    const MaterialApp(
      //'debugShowCheckedModeBanner: false' remove o ícone de debug do app
      debugShowCheckedModeBanner: false,
      title: 'Projeto SagFam',

      // Indica qual é a tela principal
      // home: TelaPrincipal(),
    )
  );
}

//
// TELA DE LOGIN
//
class TelaLogin extends StatefulWidget {
  const TelaLogin({ Key? key }) : super(key: key);
  
  @override
  State<TelaLogin> createState() => _TelaLoginState();
}
  
class _TelaLoginState extends State<TelaLogin> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // COR DE FUNDO
      backgroundColor: Colors.white,

      // BODY
      body: SingleChildScrollView(
        
        child: Center(
          
          child: Padding(
            
            padding: const EdgeInsets.all(30.0),

            child: Form(

              // Identificador do Form
              key: form01,

              child: Column(
                children: [
                  const Image(image: image)
                ],
              ) 
            ),
          ),
        )
      ),
    );
  }
}