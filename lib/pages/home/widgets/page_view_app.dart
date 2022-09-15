import 'package:flutter/material.dart';
import 'package:teste_flutter/pages/home/widgets/card_app.dart';

class PageViewApp extends StatelessWidget {
  const PageViewApp({super.key, required this.top, required this.onChanged});

  final double top;
  final ValueChanged<int> onChanged;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      height: MediaQuery.of(context).size.height * .45,
      left: 0,
      right: 0,
      child: PageView(
        onPageChanged: onChanged,
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          CardApp(),
          CardApp(),
          CardApp(),
        ],
      ),
    );
  }
}
