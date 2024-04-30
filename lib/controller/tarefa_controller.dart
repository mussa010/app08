import 'package:app08/view/util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../model/tarefa.dart';

class TarefaController {
  // Adicionar uma nova tarefa
  adicionar(context, Tarefa t) {
    FirebaseFirestore.instance
      .collection('tarefas')
      .add(t.toJson())
      .then((resultado) {
        sucesso(context, 'Terefa adicionada com sucesso');
      }).catchError((e) {
        erro(context, 'Não foi possível adicionar tarefa');
      }).whenComplete(() => Navigator.pop(context));
  }
}