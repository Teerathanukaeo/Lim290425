import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/BlocEvent/LoginEvent.dart';
import '../../data/global.dart';
import '../../mainBody.dart';
import '../../page/page1.dart';
import '../../page/page100.dart';
import '../../page/page2.dart';
import '../../page/page200.dart';
import '../../page/page3.dart';
import '../../page/page300.dart';
import '../../page/page320.dart';
import '../../page/page4.dart';
import '../../page/page5.dart';
import '../../page/page99.dart';
import 'sub_widget.dart';

late BuildContext MenuContext;

class MainMenu extends StatefulWidget {
  MainMenu({Key? key}) : super(key: key);

  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    MenuContext = context;
    //---------------------------------------------------------------

    return Container(
      height: (MediaQuery.of(context).size.height),
      // width: MediaQuery.of(context).size.width,
      width: 200,
      color: const Color(0xff0b1327),
      //color: Colors.red,
      child: ListView(
        children: [
          Center(
            child: Data_Menu_mainmenu(),
          )
        ],
      ),
    );
  }
}

class Data_Menu_mainmenu extends StatelessWidget {
  //const Data_Menu_mainmenu({Key? key},this.pagein) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center, //Axis-Y
      crossAxisAlignment: CrossAxisAlignment.center, //Axis-X

      children: [
        const SizedBox(
          height: 20,
        ),
        Align(
            alignment: Alignment.center,
            child: Container(
                height: 40,
                width: 180,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsetsDirectional.all(1),
                  child: Container(
                    height: 35,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage("assets/images/logo_tpk.png"),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                ))),

        if (USERDATA.Branch == "BANGPOO") ...[
          menu_normal(
            name: "SELECT INS BP12",
            page: Page99(),
            Lv: 1,
          ),
        ] else ...[
          menu_normal(
            name: "SELECT INS HES",
            page: Page100(),
            Lv: 1,
          ),
        ],

        menu_normal(
          name: "UPLOAD LIMX",
          page: Page200(),
          Lv: 1,
        ),
        menu_normal(
          name: "CAL INSTRUMENT",
          page: Page300(),
          Lv: 1,
        ),
        menu_normal(
          name: "CAL DATALOG",
          page: Page320(),
          Lv: 1,
        ),

        // menu_normal(
        //   name: "BALANCE CHM-01",
        //   page: Page1(),
        //   Lv: 1,
        // ),
        // menu_normal(
        //   name: "BALANCE ST-02",
        //   page: Page1(),
        //   Lv: 1,
        // ),
        // menu_normal(
        //   name: "BALANCE 620-03",
        //   page: Page1(),
        //   Lv: 1,
        // ),
        // menu_normal(
        //   name: "Page4",
        //   page: Page4(),
        //   Lv: 1,
        // ),
        // menu_normal(
        //   name: "Page5",
        //   page: Page5(),
        //   Lv: 5,
        // ),
        menu_logout(
          name: "Logout",
        ),
        const Divider(
          color: Color(0x4dffffff),
          height: 12,
        ),
      ],
    );
  }
}

class Logomenu extends StatelessWidget {
  const Logomenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 80,
      color: Colors.white,

      child: Padding(
        padding: const EdgeInsetsDirectional.all(1),
        child: Container(
          height: 35,
          decoration: const BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              image: AssetImage("assets/images/logo_tpk.png"),
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
      ),

      //color: Colors.white,
    );
  }
}

class menu_logout extends StatelessWidget {
  menu_logout({Key? key, this.name}) : super(key: key);
  String? name;

  @override
  Widget build(BuildContext context) {
    String _name = name ?? "";

    return InkWell(
      onTap: () {
        LoginContext.read<Login_Bloc>().add(Logout());
        // BlocProvider.of<SwPageCubit>(context).togglePage(page);
        // CuPage = page;
        // CuPageLV = Lv;
        // MainBodyContext.read<ChangePage_Bloc>().add(ChangePage());
      },
      child: Container(
        //color: Colors.blue,
        height: 50,
        child: Row(
          children: [
            SizedBox(
              width: 15,
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 24,
                width: 24,
                child: const Icon(
                  Icons.logout,
                  color: Colors.white,
                  // size: 30.0,
                ),
                // decoration: BoxDecoration(
                //   color: Colors.redAccent.shade400,

                //   // image: DecorationImage(
                //   //   image: AssetImage(""),
                //   //   fit: BoxFit.fitWidth,
                //   // ),
                //   //borderRadius: BorderRadius.all(Radius.circular(24.0)),
                // ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "   " + _name,
                style: const TextStyle(
                  fontFamily: 'Mitr',
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
