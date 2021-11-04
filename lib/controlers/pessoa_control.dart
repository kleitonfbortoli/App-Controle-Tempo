import 'package:touch/models/pessoas_model.dart';
import 'package:touch/objects/pessoa.dart';

class PessoaControl {
  void cadastrar(Pessoa pessoa) {

  }

  static void atualizar(Pessoa pessoa) {
    var model = PessoaModel();
    model.put(3, pessoa.toObject());
  }
}