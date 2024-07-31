import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_app/models/product_item_model.dart';
import 'package:ecommerce_app/utils/appColors.dart';
import 'package:flutter/material.dart';

class cartPage extends StatefulWidget {
  const cartPage({super.key});
  @override
  State<StatefulWidget> createState() => _cartPageState();
}

class _cartPageState extends State<cartPage> {
  double totalPrice = 0, subTotal = 0;

  void updateTotalPrice(double priceChange) {
    setState(() {
      totalPrice += priceChange;
      subTotal += priceChange;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: List.generate(dummyProducts.length, (index) {
                  return ProductItem(
                    productItem: dummyProducts[index],
                    updatePrice: updateTotalPrice,
                  );
                }),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            color: const Color.fromARGB(255, 243, 241, 241),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text(
                        "Subtotal",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Spacer(),
                      Text('$subTotal\$',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18))
                    ],
                  ),
                  const Row(
                    children: [
                      Text("Shipping",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                      Spacer(),
                      Text('10\$',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18))
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      const Text("Total Amount",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                      const Spacer(),
                      Text("${totalPrice + 10}\$",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18))
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}

// ----------------------------------------
class ProductItem extends StatefulWidget {
  final ProductItemModel productItem;
  final Function(double) updatePrice;
  const ProductItem(
      {super.key, required this.productItem, required this.updatePrice});

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
      widget.updatePrice(widget.productItem.price);
    });
  }

  void decrementCounter() {
    if (counter > 0) {
      setState(() {
        counter--;
        widget.updatePrice(-widget.productItem.price);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
      child: Row(
        children: [
          Container(
            height: 110,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              color: appColors.grey,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CachedNetworkImage(
                imageUrl: widget.productItem.imgUrl,
                fit: BoxFit.contain,
                placeholder: (context, url) => const Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
                errorWidget: (context, url, error) => const Icon(
                  Icons.error,
                  color: Colors.red,
                ),
              ),
            ),
          ),
          const SizedBox(width: 20),
          Stack(
            children: [
              Container(
                height: 110,
                width: MediaQuery.of(context).size.width / 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.productItem.name,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                    ),
                    Text(
                      widget.productItem.category,
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                            color: Colors.grey,
                            fontSize: 18,
                          ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                      child: Container(
                        height: 47,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 235, 233, 233),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Container(
                                width: 35,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.remove,
                                    size: 20,
                                  ),
                                  onPressed: decrementCounter,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              '$counter',
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Container(
                                width: 35,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.add,
                                    size: 20,
                                  ),
                                  onPressed: incrementCounter,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 0,
                bottom: 10,
                child: Text(
                  '\$${widget.productItem.price}',
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                      ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
