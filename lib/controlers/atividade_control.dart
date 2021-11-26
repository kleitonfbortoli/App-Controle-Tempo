import 'package:touch/models/atividade_model.dart';
import 'package:touch/objects/atividade.dart';

class AtividadeControl {
  static void cadastrar(String nome, String descricao, int ref_pessoa, int? ref_atividade) {
    var atividade = Atividade();
    var model = AtividadeModel();

    atividade.nome = nome;
    atividade.descricao = descricao;
    atividade.ref_pessoa = ref_pessoa;
    atividade.ref_atividade = ref_atividade;

    model.post(atividade.toObject());
  }

  static void atualizar(Atividade atividade) {
    var model = AtividadeModel();
    model.put(3, atividade.toObject());
  }
}