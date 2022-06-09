import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'widgets/mensagem.dart';

class TelaCadastro extends StatefulWidget {
  const TelaCadastro({Key? key}) : super(key: key);

  @override
  _TelaCadastroState createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {
  var txtNome = TextEditingController();
  var txtEmail = TextEditingController();
  var txtSenha = TextEditingController();
  var txtCPF = TextEditingController();
  var txtTelefone = TextEditingController();

  @override
  Widget build(BuildContext context) {

    //
    // id para validar novo usuário
    //
    var id = ModalRoute.of(context)?.settings.arguments;

    return Scaffold(
      appBar: AppBar(
          title: const Text('Cadastro'),
          backgroundColor: Color.fromARGB(255, 20, 111, 196)),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Container(
        padding: const EdgeInsets.all(50),
        child: ListView(
          children: [
            campoTexto('Nome', txtNome, Icons.people),
            const SizedBox(height: 20),
            campoTexto('Email', txtEmail, Icons.email),
            const SizedBox(height: 20),
            campoTexto('Senha', txtSenha, Icons.lock, senha: true),
            const SizedBox(height: 40),
            campoTexto('CPF', txtCPF, Icons.document_scanner),
            const SizedBox(height: 40),
            campoTexto('Telefone', txtTelefone, Icons.smartphone),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 120,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      primary: Colors.white,
                      minimumSize: const Size(200, 45),
                      backgroundColor: Color.fromARGB(255, 20, 111, 196),
                    ),
                    child: const Text('Cadastrar-se'),
                    onPressed: () {
                      if (id == null){
                        //
                        // ADICIONAR um NOVO DOCUMENTO
                        //
                        FirebaseFirestore.instance.collection('usuarios').add({
                          'nome': txtNome.text,
                          'email': txtEmail.text,
                          'CPF': txtCPF.text,
                          'telefone': txtTelefone.text,
                          'senha': txtSenha.text,
                        });   
                      }
                      else{
                        //
                        // ATUALIZAR UM DOCUMENTO EXISTENTE
                        //
                        FirebaseFirestore.instance.collection('usuarios').doc(id.toString()).set({
                          'nome': txtNome.text,
                          'email': txtEmail.text,
                          'CPF': txtCPF.text,
                          'telefone': txtTelefone.text,
                          'senha': txtSenha.text,
                        });
                      }
                      
                      criarConta(txtNome.text, txtEmail.text, txtSenha.text, txtCPF.text, txtTelefone.text);
                    },
                  ),
                ),

                SizedBox(
                  width: 10,
                ),

                SizedBox(
                  width: 100,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      primary: Colors.white,
                      minimumSize: const Size(200, 45),
                      backgroundColor: Color.fromARGB(255, 20, 111, 196),
                    ),
                    child: const Text('Cancelar'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 60),
          ],
        ),
      ),
    );
  }

  campoTexto(texto, controller, icone, {senha}) {
    return TextField(
      controller: controller,
      obscureText: senha != null ? true : false,
      style: const TextStyle(
        color: Color.fromARGB(126, 82, 82, 82),
        fontWeight: FontWeight.w300,
      ),
      decoration: InputDecoration(
        prefixIcon: Icon(icone, color: Color.fromARGB(126, 82, 82, 82)),
        prefixIconColor: Color.fromARGB(126, 82, 82, 82),
        labelText: texto,
        labelStyle: const TextStyle(color: Color.fromARGB(126, 82, 82, 82)),
        border: const OutlineInputBorder(),
        focusColor: Color.fromARGB(126, 82, 82, 82),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(126, 82, 82, 82),
            width: 0.0,
          ),
        ),
      ),
    );
  }

  //
  // CRIAR CONTA no Firebase Auth (Authentication)
  //
  void criarConta(nome, email, senha, cpf, telefone) {
    FirebaseAuth.instance
    .createUserWithEmailAndPassword(email: email, password: senha)
    .then((res){
      //
      //TUDO CERTO
      //
      sucesso(context, 'Usuário criado com sucesso!');
      Navigator.pop(context);
    }).catchError((e){
      switch(e.code){
        case 'invalid email':
          erro(context, 'O formato do email é inválido!');
        break;

        case 'email-already-in-use':
          erro(context, 'O email já cadastrado.');
        break;

        default:
          erro(context, e.code.toString());
      }
    });
  }
}