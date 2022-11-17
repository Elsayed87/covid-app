part of 'covid_bloc.dart';

abstract class CovidState extends Equatable {
  const CovidState();

  @override
  List<Object> get props => [];
}

class CovidInitial extends CovidState {}

class CovidLoading extends CovidState {}

class CovidLoadedSuccess extends CovidState {
  final List<CountryModel> countryCovidDataList;

  CovidLoadedSuccess({required this.countryCovidDataList});
}

class CovidFaliure extends CovidState {
  final String messageFaliure;

  CovidFaliure({required this.messageFaliure});
}
