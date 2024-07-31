import 'package:ecommerce_app/models/product_item_model.dart';
import 'package:ecommerce_app/views/widgets/product_item.dart';
import 'package:flutter/material.dart';

class favouritePage extends StatefulWidget {
  const favouritePage({super.key});
  @override
  State<StatefulWidget> createState() => _favouritePageState();
}

class _favouritePageState extends State<favouritePage> {
  void update1() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GridView.builder(
          itemCount: dummyFavorites.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                setState(() {});
              },
              child: ProductItem(
                productItem: dummyFavorites[index],
              ),
            );
          },
        ),
        Spacer(),
        TextButton(
            onPressed: () {
              update1();
            },
            child: Icon(
              Icons.refresh,
              color: Colors.black,
              size: 35,
            )),
        SizedBox(
          height: 80,
        )
      ],
    );
  }
}
