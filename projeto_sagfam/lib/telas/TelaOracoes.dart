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

                // 
                // Espaçamento
                //
                const SizedBox(
                        height: 10,
                ),

                //
                // LINHA
                //
                SingleChildScrollView(
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
                        width: 10, // WIDTH = LARGURA, informa que o espaçamento se dará por linha
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
                        width: 10,
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
              
                const SizedBox(
                  width: 5,
                ),
                
                //
                // PRÓXIMA LINHA
                //

                Text(
                  'Orações de Nossa Senhora',
                  style: TextStyle(color: Colors.white),
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
                SingleChildScrollView(
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
                        width: 10,
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
                        width: 10,
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
              ],
            ),
        ),
      ),
    );
  }
}
