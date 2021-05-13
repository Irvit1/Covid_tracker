// To parse this JSON data, do
//
//     final linechart = linechartFromJson(jsonString);

import 'dart:convert';

List<Linechart> linechartFromJson(String str) => List<Linechart>.from(json.decode(str).map((x) => Linechart.fromJson(x)));

String linechartToJson(List<Linechart> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Linechart {
    Linechart({
        this.id,
        this.country,
        this.countryCode,
        this.province,
        this.city,
        this.cityCode,
        this.lat,
        this.lon,
        this.confirmed,
        this.deaths,
        this.recovered,
        this.active,
        this.date,
    });

    String id;
    Country country;
    CountryCode countryCode;
    String province;
    String city;
    String cityCode;
    String lat;
    String lon;
    int confirmed;
    int deaths;
    int recovered;
    int active;
    DateTime date;

    factory Linechart.fromJson(Map<String, dynamic> json) => Linechart(
        id: json["ID"],
        country: countryValues.map[json["Country"]],
        countryCode: countryCodeValues.map[json["CountryCode"]],
        province: json["Province"],
        city: json["City"],
        cityCode: json["CityCode"],
        lat: json["Lat"],
        lon: json["Lon"],
        confirmed: json["Confirmed"],
        deaths: json["Deaths"],
        recovered: json["Recovered"],
        active: json["Active"],
        date: DateTime.parse(json["Date"]),
    );

    Map<String, dynamic> toJson() => {
        "ID": id,
        "Country": countryValues.reverse[country],
        "CountryCode": countryCodeValues.reverse[countryCode],
        "Province": province,
        "City": city,
        "CityCode": cityCode,
        "Lat": lat,
        "Lon": lon,
        "Confirmed": confirmed,
        "Deaths": deaths,
        "Recovered": recovered,
        "Active": active,
        "Date": date.toIso8601String(),
    };
}

enum Country { INDIA }

final countryValues = EnumValues({
    "India": Country.INDIA
});

enum CountryCode { IN }

final countryCodeValues = EnumValues({
    "IN": CountryCode.IN
});

class EnumValues<T> {
    Map<String, T> map;
    Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}
