// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:excel/excel.dart';
// import 'dart:io';
// import 'package:path_provider/path_provider.dart';

// import '../../bloc/BlocEvent/300-01-P300GETDATA.dart';
// import '../../bloc/BlocEvent/320-01-P320GETDATA.dart';
// import '../../data/global.dart';

// class P340EXPORT_EXCEL_MAIN extends StatefulWidget {
//   final List<P320BP12BALANCEDATALOGclass>? data;

//   const P340EXPORT_EXCEL_MAIN({super.key, this.data});

//   @override
//   State<P340EXPORT_EXCEL_MAIN> createState() => _P340EXPORT_EXCEL_MAINState();
// }

// class _P340EXPORT_EXCEL_MAINState extends State<P340EXPORT_EXCEL_MAIN> {
//   List<List<String>> myData = [

//   ];

//   final List<String> headers = [
//     'DateTime',
//     'Cal_1g_No1',
//     'Cal_1g_No2',
//     'Cal_1g_No3',
//     'Cal_1g_Average',
//     'Cal_50g_No1',
//     'Cal_50g_No2',
//     'Cal_50g_No3',
//     'Cal_50g_Average',
//     'Cal_100g_No1',
//     'Cal_100g_No2',
//     'Cal_100g_No3',
//     'Cal_100g_Average',
//     'Cal_200g_No1',
//     'Cal_200g_No2',
//     'Cal_200g_No3',
//     'Cal_200g_Average',
//     'Check_By',
//     'Approve_By'
//   ];

//   @override
//   void initState() {
//     super.initState();
//     if (widget.data != null) {
//       myData = _datain!.map((e) => e.toListString()).toList();
//     }
//   }

//   Future<void> exportToExcel(List<List<String>> dataRows) async {
//     var excel = Excel.createExcel();
//     Sheet sheetObject = excel['Sheet1'];

//     sheetObject.appendRow(headers);
//     for (var row in dataRows) {
//       while (row.length < headers.length) {
//         row.add("");
//       }
//       sheetObject.appendRow(row);
//     }

//     var fileBytes = excel.encode();
//     if (fileBytes != null) {
//       Directory directory = await getApplicationDocumentsDirectory();
//       String filePath = "${directory.path}/exported_data.xlsx";
//       File file = File(filePath)
//         ..createSync(recursive: true)
//         ..writeAsBytesSync(fileBytes);
//       print("✅ Excel file saved at: $filePath");
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     List<P320BP12BALANCEDATALOGclass> _datain = widget.data ?? [];
//     return Scaffold(
//       appBar: AppBar(title: const Text("Export Excel")),
//       body: Center(
//         child: IconButton(
//           icon: const Icon(Icons.file_download, size: 40, color: Colors.blue),
//           onPressed: () async {
//             await exportToExcel(myData);
//             ScaffoldMessenger.of(context).showSnackBar(
//               const SnackBar(
//                   content: Text("📂 Excel file exported successfully!")),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

 
// // class ExportExcelScreen extends StatelessWidget {
// //   final List<List<String>> myData = [
// //     [
// //       "2025-03-06 10:00",
// //       "1.1",
// //       "1.2",
// //       "1.3",
// //       "1.2",
// //       "50.1",
// //       "50.2",
// //       "50.3",
// //       "50.2",
// //       "100.1",
// //       "100.2",
// //       "100.3",
// //       "100.2",
// //       "200.1",
// //       "200.2",
// //       "200.3",
// //       "200.2",
// //       "User1",
// //       "Admin1"
// //     ],
// //   ];

// //   @override


// // void main() {
// //   runApp(MaterialApp(
// //     home: ExportExcelScreen(),
// //   ));
// // }
