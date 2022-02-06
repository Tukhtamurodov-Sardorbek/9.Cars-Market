import 'package:cars_market/home_page.dart';
import 'package:cars_market/pages/market/market_cart.dart';
import 'package:cars_market/pages/market/market_liked.dart';
import 'package:cars_market/pages/market/market_ui.dart';
import 'package:cars_market/pages/sample_from_mentor.dart';
import 'package:cars_market/pages/simple_one_page_car_market.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CarsMarket());
}

class CarsMarket extends StatelessWidget {
  const CarsMarket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {
        Sample.id: (context) => const Sample(),
        Market.id: (context) => const Market(),
        Cart.id: (context) => const Cart(products: []),
        Likes.id: (context) => const Likes(products: []),
        SinglePageMarket.id: (context) => const SinglePageMarket(),
      }
    );
  }
}
