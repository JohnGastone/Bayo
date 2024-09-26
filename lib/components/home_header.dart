import 'package:bayo/components/svg_pack.dart';
import 'package:bayo/pages/cartPage.dart';
import 'package:bayo/pages/clubShop.dart';
import 'package:bayo/pages/landingPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatefulWidget {
  const HomeHeader({super.key});

  @override
  State<HomeHeader> createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {
  bool _isDarkMode = false;

  void _toggleTheme() {
    setState(() {
      _isDarkMode = !_isDarkMode;
      // Update app theme here (e.g., using a theme provider)
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(child: SearchField()),
          const SizedBox(width: 16),
          IconBtnWithCounter(
            numOfitem: 3,
            svgSrc: cart_icon,
            press: () {
              Navigator.push(context,
                  CupertinoPageRoute(builder: (context) => const CartScreen()));
            },
          ),
          const SizedBox(width: 8),
          IconButton(
            icon: Icon(
              _isDarkMode ? Icons.light_mode : Icons.dark_mode,
              color: Theme.of(context).iconTheme.color,
            ),
            onPressed: _toggleTheme,
          ),
        ],
      ),
    );
  }
}
