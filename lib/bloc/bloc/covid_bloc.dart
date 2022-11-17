import 'package:bloc/bloc.dart';
import 'package:covid_app/models/country_model.dart';
import 'package:covid_app/repository/countries_repository.dart';
import 'package:equatable/equatable.dart';

part 'covid_event.dart';
part 'covid_state.dart';

class CovidBloc extends Bloc<CovidEvent, CovidState> {
  CountriesRepository countriesRepository;
  CovidBloc(this.countriesRepository) : super(CovidInitial()) {
    
    on<CovidEventFetched>((event, emit) async {
      emit(CovidLoading());
      try {
        var covidData = await countriesRepository.getCountriesCovidData();
        emit(CovidLoadedSuccess(countryCovidDataList: covidData));
      } on Exception catch (e) {
        emit(CovidFaliure(messageFaliure: e.toString()));
      
      }
    });
  }
}
