import 'package:flutter/material.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  final List<Map<String, dynamic>> favItem = [
    {
      'image': "images/popular_shoes1.png",
      'name': "Nike Jordan",
      'price': "\$493.00",
      'line': "BEST SELLER",
      'icon1' : Icons.circle,
      'icon1color' : Color(0xFFFDFFA7),
      'icon2' : Icons.circle,
      'icon2color' : Color(0xFF6CCFC0),
      'isSelected': false,

    },
    {
      'image': "images/popular_shoes2.png",
      'name': "Nike Air Max",
      'price': "\$879.99",
      'line': "BEST SELLER",
      'icon1' : Icons.circle,
      'icon1color' : Color(0xFF92CAFF),
      'icon2' :Icons.circle,
      'icon2color' : Color(0xFF656B7E),
      'isSelected': false,
    },
    {
      'image': "images/new_arrival_shoes.png",
      'name': "Nike Club Max",
      'price': "\$879.99",
      'line': "BEST SELLER",
      'icon1' : Icons.circle,
      'icon1color' : Color(0xFF1685D4),
      'icon2' : Icons.circle,
      'icon2color' : Color(0xFFF6C954),
      'isSelected': false,
    },
    {
      'image': "images/new_arrival_shoes.png",
      'name': "Nike Jordan",
      'price': "\$493.00",
      'line': "BEST SELLER",
      'icon1' : Icons.circle,
      'icon1color' : Color(0xFF7DDBDA),
      'icon2' : Icons.circle,
      'icon2color' : Color(0xFF606ACB),
      'isSelected': false,
    },
    {
      'image': "images/popular_shoes1.png",
      'name': "Nike Jordan",
      'price': "\$493.00",
      'line': "BEST SELLER",
      'icon1' : Icons.circle,
      'icon1color' : Color(0xFFFDFFA7),
      'icon2' : Icons.circle,
      'icon2color' : Color(0xFF6CCFC0),
      'isSelected': false,

    },
    {
      'image': "images/popular_shoes2.png",
      'name': "Nike Air Max",
      'price': "\$879.99",
      'line': "BEST SELLER",
      'icon1' : Icons.circle,
      'icon1color' : Color(0xFF92CAFF),
      'icon2' :Icons.circle,
      'icon2color' : Color(0xFF656B7E),
      'isSelected': false,
    },
    {
      'image': "images/new_arrival_shoes.png",
      'name': "Nike Club Max",
      'price': "\$879.99",
      'line': "BEST SELLER",
      'icon1' : Icons.circle,
      'icon1color' : Color(0xFF1685D4),
      'icon2' : Icons.circle,
      'icon2color' : Color(0xFFF6C954),
      'isSelected': false,
    },
    {
      'image': "images/new_arrival_shoes.png",
      'name': "Nike Jordan",
      'price': "\$493.00",
      'line': "BEST SELLER",
      'icon1' : Icons.circle,
      'icon1color' : Color(0xFF7DDBDA),
      'icon2' : Icons.circle,
      'icon2color' : Color(0xFF606ACB),
      'isSelected': false,

    },
  ];
  bool isFavourite = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final h = size.height;
    final w = size.width;

    return Scaffold(
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
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
                              color: Colors.black12,
                              blurRadius: 6,
                              offset: const Offset(0, 3),
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
                      "Favourite",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: w * 0.05,
                      ),
                    ),
                    Container(
                      height: w * 0.13,
                      width: w * 0.13,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 6,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            isFavourite = !isFavourite;
                          });
                        },
                        icon: Icon(
                          isFavourite ? Icons.favorite : Icons.favorite_border,
                          color: isFavourite ? Colors.red : Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                GridView.builder(
                  shrinkWrap: true,

                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.75,
                    crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,


                  ),
                  itemCount: favItem.length,
                  itemBuilder: (context, index) =>
                      Stack(
                        children: [Container(

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(child: Image.asset(favItem[index]['image'],)),
                                SizedBox(height: 10,),
                                Text(favItem[index]['line'],style: TextStyle(color: Colors.blue),),
                                SizedBox(height: 4,),
                                Text(favItem[index]['name'],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                                SizedBox(height: 10,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(favItem[index]['price'],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                    Row(

                                      children: [
                                        Icon(favItem[index]['icon1'],color:favItem[index]['icon1color'],size: 20,),
                                        SizedBox(width: 5,),
                                        Icon(favItem[index]['icon2'],color:favItem[index]['icon2color'],size: 20,),

                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                          Positioned(
                            top: 10,
                            
                            child: GestureDetector(
                              onTap: (){
                                setState(() {
                                  favItem[index]['isSelected']  = !favItem[index]['isSelected'] ;
                                });
                              },
                              child: Container(
                                height: w * 0.075,
                                width: w * 0.13,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 6,
                                      offset: const Offset(0, 3),
                                    ),
                                  ],
                                ),
                                 child: Icon(
                                   favItem[index]['isSelected'] ? Icons.favorite : Icons.favorite_border,
                                   color: favItem[index]['isSelected'] ? Colors.red : Colors.black,
                                   size: 15,
                                 ),

                              ),
                            ),
                          ),
                     ] )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
