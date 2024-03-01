// https://ipify.org
import 'dart:convert';

import 'package:http/http.dart' as http;

import 'models/ip.dart';

const stringURL = 'https://ipapi.co/json';

Future<Ip> getIp() async {
  final url = Uri.parse(stringURL);
  final res = await http.get(url);
  final Map<String, dynamic> data = json.decode(res.body);

  //region
  //cod postale
  //citta

  return Ip(ip: data['ip'], region: data['region'], citta: data['city']);
}
