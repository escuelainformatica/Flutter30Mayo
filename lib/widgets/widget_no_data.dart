import 'package:flutter/cupertino.dart';

class WidgetNoData extends StatefulWidget {
  String mensaje;

  WidgetNoData({Key? key,required this.mensaje}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _WidgetNoData();
  }
}
class _WidgetNoData extends State<WidgetNoData> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
            "nodata.png",
          width: 50,
          height: 50,

        ),
        SizedBox(
          height: 20,
        ),
        Text(this.widget.mensaje),


      ],
    );
  }

}