import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled5/screens/detail_screen.dart';

class SecondHomeWdget extends StatefulWidget {
  const SecondHomeWdget({Key? key, this.txt}) : super(key: key);

  final String? txt;

  @override
  _SecondHomeWdgetState createState() => _SecondHomeWdgetState();
}

class _SecondHomeWdgetState extends State<SecondHomeWdget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0, bottom: 10),
      child: SizedBox(
        height: 180,
        width: double.infinity,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          margin: EdgeInsets.only(left: 10, right: 10),
          elevation: 10,
          child: Column(
            children: [
              Container(
                height: 50,
                width: double.infinity,
                color: Colors.blueAccent,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    widget.txt!,
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ),
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      width: double.infinity,
                      height: 100,
                      child: ListTile(
                        onTap: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) => DetailScreen()));
                        },
                        title: Text(
                          '00',
                          style: TextStyle(color: Colors.blueAccent),
                        ),
                        subtitle: Text(widget.txt!),
                        trailing: CircleAvatar(
                          backgroundColor: Colors.redAccent,
                        ),
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
