import 'package:flutter/material.dart';

class SecoundBage extends StatelessWidget {
  const SecoundBage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffF5F5F5),
        title: Text(
          "تاكيد الطلب",
          style:
              TextStyle(color: Color(0xff000000), fontWeight: FontWeight.w600),
        ),
        leading: Container(
            margin: EdgeInsets.only(left: 350),
            child: Icon(Icons.navigate_next_rounded,
                size: 40, color: Color(0xff000000))),
      ),
      body: Column(
        children: [
          Stack(
            children: [
      Container(
          margin: EdgeInsets.only(top: 0,left: 320),
        child: Text("العنوان",style: TextStyle(fontWeight: FontWeight.w300,color: Color(0xff636363)),)),

    Padding(
    padding: const EdgeInsets.only(left: 8.0),
    child: Container(
    width: 355,

    margin: EdgeInsets.fromLTRB(10, 20, 0, 0),
    child:   Center(
    child: Padding(
    padding: EdgeInsets.all(10),
    child: Directionality(
    textDirection: TextDirection.rtl,
    child: TextField(
    textAlign: TextAlign.right,
    autofocus: true,
    decoration: InputDecoration(

    // icon: IconButton(
    //   onPressed: (){},icon: Icon(Icons.ac_unit),
    // ),
    //هاد الشكل تاع input text
    contentPadding: EdgeInsets.all(10),
    enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(30),

    ),

    border: UnderlineInputBorder(
    borderRadius: BorderRadius.circular(19),
    borderSide: BorderSide.none,
    ),

    suffixIcon: Icon(Icons.location_on_outlined,color: Color(0xff957255),),

    hintText: 'الخرطوم , المعمورة , شارع السجانة',
    fillColor: Colors.white,

    // errorText: 'daa'
    ),
    )
    )
    ),
    )
    ),
    ),
            ],

          ),
          Stack(
            children: [
              Container(
                  margin: EdgeInsets.only(top: 0,left: 320),
                  child: Text("طرق الدفع",style: TextStyle(fontWeight: FontWeight.w300,color: Color(0xff636363)),)),

              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                    width: 355,

                    margin: EdgeInsets.fromLTRB(10, 20, 0, 0),
                    child:   Center(
                      child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Directionality(
                              textDirection: TextDirection.rtl,
                              child: TextField(
                                textAlign: TextAlign.right,
                                autofocus: true,
                                decoration: InputDecoration(

                                  // icon: IconButton(
                                  //   onPressed: (){},icon: Icon(Icons.ac_unit),
                                  // ),
                                  //هاد الشكل تاع input text
                                  contentPadding: EdgeInsets.all(10),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),

                                  ),

                                  border: UnderlineInputBorder(
                                    borderRadius: BorderRadius.circular(19),
                                    borderSide: BorderSide.none,
                                  ),

                                  suffixIcon: Icon(Icons.clean_hands_outlined,color: Color(0xff957255),),

                                  hintText: 'الدفع عند الاستلام',
                                  fillColor: Colors.white,

                                  // errorText: 'daa'
                                ),
                              )
                          )
                      ),
                    )
                ),
              ),
            ],

          ),
        ],
      ),
    );
  }
}
