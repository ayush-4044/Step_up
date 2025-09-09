import 'package:flutter/material.dart';
import 'package:step_up/checkout_screen.dart';

class MyCartScreen extends StatefulWidget {
  const MyCartScreen({super.key});

  @override
  State<MyCartScreen> createState() => _MyCartScreenState();
}

class _MyCartScreenState extends State<MyCartScreen> {
  final List<Map<String, dynamic>> cartItem = [
    {
      'image': "images/popular_shoes1.png",
      'name': "Nike Jordan",
      'price': "\$493.00",
      'size': "L",
    },
    {
      'image': "images/popular_shoes2.png",
      'name': "Nike Air Max",
      'price': "\$879.99",
      'size': "XL",
    },
    {
      'image': "images/new_arrival_shoes.png",
      'name': "Nike Club Max",
      'price': "\$879.99",
      'size': "XXL",
    },
    {
      'image': "images/fav_shoes.png",
      'name': "Nike Air Max 200",
      'price': "\$493.00",
      'size': "L",
    },
    {
      'image': "images/popular_shoes1.png",
      'name': "Nike Jordan",
      'price': "\$493.00",
      'size': "XL",
    },
    {
      'image': "images/popular_shoes2.png",
      'name': "Nike Air Max",
      'price': "\$879.99",
      'size': "XXL",
    },
    {
      'image': "images/new_arrival_shoes.png",
      'name': "Nike Club Max",
      'price': "\$879.99",
      'size': "L",
    },
    {
      'image': "images/fav_shoes.png",
      'name': "Nike Air Max 200",
      'price': "\$493.00",
      'size': "XL",
    },
    {
      'image': "images/popular_shoes2.png",
      'name': "Nike Air Max",
      'price': "\$879.99",
      'size': "XXL",
    },
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final w = size.width;
    final h = size.height;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Padding(
              padding:  EdgeInsets.only(top: h * 0.02,left: w * 0.05),
              child: Row(
                spacing: 95,

                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: w * 0.13,
                      width: w * 0.13,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 5,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                          size: w * 0.06,
                        ),
                      ),
                    ),
                  ),

                  Text(
                    "My Cart",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: w * 0.05,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: h * 0.019),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.zero,

                itemCount: cartItem.length,

                itemBuilder: (context, index) => SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: w * 0.05),
                    child: Row(
                      children: [
                        Container(
                          height: h * 0.095,
                          width: w * 0.21,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 5,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          child: Center(
                            child: Image.asset(cartItem[index]['image']),
                          ),
                        ),
                        SizedBox(width: w * 0.03),
                        Padding(
                          padding: const EdgeInsets.only(top: 13.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: w * 0.56,
                                      child: Text(
                                        cartItem[index]['name'],
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),

                                    Text(
                                      cartItem[index]['size'],
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: h * 0.002),
                              Text(cartItem[index]['price']),
                              SizedBox(height: h * 0.003),

                              Row(
                                children: [
                                  SizedBox(
                                    width: w * 0.515,
                                    child: Row(
                                      children: [
                                        Container(
                                          height: h * 0.05,
                                          width: w * 0.06,

                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black12,
                                                blurRadius: 5,
                                                offset: Offset(0, 2),
                                              ),
                                            ],
                                          ),
                                          child: Center(
                                            child: Text(
                                              "-",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "   01   ",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                          ),
                                        ),
                                        Container(
                                          height: h * 0.05,
                                          width: w * 0.06,

                                          decoration: BoxDecoration(
                                            color: Colors.blue,
                                            shape: BoxShape.circle,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black12,
                                                blurRadius: 5,
                                                offset: Offset(0, 2),
                                              ),
                                            ],
                                          ),
                                          child: Center(
                                            child: Text(
                                              "+",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        cartItem.removeAt(index);
                                      });
                                    },
                                    icon: Icon(
                                      Icons.delete_forever,
                                      color: Colors.red,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, -3),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Subtotal", style: TextStyle(fontSize: 16, color: Colors.grey[700])),
                Text("\$1250.00", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: h * 0.010),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Shipping", style: TextStyle(fontSize: 16, color: Colors.grey[700])),
                Text("\$40.90", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ],
            ),
            Divider(height: h * 0.055, thickness: 1,color: Colors.grey,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total Cost", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Text("\$1690.99", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: h * 0.020),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>CheckoutScreen()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  padding: EdgeInsets.symmetric(vertical: h * 0.017),
                ),
                child: Text(
                  "Checkout",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
