//
// Tela Principal - Orações
//
import 'package:flutter/material.dart';
import 'MenuLateral.dart';

class TelaCancoes extends StatefulWidget {
  const TelaCancoes({ Key? key }) : super(key: key);

  @override
  State<TelaCancoes> createState() => _TelaCancoesState();
}

class _TelaCancoesState extends State<TelaCancoes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(107, 126, 125, 1),

      endDrawer: NavDrawer(),
      
      appBar: AppBar(
        title: const Text(
          'Canções',
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

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Canções para antes de dormir',
                      style: TextStyle(color: Colors.white
                      ),
                    ),
                  ],
                ),

                // 
                // Espaçamento
                //
                const SizedBox(
                  height: 10,
                ),

                //
                // LINHA
                //
                SizedBox(
                  height: 200,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,

                    
                    child: Row(
                      children: [
                        
                        //
                        // IMAGEM 01
                        //
                        SizedBox(
                          width: 150,
                          height: 300,
                          
                          child: Stack(

                            children: [

                              //Actions(actions: , child: child) // TERMINAR AQUI Ó

                              ShaderMask( 
                                shaderCallback: (rect) {
                                  return const LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [Colors.white, Color.fromARGB(255, 85, 85, 85)],
                                  ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
                                },
                                  
                                child: Image.asset(
                                  "lib/images/imagem01.png",
                                  width: MediaQuery.of(context).size.width,
                                )
                              ),
                            ],
                          ),
                        ),
                        
                        const SizedBox(
                          width: 17, // WIDTH = LARGURA, informa que o espaçamento se dará por linha
                        ),

                        //
                        // IMAGEM02
                        //
                        SizedBox(
                          width: 150,
                          height: 300,
                          
                          child: Stack(
                            children: [
                              ShaderMask( 
                                shaderCallback: (rect) {
                                  return const LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [Colors.white, Color.fromARGB(255, 85, 85, 85)],
                                  ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
                                },
                                  
                                child: Image.asset(
                                  "lib/images/imagem02.png",
                                  width: MediaQuery.of(context).size.width,
                                )
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(
                          width: 17,
                        ),

                        //
                        // IMAGEM03
                        //
                        SizedBox(
                          width: 150,
                          height: 300,
                          
                          child: Stack(
                            children: [
                              ShaderMask( 
                                shaderCallback: (rect) {
                                  return const LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [Colors.white, Color.fromARGB(255, 85, 85, 85)],
                                  ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
                                },
                                  
                                child: Image.asset(
                                  "lib/images/imagem03.png",
                                  width: MediaQuery.of(context).size.width,
                                )
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              
                const SizedBox(
                  width: 5,
                ),
                
                //
                // PRÓXIMA LINHA
                //

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Orações de Nossa Senhora',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                
                // 
                // Espaçamento
                //
                const SizedBox(
                  height: 10,
                ),

                //
                // Linha com imagens 
                //
                SizedBox(
                  height: 200,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        //
                        // IMAGEM04
                        //
                        SizedBox(
                          width: 150,
                          height: 300,
                          
                          child: Stack(
                            children: [
                              ShaderMask( 
                                shaderCallback: (rect) {
                                  return const LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [Colors.white, Color.fromARGB(255, 85, 85, 85)],
                                  ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
                                },
                                  
                                child: Image.asset(
                                  "lib/images/imagem04.png",
                                  width: MediaQuery.of(context).size.width,
                                )
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(
                          width: 17,
                        ),

                        //
                        // IMAGEM05
                        //
                        SizedBox(
                          width: 150,
                          height: 300,
                          
                          child: Stack(
                            children: [
                              ShaderMask( 
                                shaderCallback: (rect) {
                                  return const LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [Colors.white, Color.fromARGB(255, 85, 85, 85)],
                                  ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
                                },
                                  
                                child: Image.asset(
                                  "lib/images/imagem05.png",
                                  width: MediaQuery.of(context).size.width,
                                )
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(
                          width: 17,
                        ),

                        //
                        // IMAGEM06
                        //
                        SizedBox(
                          width: 150,
                          height: 300,
                          
                          child: Stack(
                            children: [
                              ShaderMask( 
                                shaderCallback: (rect) {
                                  return const LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [Colors.white, Color.fromARGB(255, 85, 85, 85)],
                                  ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
                                },
                                  
                                child: Image.asset(
                                  "lib/images/imagem06.png",
                                  width: MediaQuery.of(context).size.width,
                                )
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                 const SizedBox(
                  width: 5,
                ),
                
                //
                // PRÓXIMA LINHA
                //

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Orações Missa do Galo',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                
                // 
                // Espaçamento
                //
                const SizedBox(
                  height: 10,
                ),

                //
                // Linha com imagens 
                //
                SizedBox(
                  height: 200,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        //
                        // IMAGEM07
                        //
                        SizedBox(
                          width: 150,
                          height: 300,
                          
                          child: Stack(
                            children: [
                              ShaderMask( 
                                shaderCallback: (rect) {
                                  return const LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [Colors.white, Color.fromARGB(255, 85, 85, 85)],
                                  ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
                                },
                                  
                                child: Image.asset(
                                  "lib/images/imagem07.png",
                                  width: MediaQuery.of(context).size.width,
                                )
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(
                          width: 17,
                        ),

                        //
                        // IMAGEM08
                        //
                        SizedBox(
                          width: 150,
                          height: 300,
                          
                          child: Stack(
                            children: [
                              ShaderMask( 
                                shaderCallback: (rect) {
                                  return const LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [Colors.white, Color.fromARGB(255, 85, 85, 85)],
                                  ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
                                },
                                  
                                child: Image.asset(
                                  "lib/images/imagem08.png",
                                  width: MediaQuery.of(context).size.width,
                                )
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(
                          width: 17,
                        ),

                        //
                        // IMAGEM09
                        //
                        SizedBox(
                          width: 150,
                          height: 300,
                          
                          child: Stack(
                            children: [
                              ShaderMask( 
                                shaderCallback: (rect) {
                                  return const LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [Colors.white, Color.fromARGB(255, 85, 85, 85)],
                                  ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
                                },
                                  
                                child: Image.asset(
                                  "lib/images/imagem09.png",
                                  width: MediaQuery.of(context).size.width,
                                )
                              ),
                            ],
                          ),
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
}
