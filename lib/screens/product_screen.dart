import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled5/providers/product_provider.dart';
import 'package:untitled5/services/product_service.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  productHandler() {
    ProductService().productService(context: context);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    productHandler();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ProductProvider>(builder: (context, data, _) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Products'),
        ),
        body: SafeArea(
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: data.productProvider!.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(data.productProvider![index].title.toString()),
                          Text(data.productProvider![index].description
                              .toString()),
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ),
      );
    });
  }
}
