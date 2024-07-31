// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:ecommerce_app/models/product_item_model.dart';
// import 'package:ecommerce_app/utils/appColors.dart';
// import 'package:flutter/material.dart';

// class ProductItem extends StatefulWidget {
//   final ProductItemModel productItem;
//   const ProductItem({super.key, required this.productItem});

//   @override
//   State<ProductItem> createState() => _ProductItemState();
// }

// class _ProductItemState extends State<ProductItem> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 100,
//       child: Row(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(20),
//             child: Container(
//               height: 100,
//               //width: double.infinity,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(16.0),
//                 color: appColors.grey,
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: CachedNetworkImage(
//                   imageUrl: widget.productItem.imgUrl,
//                   fit: BoxFit.contain,
//                   placeholder: (context, url) => const Center(
//                     child: CircularProgressIndicator.adaptive(),
//                   ),
//                   errorWidget: (context, url, error) => const Icon(
//                     Icons.error,
//                     color: Colors.red,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           const SizedBox(height: 2),
//           Padding(
//             padding: const EdgeInsets.fromLTRB(15, 10, 20, 5),
//             child: Container(
//               height: 100,
//               child: Column(
//                 children: [
//                   Text(
//                     widget.productItem.name,
//                     style: Theme.of(context)
//                         .textTheme
//                         .titleMedium!
//                         .copyWith(fontWeight: FontWeight.w600, fontSize: 20),
//                   ),
//                   Text(
//                     widget.productItem.category,
//                     style: Theme.of(context)
//                         .textTheme
//                         .labelMedium!
//                         .copyWith(color: Colors.grey, fontSize: 20),
//                   ),
//                   Text(
//                     '\$${widget.productItem.price}',
//                     style: Theme.of(context)
//                         .textTheme
//                         .titleSmall!
//                         .copyWith(fontWeight: FontWeight.w600, fontSize: 20),
//                   ),
//                 ],
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_app/models/product_item_model.dart';
import 'package:ecommerce_app/utils/appColors.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatefulWidget {
  final ProductItemModel productItem;
  const ProductItem({super.key, required this.productItem});

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 130,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: appColors.grey2,
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
            Positioned(
              top: 8.0,
              right: 8.0,
              child: DecoratedBox(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white54,
                ),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (dummyFavorites.contains(widget.productItem)) {
                        dummyFavorites.remove(widget.productItem);
                      } else {
                        dummyFavorites.add(widget.productItem);
                      }
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Icon(
                      dummyFavorites.contains(widget.productItem)
                          ? Icons.favorite
                          : Icons.favorite_border,
                      size: 20,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 4.0),
        Text(
          widget.productItem.name,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.w600,
              ),
        ),
        Text(
          widget.productItem.category,
          style: Theme.of(context).textTheme.labelMedium!.copyWith(
                color: Colors.grey,
              ),
        ),
        Text(
          '\$${widget.productItem.price}',
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
                fontWeight: FontWeight.w600,
              ),
        ),
      ],
    );
  }
}
