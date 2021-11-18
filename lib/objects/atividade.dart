class Atividade{
  String descricao;
  String tempo;

  Atividade(this.descricao, this.tempo);

  Object toObject() {
    return {
      'descricao': descricao,
      'tempo': tempo,
    };
  }

}