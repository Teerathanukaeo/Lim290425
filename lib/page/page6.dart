import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/BlocEvent/01-Getbalancevalue.dart';

import '../bloc/BlocEvent/06-01-P2BALANCEBODYNVC.dart';
import '../bloc/BlocEvent/06-02-P2BALANCEBODYNVCGETSET.dart';
import '../bloc/BlocEvent/06-03-P2BALANCEBODYNVCgetgraph.dart';
import '../bloc/cubit/POP-searchHistoryChartData.dart';
import '../model/model.dart';
import 'P6BALANCEBODYNVC/P6BALANCEBODYNVC.dart';

class Page6 extends StatelessWidget {
  const Page6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page6BlocTableBody();
  }
}

class Page6BlocTableBody extends StatelessWidget {
  const Page6BlocTableBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => Getbalancevalue_Bloc(),
        child: BlocBuilder<Getbalancevalue_Bloc, String>(
          builder: (context, value) {
            return Page6BlocTableBodySET(
              value: value,
            );
          },
        ));
  }
}

class Page6BlocTableBodySET extends StatelessWidget {
  Page6BlocTableBodySET({
    Key? key,
    this.value,
  }) : super(key: key);
  String? value;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => P6BALANCEBODYNVC_Bloc(),
        child: BlocBuilder<P6BALANCEBODYNVC_Bloc, String>(
          builder: (context, status) {
            return Page6BlocTableBodySETGETSET(
              value: value,
              status: status,
            );
          },
        ));
  }
}

class Page6BlocTableBodySETGETSET extends StatelessWidget {
  Page6BlocTableBodySETGETSET({
    Key? key,
    this.value,
    this.status,
  }) : super(key: key);
  String? value;
  String? status;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => P6BALANCEBODYNVCGETSET_Bloc(),
        child: BlocBuilder<P6BALANCEBODYNVCGETSET_Bloc,
            P6BALANCEBODYNVCGETSETCLASS>(
          builder: (context, SET) {
            return Page6BlocTableBodygetgraph(
              value: value,
              SET: SET,
            );
          },
        ));
  }
}

//P6BALANCEBODYNVC01getgraph_Bloc

class Page6BlocTableBodygetgraph extends StatelessWidget {
  Page6BlocTableBodygetgraph({
    Key? key,
    this.value,
    this.status,
    this.SET,
  }) : super(key: key);
  String? value;
  String? status;
  P6BALANCEBODYNVCGETSETCLASS? SET;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => P6BALANCEBODYNVCgetgraph_Bloc(),
        child:
            BlocBuilder<P6BALANCEBODYNVCgetgraph_Bloc, List<HistoryChartModel>>(
          builder: (context, historyChartDatain) {
            return Page6Body(
              value: value,
              SET: SET,
              historyChartDatain: historyChartDatain,
            );
          },
        ));
  }
}

class Page6Body extends StatelessWidget {
  Page6Body({
    Key? key,
    this.value,
    this.SET,
    this.status,
    this.historyChartDatain,
  }) : super(key: key);
  String? value;
  String? status;
  P6BALANCEBODYNVCGETSETCLASS? SET;
  List<HistoryChartModel>? historyChartDatain;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: P6BALANCEBODYNVC(
        value: value,
        SET: SET,
        status: status,
        historyChartDatain: historyChartDatain,
      ),
    );
  }
}
