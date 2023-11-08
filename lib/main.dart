import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_project/cart_provider.dart';
import 'package:shopping_project/product_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CartProvider(),
      child: Builder(builder: (BuildContext context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: ProductListScreen(),
        );
      }),
    );
  }
}
