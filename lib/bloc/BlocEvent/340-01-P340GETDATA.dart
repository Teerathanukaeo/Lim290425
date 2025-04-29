// ignore_for_file: camel_case_types, non_constant_identifier_names, avoid_print, use_build_context_synchronously, file_names

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:lim_app/page/P310BP12BALANCE01CAL/P310BP12BALANCE01CALMAIN.dart';
import '../../data/global.dart';
import '../../page/P300CAL/P300CALVAR.dart';
import '../../page/P310BP12BALANCE01CAL/P310BP12BALANCE01CALVAR.dart';
import '../../page/P320CALDATALOG/P320CALDATALOGVAR.dart';
import '../../widget/common/Loading.dart';

//-------------------------------------------------

abstract class P340BP_EXPORT_EXCEL_Event {}

class P340BP_EXPORT_EXCEL_GET extends P340BP_EXPORT_EXCEL_Event {}

class P340BP_EXPORT_EXCEL_GET2 extends P340BP_EXPORT_EXCEL_Event {}

class P340BP_EXPORT_EXCEL_GET3 extends P340BP_EXPORT_EXCEL_Event {}

class P340BP_EXPORT_EXCEL_FLUSH extends P340BP_EXPORT_EXCEL_Event {}

class P340BP_EXPORT_EXCEL_Bloc
    extends Bloc<P340BP_EXPORT_EXCEL_Event, List<P340BP_EXPORT_EXCELclass>> {
  P340BP_EXPORT_EXCEL_Bloc() : super([]) {
    on<P340BP_EXPORT_EXCEL_GET>((event, emit) {
      return _P340BP_EXPORT_EXCEL_GET([], emit);
    });

    on<P340BP_EXPORT_EXCEL_GET2>((event, emit) {
      return _P340BP_EXPORT_EXCEL_GET2([], emit);
    });
    on<P340BP_EXPORT_EXCEL_GET3>((event, emit) {
      return _P340BP_EXPORT_EXCEL_GET3([], emit);
    });
    on<P340BP_EXPORT_EXCEL_FLUSH>((event, emit) {
      return _P340BP_EXPORT_EXCEL_FLUSH([], emit);
    });
  }

  Future<void> _P340BP_EXPORT_EXCEL_GET(List<P340BP_EXPORT_EXCELclass> toAdd,
      Emitter<List<P340BP_EXPORT_EXCELclass>> emit) async {
    List<P340BP_EXPORT_EXCELclass> output = [];
    //-------------------------------------------------------------------------------------
    final response = await Dio().post(
      "http://172.23.10.51:2600/GETDATAEXPORTEXCEL",
      data: {
        "DateTime": P300CALVAR.timefornodered,
        "InstrumentName": P320CALDATALOGVAR.InstrumentName,
      },
    );
    var input = [];
    if (response.statusCode == 200) {
      print(response.statusCode);
      // print(response.data);
      var databuff = response.data;
      input = databuff;

      // var input = dummyCusService;

      List<P340BP_EXPORT_EXCELclass> outputdata = input.map((data) {
        return P340BP_EXPORT_EXCELclass(
          DATETIME: savenull(data['DateTime']),
          CAL_1G_NO1: savenull(data['Cal_1g_No1']),
          CAL_1G_NO2: savenull(data['Cal_1g_No2']),
          CAL_1G_NO3: savenull(data['Cal_1g_No3']),
          CAL_1G_AVERAGE: savenull(data['Cal_1g_Average']),
          CAL_50G_NO1: savenull(data['Cal_50g_No1']),
          CAL_50G_NO2: savenull(data['Cal_50g_No2']),
          CAL_50G_NO3: savenull(data['Cal_50g_No3']),
          CAL_50G_AVERAGE: savenull(data['Cal_50g_Average']),
          CAL_100G_NO1: savenull(data['Cal_100g_No1']),
          CAL_100G_NO2: savenull(data['Cal_100g_No2']),
          CAL_100G_NO3: savenull(data['Cal_100g_No3']),
          CAL_100G_AVERAGE: savenull(data['Cal_100g_Average']),
          CAL_200G_NO1: savenull(data['Cal_200g_No1']),
          CAL_200G_NO2: savenull(data['Cal_200g_No2']),
          CAL_200G_NO3: savenull(data['Cal_200g_No3']),
          CAL_200G_AVERAGE: savenull(data['Cal_200g_Average']),
          CHECK_BY: savenull(data['Check_By']),
          APPROVE_BY: savenull(data['Approve_By']),
        );
      }).toList();

      output = outputdata;
      emit(output);
    } else {
      output = [];
      emit(output);
    }
  }

  Future<void> _P340BP_EXPORT_EXCEL_GET2(List<P340BP_EXPORT_EXCELclass> toAdd,
      Emitter<List<P340BP_EXPORT_EXCELclass>> emit) async {
    // List<P340BP_EXPORT_EXCELclass> output = [];
    //-------------------------------------------------------------------------------------
    // var input = dummydatainput2;

    // List<P340BP_EXPORT_EXCELclass> outputdata = input
    //     .where((data) =>
    //         data['location'] == 'ESIE1' &&
    //         data['plant'] == 'YES' &&
    //         data['step01'] == 'YES')
    //     .map((data) {
    //   return P340BP_EXPORT_EXCELclass(
    //     PLANT: savenull(data['plant']),
    //     ORDER: savenull(data['order']),
    //     MAT: savenull(data['mat']),
    //     LOCATION: savenull(data['location']),
    //     LOT: savenull(data['lot']),
    //     CUSTOMER: savenull(data['customer']),
    //     PARTNO: savenull(data['partno']),
    //     PARTNAME: savenull(data['partname']),
    //     STEP01: savenull(data['step1']),
    //     STEP02: savenull(data['step2']),
    //     STEP03: savenull(data['step3']),
    //     STEP04: savenull(data['step4']),
    //     STEP05: savenull(data['step5']),
    //     STEP06: savenull(data['step6']),
    //     STEP07: savenull(data['step7']),
    //     STEP08: savenull(data['step8']),
    //     STEP09: savenull(data['step9']),
    //   );
    // }).toList();

    // output = outputdata;
    // emit(output);
  }

  Future<void> _P340BP_EXPORT_EXCEL_GET3(List<P340BP_EXPORT_EXCELclass> toAdd,
      Emitter<List<P340BP_EXPORT_EXCELclass>> emit) async {
    // List<P340BP_EXPORT_EXCELclass> output = [];
    //-------------------------------------------------------------------------------------
    // List<P340BP_EXPORT_EXCELclass> datadummy = [
    //   P340BP_EXPORT_EXCELclass(
    //     PLANT: "PH PO:1234",
    //     STEP01: "YES",
    //     STEP02: "YES",
    //     STEP03: "YES",
    //   ),
    //   P340BP_EXPORT_EXCELclass(
    //     PLANT: "PH PO:5555",
    //     STEP01: "YES",
    //     STEP02: "YES",
    //     STEP03: "YES",
    //     STEP04: "YES",
    //   ),
    //   P340BP_EXPORT_EXCELclass(
    //     PLANT: "PH PO:5556",
    //     STEP01: "YES",
    //     STEP02: "YES",
    //   ),
    //   P340BP_EXPORT_EXCELclass(
    //     PLANT: "PH PO:9999",
    //   ),
    // ];

    // //-------------------------------------------------------------------------------------
    // output = datadummy;
    // emit(output);
  }

  Future<void> _P340BP_EXPORT_EXCEL_FLUSH(List<P340BP_EXPORT_EXCELclass> toAdd,
      Emitter<List<P340BP_EXPORT_EXCELclass>> emit) async {
    List<P340BP_EXPORT_EXCELclass> output = [];
    emit(output);
  }
}

class P340BP_EXPORT_EXCELclass {
  P340BP_EXPORT_EXCELclass(
      {this.DATETIME = '',
      this.CAL_1G_NO1 = '',
      this.CAL_1G_NO2 = '',
      this.CAL_1G_NO3 = '',
      this.CAL_1G_AVERAGE = '',
      this.CAL_50G_NO1 = '',
      this.CAL_50G_NO2 = '',
      this.CAL_50G_NO3 = '',
      this.CAL_50G_AVERAGE = '',
      this.CAL_100G_NO1 = '',
      this.CAL_100G_NO2 = '',
      this.CAL_100G_NO3 = '',
      this.CAL_100G_AVERAGE = '',
      this.CAL_200G_NO1 = '',
      this.CAL_200G_NO2 = '',
      this.CAL_200G_NO3 = '',
      this.CAL_200G_AVERAGE = '',
      this.CHECK_BY = '',
      this.APPROVE_BY = ''});

  String DATETIME;
  String CAL_1G_NO1;
  String CAL_1G_NO2;
  String CAL_1G_NO3;
  String CAL_1G_AVERAGE;
  String CAL_50G_NO1;
  String CAL_50G_NO2;
  String CAL_50G_NO3;
  String CAL_50G_AVERAGE;
  String CAL_100G_NO1;
  String CAL_100G_NO2;
  String CAL_100G_NO3;
  String CAL_100G_AVERAGE;
  String CAL_200G_NO1;
  String CAL_200G_NO2;
  String CAL_200G_NO3;
  String CAL_200G_AVERAGE;
  String CHECK_BY;
  String APPROVE_BY;
}

String savenull(input) {
  String output = '';
  if (input != null) {
    output = input.toString();
  }
  return output;
}

String formatDate(String? date) {
  if (date == null || date.isEmpty) return '';
  if (date == 'CLOSE LINE') return 'CLOSE LINE';
  try {
    DateTime parsedDate = DateFormat('dd/MM/yyyy').parse(date);
    return DateFormat('dd-MMM').format(parsedDate);
  } catch (e) {
    return '';
  }
}
