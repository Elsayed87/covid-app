import 'package:covid_app/bloc/bloc/covid_bloc.dart';
import 'package:covid_app/const/color.dart';
import 'package:covid_app/const/const_style.dart';
import 'package:covid_app/widget/covid_custom_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<CovidBloc>(context).add(CovidEventFetched());
    return Scaffold(
      appBar: AppBar(
        centerTitle:true ,
        backgroundColor: AppColor.primaryAppColor,
        title: const Text(
          'Covid App',
          style: AppStyle.appBarTextStyle,
        ),
        elevation: 0.0,
      ),
      body: const CovidDataCustomWidget(),
    );
  }
}
