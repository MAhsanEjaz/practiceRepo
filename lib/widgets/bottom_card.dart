import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomCard extends StatefulWidget {
  Function()? onTap;
  IconData? iconData;
  IconData? secondIconData;
  bool color;
  String? text;

  BottomCard(
      {this.iconData,
      this.onTap,
      this.text,
      required this.color,
      this.secondIconData});

  @override
  _BottomCardState createState() => _BottomCardState();
}

class _BottomCardState extends State<BottomCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: AnimatedContainer(
            width: 70,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color:
                    widget.color ? Colors.blue.shade100 : Colors.transparent),
            duration: Duration(seconds: 1),
            child: IconButton(
                onPressed: (widget.onTap),
                icon: widget.color
                    ? Icon(
                        widget.iconData,
                      )
                    : Icon(widget.secondIconData)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Text(widget.text!),
        ),
      ],
    );
  }
}
