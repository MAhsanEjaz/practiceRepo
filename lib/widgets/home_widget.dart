import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key, this.txt, this.color}) : super(key: key);

  final String? txt;
  final Color? color;

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.only(left: 5.0, right: 5, top: 15),
            child: SizedBox(
              width: 170,
              height: 60,
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.black12),
                    borderRadius: BorderRadius.circular(100)),
                color: (widget.color),
                child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      widget.txt!,
                      style: const TextStyle(fontSize: 12, color: Colors.white),
                    )),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
