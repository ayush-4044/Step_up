import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:step_up/best_seller_screen.dart';
import 'package:step_up/favourite_screen.dart';
import 'package:step_up/notification_screen.dart';
import 'package:step_up/profile_screen.dart';

import 'Detail_screens/detail_screen1.dart';
import 'Detail_screens/detail_screen2.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, dynamic>> listItem = [
    {'image': 'images/nike_logo.png', 'title': 'Nike'},
    {'image': 'images/puma_logo.png', 'title': 'Puma'},
    {'image': 'images/under_armour_logo.png', 'title': 'Under Armour'},
    {'image': 'images/adidas_logo.png', 'title': 'Adidas'},
    {'image': 'images/converse_logo.png', 'title': 'Converse'},
  ];

  final List<Map<String, dynamic>> popItem = [
    {
      'image': 'images/popular_shoes1.png',
      'line': 'BEST SELLER',
      'title': 'Nike Jordan',
      'price': '\$493.00',
    },
    {
      'image': 'images/popular_shoes2.png',
      'line': 'BEST SELLER',
      'title': 'Nike Air Max',
      'price': '\$493.00',
    },
  ];
  final List<Map<String, dynamic>> drawerItem = [
    {'icon': Icons.person_outline, 'title': 'Profile'},
    {'icon': Icons.home_filled, 'title': 'Home Page'},
    {'icon': Icons.shopping_cart, 'title': 'My Cart'},
    {'icon': Icons.favorite_border, 'title': 'Favourite'},
    {'icon': Icons.local_shipping_outlined, 'title': 'Orders'},
    {'icon': Icons.notifications, 'title': 'Notifications'},
  ];

  int selectedIndex = 0;
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final h = size.height;
    final w = size.width;
    final isKeyboardOpen = MediaQuery.of(context).viewInsets.bottom != 0;

    return WillPopScope(
      onWillPop: () async {
        if (Platform.isAndroid) {
          SystemNavigator.pop();
        } else if (Platform.isIOS) {
          exit(0);
        }
        return false;
      },
      child: Scaffold(
        drawer: Drawer(
          backgroundColor: Color(0xFF2D3B48),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: w * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: h * 0.08),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage("images/user.jpg"),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: h * 0.02),

                Text(
                  "Hey,👋🏻",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: w * 0.04,
                  ),
                ),
                SizedBox(height: h * 0.01),

                Text(
                  "Ayush Patel",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: w * 0.045,
                  ),
                ),
                SizedBox(height: h * 0.04),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  itemCount: drawerItem.length,
                  itemBuilder: (context, index) => ListTile(
                    onTap: () {},
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(drawerItem[index]['icon'], color: Colors.grey),
                    title: Text(
                      drawerItem[index]['title'],
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Divider(color: Colors.grey, thickness: h * 0.001),
                SizedBox(height: h * 0.02),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(15),
                    backgroundColor: Colors.redAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.logout, color: Colors.white),
                      SizedBox(width: w * 0.02),
                      Text(
                        "Sign Out",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          actions: [
            Padding(
              padding: EdgeInsets.only(right: w * 0.03),
              child: IconButton(onPressed: () {}, icon: Icon(Icons.shopping_bag)),
            ),
          ],
          backgroundColor: Colors.grey.shade200,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "Store location",
                  style: TextStyle(color: Colors.grey, fontSize: w * 0.035),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.location_on_rounded,
                    color: Colors.red,
                    size: w * 0.05,
                  ),
                  Text(
                    "Mondolibug, Sylhet",
                    style: TextStyle(fontSize: w * 0.035),
                  ),
                ],
              ),
            ],
          ),
          centerTitle: true,
        ),
        backgroundColor: Colors.grey.shade200,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: w * 0.05,
                vertical: h * 0.02,
              ),
              child: Column(
                children: [
                  Container(
                    height: h * 0.065,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 5,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: w * 0.03,
                        vertical: h * 0.006,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Looking for shoes",
                          contentPadding: EdgeInsets.only(top: 10),
                          suffixIcon: IconButton(
                              onPressed: (){
                                showModalBottomSheet(
                                  context: context,
                                  isScrollControlled: true,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.vertical(top: Radius.circular(20)),
                                  ),
                                  builder: (context) => const FilterScreen(),
                                );
                              },
                              icon: Icon(Icons.tune)),

                          hintStyle: TextStyle(color: Colors.grey),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey,
                            size: w * 0.06,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: h * 0.03),

                  SizedBox(
                    height: h * 0.075,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: listItem.length,
                      itemBuilder: (context, index) => Container(
                        margin: EdgeInsets.only(right: w * 0.03),
                        padding: EdgeInsets.symmetric(horizontal: w * 0.03),

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                        ),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: w * 0.07,
                              child: Image.asset(
                                listItem[index]['image'],
                                height: h * 0.025,
                              ),
                            ),
                            SizedBox(width: w * 0.02),
                            Text(
                              listItem[index]['title'],
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: w * 0.035,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: h * 0.025),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Popular Shoes",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: w * 0.045,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => BestSellerScreen()),
                          );
                        },
                        child: Text(
                          "See All",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: w * 0.035,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: h * 0.02),

                  GridView.builder(
                    padding: EdgeInsets.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: popItem.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: w * 0.04,
                      childAspectRatio: 0.75,
                    ),
                    itemBuilder: (context, index) {
                      return Stack(
                        children: [
                          GestureDetector(
                            onTap: () {
                              if (index == 0) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => const DetailsScreen1(),
                                  ),
                                );
                              } else {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => const DetailsScreen2(),
                                  ),
                                );
                              }
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  width: 0.8,
                                ),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(w * 0.03),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Center(
                                        child: Image.asset(
                                          popItem[index]['image'],
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: h * 0.015),
                                    Text(
                                      popItem[index]['line'],
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: w * 0.03,
                                      ),
                                    ),
                                    Text(
                                      popItem[index]['title'],
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: w * 0.04,
                                      ),
                                    ),
                                    SizedBox(height: h * 0.015),
                                    Text(
                                      popItem[index]['price'],
                                      style: TextStyle(fontSize: w * 0.035),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: h * 0.213,
                            left: w * 0.33,
                            child: Container(
                              height: h * 0.045,
                              width: h * 0.045,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(20),
                                  topLeft: Radius.circular(20),
                                ),
                                border: Border.all(
                                  color: Colors.black,
                                  width: 0.8,
                                ),
                                color: Colors.blue,
                              ),
                              child: const Icon(Icons.add, color: Colors.white),
                            ),
                          ),
                        ],
                      );
                    },
                  ),

                  SizedBox(height: h * 0.025),

                  _sectionTitle("New Arrivals", "See All", w),
                  SizedBox(height: h * 0.02),

                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: w * 0.04,
                      vertical: h * 0.02,
                    ),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 5,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "BEST CHOICE",
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: w * 0.03,
                              ),
                            ),
                            SizedBox(height: h * 0.01),
                            Text(
                              "Nike Air Jordan",
                              style: TextStyle(
                                fontSize: w * 0.045,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: h * 0.015),
                            Text(
                              "\$849.69",
                              style: TextStyle(
                                fontSize: w * 0.04,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Image.asset(
                          "images/new_arrival_shoes.png",
                          height: h * 0.12,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),

        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: isKeyboardOpen
            ? null
            : Container(
                height: h * 0.07,
                width: h * 0.07,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: const LinearGradient(
                    colors: [Color(0xFF5BA9F6), Color(0xFF3C83F7)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.withOpacity(0.4),
                      blurRadius: 15,
                      offset: const Offset(0, 8),
                    ),
                  ],
                ),
                child: FloatingActionButton(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  onPressed: () {},
                  child: Icon(
                    Icons.shopping_bag,
                    size: w * 0.07,
                    color: Colors.white,
                  ),
                ),
              ),

        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
          child: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            notchMargin: 10,
            color: Colors.white,
            elevation: 10,
            child: SizedBox(
              height: h * 0.08,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _bottomNavIcon(Icons.home, 0, w),
                  _bottomNavIcon(Icons.favorite_border, 1, w),
                  SizedBox(width: w * 0.1), // space for FAB
                  _bottomNavIcon(Icons.notifications_none, 2, w),
                  _bottomNavIcon(Icons.person_outline, 3, w),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _sectionTitle(String title, String action, double w) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: w * 0.045),
        ),
        Text(
          action,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: w * 0.035,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }

  Widget _bottomNavIcon(IconData icon, int index, double w) {
    final isSelected = selectedIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() => selectedIndex = index);
        if (index == 1) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => FavouriteScreen()),
          );
        }
        if (index == 2) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => NotificationScreen()),
          );
        }
        if (index == 3) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => ProfileScreen()),
          );
        }
      },
      child: Icon(
        icon,
        size: 28,
        color: isSelected ? Colors.blue : Colors.grey[600],
      ),
    );
  }
}
class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  String selectedGender = "Men";
  String selectedSize = "US 5.5";
  double minPrice = 16;
  double maxPrice = 350;
  double currentPrice = 150;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: const Text("Filters",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedGender = "Men";
                    selectedSize = "US 5.5";
                    currentPrice = 150;
                  });
                  Navigator.pop(context);
                },
                child: const Text("RESET",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.blue,
                        fontWeight: FontWeight.w500)),
              )
            ],
          ),
          const SizedBox(height: 20),

          // Gender
          const Text("Gender",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
          const SizedBox(height: 10),
          Row(
            children: ["Men", "Women", "Unisex"].map((gender) {
              return _buildChoiceChip(
                label: gender,
                isSelected: selectedGender == gender,
                onTap: () => setState(() => selectedGender = gender),
              );
            }).toList(),
          ),
          const SizedBox(height: 20),

          // Size
          const Text("Size",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
          const SizedBox(height: 10),
          Wrap(
            children: ["UK 4.4", "US 5.5", "UK 6.5", "EU 11.5"].map((size) {
              return _buildChoiceChip(
                label: size,
                isSelected: selectedSize == size,
                onTap: () => setState(() => selectedSize = size),
              );
            }).toList(),
          ),
          const SizedBox(height: 20),

          // Price
          const Text("Price",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("\$${minPrice.toInt()}"),
              Text("\$${maxPrice.toInt()}"),
            ],
          ),
          Slider(
            min: minPrice,
            max: maxPrice,
            value: currentPrice,
            activeColor: Colors.blue,
            onChanged: (value) {
              setState(() => currentPrice = value);
            },
          ),
          const SizedBox(height: 20),

          // Apply Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                backgroundColor: Colors.blue,
              ),
              child: const Text("Apply",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.white)),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildChoiceChip({
    required String label,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue : Colors.grey.shade200,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black87,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}