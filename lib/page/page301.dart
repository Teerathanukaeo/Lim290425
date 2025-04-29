import 'package:flutter/material.dart';
import 'package:lim_app/page/P300CAL/P300CALMAIN.dart';
import 'package:lim_app/page/P301CAL/P301CALMAIN.dart';
import 'P301CAL/P301CALMAIN.dart';

class Page301 extends StatelessWidget {
  const Page301({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page301Body();
  }
}

class Page301Body extends StatelessWidget {
  const Page301Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return P301CALMAIN();
  }
}
