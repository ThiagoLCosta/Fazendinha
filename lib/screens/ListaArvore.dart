import 'package:fazendinha/screens/Arvore_form.dart';
import 'package:flutter/material.dart';

class ListaArvore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista Árvores'),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              title: Text('Amora',
                  style: TextStyle(
                    fontSize: 24.0,
                  )),
              subtitle: Text(
                '16/11/2021',
                style: TextStyle(fontSize: 16),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(
                MaterialPageRoute(
                  builder: (context) => Arvore(),
                ),
              )
              .then(
                (newarvore_model) => debugPrint(newarvore_model.toString()),
              );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
