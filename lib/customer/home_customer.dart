import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:nearby/theme/colors.dart';
import 'package:nearby/widgets/appbar.dart';
import 'package:nearby/widgets/bottom_nav_bar.dart';
import 'package:nearby/widgets/drawer.dart';

class home_customer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: Image.asset('assets/images/background.png').image,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        bottomNavigationBar: BottomNavBar(),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.0), // here the desired height
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: appbar(),
          ),
        ),
        drawer: drawer(),
        // resizeToAvoidBottomInset: false,

        body:  /*Expanded( child: Row(
          crossAxisAlignment : CrossAxisAlignment.start,
              children: [
                SizedBox(height: 100,),
                Padding(
                  padding: EdgeInsets.fromLTRB(40,0,40,0),
                  child: Text("Kitchen’s Available Near You ", textAlign: TextAlign.left, style: TextStyle( fontSize: 18, color: Colors.blue,),),
                ),
*/
                ListView(

                  children: <Widget>[
                    Padding(padding: EdgeInsets.all(10.0),
                      child:Container(
                      decoration: BoxDecoration( color: Colors.white,
                        borderRadius: BorderRadius.circular(20),),
                        child:ListTile(  contentPadding: EdgeInsets.fromLTRB(20,10,10,10),
                          leading: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child:Image.asset('assets/images/kitchen-home.jpg', fit:BoxFit.contain), ),
                          title: Padding(padding: EdgeInsets.fromLTRB(0,12,0,0),
                              child:Text('Alka Kitchen', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blueGrey,) ), ),
                          subtitle: Column(
                            crossAxisAlignment : CrossAxisAlignment.start,
                            children: [
                            Row(children: [
                              Icon(Icons.star,color: Colors.green,),
                              Padding(padding: EdgeInsets.all(10),child:Text("4.5 Ratings"),),
                            ],),
                            Row(
                              children: [
                                Padding( padding: EdgeInsets.fromLTRB(0,5,5,5),
                                  child: Container(
                                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50), ),color: Colors.orange),
                                    child:Padding(padding: EdgeInsets.fromLTRB(15,5,15,5),
                                      child:Text("Breakfast", style: TextStyle(color: Colors.white),),),),),

                                Padding( padding: EdgeInsets.fromLTRB(0,5,5,5),
                                  child: Container(
                                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50), ),color: Colors.orange),
                                    child:Padding(padding: EdgeInsets.fromLTRB(15,5,15,5),
                                      child:Text("Dinner", style: TextStyle(color: Colors.white),),),),),
                                Padding( padding: EdgeInsets.fromLTRB(0,5,5,5),
                                  child: Container(
                                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50), ),color: Colors.orange),
                                    child:Padding(padding: EdgeInsets.fromLTRB(15,5,15,5),
                                      child:Text("Snacks", style: TextStyle(color: Colors.white),),),),),
                              ],
                            ),
                            Padding(padding: EdgeInsets.fromLTRB(0,10,0,0),child:Row(children: [
                              ClipOval(child: Image.asset('assets/images/kitchen-home.jpg', width: 30, height: 30, fit:BoxFit.cover ),),
                              ClipOval(child: Image.asset('assets/images/cheese.jpg', width: 30, height: 30, fit:BoxFit.cover ),),
                              ClipOval(child: Image.asset('assets/images/kitchen-home.jpg', width: 30, height: 30, fit:BoxFit.cover ),),
                              Padding(padding: EdgeInsets.fromLTRB(10,0,0,0),child:Text("86 People Interested", style: TextStyle(color: Colors.blueGrey,)),),
                              ],)
                            ),
                          ],
                        )
                      ),
                     ),
                    ),

                    Padding(padding: EdgeInsets.all(10.0),
                      child:Container(
                        decoration: BoxDecoration( color: Colors.white,
                          borderRadius: BorderRadius.circular(20),),
                        child:ListTile(  contentPadding: EdgeInsets.fromLTRB(20,10,10,10),
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child:Image.asset('assets/images/cheese.jpg', fit:BoxFit.contain), ),
                            title: Padding(padding: EdgeInsets.fromLTRB(0,12,0,0),
                              child:Text('Alex Kitchen', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blueGrey,) ), ),
                            subtitle: Column(
                              crossAxisAlignment : CrossAxisAlignment.start,
                              children: [
                                Row(children: [
                                  Icon(Icons.star,color: Colors.green,),
                                  Padding(padding: EdgeInsets.all(10),child:Text("4.5 Ratings"),),
                                ],),
                                Row(
                                  children: [
                                    Padding( padding: EdgeInsets.fromLTRB(0,5,5,5),
                                      child: Container(
                                        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50), ),color: Colors.orange),
                                        child:Padding(padding: EdgeInsets.fromLTRB(15,5,15,5),
                                          child:Text("Breakfast", style: TextStyle(color: Colors.white),),),),),

                                    Padding( padding: EdgeInsets.fromLTRB(0,5,5,5),
                                      child: Container(
                                        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50), ),color: Colors.orange),
                                        child:Padding(padding: EdgeInsets.fromLTRB(15,5,15,5),
                                          child:Text("Dinner", style: TextStyle(color: Colors.white),),),),),
                                    Padding( padding: EdgeInsets.fromLTRB(0,5,5,5),
                                      child: Container(
                                        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50), ),color: Colors.orange),
                                        child:Padding(padding: EdgeInsets.fromLTRB(15,5,15,5),
                                          child:Text("Snacks", style: TextStyle(color: Colors.white),),),),),
                                  ],
                                ),
                                Padding(padding: EdgeInsets.fromLTRB(0,10,0,0),child:Row(children: [
                                  ClipOval(child: Image.asset('assets/images/kitchen-home.jpg', width: 30, height: 30, fit:BoxFit.cover ),),
                                  ClipOval(child: Image.asset('assets/images/cheese.jpg', width: 30, height: 30, fit:BoxFit.cover ),),
                                  ClipOval(child: Image.asset('assets/images/kitchen-home.jpg', width: 30, height: 30, fit:BoxFit.cover ),),
                                  Padding(padding: EdgeInsets.fromLTRB(10,0,0,0),child:Text("86 People Interested", style: TextStyle(color: Colors.blueGrey,)),),
                                ],)
                                ),
                              ],
                            )
                        ),
                      ),
                    ),

                    Padding(padding: EdgeInsets.all(10.0),
                      child:Container(
                        decoration: BoxDecoration( color: Colors.white,
                          borderRadius: BorderRadius.circular(20),),
                        child:ListTile(  contentPadding: EdgeInsets.fromLTRB(20,10,10,10),
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child:Image.asset('assets/images/kitchen-home.jpg', fit:BoxFit.contain), ),
                            title: Padding(padding: EdgeInsets.fromLTRB(0,12,0,0),
                              child:Text('Alka Kitchen', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blueGrey,) ), ),
                            subtitle: Column(
                              crossAxisAlignment : CrossAxisAlignment.start,
                              children: [
                                Row(children: [
                                  Icon(Icons.star,color: Colors.green,),
                                  Padding(padding: EdgeInsets.all(10),child:Text("4.5 Ratings"),),
                                ],),
                                Row(
                                  children: [
                                    Padding( padding: EdgeInsets.fromLTRB(0,5,5,5),
                                      child: Container(
                                        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50), ),color: Colors.orange),
                                        child:Padding(padding: EdgeInsets.fromLTRB(15,5,15,5),
                                          child:Text("Breakfast", style: TextStyle(color: Colors.white),),),),),

                                    Padding( padding: EdgeInsets.fromLTRB(0,5,5,5),
                                      child: Container(
                                        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50), ),color: Colors.orange),
                                        child:Padding(padding: EdgeInsets.fromLTRB(15,5,15,5),
                                          child:Text("Dinner", style: TextStyle(color: Colors.white),),),),),
                                    Padding( padding: EdgeInsets.fromLTRB(0,5,5,5),
                                      child: Container(
                                        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50), ),color: Colors.orange),
                                        child:Padding(padding: EdgeInsets.fromLTRB(15,5,15,5),
                                          child:Text("Snacks", style: TextStyle(color: Colors.white),),),),),
                                  ],
                                ),
                                Padding(padding: EdgeInsets.fromLTRB(0,10,0,0),child:Row(children: [
                                  ClipOval(child: Image.asset('assets/images/kitchen-home.jpg', width: 30, height: 30, fit:BoxFit.cover ),),
                                  ClipOval(child: Image.asset('assets/images/cheese.jpg', width: 30, height: 30, fit:BoxFit.cover ),),
                                  ClipOval(child: Image.asset('assets/images/kitchen-home.jpg', width: 30, height: 30, fit:BoxFit.cover ),),
                                  Padding(padding: EdgeInsets.fromLTRB(10,0,0,0),child:Text("86 People Interested", style: TextStyle(color: Colors.blueGrey,)),),
                                ],)
                                ),
                              ],
                            )
                        ),
                      ),
                    ),

                    Padding(padding: EdgeInsets.all(10.0),
                      child:Container(
                        decoration: BoxDecoration( color: Colors.white,
                          borderRadius: BorderRadius.circular(20),),
                        child:ListTile(  contentPadding: EdgeInsets.fromLTRB(20,10,10,10),
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child:Image.asset('assets/images/kitchen-home.jpg', fit:BoxFit.contain), ),
                            title: Padding(padding: EdgeInsets.fromLTRB(0,12,0,0),
                              child:Text('Alex Kitchen', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blueGrey,) ), ),
                            subtitle: Column(
                              crossAxisAlignment : CrossAxisAlignment.start,
                              children: [
                                Row(children: [
                                  Icon(Icons.star,color: Colors.green,),
                                  Padding(padding: EdgeInsets.all(10),child:Text("4.5 Ratings"),),
                                ],),
                                Row(
                                  children: [
                                    Padding( padding: EdgeInsets.fromLTRB(0,5,5,5),
                                      child: Container(
                                        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50), ),color: Colors.orange),
                                        child:Padding(padding: EdgeInsets.fromLTRB(15,5,15,5),
                                          child:Text("Breakfast", style: TextStyle(color: Colors.white),),),),),

                                    Padding( padding: EdgeInsets.fromLTRB(0,5,5,5),
                                      child: Container(
                                        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50), ),color: Colors.orange),
                                        child:Padding(padding: EdgeInsets.fromLTRB(15,5,15,5),
                                          child:Text("Dinner", style: TextStyle(color: Colors.white),),),),),
                                    Padding( padding: EdgeInsets.fromLTRB(0,5,5,5),
                                      child: Container(
                                        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50), ),color: Colors.orange),
                                        child:Padding(padding: EdgeInsets.fromLTRB(15,5,15,5),
                                          child:Text("Snacks", style: TextStyle(color: Colors.white),),),),),
                                  ],
                                ),
                                Padding(padding: EdgeInsets.fromLTRB(0,10,0,0),child:Row(children: [
                                  ClipOval(child: Image.asset('assets/images/kitchen-home.jpg', width: 30, height: 30, fit:BoxFit.cover ),),
                                  ClipOval(child: Image.asset('assets/images/cheese.jpg', width: 30, height: 30, fit:BoxFit.cover ),),
                                  ClipOval(child: Image.asset('assets/images/kitchen-home.jpg', width: 30, height: 30, fit:BoxFit.cover ),),
                                  Padding(padding: EdgeInsets.fromLTRB(10,0,0,0),child:Text("86 People Interested", style: TextStyle(color: Colors.blueGrey,)),),
                                ],)
                                ),
                              ],
                            )
                        ),
                      ),
                    ),

                    Padding(padding: EdgeInsets.all(10.0),
                      child:Container(
                        decoration: BoxDecoration( color: Colors.white,
                          borderRadius: BorderRadius.circular(20),),
                        child:ListTile(  contentPadding: EdgeInsets.fromLTRB(20,10,10,10),
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child:Image.asset('assets/images/kitchen-home.jpg', fit:BoxFit.contain), ),
                            title: Padding(padding: EdgeInsets.fromLTRB(0,12,0,0),
                              child:Text('Alex Kitchen', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blueGrey,) ), ),
                            subtitle: Column(
                              crossAxisAlignment : CrossAxisAlignment.start,
                              children: [
                                Row(children: [
                                  Icon(Icons.star,color: Colors.green,),
                                  Padding(padding: EdgeInsets.all(10),child:Text("4.5 Ratings"),),
                                ],),
                                Row(
                                  children: [
                                    Padding( padding: EdgeInsets.fromLTRB(0,5,5,5),
                                      child: Container(
                                        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50), ),color: Colors.orange),
                                        child:Padding(padding: EdgeInsets.fromLTRB(15,5,15,5),
                                          child:Text("Breakfast", style: TextStyle(color: Colors.white),),),),),

                                    Padding( padding: EdgeInsets.fromLTRB(0,5,5,5),
                                      child: Container(
                                        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50), ),color: Colors.orange),
                                        child:Padding(padding: EdgeInsets.fromLTRB(15,5,15,5),
                                          child:Text("Dinner", style: TextStyle(color: Colors.white),),),),),
                                    Padding( padding: EdgeInsets.fromLTRB(0,5,5,5),
                                      child: Container(
                                        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50), ),color: Colors.orange),
                                        child:Padding(padding: EdgeInsets.fromLTRB(15,5,15,5),
                                          child:Text("Snacks", style: TextStyle(color: Colors.white),),),),),
                                  ],
                                ),
                                Padding(padding: EdgeInsets.fromLTRB(0,10,0,0),child:Row(children: [
                                  ClipOval(child: Image.asset('assets/images/kitchen-home.jpg', width: 30, height: 30, fit:BoxFit.cover ),),
                                  ClipOval(child: Image.asset('assets/images/cheese.jpg', width: 30, height: 30, fit:BoxFit.cover ),),
                                  ClipOval(child: Image.asset('assets/images/kitchen-home.jpg', width: 30, height: 30, fit:BoxFit.cover ),),
                                  Padding(padding: EdgeInsets.fromLTRB(10,0,0,0),child:Text("86 People Interested", style: TextStyle(color: Colors.blueGrey,)),),
                                ],)
                                ),
                              ],
                            )
                        ),
                      ),
                    ),

                    Padding(padding: EdgeInsets.all(10.0),
                      child:Container(
                        decoration: BoxDecoration( color: Colors.white,
                          borderRadius: BorderRadius.circular(20),),
                        child:ListTile(  contentPadding: EdgeInsets.fromLTRB(20,10,10,10),
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child:Image.asset('assets/images/kitchen-home.jpg', fit:BoxFit.contain), ),
                            title: Padding(padding: EdgeInsets.fromLTRB(0,12,0,0),
                              child:Text('Alex Kitchen', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blueGrey,) ), ),
                            subtitle: Column(
                              crossAxisAlignment : CrossAxisAlignment.start,
                              children: [
                                Row(children: [
                                  Icon(Icons.star,color: Colors.green,),
                                  Padding(padding: EdgeInsets.all(10),child:Text("4.5 Ratings"),),
                                ],),
                                Row(
                                  children: [
                                    Padding( padding: EdgeInsets.fromLTRB(0,5,5,5),
                                      child: Container(
                                        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50), ),color: Colors.orange),
                                        child:Padding(padding: EdgeInsets.fromLTRB(15,5,15,5),
                                          child:Text("Breakfast", style: TextStyle(color: Colors.white),),),),),

                                    Padding( padding: EdgeInsets.fromLTRB(0,5,5,5),
                                      child: Container(
                                        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50), ),color: Colors.orange),
                                        child:Padding(padding: EdgeInsets.fromLTRB(15,5,15,5),
                                          child:Text("Dinner", style: TextStyle(color: Colors.white),),),),),
                                    Padding( padding: EdgeInsets.fromLTRB(0,5,5,5),
                                      child: Container(
                                        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50), ),color: Colors.orange),
                                        child:Padding(padding: EdgeInsets.fromLTRB(15,5,15,5),
                                          child:Text("Snacks", style: TextStyle(color: Colors.white),),),),),
                                  ],
                                ),
                                Padding(padding: EdgeInsets.fromLTRB(0,10,0,0),child:Row(children: [
                                  ClipOval(child: Image.asset('assets/images/kitchen-home.jpg', width: 30, height: 30, fit:BoxFit.cover ),),
                                  ClipOval(child: Image.asset('assets/images/cheese.jpg', width: 30, height: 30, fit:BoxFit.cover ),),
                                  ClipOval(child: Image.asset('assets/images/kitchen-home.jpg', width: 30, height: 30, fit:BoxFit.cover ),),
                                  Padding(padding: EdgeInsets.fromLTRB(10,0,0,0),child:Text("86 People Interested", style: TextStyle(color: Colors.blueGrey,)),),
                                ],)
                                ),
                              ],
                            )
                        ),
                      ),
                    ),

                    Padding(padding: EdgeInsets.all(10.0),
                      child:Container(
                        decoration: BoxDecoration( color: Colors.white,
                          borderRadius: BorderRadius.circular(20),),
                        child:ListTile(  contentPadding: EdgeInsets.fromLTRB(20,10,10,10),
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child:Image.asset('assets/images/kitchen-home.jpg', fit:BoxFit.contain), ),
                            title: Padding(padding: EdgeInsets.fromLTRB(0,12,0,0),
                              child:Text('Alex Kitchen', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blueGrey,) ), ),
                            subtitle: Column(
                              crossAxisAlignment : CrossAxisAlignment.start,
                              children: [
                                Row(children: [
                                  Icon(Icons.star,color: Colors.green,),
                                  Padding(padding: EdgeInsets.all(10),child:Text("4.5 Ratings"),),
                                ],),
                                Row(
                                  children: [
                                    Padding( padding: EdgeInsets.fromLTRB(0,5,5,5),
                                      child: Container(
                                        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50), ),color: Colors.orange),
                                        child:Padding(padding: EdgeInsets.fromLTRB(15,5,15,5),
                                          child:Text("Breakfast", style: TextStyle(color: Colors.white),),),),),

                                    Padding( padding: EdgeInsets.fromLTRB(0,5,5,5),
                                      child: Container(
                                        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50), ),color: Colors.orange),
                                        child:Padding(padding: EdgeInsets.fromLTRB(15,5,15,5),
                                          child:Text("Dinner", style: TextStyle(color: Colors.white),),),),),
                                    Padding( padding: EdgeInsets.fromLTRB(0,5,5,5),
                                      child: Container(
                                        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50), ),color: Colors.orange),
                                        child:Padding(padding: EdgeInsets.fromLTRB(15,5,15,5),
                                          child:Text("Snacks", style: TextStyle(color: Colors.white),),),),),
                                  ],
                                ),
                                Padding(padding: EdgeInsets.fromLTRB(0,10,0,0),child:Row(children: [
                                  ClipOval(child: Image.asset('assets/images/kitchen-home.jpg', width: 30, height: 30, fit:BoxFit.cover ),),
                                  ClipOval(child: Image.asset('assets/images/cheese.jpg', width: 30, height: 30, fit:BoxFit.cover ),),
                                  ClipOval(child: Image.asset('assets/images/kitchen-home.jpg', width: 30, height: 30, fit:BoxFit.cover ),),
                                  Padding(padding: EdgeInsets.fromLTRB(10,0,0,0),child:Text("86 People Interested", style: TextStyle(color: Colors.blueGrey,)),),
                                ],)
                                ),
                              ],
                            )
                        ),
                      ),
                    ),


                  ],
                ),


               /* SizedBox(height: 100),*/

              /*],
            ),
        ),*/
        ), );
      /*),
    );*/
  }
}