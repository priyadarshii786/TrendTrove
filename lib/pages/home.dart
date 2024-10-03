import 'package:flutter/material.dart';
import 'package:trend_trove/widget/support_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List chikku = [
    "images/watch.png",
    "images/headphone_icon.png",
    "images/laptop.png",
    "images/TV.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f2f2),
      body: Container(
        margin: EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hey, Chikku",
                      style: AppWidget.boldTextFieldStyle(),
                    ),
                    Text(
                      "Good Morning!",
                      style: AppWidget.lightTextFieldStyle(),
                    ),
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    "images/boy.jpg",
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              width: MediaQuery.of(context).size.width,
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search Products",
                  hintStyle: AppWidget.lightTextFieldStyle(),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Categories",
                  style: AppWidget.semiboldTextFieldStyle(),
                ),
                Text(
                  "See all",
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Container(
                  height: 140,
                  margin: EdgeInsets.only(right: 20.0),
                  padding: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                      child: Text("All",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ))),
                ),
                Expanded(
                  child: Container(
                    height: 140,
                    child: ListView.builder(
                        padding: EdgeInsets.zero,
                        itemCount: chikku.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return CategoryTile(image: chikku[index]);
                        }),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "All Products",
                  style: AppWidget.semiboldTextFieldStyle(),
                ),
                Text(
                  "See all",
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 240,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10.0),
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Image.asset(
                          "images/headphone2.png",
                          height: 150,
                          width: 150,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          "Headphone",
                          style: AppWidget.semiboldTextFieldStyle(),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Text(
                              "₹899",
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 50.0,
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(7)),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  // ! ---------------------------- Will modify it later to work in sync with firebase --------------------------------------
                  Container(
                    margin: EdgeInsets.only(right: 10.0),
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Image.asset(
                          "images/watch2.png",
                          height: 150,
                          width: 150,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          "Smart Watches",
                          style: AppWidget.semiboldTextFieldStyle(),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Text(
                              "₹1,199",
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 50.0,
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(7)),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  //! ------------------------------------
                  Container(
                    margin: EdgeInsets.only(right: 10.0),
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Image.asset(
                          "images/laptop2.png",
                          height: 150,
                          width: 150,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          "Laptops",
                          style: AppWidget.semiboldTextFieldStyle(),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Text(
                              "₹39,999",
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 50.0,
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(7)),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  // const CategoryTile({super.key});
  String image;
  CategoryTile({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20.0),
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      height: 90,
      width: 90,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            image,
            height: 50,
            width: 50,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 20,
          ),
          Icon(Icons.arrow_forward_outlined)
        ],
      ),
    );
  }
}
