import 'package:covid_app/web_services/countries_services.dart';

import '../models/country_model.dart';

class CountriesRepository {
  
  CountriesServices countriesServices = CountriesServices();
  Future<List<CountryModel>> getCountriesCovidData() async {
     return    countriesServices.getCountriesCovidData();
  }
}
