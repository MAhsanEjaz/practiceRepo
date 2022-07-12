import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled5/providers/fake_providefr.dart';
import 'package:untitled5/screens/fake_detail_screen.dart';

class ProductwrapScreen extends StatefulWidget {
  @override
  _ProductwrapScreenState createState() => _ProductwrapScreenState();
}

class _ProductwrapScreenState extends State<ProductwrapScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<FakeProvider>(builder: (context, data, _) {
      List<Widget> widget1 = [];
      data.model!.forEach((element) {
        widget1.add(SizedBox(
          width: MediaQuery.of(context).size.width / 2.0,
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) => FakeDetailScreen(
                            fakeStoreModel: element,
                          )));
            },
            child: Card(
              elevation: 4.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 220,
                    width: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(element.image.toString()))),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 5),
                    child: Text(element.category.toString().toUpperCase(),
                        style: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                  )
                ],
              ),
            ),
          ),
        ));
      });
      return Wrap(
        children: widget1,
      );
    });
  }
}
