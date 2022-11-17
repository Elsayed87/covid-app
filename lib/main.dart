import 'package:covid_app/bloc/bloc/covid_bloc.dart';
import 'package:covid_app/repository/countries_repository.dart';
import 'package:covid_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const CovidApp());
}

class CovidApp extends StatelessWidget {
  const CovidApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CovidBloc>(
      create: (BuildContext context) => CovidBloc(CountriesRepository()),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
