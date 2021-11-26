import 'package:touch/models/pessoas_model.dart';
import 'package:touch/objects/pessoa.dart';

class PessoaControl {
  static void cadastrar(String nome, String email, String senha) {
    var pessoa = Pessoa();
    var model = PessoaModel();

    pessoa.nome = nome;
    pessoa.email = email;
    pessoa.senha = senha;
    
    model.post(pessoa.toObject());
  }

  static void atualizar(Pessoa pessoa) {
    var model = PessoaModel();
    model.put(3, pessoa.toObject());
  }
}