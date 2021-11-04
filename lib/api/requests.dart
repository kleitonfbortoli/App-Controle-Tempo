import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:touch/constants/response_constants.dart';
import 'package:touch/constants/system_urls.dart' as system_urls;
import 'package:touch/controlers/session_control.dart';

class Request {
  String Entity = '';
  String _method = '';
  late Function(Map<String, dynamic> json) _success_callback = showGenericSuccessMessage;
  late Function(Map<String, dynamic> json) _error_callback = showGenericErrorMessage;

  void setSuccessCallback(Function(Map<String, dynamic> json) func) {
    _success_callback = func;
  }

  void setErrorCallback(Function(Map<String, dynamic> json) func) {
    _error_callback = func;
  }

  void getAll() async {
    _method = 'consultar';
    String? token = await SessionControl().getJWT();
    var uri = Uri.parse(system_urls.api_url + Entity);

    var response = http.get(
        uri,
        headers: {
          'Authorization': 'Bearer $token',
        }
    );

    handlerRequest(response);
  }

  void get(int EntityId) async {
    _method = 'consultar';
    String? token = await SessionControl().getJWT();
    var uri = Uri.parse(system_urls.api_url + Entity + "/" + EntityId.toString());

    var response = http.get(
        uri,
        headers: {
          'Authorization': 'Bearer $token',
        }
    );

    handlerRequest(response);
  }

  void post(Object data) async {
    String? token = await SessionControl().getJWT();
    SessionControl().getJWT().then((value) => print(value));
    _method = 'criar';
    var uri = Uri.parse(system_urls.api_url + Entity);

    var response = http.post(
        uri,
        body: data,
        headers: {
          'Authorization': 'Bearer $token',
        }
    );

    handlerRequest(response);
  }

  void put(int EntityId, Object data) async {
    _method = 'atualizar';
    String? token = await SessionControl().getJWT();
    var uri = Uri.parse(system_urls.api_url + Entity + "/" + EntityId.toString());
    print(system_urls.api_url + Entity + "/" + EntityId.toString());
    var response = http.post(
        uri,
        body: jsonEncode(data),
        headers: {
          'Content-Type': 'application/json;charset=UTF-8',
          'Authorization': 'Bearer $token',
        }
    );

    handlerRequest(response);
  }

  void delete(int EntityId) async {
    _method = 'deletar';
    String? token = await SessionControl().getJWT();
    var uri = Uri.parse(system_urls.api_url + Entity + "/" + EntityId.toString());

    var response = http.delete(
        uri,
        headers: {
          'Authorization': 'Bearer $token',
        }
    );

    handlerRequest(response);
  }

  void handlerRequest(Future<http.Response> future) {
    future.then(
        handle,
    ).catchError(
            (error) => handleException(error)
    );
  }

  void handle(http.Response response) {
    var htppCode = response.statusCode;
    
    var json = jsonDecode(response.body);
    print('json');
    print(response.reasonPhrase);
    if(httpSuccessCodes.contains(htppCode)) {
      handleSuccess(json);
    } else {
      handleError(json);
    }
  }

  void handleSuccess(Map<String, dynamic> json){
    print("Success");
    _success_callback(json);
  }

  void handleError(Map<String, dynamic> json){
    print("error");
    print(json);
    _error_callback(json);
  }

  void handleException(error){
    print("exception");
    print(error);
  }

  int getHttpStatusCode(http.Response response){
    return response.statusCode;
  }

  void showGenericSuccessMessage(Map<String, dynamic> data){
    Fluttertoast.showToast(
        msg: getGenericSuccessMessage(),
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM_RIGHT,
        backgroundColor: Colors.green,
        textColor: Colors.black,
        fontSize: 20,
    );
  }

  void showGenericErrorMessage(Map<String, dynamic> data){
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