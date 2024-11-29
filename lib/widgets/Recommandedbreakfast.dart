import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Constantfile.dart';
import '../Screens/Model/Menumodel.dart';

class Recommandedbreakfast extends StatefulWidget {
  const Recommandedbreakfast({Key? key}) : super(key: key);

  @override
  State<Recommandedbreakfast> createState() => _RecommandedbreakfastState();
}

class _RecommandedbreakfastState extends State<Recommandedbreakfast> {
  List<MenuModel> data=[
    MenuModel(
        name: "Appam and stew non",
        gm: "80 gm",
        kalories: "100 Kal",
        price: "85",
        type: "Frequent order",
        images: "assets/images/cm1.jpg"
    ),
    MenuModel(
        name: "Idiyappam and kadala curry",
        gm: "250 gm",
        kalories: "150 Kal",
        price: "100",
        type: "Frequent order",
        images: "assets/images/cm2.webp"
    ),
    MenuModel(
        name: "Puttu and kadala curry",
        gm: "80 gm",
        kalories: "100 Kal",
        price: "85",
        type: "Frequent order",
        images: "assets/images/cm3.jpg"
    ),
    MenuModel(
        name: "Poori masala 2 naan",
        gm: "80 gm",
        kalories: "100 Kal",
        price: "85",
        type: "Veg",
        images: "assets/images/cm4.jpg"
    ),
    MenuModel(
        name: "Idli sambar",
        gm: "80 gm",
        kalories: "100 Kal",
        price: "85",
        type: "Veg",
        images: "assets/images/cm5.webp"
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height*.35,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("RECOMMENDED BREAKFAST", style: TextStyle(// decoration: TextDecoration.none,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontFamily: "Plus"
                ),
                ),

              ],
            ),
            SizedBox(height: 20,),
            Expanded(child:
            ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: data.length,
                shrinkWrap: true,
                itemBuilder: (context,index){

                  return Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                        child: Column(
                          children: [
                            SizedBox(height: MediaQuery.of(context).size.height*.04,),
                            Container(
                              width: MediaQuery.of(context).size.width*.47,
                              height: MediaQuery.of(context).size.height*.25,
                              decoration: BoxDecoration(
                                color: Color(0xff18181C),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Container(
                                width: MediaQuery.of(context).size.width*.5,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Spacer(),
                                      Spacer(),
                                      Text(
                                        "${data[index].name}",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w900,fontFamily: "Plus"),),
                                      SizedBox(height: 5,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Icon(Icons.local_fire_department_sharp,color:Constantdata.Text_greycolor,size: 15,),
                                              Text(" 320 local",style: TextStyle(
                                                fontSize: 10,
                                                color: Constantdata.Text_greycolor,
                                                fontFamily: "Plus",
                                              ),)
                                            ],
                                          ),
                                          SizedBox(width: 5,),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Icon(Icons.balance,color:Constantdata.Text_greycolor,size: 15,),
                                              Text(" 10 gm",style: TextStyle(
                                                fontSize: 10,
                                                color: Constantdata.Text_greycolor,
                                                fontFamily: "Plus",
                                              ),)
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 5,),
                                      Text("\u{20B9} 85",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w900,fontFamily: "Plus"),),
                                      SizedBox(height: 5,),
                                      CircleAvatar(
                                        backgroundColor: Colors.grey,
                                        radius: 13,
                                        child: Icon(Icons.add,color: Colors.black,),
                                      ),
                                      Spacer(),

                                    ],
                                  ),
                                ),

                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage("${data[index].images}"),
                            fit: BoxFit.cover
                          )
                        ),
                      )
                    ],
                  );
                }))
          ],
        ),
      ),
    );
  }
}
