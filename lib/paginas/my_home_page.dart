import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:mayo30/widgets/widget_listado.dart';
import 'package:mayo30/widgets/widget_no_data.dart';
import 'package:mayo30/widgets/widget_placeholderlistado.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Stream<List<dynamic>> leerDatos() async* {
    //https://raw.githubusercontent.com/escuelainformatica/weather/main/weather.json
    await Future<void>.delayed(const Duration(seconds: 3));
    var url = Uri.https('raw.githubusercontent.com',
        '/escuelainformatica/weather/main/weather.json', {'q': '{https}'});
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var climas = convert.jsonDecode(response.body) as List<dynamic>;
      var itemCount = climas.length;
      yield climas;
      print('Number of books about http: $itemCount.');
      // return climas;
    } else {
      throw Exception('Request failed with status: ${response.statusCode}.');
      // return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder<List<dynamic>>(
            stream: leerDatos(),
            builder: (BuildContext, snap) {
              if(snap.hasError) {
                return WidgetNoData(mensaje: snap.error.toString());
              } else {
                if (snap.connectionState == ConnectionState.done) {
                  return WidgetListado(valores:snap.data);
                } else {
                  return WidgetPlaceholderlistado();
                }
              }



            }));
  }
}
