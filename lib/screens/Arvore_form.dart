import 'package:fazendinha/models/arvore_model.dart';
import 'package:fazendinha/screens/EspecieArvore_form.dart';
import 'package:flutter/material.dart';

class Arvore extends StatefulWidget {
  @override
  State<Arvore> createState() => _ArvoreState();
}

class _ArvoreState extends State<Arvore> {
  final TextEditingController _AvoresDescricaoController =
      TextEditingController();
  final TextEditingController _DataPlantioController = TextEditingController();
  final TextEditingController _AvoresEspecieController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Árvore'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _AvoresDescricaoController,
              decoration: InputDecoration(labelText: 'Descrição'),
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            TextField(
              controller: _DataPlantioController,
              decoration: InputDecoration(
                labelText: 'Data de Plantio',
                hintText: DateTime.now().day.toString() +
                    '/' +
                    DateTime.now().month.toString() +
                    '/' +
                    DateTime.now().year.toString(),
              ),
              style: TextStyle(
                fontSize: 16.0,
              ),
              keyboardType: TextInputType.datetime,
            ),
            TextField(
              controller: _AvoresEspecieController,
              decoration: InputDecoration(labelText: 'Espécie'),
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: SizedBox(
                width: double.maxFinite,
                child: RaisedButton(
                  child: Text('Confirmar'),
                  onPressed: () {
                    final String DescricaoArvore =
                        _AvoresDescricaoController.text;
                    final String DataPlantio = _DataPlantioController.text;
                    final String ArvoresEspecie = _AvoresEspecieController.text;

                    final arvore_model newarvore_model = arvore_model(
                        0, DescricaoArvore, DataPlantio, ArvoresEspecie);
                    Navigator.pop(context, newarvore_model);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => EspecieArvore(),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
