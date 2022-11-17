import 'dart:convert';
import 'package:covid_app/const/const_string.dart';
import 'package:covid_app/models/countries_model.dart';
import 'package:covid_app/models/country_model.dart';
import 'package:http/http.dart' as http;

class CountriesServices {
  Future<List<CountryModel>> getCountriesCovidData() async {
    CountriesModel ?data;
    http.Response response = await http.get(Uri.parse(AppString.url));
    try {
      var json = jsonDecode(response.body);
       data = CountriesModel.fromJson(json);

      
    } on Exception catch (e) {
      print(e.toString());
     // rethrow;
    }
    return data!.countries;
  }
}
