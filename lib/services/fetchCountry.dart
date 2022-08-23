import 'dart:convert';
import 'package:covidapp/models/covidModel.dart';
import 'package:http/http.dart' as http;

class FetchCountry {
  Future<CovidModel> fetchData() async {
    final response =
        await http.get(Uri.parse("https://covid19-mohfw.herokuapp.com/"));
    if (response.statusCode == 200) {
      final result = CovidModel.fromJson(jsonDecode(response.body));
      return result;
    } else {
      throw Exception('Error');
    }
  }
}
