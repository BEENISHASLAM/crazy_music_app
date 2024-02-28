import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:floating_navigation_bar/floating_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

import '../const/app_colors.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Appcolor.black,
      // appBar: AppBar(
      //   backgroundColor: Colors.black,
      //   leading: IconButton(
      //     icon: Icon(Icons.menu),
      //     color: Colors.white,
      //     onPressed: () {
      //       // Add your onPressed logic here
      //     },
      //   ),
      //   title: const Text(
      //     "Home",
      //     style: TextStyle(color: Colors.white),),
      //
      // ),


      body: SingleChildScrollView(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           SizedBox(
             height: 30,
           ),
           Padding(
             padding: EdgeInsets.all(10.0),
             child: Text(
               'Welcome',
               style: TextStyle(
                 fontSize: 24.0,
                 fontWeight: FontWeight.bold,
                 color: Appcolor.grey300,
               ),
             ),
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
             Padding(
               padding: EdgeInsets.all(10.0),
               child: Text(
                 'Beenish Asalm',
                 style: TextStyle(
                   fontSize: 16.0,
                   color: Appcolor.grey300,
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(10.0),
               child: Image.asset(
               'assets/images/user.png',
               width: 50.0,
               height: 50.0,
                          ),
             ),

           ],),
           Container(height: 60,
             child: Padding(
               padding: const EdgeInsets.all(2.0),
               child: TextField(
                 decoration: InputDecoration(
                   prefixIcon: Icon(Icons.search, color: Appcolor.grey300,),
                   hintText: 'Search...',
                   hintStyle: TextStyle(color: Appcolor.grey300),
                   border: OutlineInputBorder(),
                 ),
                 onChanged: (value) {
                   // Add your search logic here
                 },
               ),),),
           SizedBox(
             height: 10,
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
               height:180,
               decoration: BoxDecoration(
                 image: DecorationImage(
                   image:AssetImage('assets/images/pic.jpg'),
                   fit: BoxFit.cover,
                 ),
                 borderRadius:
                 BorderRadius.all(Radius.circular(10.0),),
               ),
             ),
           ),
           SizedBox(height: 2,),
           Padding(
             padding: const EdgeInsets.all(4.0),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
               Text("Most popular",
                 style:TextStyle(
                     color: Appcolor.grey300,
                   fontSize: 22.0,
                   fontWeight: FontWeight.bold,
                 )
                 ,),
               Container(
                 width: 90,
                 height: 30,
                 decoration: BoxDecoration(
                   color:Appcolor.orange,
                   border: Border.all(
                     color: Colors.black,
                     width: 2.0,
                   ),
                   borderRadius: BorderRadius.circular(10.0),
                 ),
                 child:Center(
                   child: Text("View all",style:TextStyle(
                     fontSize: 16,
                       color:Appcolor.grey300),),
                 )
               )
             ],),
           ),
        GridView.count(
          shrinkWrap: true,
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 7.0,
          children: List.generate(2, (index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image:AssetImage('assets/images/image.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius:
                  BorderRadius.all(Radius.circular(20.0),),
                ),
              ),
            );
          },),),

         ],
       ),

      ),
      bottomNavigationBar: FloatingNavigationBar(
        barHeight: 70.0,
        barWidth: MediaQuery.of(context).size.width - 30.0,
        backgroundColor:  Appcolor.orange,
        iconColor: Colors.white,
        textStyle: TextStyle(
          color: Colors.white,
          fontSize: 14.0,
        ),
        iconSize: 20.0,
        items: [
          NavBarItems(icon: EvaIcons.homeOutline,title: "Home"),
          NavBarItems( icon: EvaIcons.search,title: "Search"),
          NavBarItems(
              icon: EvaIcons.activity,title: "Profile"),
        ],
        onChanged: (value) {
        },
      ),
    );
  }
}
