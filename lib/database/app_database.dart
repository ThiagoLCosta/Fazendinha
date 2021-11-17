import 'package:fazendinha/models/arvore_model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Future<Database> createDatabase() {
  return getDatabasesPath().then((dbPath) {
    final String path = join(dbPath, 'fazendinha.db');
    return openDatabase(path, onCreate: (db, version) {
      db.execute('CREATE TABLE tab_arvore('
          'codigo_arvore INTEGER PRIMARY KEY, '
          'descricao_arvore TEXT, '
          'data_plantio TEXT, '
          'codigo_especie INTEGER)');
    }, version: 1);
  });
}

Future<int> save_arvore(arvore_model ArvoreModel) {
  return createDatabase().then((db) {
    final Map<String, dynamic> tab_arvoreMap = Map();
    tab_arvoreMap['descricao_arvore'] = ArvoreModel.DescricaoArvore;
    tab_arvoreMap['data_plantio'] = ArvoreModel.DataPlantio;
    tab_arvoreMap['codigo_especie'] = ArvoreModel.ArvoresEspecie;
    return db.insert('tab_arvore', tab_arvoreMap);
  });
}

Future<List<arvore_model>> findAll_arvore() {
  return createDatabase().then((db) {
    return db.query('tab_arvore').then((maps) {
      final List<arvore_model> Arvores = List.empty();
      for (Map<String, dynamic> map in maps) {
        final arvore_model ArvoreModel = arvore_model(
          map['codigo_arvore'],
          map['descricao_arvore'],
          map['data_plantio'],
          map['codigo_especie'],
        );
        Arvores.add(ArvoreModel);
      }
      return Arvores;
    });
  });
}
