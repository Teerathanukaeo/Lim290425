import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lim_app/page/P300CAL/P300CALVAR.dart';
import 'package:lim_app/page/P310BP12BALANCE01CAL/P310BP12BALANCE01CALVAR.dart';

import '../../bloc/BlocEvent/300-01-P300GETDATA.dart';
import '../../bloc/BlocEvent/310-01-P310SENTDATA.dart';
import '../../bloc/BlocEvent/ChangePageEvent.dart';
import '../../data/global.dart';
import '../../mainBody.dart';
import '../P311CAL/P311BP12BALANCE03CALVAR.dart';
import '../page1.dart';
import '../page11.dart';
import '../page21.dart';
import '../page31.dart';
import '../page310.dart';
import '../page311.dart';
import '../page41.dart';
import '../page51.dart';
import '../page56.dart';

late BuildContext P300CALMAINcontext;

class P300CALMAIN extends StatefulWidget {
  P300CALMAIN({
    super.key,
    this.data,
  });
  List<P300BP12BALANCEGETCALDATAclass>? data;

  @override
  State<P300CALMAIN> createState() => _P300CALMAINState();
}

class _P300CALMAINState extends State<P300CALMAIN> {
  @override
  void initState() {
    super.initState();
    context
        .read<P300BP12BALANCEGETCALDATA_Bloc>()
        .add(P300BP12BALANCEGETCALDATA_Bloc_GET());
  }

  @override
  Widget build(BuildContext context) {
    P300CALMAINcontext = context;
    List<P300BP12BALANCEGETCALDATAclass> _datain = widget.data ?? [];
    return Row(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: P300CALVAR.Refresh.isNotEmpty &&
                            P300CALVAR.Refresh == '3' ||
                        P300CALVAR.Refresh.isNotEmpty &&
                            P300CALVAR.Refresh == '1'
                    ? null // ปิดการกดถ้าเงื่อนไขเป็นจริง
                    : () {
                        USERDATA.INSMASTER = 'BP12BALANCE01';
                        P310BP12BALANCE01CALVAR.InstrumentName = 'BA01';
                        showDialog(
                          context: MainBodyContext,
                          builder: (BuildContext context) {
                            return Dialog(
                                child: SizedBox(
                              height: 650,
                              width: 650,
                              child: Page310(),
                            ));
                          },
                        );
                      },
                child: Container(
                  color: P300CALVAR.Refresh.isNotEmpty &&
                              P300CALVAR.Refresh == '3' ||
                          P300CALVAR.Refresh.isNotEmpty &&
                              P300CALVAR.Refresh == '1'
                      ? Colors.green
                      : Colors.transparent, // เปลี่ยนสีพื้นหลัง
                  child: Row(
                    children: [
                      Container(
                        height: 78,
                        width: 128.0,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/BP12BA01.jpg"),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 50,
                        width: 125,
                        color: Colors.blue,
                        child: const Center(
                          child: Text("T 071-002"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: P300CALVAR.Refresh.isNotEmpty &&
                            P300CALVAR.Refresh == '3' ||
                        P300CALVAR.Refresh.isNotEmpty &&
                            P300CALVAR.Refresh == '2'
                    ? null // ปิดการกดถ้าเงื่อนไขเป็นจริง
                    : () {
                        USERDATA.INSMASTER = 'BP12BALANCE03';
                        P311BP12BALANCE03CALVAR.InstrumentName = 'BA03';
                        showDialog(
                          context: MainBodyContext,
                          builder: (BuildContext context) {
                            return Dialog(
                                child: SizedBox(
                              height: 650,
                              width: 650,
                              child: Page311(),
                            ));
                          },
                        );
                      },
                child: Container(
                  color: P300CALVAR.Refresh.isNotEmpty &&
                              P300CALVAR.Refresh == '3' ||
                          P300CALVAR.Refresh.isNotEmpty &&
                              P300CALVAR.Refresh == '2'
                      ? Colors.green
                      : Colors.transparent, // เปลี่ยนสีพื้นหลัง
                  child: Row(
                    children: [
                      Container(
                        height: 78,
                        width: 128.0,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/BP12BA03.jpg"),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 50,
                        width: 125,
                        color: Colors.blue,
                        child: const Center(
                          child: Text("CTC-BAL-002"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
