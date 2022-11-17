import 'package:covid_app/models/country_model.dart';

class CountriesModel {
  final List<CountryModel> countries;

  CountriesModel({required this.countries});
  factory CountriesModel.fromJson(json) {
    return CountriesModel(countries: getList(json['Countries']));
  }

  static List<CountryModel> getList(List<dynamic> list) {
    List<CountryModel> countries =
        list.map((e) => CountryModel.fromJson(e)).toList();
    return countries;
  }
}
