class CountryModel {
  final String ID;
  final String Country;

  final String Slug;
  final String Date;

  final int NewConfirmed;
  final int TotalConfirmed;
  final int NewDeaths;
  final int TotalDeaths;
  final int TotalRecovered;

  CountryModel({
    required this.ID,
    required this.Country,
    required this.Slug,
    required this.Date,
    required this.NewConfirmed,
    required this.TotalConfirmed,
    required this.NewDeaths,
    required this.TotalDeaths,
    required this.TotalRecovered,
  });
  factory CountryModel.fromJson(json) {
    return CountryModel(
        ID: json['ID'],
        Country: json['Country'],
        Slug: json['Slug'],
        Date: json['Date'],
        NewConfirmed: json['NewConfirmed'],
        TotalConfirmed: json['TotalConfirmed'],
        NewDeaths: json['NewDeaths'],
        TotalDeaths: json['TotalDeaths'],
        TotalRecovered: json['TotalRecovered']);
  }
}


// "Countries": [
// {
// "ID": "4c728f27-68d6-4db7-b41e-3ca8c85d67c3",
// "Country": "Afghanistan",
// "CountryCode": "AF",
// "Slug": "afghanistan",
// "NewConfirmed": 96,
// "TotalConfirmed": 204820,
// "NewDeaths": 1,
// "TotalDeaths": 7830,
// "NewRecovered": 0,
// "TotalRecovered": 0,
// "Date": "2022-11-17T05:40:26.183Z",
// "Premium": {}
// },