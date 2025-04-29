import 'package:flutter/material.dart';
import 'package:lim_app/page/P300CAL/P300CALMAIN.dart';
import 'package:lim_app/page/P301CAL/P301CALMAIN.dart';

import 'P302CAL/P302CALMAIN.dart';

class Page302 extends StatelessWidget {
  const Page302({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Page302Body();
  }
}

class Page302Body extends StatelessWidget {
  const Page302Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return P302CALMAIN();
  }
}
