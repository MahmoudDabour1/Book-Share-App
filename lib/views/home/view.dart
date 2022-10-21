import 'package:bookshare/views/home/pages/discover/view.dart';
import 'package:bookshare/views/home/pages/library/view.dart';
import 'package:bookshare/views/home/pages/profile/view.dart';
import 'package:bookshare/views/home/pages/store/view.dart';
import 'package:bookshare/views/home/pages/wishlist/view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final pages = [
    DiscoverView(),
    const LibraryView(),
    const WishlistView(),
    const StoreView(),
    const ProfileView(),
  ];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 12,
        fixedColor: const Color(0xffFF6EA1),
        unselectedItemColor: Colors.grey.withOpacity(0.6),
        currentIndex: currentPage,
        onTap: (int index) {
          currentPage = index;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Discover",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.storage_rounded),
            label: "Library",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Wishlist",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.storefront_rounded),
            label: "Store ",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "Profile ",
          ),
        ],
      ),
    );
  }
}
