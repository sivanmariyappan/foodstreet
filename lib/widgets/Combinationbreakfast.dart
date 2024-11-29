import 'package:flutter/material.dart';

import '../Constantfile.dart';
import '../Screens/Model/Menumodel.dart';
class Combinationbreakfast extends StatefulWidget {
  const Combinationbreakfast({Key? key}) : super(key: key);

  @override
  State<Combinationbreakfast> createState() => _CombinationbreakfastState();
}

class _CombinationbreakfastState extends State<Combinationbreakfast> {


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
        height: MediaQuery.of(context).size.height*.8,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("COMBINATION BREAKFAST", style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontFamily: "Plus"
                ),),
              ],
            ),
            SizedBox(height: 20,),
            Expanded(
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: data.length,
                itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.only(top: 8.0,bottom: 8.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height*.13,
                        decoration: BoxDecoration(
                          color: Color(0xff18181C),
                        // border: Border.all(),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height*.13,
                              width: MediaQuery.of(context).size.width*.33,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(16),
                                    topLeft: Radius.circular(16),
                                  ),
                                  image: DecorationImage(
                                      image:AssetImage("${data[index].images}"),
                                      fit: BoxFit.cover
                                  )

                              ),
                            ),
                            Expanded(child:
                            Container(
                              width: MediaQuery.of(context).size.width*.5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(16),
                                  bottomLeft: Radius.circular(16),
                                ),

                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text("${data[index].name}",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w900,fontFamily: "Plus"),),
                                    Row(
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Icon(Icons.local_fire_department_sharp,color:Constantdata.Text_greycolor,size: 15,),
                                            Text(" ${data[index].kalories}",style: TextStyle(
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
                                            Text(" ${data[index].gm}",style: TextStyle(
                                              fontSize: 10,
                                              color: Constantdata.Text_greycolor,
                                              fontFamily: "Plus",
                                            ),)
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [

                                        Text("\u{20B9} ${data[index].price}",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w900,fontFamily: "Plus"),),
                                        CircleAvatar(
                                          backgroundColor: Colors.grey,
                                          radius: 13,
                                          child: Icon(Icons.add,color: Colors.black,),
                                        )

                                      ],
                                    )

                                  ],
                                ),
                              ),

                            ))
                          ],
                        ),
                      ),
                    );

            }))

          ],
        ),
      ),
    );
  }
}
