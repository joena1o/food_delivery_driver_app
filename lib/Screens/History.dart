import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Timeline.tileBuilder(
      builder: TimelineTileBuilder.fromStyle(
        contentsAlign: ContentsAlign.alternating,
        contentsBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 44.0, horizontal: 10),
          child: Text('Delivered to items to Hyefur Jonathan,\n 3:00pm $index'),
        ),
        itemCount: 10,
      ),
    );


  }
}
