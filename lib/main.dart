import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled5/providers/cart_provider.dart';
import 'package:untitled5/providers/fake_providefr.dart';
import 'package:untitled5/providers/product_provider.dart';
import 'package:untitled5/screens/bottom_screen.dart';
import 'package:untitled5/screens/fake_product_screen.dart';
import 'package:untitled5/screens/home_screen.dart';
import 'package:untitled5/screens/pdf_example_screen.dart';
import 'package:untitled5/screens/product_screen.dart';
import 'package:untitled5/screens/signature_practice.dart';

void main() {
  runApp(neeApp());
}

class neeApp extends StatefulWidget {
  const neeApp({Key? key}) : super(key: key);

  @override
  _neeAppState createState() => _neeAppState();
}

class _neeAppState extends State<neeApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ProductProvider()),
        ChangeNotifierProvider(create: (context) => FakeProvider()),
        ChangeNotifierProvider(create: (context) => CartProvider()),
      ],
      child: MaterialApp(
        theme: ThemeData(
            useMaterial3: true,
            appBarTheme:
                AppBarTheme(iconTheme: IconThemeData(color: Colors.black))),
        // home: HomeScreen(),
        // home: BottomScreen(),
        // home: SignaturePractice(),
        home: PdfExampleScreen(),
        // home: FakeProductScreen(),
        // home: ProductScreen(),
      ),
    );
  }
}
