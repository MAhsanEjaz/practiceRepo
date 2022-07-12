import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled5/model/fake_model.dart';
import 'package:untitled5/services/add_to_cart_service.dart';

class FakeDetailScreen extends StatefulWidget {
  FakeStoreModel? fakeStoreModel;

  FakeDetailScreen({this.fakeStoreModel});

  @override
  _FakeDetailScreenState createState() => _FakeDetailScreenState();
}

class _FakeDetailScreenState extends State<FakeDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(''),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 330,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image:
                        NetworkImage(widget.fakeStoreModel!.image.toString()),
                    fit: BoxFit.fitHeight)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
            child: Text(widget.fakeStoreModel!.title.toString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              widget.fakeStoreModel!.description.toString(),
              style: TextStyle(fontSize: 16),
            ),
          ),
          TextButton(
              onPressed: () {
                AddToCartService.cartService(
                    context: context, fakeStoreModel: widget.fakeStoreModel);
              },
              child: Text('Cart'))
        ],
      ),
    );
  }
}
