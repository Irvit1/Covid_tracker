// import 'package:flutter/material.dart';

// import 'dart:convert';
// import 'package:http/http.dart' as http;

// class VaccineCentre extends StatefulWidget {
//   final String pincode;
//   VaccineCentre({this.pincode});
//   @override
//   _VaccineCentreState createState() => _VaccineCentreState();
// }

// class _VaccineCentreState extends State<VaccineCentre> {
//   var finalDate = '';
//   getCurrentDate() {
//     var date = new DateTime.now().toString();

//     var dateParse = DateTime.parse(date);

//     var formattedDate = "${dateParse.day}-${dateParse.month}-${dateParse.year}";

//     setState(() {
//       finalDate = formattedDate.toString();
//     });
//   }

//   Map vaccinedata;
//   getdata(String pin, String date) async {
//     final inputdata = {'pincode': pin, 'date': finalDate};
//     final uri = Uri.https('https://cdn-api.co-vin.in',
//         '/api/v2/appointment/sessions/public/calendarByPin', inputdata);

//     http.Response response = await http.get(uri);
//     print(response.body);
//     setState(() {
//       vaccinedata = json.decode(response.body);
//     });
//     print(vaccinedata);
//   }

//   @override
//   void initState() async {
//     getCurrentDate();
//     await getdata(widget.pincode, finalDate);
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
