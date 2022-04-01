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

      // Indica qual é a tela de login
      home: TelaLogin(),

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

  // Declaração de atributos que serão utilizados para receber os dados que o usuário digitar nos campos de texto
  var txtUsuario = TextEditingController();
  var txtSenha = TextEditingController();

  // Declaração do atributo que identifica unicamente o formulário
  var formulario1 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // COR DE FUNDO
      backgroundColor: Colors.white,

      // BODY
      body: Column(
        children:[
          Center(
            
            // Imagem que ocupa a tela de login + sombreamento
            child: ShaderMask( 
              shaderCallback: (rect) {
                return const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.white, Colors.transparent],
                ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
              },

              // blendMode: BlendMode.overlay,  
              
              child: Image.asset("lib/images/image_sagfam.png")

            ),
          ),

          Center(
            child: Padding(

              padding: const EdgeInsets.all(40.0),

              child: Form(

                // Identifica o formulário
                key: formulario1,

                // Campos de usuário e senha
                child: Column(
                  children: [
                    const SizedBox(
                      height: 25,
                    ),

                    Text("Bem-Vindo(a)!",
                    style: TextStyle(
                      fontSize: 26,
                    )),

                    const SizedBox(
                      height: 25,
                    ),

                    campoTexto('Usuário', txtUsuario),
                    const SizedBox(
                      height: 5,
                    ),

                    campoTexto('Senha', txtSenha),
                    const SizedBox(
                      height: 5,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [botao('Entrar', 100),]
                    ),

                    const SizedBox(
                      height: 10,
                    ),

                    Row(
                      children: [
                        SizedBox(
                        width: 250,
                        height: 40,

                        child: ElevatedButton(
                          onPressed: () {

                            if (formulario1.currentState!.validate()) {
                              
                              // Recupera os dados informados pelo usuário
                              setState(() {
                                String usuario;
                                String senha;
                              });
                            }
                          },

                          child: const Text(
                            "Cadastrar-se", 
                            style: TextStyle(fontSize: 22,
                                              color: Color.fromARGB(255, 20, 111, 196))
                          ),

                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      )
                      ]
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]

      ),
    );
  }

  //
  // CAMPO DE TEXTO
  //
  campoTexto(entrar, recebeTexto){
    return SizedBox(

      height: 60,

      child:
        TextFormField(

          // Associa a variável que receberá o valor digitado no campo de texto
          controller: recebeTexto,

          // Habilita o teclado numérico
          keyboardType: TextInputType.number,

          // Campo de senha escondida
          obscureText: true,

          // Número de caracteres
          maxLength: 30,

          decoration: InputDecoration(
            labelText: entrar,
            
            labelStyle: const TextStyle(
              fontSize: 18,
              color: Color.fromARGB(126, 82, 82, 82)
            ),

            hintStyle: const TextStyle(
              fontSize: 18,
              color: Color.fromARGB(126, 82, 82, 82)
            ),

            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            )

          ),

          //
          // VALIDAÇÃO DOS DADOS
          //
          /*
          validator: (value){
            if (String(value)==null){
              return 'Entre com dados necessários para efetuar login.'
            }
          },
          */

        ),
    );
  }

  //
  // BOTÃO "ENTRAR"
  //
  botao(entrar, largura){
    return SizedBox(
      width: largura,
      height: 40,

      child: ElevatedButton(
        onPressed: () {

          if (formulario1.currentState!.validate()) {
            
            // Recupera os dados informados pelo usuário
            setState(() {
              String usuario;
              String senha;
            });
          }
        },

        child: Text(
          entrar, 
          style: const TextStyle(fontSize: 22)
        ),

        style: ElevatedButton.styleFrom(
          primary: Color.fromARGB(255, 20, 111, 196)
        ),
      ),
    );
  }
  
}