import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future runPutUserApi(
    {required String type,
    required Map toBeUpdated,
    required String userId}) async {
  String apiUrl;
  if (type == "Shipper") {
    apiUrl = '${dotenv.env['transporterApiUrl'].toString()}';
  } else {
    apiUrl = '${dotenv.env['transporterApiUrl'].toString()}';
  }
  final String additionalQuery = '/';
  String body = json.encode(toBeUpdated);
  final http.Response response = await http.put(
      Uri.parse("$apiUrl$additionalQuery$userId"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8'
      },
      body: body);
  if (response.statusCode == 200) {
    var decodedResponse = json.decode(response.body);
    print(decodedResponse);
  } else {
    return "Error";
  }
}