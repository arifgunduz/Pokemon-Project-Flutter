import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_project/constat/constats.dart';
import 'package:pokedex_project/constat/ui_helper.dart';

class AppTitle extends StatelessWidget {
  AppTitle({Key? key}) : super(key: key);
 final  String pokeballImageUrl = 'images/pokeball.png';
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: UIHelper.getAppTitleWidgetHeight(),
      child: Stack(
        children: [
          Padding(
            padding: UIHelper.getDefaultPadding(),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  Constants.title,
                  style: Constants.getTitleTextStyle(),
                )),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Image.asset(
              pokeballImageUrl,
              width: ScreenUtil().orientation == Orientation.portrait
                  ? 0.2.sh
                  : 0.2.sw,
              fit: BoxFit.fitWidth,
            ),
          )
        ],
      ),
    );
  }
}
