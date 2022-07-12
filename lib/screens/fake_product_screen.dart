import 'package:flutter/material.dart';
import 'package:untitled5/screens/product_wrap_screen.dart';
import 'package:untitled5/services/fake_products_service.dart';

class FakeProductScreen extends StatefulWidget {
  const FakeProductScreen({Key? key}) : super(key: key);

  @override
  _FakeProductScreenState createState() => _FakeProductScreenState();
}

class _FakeProductScreenState extends State<FakeProductScreen> {
  final screens = [
    SafeArea(
      child: SingleChildScrollView(child: ProductwrapScreen()),
    ),
    Column(
      children: [
        Text('sdlkj')
      ],
    )
  ];

  getProductHandler() {
    FakeProductService().fakeProductsService(context: context);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getProductHandler();
  }

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            'Product',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: screens[index],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (value) {
            index = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: ''),
          ],
        ));
  }
}
