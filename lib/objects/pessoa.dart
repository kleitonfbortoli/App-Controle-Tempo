class Pessoa extends Object {
  String? nome;
  String? email;
  String? senha;
  String? cep;
  String? rua;
  String? estado;
  String? pais;

  Object toObject() {
    return {
      'nome': nome,
      'email': email,
      'password': senha,
      'cep': cep,
      'rua': rua,
      'estado': estado,
      'pais': pais,
    };
  }
}