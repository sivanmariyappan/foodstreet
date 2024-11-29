import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import '../Constantfile.dart';
import '../Screens/Model/Menumodel.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {

  final List<String> labels = [
    'Frequent order',
    'Veg',
    'Fish',
    'Egg',
    'Chicken'
  ];



  List<MenuModel> data=[
    MenuModel(
        name: "Burger",
        gm: "80 gm",
        kalories: "100 Kal",
        price: "85",
        type: "Frequent order",
        images: "assets/images/9.jpeg"
    ),
    MenuModel(
        name: "grilled chicken",
        gm: "250 gm",
        kalories: "150 Kal",
        price: "100",
        type: "Frequent order",
        images: "assets/images/6.jpeg"
    ),
    MenuModel(
        name: "KFC chicken",
        gm: "80 gm",
        kalories: "100 Kal",
        price: "85",
        type: "Frequent order",
        images: "assets/images/11.jpeg"
    ),
    MenuModel(
        name: "Dosa Roast",
        gm: "80 gm",
        kalories: "100 Kal",
        price: "85",
        type: "Veg",
        images: "assets/images/veg3.jpg"
    ),
    MenuModel(
        name: "Butter non",
        gm: "80 gm",
        kalories: "100 Kal",
        price: "85",
        type: "Veg",
        images: "assets/images/veg1.jpg"
    ),

    MenuModel(
        name: "Fish",
        gm: "80 gm",
        kalories: "100 Kal",
        price: "100",
        type: "Fish",
        images: "assets/images/fish2.jpg"
    ),
    MenuModel(
        name: "Roast fish",
        gm: "80 gm",
        kalories: "100 Kal",
        price: "90",
        type: "Fish",
        images: "assets/images/fish1.jpg"
    ),


    MenuModel(
        name: "Omelette",
        gm: "80 gm",
        kalories: "100 Kal",
        price: "100",
        type: "Egg",
        images: "assets/images/egg1.jpg"
    ),
    MenuModel(
        name: "bread omelette",
        gm: "80 gm",
        kalories: "100 Kal",
        price: "90",
        type: "Egg",
        images: "assets/images/egg2.jpg"
    ),
    MenuModel(
        name: "Fried chicken",
        gm: "80 gm",
        kalories: "100 Kal",
        price: "100",
        type: "Chicken",
        images: "assets/images/chicken1.webp"
    ),
    MenuModel(
        name: "Chicken gravy",
        gm: "80 gm",
        kalories: "100 Kal",
        price: "90",
        type: "Chicken",
        images: "assets/images/chicken2.jpg"
    ),

  ];
  List<MenuModel> frequentOrderItems=[];

  int? _selectedScreenIndex = 0;
  void _selectScreen(int index) async{
    frequentOrderItems = await data.where((item) => item.type == "${labels[index]}").toList();
    setState(()  {
      _selectedScreenIndex = index;

    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _selectScreen(0);
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height*.45,
        decoration: BoxDecoration(
          // border: Border.all(color: Colors.white)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("MENU", style: TextStyle(// decoration: TextDecoration.none,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontFamily: "Plus"
                ),),
                Row(
                  children: [
                    Text("SORT BY",
                        style: TextStyle(// decoration: TextDecoration.none,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontFamily: "Plus"
                        )
                    ),
                    ShaderMask(
                      shaderCallback: (Rect bounds) {
                        return LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xffF3D690), Color(0xffE5AE0D)],
                        ).createShader(bounds);
                      },
                      child: Icon(
                        Icons.arrow_right_sharp,
                        color: Colors.white,
                        size: 20,
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 20,),
            Container(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                // padding: const EdgeInsets.all(8.0),
                itemCount: labels.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:  EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 10),
                    child: ChoiceChip(
                      backgroundColor: Colors.black38,
                      label: Text(
                        labels[index],
                        style: TextStyle(
                          color: _selectedScreenIndex == index
                              ? Colors.black
                              : Colors.grey.shade200,
                        ),
                      ),
                      selected: _selectedScreenIndex == index,
                      selectedColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13),
                      ),
                      onSelected: (bool selected) {
                        setState(() {
                          _selectedScreenIndex = selected
                              ? index
                              : null;
                          _selectScreen(index);
                          // Update the selected option
                        });
                      },
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20,),
            Expanded(
              child:_screen(type:frequentOrderItems),
            ),
          ],
        ),
      ),
    );
  }
}


class _screen extends StatefulWidget {
  final List<MenuModel> type;
  const _screen({Key? key, required this.type}) : super(key: key);

  @override
  State<_screen> createState() => _screenState();
}

class _screenState extends State<_screen> {




@override
  void initState() {
    // TODO: implement initState
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
        itemCount: widget.type.length,
        shrinkWrap: true,
        itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
          child: Container(
            width: MediaQuery.of(context).size.width*.47,
            // height: MediaQuery.of(context).size.height*.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: [
               Container(
                height: MediaQuery.of(context).size.height*.2,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.only(
                     topRight: Radius.circular(16),
                     topLeft: Radius.circular(16),
                   ),
                     image: DecorationImage(
                         image:AssetImage("${widget.type[index].images}"),
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
                    gradient: RadialGradient(
                        colors: [
                          const Color(0xFF1C0600),
                          const Color(0xFF050100),

                        ],
                        stops: [0.0, 1.0],
                        tileMode: TileMode.clamp
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("${widget.type[index].name}",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w900,fontFamily: "Plus"),),
                        Row(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(Icons.local_fire_department_sharp,color:Constantdata.Text_greycolor,size: 15,),
                                Text(" ${widget.type[index].kalories}",style: TextStyle(
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
                                Text(" ${widget.type[index].gm}",style: TextStyle(
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

                            Text("\u{20B9} ${widget.type[index].price}",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w900,fontFamily: "Plus"),),
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
    });
  }
}

