import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  List<String> productName = [
    'Mangoe',
    'Orange',
    'Grapes',
    'Banana',
    'Chery',
    'Peach',
    'Mixed Fruit',
  ];
  List<String> productUnit = [
    'KG',
    'Dozen',
    'KG',
    'Dozen',
    'KG',
    'KG',
    'KG',
  ];
  List<int> productPrice = [15, 25, 10, 40, 70, 40, 30];
  List<String> productImage = [
    "Assets/mangoe.png",
    "Assets/orange.png",
    "Assets/grapes.png",
    "Assets/banana.png",
    "Assets/cherry.png",
    "Assets/peach.png",
    "Assets/mxfruit.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: const Text("All Products"),
          centerTitle: true,
          actions: const [
            Center(
              child: badges.Badge(
                badgeContent: Text(
                  "0",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                child: Icon(Icons.shopping_bag_outlined),
              ),
            ),
            SizedBox(
              width: 18,
            )
          ],
        ),
        body: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: productName.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Image(
                                    height: 100,
                                    width: 100,
                                    image: AssetImage(
                                        productImage[index].toString()),
                                  ),
                                  const SizedBox(
                                    width: 9,
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          productName[index].toString(),
                                          style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          // ignore: prefer_interpolation_to_compose_strings
                                          productUnit[index].toString() +
                                              " " +
                                              r"$" +
                                              productPrice[index].toString(),
                                          style: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                            color: Color.fromARGB(221, 80, 79, 79),
                                            fontStyle: FontStyle.italic
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Align(
                                          alignment: Alignment.centerRight
                                          ,
                                          child: Container(
                                            height: 35,
                                            width: 100,
                                            decoration:  BoxDecoration(
                                              color: Colors.green,
                                              borderRadius:BorderRadius.circular(5)
                                            ),
                                            child: const Center(
                                              child: Text(
                                                "Add To Cart",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    }))
          ],
        ));
  }
}
