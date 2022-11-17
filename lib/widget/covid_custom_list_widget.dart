import 'package:covid_app/bloc/bloc/covid_bloc.dart';
import 'package:covid_app/const/color.dart';
import 'package:covid_app/const/const_sized_height.dart';
import 'package:covid_app/shared/capitalize.dart';
import 'package:covid_app/shared/date_funstion.dart';
import 'package:covid_app/widget/indicator_widget.dart';
import 'package:covid_app/widget/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CovidDataCustomWidget extends StatelessWidget {
  const CovidDataCustomWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //BlocProvider.of<CovidBloc>(context).add(CovidEventFetched());

    return BlocBuilder<CovidBloc, CovidState>(
      builder: (context, state) {
        if (state is CovidLoading) {
          return const IndicatorLoading(
            color: AppColor.primaryAppColor,
          );
        }
       else if (state is CovidLoadedSuccess) {
          return ListView.builder(
              itemCount: state.countryCovidDataList.length,
              itemBuilder: (context, i) {
                return Card(
                  color: AppColor.primaryAppColor,
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 16),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText(
                              text:
                                  'Country : ${capitalize(state.countryCovidDataList[i].Slug)}'),
                          AppSized.sized8,
                          AppText(
                              text:
                                  'NewConfirmed : ${state.countryCovidDataList[i].NewConfirmed}'),
                          AppSized.sized8,
                          AppText(
                              text:
                                  'NewDeaths : ${state.countryCovidDataList[i].NewDeaths}'),
                          AppSized.sized8,
                          AppText(
                              text:
                                  'TotalConfirmed : ${state.countryCovidDataList[i].TotalConfirmed}'),
                          AppSized.sized8,
                          AppText(
                              text:
                                  'TotalDeaths : ${state.countryCovidDataList[i].TotalDeaths}'),
                          AppSized.sized8,
                          AppText(
                              text:
                                  'TotalRecovered : ${state.countryCovidDataList[i].TotalRecovered}'),
                          AppSized.sized8,
                          AppText(
                              text:
                                  'Date : ${DateFunction.formatDate(state.countryCovidDataList[i].Date)}'),
                        ]),
                  ),
                );
              });
        }  else if (state is CovidFaliure) {
          return Text(state.messageFaliure.toString());
        } else {
          return Center(child: Image.asset('lib/assets/images/covid.gif'));
        }
      },
    );
  }
}
