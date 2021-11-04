import 'package:touch/api/requests.dart';
import 'package:touch/models/base_model.dart';

class AuthModel extends Request implements BaseModel {
  @override
  String Entity = 'auth';

  void setMethod(String method) {
    Entity = "auth/" + method;
  }
}