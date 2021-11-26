class Atividade extends Object {
  String? nome;
  String? descricao;
  int? ref_pessoa;
  int? ref_atividade;

  Object toObject() {
    return {
      'nome': nome,
      'descricao': descricao,
      'ref_pessoa': ref_pessoa,
      'ref_atividade': ref_atividade,
    };
  }
}