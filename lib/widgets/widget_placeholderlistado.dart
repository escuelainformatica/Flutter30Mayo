import 'package:flutter/material.dart';
import 'package:mayo30/widgets/widget_placeholder_listado_item.dart';

class WidgetPlaceholderlistado extends StatefulWidget {
  const WidgetPlaceholderlistado({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _WidgetPlaceholderlistado();
  }

}
class _WidgetPlaceholderlistado extends State<WidgetPlaceholderlistado> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const WidgetPlaceholderListadoItem(),
        const WidgetPlaceholderListadoItem(),
        const WidgetPlaceholderListadoItem(),
        const WidgetPlaceholderListadoItem(),
        const WidgetPlaceholderListadoItem(),
        const WidgetPlaceholderListadoItem(),
        const WidgetPlaceholderListadoItem(),
        const WidgetPlaceholderListadoItem(),
      ],
    );
  }

}