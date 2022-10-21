
import 'package:bookshare/views/onbording/buy_book/view.dart';
import 'package:bookshare/views/onbording/favourite/view.dart';
import 'package:bookshare/views/onbording/shelved/view.dart';
import 'package:flutter/material.dart';

class navView extends StatefulWidget {
  const navView({Key? key}) : super(key: key);

  @override
  State<navView> createState() => _navViewState();
}

class _navViewState extends State<navView> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.horizontal,
        children: const [
          FavouriteView(),
          ShelvedView(),
          BuyView(),
        ],
      ),
    );
  }
}
