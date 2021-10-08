import 'package:touch/api/requests.dart';
import 'package:touch/models/base_model.dart';

class PessoaModel extends Request implements BaseModel {
  @override
  String Entity = 'pessoa';

  bool login() {
    return true;
  }
}