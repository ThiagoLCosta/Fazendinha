class arvore_model {
  final int CodigoArvore;
  final String DescricaoArvore;
  final String DataPlantio;
  final String ArvoresEspecie;

  arvore_model(
    this.CodigoArvore,
    this.DescricaoArvore,
    this.DataPlantio,
    this.ArvoresEspecie,
  );

  @override
  String toString() {
    return 'arvore_model{DescricaoArvore: $DescricaoArvore, DataPlantio: $DataPlantio, ArvoresEspecie: $ArvoresEspecie}';
  }
}
