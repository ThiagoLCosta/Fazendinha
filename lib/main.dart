import 'package:fazendinha/database/app_database.dart';
import 'package:fazendinha/models/arvore_model.dart';
import 'package:fazendinha/screens/Dashboard.dart';
import 'package:fazendinha/screens/EspecieArvore_form.dart';
import 'package:fazendinha/screens/ListaArvore.dart';
import 'package:fazendinha/screens/Arvore_form.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(FazendinhaApp());
  findAll_arvore().then((arvore_model) => debugPrint(arvore_model.toString()));
}

class FazendinhaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.green,
        ).copyWith(
          secondary: Colors.blueAccent[700],
        ),
        buttonTheme: ButtonThemeData(
            buttonColor: Colors.blueAccent[700],
            textTheme: ButtonTextTheme.primary),
      ), //ThemeData(primarySwatch: Colors.blue),
      home: DashBoard(),
    );
  }
}


