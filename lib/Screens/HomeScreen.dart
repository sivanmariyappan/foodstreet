import 'package:flutter/material.dart';
import 'package:foodstreet/Constantfile.dart';

import '../widgets/Appbar.dart';
import '../widgets/Categories.dart';
import '../widgets/Combinationbreakfast.dart';
import '../widgets/Homepage_Bannerwidgets.dart';
import '../widgets/Menu.dart';
import '../widgets/Recommandedbreakfast.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  TextEditingController searchdata=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constantdata.mainbackgroun,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Column(
            children: [
              appbar(),
              SizedBox(height: 10,),
              search_widgets(),
              SizedBox(height: 10,),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                  children: [
                    HomepageBannerWIdget(),
                    SizedBox(height: 10,),
                    Menu(),
                    SizedBox(height: 10,),
                    Combinationbreakfast(),
                    SizedBox(height: 10,),
                    // GridContent(),
                    Recommandedbreakfast()
                  ],
                  ),
                ))
            ],
          ),
        ),
      ),

    );
  }


  search_widgets(){
    return Padding(
      padding: EdgeInsets.only(left: 8.0,right: 8.0),
      child: TextFormField(
        controller: searchdata,
        style: TextStyle(
          fontSize: 14,
          color:Colors.white,
          fontWeight: FontWeight.w400,
          fontFamily: "general",
          decoration: TextDecoration.none,
        ),
        onChanged: (value) {

        },
        decoration: InputDecoration(
          suffixIcon:Icon(Icons.search,color: Colors.white,),
          contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),// errorText: "Error",
          border: OutlineInputBorder(
            borderSide:  BorderSide(
                color: Constantdata.search_background, width: 1.0),
            borderRadius: BorderRadius.circular(20.0),
          ),

          focusedBorder: OutlineInputBorder(
            borderSide:  BorderSide(
                color: Constantdata.search_background, width: 1.0),
            borderRadius: BorderRadius.circular(20.0),
          ),

          fillColor:Constantdata.search_background,
          filled: true,
          labelText: 'Search for delicious food...',
          labelStyle: TextStyle(
              color:Color(0xffD3D3D3),
              fontSize: 12,
              fontFamily: "plus",
              decoration: TextDecoration.none
          ),
        ),
      ),
    );
  }
}
