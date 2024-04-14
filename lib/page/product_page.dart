import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 6,
          mainAxisSpacing: 6,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.blueGrey,
            child: Center(
              child: Text(
                'Product $index',
                style: const TextStyle(color: Colors.white),
              ),
            ),
          );
        },
        itemCount: 10, 
      ),
    );
  }
}