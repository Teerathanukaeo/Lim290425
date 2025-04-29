import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/BlocEvent/ChangePageEvent.dart';
import '../../data/global.dart';
import '../../mainBody.dart';
import '../page1.dart';
import '../page11.dart';
import '../page21.dart';
import '../page31.dart';
import '../page41.dart';
import '../page51.dart';
import '../page56.dart';

class P302CALMAIN extends StatefulWidget {
  const P302CALMAIN({super.key});

  @override
  State<P302CALMAIN> createState() => _P302CALMAINState();
}

class _P302CALMAINState extends State<P302CALMAIN> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    USERDATA.INSMASTER = '';
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  USERDATA.INSMASTER = 'BP12BALANCE01';
                  showDialog(
                    context: MainBodyContext,
                    builder: (BuildContext context) {
                      return AlertDialog(
                          title: Text('Cal Instrument'),
                          content: SizedBox(
                            height: 300,
                            width: 300,
                          ));
                    },
                  );
                },
                child: Row(
                  children: [
                    Container(
                      height: 78,
                      width: 128.0,
                      decoration: const BoxDecoration(
                        color: Colors.white,
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
                      // color: Colors.red,
                      child: const Center(
                        child: Text("BA01"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  USERDATA.INSMASTER = 'BP12BALANCE01';
                  showDialog(
                    context: MainBodyContext,
                    builder: (BuildContext context) {
                      return AlertDialog(
                          title: Text('Cal Instrument'),
                          content: SizedBox(
                            height: 300,
                            width: 300,
                          ));
                    },
                  );
                },
                child: Row(
                  children: [
                    Container(
                      height: 78,
                      width: 128.0,
                      decoration: const BoxDecoration(
                        // color: Colors.red,
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
                        child: Text("BA03"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
