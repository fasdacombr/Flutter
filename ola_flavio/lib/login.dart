import 'package:flutter/material.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;

Future<bool> login(String email, String senha) async {
  const BASE_URL_USUARIO = 'http://localhost:9000/usuario/login';

  String username = "fasda";
  String password = "brcd2605";
  String basicAuth = "Basic " + base64.encode(utf8.encode("$username:$password"));

  var header = {'Content-Type': 'application/json'};
  final msg = jsonEncode({"login": email, "senha": senha});

  var response = await http.post(
      Uri.parse(BASE_URL_USUARIO),
      //headers: header,
      headers: <String, String>{"authorization": basicAuth, "Content-Type": "application/json"},
      body: msg,
  );

  print('Response status: ${response.statusCode}');
  print('Response body: ${response.body}');


  if(response.statusCode == 200) {
    return true;
  } else {
    return false;
  }

  
}