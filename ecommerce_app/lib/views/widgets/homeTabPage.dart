import 'package:ecommerce_app/models/product_item_model.dart';
import 'package:ecommerce_app/views/widgets/carouselSlider.dart';
import 'package:ecommerce_app/views/widgets/home_carousel_slider.dart';
import 'package:ecommerce_app/views/widgets/product_item.dart';
import 'package:flutter/material.dart';

class homeTabPage extends StatefulWidget {
  const homeTabPage({super.key});
  @override
  State<StatefulWidget> createState() => _homeTabPageState();
}

class _homeTabPageState extends State<homeTabPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6.0),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
              child: const HomeCarouselSlider(),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'New Arrivals',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('See All'),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            GridView.builder(
              itemCount: dummyProducts.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {},
                  child: ProductItem(
                    productItem: dummyProducts[index],
                  ),
                );
              },
            ),
            const SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }
}
