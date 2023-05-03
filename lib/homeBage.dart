import 'package:flutter/material.dart';
import 'package:futter_exercise3/products.dart';
import 'package:bottom_bar/bottom_bar.dart';

class HomeBage extends StatefulWidget {
  const HomeBage({Key? key}) : super(key: key);

  @override
  State<HomeBage> createState() => _HomeBageState();
}

class _HomeBageState extends State<HomeBage> {
  int index = 0;
  int _selectedPage = 4;
  final _pageController = PageController();
  List<String> images = [
    "assets/page1.png",
    "assets/page5.jpeg",
    "assets/page3.jpeg",
    "assets/page4.jpeg"
  ];
  List<Products> list = [
    Products(
        image: "assets/product2.png",
        sale: "20%",
        trend: "ترند",
        price: "\$20",
        price_sale: "\$18",
        name: "حذاء رياضي",
        type: "  نايكي",
        news: "جديد"),
    Products(
        image: "assets/product1.png",
        sale: "",
        trend: "ترند",
        price: "\$20",
        price_sale: "\$18",
        name: "حذاء رياضي",
        type: "     كاب",
        news: ""),
    Products(
        image: "assets/product4.png",
        sale: "20%",
        trend: "",
        price: "\$20",
        price_sale: "\$18",
        name: "بلوزة موضة",
        type: "اورجينال",
        news: ""),
    Products(
        image: "assets/product3.png",
        sale: "",
        trend: "",
        price: "\$20",
        price_sale: "\$18",
        name: "شرط قطن",
        type: " قوتونيل",
        news: "جديد")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        transform: Matrix4.translationValues(0, 50.0, -10.0),
        margin: EdgeInsets.fromLTRB(0, 2, 0, 20),
        child: BottomNavigationBar(
          backgroundColor: Colors.white10,
          currentIndex: _selectedPage,
          items: [
            BottomNavigationBarItem(
                icon: Container(
                    margin: EdgeInsets.only(top: 0, left: 20),
                    child: Icon(Icons.person_outline, color: Colors.black45)),
                activeIcon: Icon(
                  Icons.person_outline,
                  color: Color(0xff957255),
                ),
                label: ''),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined, color: Colors.black45),
              label: '',
              activeIcon: Icon(
                Icons.person_outline,
                color: Color(0xff957255),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined, color: Colors.black45),
              label: '',
              activeIcon: Icon(
                Icons.shopping_cart_outlined,
                color: Color(0xff957255),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border,
                color: Colors.black45,
              ),
              label: '',
              activeIcon: Icon(
                Icons.favorite_border,
                color: Color(0xff957255),
              ),
            ),
            BottomNavigationBarItem(
              icon: Container(
                  margin: EdgeInsets.only(top: 0, left: 0),
                  child: Icon(Icons.add_home_outlined, color: Colors.black45)),
              label: '',
              activeIcon: Icon(
                Icons.add_home_outlined,
                color: Color(0xff957255),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xffF5F5F5),
      appBar: AppBar(
        actions: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
            child: Icon(
              Icons.notifications,
              color: Colors.black26,
            ),
          )
        ],
        backgroundColor: Color(0xffF5F5F5),
        elevation: 0,
        leading: Icon(
          Icons.dashboard_rounded,
          color: Colors.black26,
        ),
        title: Text(
          "اهلاً وسهلاً",
          style:
              TextStyle(color: Color(0xff000000), fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: 355,
            margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: TextField(
              textAlign: TextAlign.end,
              onChanged: (value) {},
              style: TextStyle(
                color: Colors.red,
              ),
              cursorWidth: 2,
              cursorColor: Colors.cyan,
              cursorRadius: Radius.circular(35),
              textDirection: TextDirection.ltr,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 35, color: Colors.white),
                  borderRadius: BorderRadius.circular(30),
                ),
                label: Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Container(
                        margin: EdgeInsets.only(left: 30),
                        child: Text("...ابحث عن تيشرتات,قمصان"))),
                // icon: IconButton(
                //   onPressed: (){},icon: Icon(Icons.ac_unit),
                // ),
                //هاد الشكل تاع input text
                contentPadding: EdgeInsets.all(10),

                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Colors.white)),
                border: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(19),
                  borderSide: BorderSide.none,
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),

                suffixIcon: Icon(Icons.search_rounded),

                fillColor: Colors.cyan.withOpacity(0.5),
              ),
            ),
          ),
          
          Expanded(
            child: Container(
              margin: EdgeInsets.all(10),
              child: Stack(
                children: [
                  Expanded(
                    child: Center(
                      child: Container(
                        transform:
                            Matrix4.translationValues(-10.0, -10.0, -100.0),
                        margin: EdgeInsets.only(bottom: 500),
                        height: 150,
                        width: 500,
                        child: PageView.builder(
                            onPageChanged: (value) {
                              setState(() {
                                index = value;
                              });
                            },
                            itemCount: images.length,
                            itemBuilder: (context, index) {
                              return Container(
                                width: 500,
                                height: 150,
                                margin: EdgeInsets.fromLTRB(30, 10, 0, 0),
                                child: Stack(
                                  children: [
                                    Container(
                                      // height: double.infinity,
                                      alignment: Alignment.center,
                                      // This is needed
                                      child: Image.asset(
                                        images[index],
                                        fit: BoxFit.fill,
                                        // width: 300,
                                        // height: 300,
                                      ),
                                    ),
                                    // Container(
                                    //     width: 500,
                                    //     height: 150,
                                    //     child: Image.asset(
                                    //       images[index],
                                    //       width: 500,
                                    //       height: 150,
                                    //       fit: BoxFit.contain,
                                    //     )),
                                    Align(
                                      child: Expanded(
                                        child: Container(
                                          margin: EdgeInsets.only(
                                              top: 130, right: 4),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional.centerEnd,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(287, 130, 0, 0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 3, 0),
                          child: CircleAvatar(
                            radius: 3,
                            backgroundColor:
                                index == 0 ? Colors.white : Colors.white54,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 3, 0),
                          child: CircleAvatar(
                            radius: 3,
                            backgroundColor:
                                index == 1 ? Colors.white : Colors.white54,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 3, 0),
                          child: CircleAvatar(
                            radius: 3,
                            backgroundColor:
                                index == 2 ? Colors.white : Colors.white54,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 3, 0),
                          child: CircleAvatar(
                            radius: 3,
                            backgroundColor:
                                index == 3 ? Colors.white : Colors.white54,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 330,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12, width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        color: Colors.white),
                    height: 50,
                    margin: EdgeInsets.only(top: 160, left: 40, right: 40),
                    child: Row(
                      children: [
                        Container(
                            margin: EdgeInsets.only(left: 30),
                            child: Text("وصل حديثا",
                                style: TextStyle(color: Colors.black45))),
                        Container(
                            margin: EdgeInsets.only(left: 40),
                            child: Text(
                              "الأكثر مبيعاً",
                              style: TextStyle(color: Colors.black45),
                            )),
                        Align(
                          child: Container(
                            margin: EdgeInsets.only(left: 12),
                            alignment: AlignmentDirectional.topCenter,
                            width: 80,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Color(0xff957255),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            child: Align(
                                alignment: AlignmentDirectional.center,
                                child: Text(
                                  "العروض",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        margin: EdgeInsets.only(top: 120),
                        child: GridView.builder(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisSpacing: 0,
                                    mainAxisSpacing: 0,
                                    crossAxisCount: 2,
                                    childAspectRatio: 2 / 4),
                            itemCount: list.length,
                            itemBuilder: (BuildContext ctx, index) {
                              return Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                width: 159,
                                height: 255,
                                margin: EdgeInsets.only(
                                    top: 100, left: 10, right: 10),
                                child: Stack(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Color(0xffF4DDC5),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20))),
                                      width: 180,
                                      height: 126,
                                      child: Stack(
                                        children: [
                                          Container(
                                              alignment:
                                                  AlignmentDirectional.topEnd,
                                              margin: EdgeInsets.only(
                                                  left: 110, top: 10),
                                              width: 40,
                                              height: 40,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(20))),
                                              child: Align(
                                                  child: Icon(
                                                      Icons.favorite_border))),
                                          Container(
                                              margin: EdgeInsets.only(
                                                  left: 10, top: 10),
                                              child: Image.asset(
                                                  list[index].image as String)),
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: 55, left: 7),
                                            width: 36,
                                            height: 20,
                                            decoration: BoxDecoration(
                                                color: list[index].sale == ""
                                                    ? Colors.transparent
                                                    : Color(0xffCE2621),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(8))),
                                            child: Column(
                                              children: <Widget>[
                                                if (list[index].sale == "")
                                                  Expanded(
                                                      child: Text(
                                                    "",
                                                  )),
                                                Text(list[index].sale as String,
                                                    style: TextStyle(
                                                        color: Colors.white))
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: 90, left: 7),
                                            width: 51,
                                            height: 21,
                                            decoration: BoxDecoration(
                                                color: list[index].news == ""
                                                    ? Colors.transparent
                                                    : Color(0xff00AE3B),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(8))),
                                            child: Row(
                                              children: <Widget>[
                                                if (list[index].news == "")
                                                  Expanded(
                                                      child: Text(
                                                    "",
                                                  )),
                                                Container(
                                                  child: Text(
                                                      list[index].news
                                                          as String,
                                                      style: TextStyle(
                                                          color: Colors.white)),
                                                  margin:
                                                      EdgeInsets.only(left: 7),
                                                ),
                                                Row(
                                                  children: [
                                                    Visibility(
                                                      child: Container(
                                                        child: Icon(
                                                          Icons.star,
                                                          color: Color(
                                                            0xffFFF500,
                                                          ),
                                                          size: 18,
                                                        ),
                                                      ),
                                                      visible:
                                                          list[index].news == ""
                                                              ? false
                                                              : true,
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: 90, left: 100),
                                            width: 51,
                                            height: 21,
                                            decoration: BoxDecoration(
                                                color: list[index].trend == ""
                                                    ? Colors.transparent
                                                    : Color(0xffFFF500),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(8))),
                                            child: Row(
                                              children: <Widget>[
                                                if (list[index].trend == "")
                                                  Expanded(
                                                      child: Text(
                                                    "",
                                                  )),
                                                Container(
                                                  margin:
                                                      EdgeInsets.only(left: 7),
                                                  child: Text(
                                                      list[index].trend
                                                          as String,
                                                      style: TextStyle(
                                                          color: Colors.black)),
                                                ),
                                                Container(
                                                  width: 22,
                                                  height: 22,
                                                  child: Visibility(
                                                    child: Icon(
                                                      Icons
                                                          .local_fire_department_outlined,
                                                      color: Color(
                                                        0xffD23A35,
                                                      ),
                                                      size: 18,
                                                    ),
                                                    visible:
                                                        list[index].trend == ""
                                                            ? false
                                                            : true,
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                        margin:
                                            EdgeInsets.only(top: 140, left: 80),
                                        child: Text(
                                          list[index].name as String,
                                          style: TextStyle(
                                              color: Color(0xff818181)),
                                        )),
                                    Container(
                                        margin: EdgeInsets.only(
                                            top: 170, left: 111),
                                        child:
                                            Text(list[index].type as String)),
                                    Container(
                                        margin: EdgeInsets.only(
                                            top: 200, left: 110),
                                        child: Text(
                                          list[index].price as String,
                                          style: TextStyle(
                                              decoration:
                                                  TextDecoration.lineThrough,
                                              color: Color(0xff818181)),
                                        )),
                                    Container(
                                        margin:
                                            EdgeInsets.only(top: 198, left: 75),
                                        child: Text(
                                          list[index].price_sale as String,
                                          style: TextStyle(
                                              color: Color(0xff957255),
                                              fontSize: 18),
                                        )),
                                    Container(
                                      width: 36,
                                      height: 36,
                                      margin: EdgeInsets.only(top: 220),
                                      decoration: BoxDecoration(
                                          color: Color(0xffF2F1EF),
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(10),
                                              bottomLeft: Radius.circular(10))),
                                      child: Icon(
                                        Icons.add_shopping_cart,
                                        color: Color(0xff957255),
                                        size: 20,
                                      ),
                                    )
                                  ],
                                ),
                              );
                            }),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void onTapped(int pageTapped) {
    setState(() {
      //print(pageTapped);
      _selectedPage = pageTapped;
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeBage()));
      //print(_selectedPage);
    });
  }
}
