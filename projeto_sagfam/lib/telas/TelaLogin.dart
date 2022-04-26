//
// TELA DE LOGIN
//
import 'package:flutter/material.dart';
import 'TelaOracoes.dart';

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

      //
      // BODY
      //
      body: SingleChildScrollView(
        child: Center (

          child: Column(

            children: [

              // Imagem que ocupa a tela de login + sombreamento
                  ShaderMask( 
                    shaderCallback: (rect) {
                      return const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.white, Colors.transparent],
                      ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
                    },
                            
                    child: Image.asset(
                      "lib/images/image_sagfam.png",
                      width: MediaQuery.of(context).size.width,
                    )

                  ),
                  
              Padding ( // Padding = borda, que só pode ter um child

                padding: const EdgeInsets.all(30.0),

                child: Form(

                  // Identificador do form
                  key: formulario1,

                  child: Column(
                    
                    children: [

                      // Campos de usuário e senha
                      const SizedBox(
                        height: 0,
                      ),

                      Text(
                        "Bem-Vindo(a)!",
                        style: TextStyle(
                            fontSize: 26,
                        )
                      ),

                      const SizedBox(
                       height: 25,
                      ),

                      campoTexto('Usuário', txtUsuario, false),
                      const SizedBox(
                        height: 5,
                      ),

                      campoTexto('Senha', txtSenha, true),
                      const SizedBox(
                        height: 5,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [botao('Entrar', 100.toDouble()),]
                      ),

                      const SizedBox(
                        height: 30,
                      ),

                      Row(

                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: (MediaQuery.of(context).size.width * 0.75), // TORNAR VARIÁVEL POR APARELHO - RESPONSIVO
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
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Color.fromARGB(255, 20, 111, 196)
                                )
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
            ],
          ),
        ),
      ),
    );
  }

  //
  // CAMPO DE TEXTO
  //
  campoTexto(entrar, recebeTexto, obscuro){
    return SizedBox(

      height: 60,

      child:
        TextFormField(

          // Associa a variável que receberá o valor digitado no campo de texto
          controller: recebeTexto,

          // Habilita o teclado numérico

          // Campo de senha escondida
          obscureText: obscuro,

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

          Navigator.push(context, MaterialPageRoute(builder: ((context) => TelaOracoes())));
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