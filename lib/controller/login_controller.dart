import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../view/util.dart';

class LoginController {
  //
  // CRIAR CONTA DE UM USUÁRIO NO SERVIÇO DO FIREBASE AUTHENTICATION
  //
  criarConta(context, nome, email, senha) {
    FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email, 
      password: senha
    ).then((resultado) {
      //Usuário criado com sucesso

      //Armazenar o NOME e o ID do usuário no Firestore
      FirebaseFirestore.instance.collection('usuarios').add(
        {
          "uid": resultado.user!.uid,
          "nome": nome
        }
      );

      sucesso(context, 'Usuario criado com sucesso!');
      Navigator.pop(context);
    }).catchError((e) {
      //Erro durante a criação do suário

      switch(e.code) {
        case 'email-already-in-use':
          erro(context, 'O email já foi criado.');
          break;
        case 'invalid-email':
          erro(context, 'Email inválido.');
          break;
        default:
          erro(context, 'Erro: ${e.toString()}');
      }
    });


  }

  //
  // LOGIN de usuário a partir do provedor Email/Senha
  //
  login(context, email, senha) {
    FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: senha)
        .then((resultado) {
      sucesso(context, 'Usuário autenticado com sucesso!');
    }).catchError((e) {
      switch (e.code) {
        case 'invalid-email':
          erro(context, 'O formato do e-mail é inválido.');
        case 'invalid-credential':
          erro(context, 'Credenciais inválidas.');
        default:
          erro(context, 'ERRO: ${e.code.toString()}');
      }
    });
  }

  esqueceuSenha(context, email) {
    if(email.isNotEmpty) {
      FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      sucesso(context, 'Email enviado com sucesso');
    } else {
      erro(context, 'Infore o email para recuperar a conta');
    }
  }

  //
  //Efetuar logout do usuário
  //
  logout() {
    FirebaseAuth.instance.signOut();
  }

  //
  //Retorna o UID (User Identifier) do usuário que está logado no App
  //
  idUsuarioLogado() {
    return FirebaseAuth.instance.currentUser!.uid;
  }
}