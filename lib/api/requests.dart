import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:touch/constants/system_urls.dart' as system_urls;

class Request {
  String Entity = '';
  String _method = '';
  late Function(Object) _success_callback = showGenericSuccessMessage;
  late Function(Object) _error_callback = showGenericErrorMessage;

  void setSuccessCallback(Function(Object) func) {
    _success_callback = func;
  }

  void setErrorCallback(Function(Object) func) {
    _error_callback = func;
  }

  void getAll() async {
    _method = 'consultar';
    var uri = Uri.parse(system_urls.api_url + Entity);

    var response = http.get(uri);

    handlerRequest(response);
  }

  void get(int EntityId) async {
    _method = 'consultar';
    var uri = Uri.parse(system_urls.api_url + Entity + "/" + EntityId.toString());

    var response = http.get(uri);

    handlerRequest(response);
  }

  void post(Object data) async {
    _method = 'criar';
    var uri = Uri.parse(system_urls.api_url + Entity);

    var response = http.post(uri, body: data);

    handlerRequest(response);
  }

  void put(int EntityId, Object data) async {
    _method = 'atualizar';
    var uri = Uri.parse(system_urls.api_url + Entity + "/" + EntityId.toString());

    var response = http.post(uri, body: data);

    handlerRequest(response);
  }

  void delete(int EntityId) async {
    _method = 'deletar';
    var uri = Uri.parse(system_urls.api_url + Entity + "/" + EntityId.toString());

    var response = http.delete(uri);

    handlerRequest(response);
  }

  void handlerRequest(Future<http.Response> future) {
    future.then(
        handleSuccess,
        onError: handleError,
    ).catchError(
            (error) => handleException(error)
    );
  }

  void handleSuccess(http.Response response){
    _success_callback(response.body);
  }

  void handleError(http.Response error){
    _error_callback(error.body);
  }

  void handleException(Exception error){

  }

  int getHttpStatusCode(http.Response response){
    return response.statusCode;
  }

  void showGenericSuccessMessage(Object data){
    Fluttertoast.showToast(
        msg: getGenericSuccessMessage(),
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM_RIGHT,
        backgroundColor: Colors.green,
        textColor: Colors.black,
        fontSize: 20,
    );
  }

  void showGenericErrorMessage(Object data){
    Fluttertoast.showToast(
        msg: getGenericErrorMessage(),
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM_RIGHT,
        backgroundColor: Colors.redAccent,
        textColor: Colors.black,
        fontSize: 20,
    );
  }

  String getGenericErrorMessage() {
    return "Ocorreu um erro ao " + _method;
  }

  String getGenericSuccessMessage() {
    return "Sucesso ao " + _method;
  }
}