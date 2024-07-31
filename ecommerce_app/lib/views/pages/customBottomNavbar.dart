import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_app/utils/appColors.dart';
import 'package:ecommerce_app/views/pages/cartPage.dart';
import 'package:ecommerce_app/views/pages/favouritePage.dart';
import 'package:ecommerce_app/views/pages/homePage.dart';
import 'package:ecommerce_app/views/pages/profilePage.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class customBottomNavbar extends StatefulWidget {
  static favouritePage page = favouritePage();
  const customBottomNavbar({super.key});
  @override
  State<StatefulWidget> createState() => _customBottomNavbarState();
}

class _customBottomNavbarState extends State<customBottomNavbar> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: CachedNetworkImageProvider(
              'https://cdn1.iconfinder.com/data/icons/bokbokstars-121-classic-stock-icons-1/512/person-man.png',
            ),
          ),
        ),
        centerTitle: false,
        title: _buildTitle(),
        actions: [
          if (_currentIndex == 0)
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          ),
        ],
      ),
      body: PersistentTabView(
        onTabChanged: (value) => setState(() {
          _currentIndex = value;
        }),
        tabs: [
          PersistentTabConfig(
            screen: const homePage(),
            item: ItemConfig(
              icon: const Icon(Icons.home),
              title: "Home",
              activeForegroundColor: appColors.primary,
              inactiveForegroundColor: appColors.grey4,
            ),
          ),
          PersistentTabConfig(
            screen: const cartPage(),
            item: ItemConfig(
              icon: const Icon(Icons.shopping_cart),
              title: "Cart",
              activeForegroundColor: appColors.primary,
              inactiveForegroundColor: appColors.grey4,
            ),
          ),
          PersistentTabConfig(
            screen: customBottomNavbar.page,
            item: ItemConfig(
              icon: const Icon(Icons.favorite),
              title: "Favorite",
              activeForegroundColor: appColors.primary,
              inactiveForegroundColor: appColors.grey4,
            ),
          ),
          PersistentTabConfig(
            screen: const profilePage(),
            item: ItemConfig(
              icon: const Icon(Icons.person),
              title: "Profile",
              activeForegroundColor: appColors.primary,
              inactiveForegroundColor: appColors.grey4,
            ),
          ),
        ],
        navBarBuilder: (navBarConfig) => Style1BottomNavBar(
          navBarConfig: navBarConfig,
        ),
      ),
    );
  }

  Widget _buildTitle() {
    switch (_currentIndex) {
      case 0:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, Mahmoud',
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Text(
              'Let\'s go shopping!',
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                    color: appColors.grey,
                    fontWeight: FontWeight.normal,
                  ),
            ),
          ],
        );
      case 1:
        return const Text('Cart');
      case 2:
        return const Text('Favorite');
      case 3:
        return const Text('Profile');
      default:
        return const Text('Home');
    }
  }
}
