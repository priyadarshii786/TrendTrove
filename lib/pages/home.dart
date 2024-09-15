import 'package:flutter/material.dart';
import 'package:trend_trove/widget/support_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List chikku = [
    "images/laptop.png",
    "images/TV.png",
    "images/headphone_icon.png",
    "images/watch.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f2f2),
      body: Container(
        margin: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
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
                    height: 70,
                    width: 70,
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30.0,
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
                      color: Colors.orangeAccent,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              margin: EdgeInsets.only(left: 20.0),
              height: 140,
              child: ListView.builder(
                  itemCount: chikku.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return CategoryTile(image: chikku[index]);
                  }),
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween ,
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
