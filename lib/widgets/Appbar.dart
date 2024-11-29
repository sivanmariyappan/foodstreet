import 'package:flutter/material.dart';
import 'package:foodstreet/Constantfile.dart';

class appbar extends StatelessWidget {
  const appbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0,right: 8.0,top: 8),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.black12,
                    backgroundImage: AssetImage("assets/images/user.jpeg"),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width*.02,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Deliver to",style: TextStyle(
                          fontSize: 12,
                          color: Constantdata.Text_greycolor,
                        fontFamily: "plus",
                      ),),
                      SizedBox(height: 2,),
                      Text("Adayar, Chennai.",style: TextStyle(
                        fontSize: 14,
                        color:Color(0xffD3D3D3),
                        fontFamily: "plus",
                      ),),
                    ],
                  ),
                ],
              ),
              Icon(
                Icons.notifications,
                color: Colors.white,
              )
            ],
          ),
          SizedBox(height: 5,),
          Divider(color: Color(0xff18181A),thickness: 2,)
        ],
      ),
    );
  }
}
