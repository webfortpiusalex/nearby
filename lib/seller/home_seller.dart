import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:nearby/theme/colors.dart';
import 'package:nearby/widgets/bottom_nav_bar.dart';

final List<String> imagesList = [
  'https://cdn.pixabay.com/photo/2020/11/01/23/22/breakfast-5705180_1280.jpg',
  'https://cdn.pixabay.com/photo/2016/11/18/19/00/breads-1836411_1280.jpg',
  'https://cdn.pixabay.com/photo/2019/01/14/17/25/gelato-3932596_1280.jpg',
  'https://cdn.pixabay.com/photo/2017/04/04/18/07/ice-cream-2202561_1280.jpg',
];

final List<String> titles = [
  ' Coffee ',
  ' Bread ',
  ' Gelato ',
  ' Ice Cream ',
];



class home_seller extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<home_seller> {
  int _currentIndex = 0;
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


        body:  SingleChildScrollView(
          child:  Column(
              children: [
                Padding(
                padding: EdgeInsets.fromLTRB(40, 20, 20, 20),
                child:
                  Column(
                  children: [

                  Row(
                    children: [
                      Container(
                          child: Row(
                            children: [
                              ClipOval(child: Image.asset('assets/images/kitchen-home.jpg', width: 50, height: 50, fit:BoxFit.cover ),),
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                             child:  Container(
                                child: Column(
                                  crossAxisAlignment : CrossAxisAlignment.start,
                                  children: [
                                  Text("Hello, ", textAlign: TextAlign.left, style: TextStyle( fontSize: 20, color: Colors.blueGrey,),),
                                  Text("Pius Alex! ", textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold,  fontSize: 20, color: Colors.blueGrey,),),
                                ],),
                              ),
                            ),
                            ],
                          ),
                        ),
                    ],
                  ),

                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 40, 0),
                      child: Expanded(

                        child:Column(
                          children: [
                            Text("What are you Cooking today? ", textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20, color: Colors.blueGrey,),),

                          ]),
                      )

                    ),
                    Padding(
                    padding: EdgeInsets.fromLTRB(0, 20, 40, 0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(180, 40),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          primary: Colors.white,

                        ),
                        onPressed: () {
                          // Respond to button press
                        },
                        child: Text('Create Dish Now', style: TextStyle(color: Colors.blueGrey, fontSize: 16, fontWeight: FontWeight.w300)),
                      ),
                    ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 40, 20),
                      child: Expanded(

                        child:Column(
                            children: [
                              Row(
                                mainAxisAlignment : MainAxisAlignment.center,
                                children: [
                                Text("Your ", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12, color: Colors.blueGrey,),),
                                Text("Food ", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12, color: Colors.orange,),),
                                Text("Quality Decides ,", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12, color: Colors.blueGrey,),),
                                  Text("Your ", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12, color: Colors.blueGrey,),),
                                  Text("Life’s ", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12, color: Colors.orange,),),
                                  Text("Quality... ", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12, color: Colors.blueGrey,),),

                                ],),

                              /*Row( mainAxisAlignment : MainAxisAlignment.center,
                                children: [
                                ],)*/

                            ]),
                      )

                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0,0,40,10),
                    child:Column(
                          mainAxisAlignment : MainAxisAlignment.start,
                          crossAxisAlignment : CrossAxisAlignment.start,
                          children: [
                            Text("Categories", textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20, color: Colors.blueGrey,))
                          ],

                      ),
                  ),

                  Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0,5,5,5),
                      child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50), ),color: Colors.orange),
                        child:Padding(padding: EdgeInsets.fromLTRB(5,5,15,5),
                          child: Row( children: [
                            ClipOval(child: Image.asset('assets/images/kitchen-home.jpg', width: 30, height: 30, fit:BoxFit.cover ),),
                            Padding(
                            padding: EdgeInsets.fromLTRB(5,5,5,5),
                            child:Text("Breakfast", style: TextStyle(color: Colors.white, fontSize: 16,),),),
                          ],)

                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0,5,5,5),
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50), ),color: Colors.white),
                        child:Padding(padding: EdgeInsets.fromLTRB(5,5,15,5),
                            child: Row( children: [
                              ClipOval(child: Image.asset('assets/images/kitchen-home.jpg', width: 30, height: 30, fit:BoxFit.cover ),),
                              Padding(
                                padding: EdgeInsets.fromLTRB(5,5,5,5),
                                child:Text("Lunch", style: TextStyle(color: Colors.orange, fontSize: 16,),),),
                            ],)

                        ),
                      ),
                    ),

                  ] ),

                   /* Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0,15,5,15),
                            child: Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50), ),color: CustomColors.lightblue, boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ],),

                              child:Padding(padding: EdgeInsets.fromLTRB(15,5,15,5),
                                  child: Row( children: [
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(5,5,5,5),
                                      child:Text("Menu for Today", style: TextStyle(color: Colors.blueGrey, fontSize: 16,),),),
                                  ],)

                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0,15,5,15),
                            child: Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50), ),color: CustomColors.lightblue,
                                boxShadow: [BoxShadow( color: Colors.grey.withOpacity(0.5),spreadRadius: 5,blurRadius: 7,offset: Offset(0, 3),),],),
                              child:Padding(padding: EdgeInsets.fromLTRB(15,5,15,5),
                                  child: Row( children: [
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(5,5,5,5),
                                      child:Text("Menu for Tomorrow", style: TextStyle(color: Colors.blueGrey, fontSize: 16,),),),
                                  ],)

                              ),
                            ),
                          ),

                        ] ),*/








            ],
          ),
         ),
           Column( children:[
             CarouselSlider(
               options:
               CarouselOptions( height:470 ),
               items: ['assets/images/rajmas.jpg','assets/images/cheese.jpg','assets/images/family.jpg',].map((i) {
                 return Builder(
                     builder : (BuildContext context) {
                       return Container(
                           decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50), ),color: Colors.white),
                           width: MediaQuery.of(context).size.width,
                           margin : EdgeInsets.symmetric(horizontal: 5.0),

                           child: Column(
                               mainAxisAlignment : MainAxisAlignment.center,
                               crossAxisAlignment : CrossAxisAlignment.center,
                               children: [
                                 Padding(
                                   padding: EdgeInsets.fromLTRB(0,30,0,5),
                                   child:
                                   ClipOval(child:
                                   Image.asset(i, width: 100, height: 100, fit:BoxFit.cover )), ),
                                 SizedBox( height:  10,),
                                 if(i == 'assets/images/rajmas.jpg')

                                   Column(
                                     children: [
                                       Row(mainAxisAlignment : MainAxisAlignment.center,
                                         crossAxisAlignment : CrossAxisAlignment.center,
                                         children: [
                                           Icon(Icons.adjust, color: Colors.green),
                                           Text("Rajma Chawal", style: TextStyle(fontSize: 25,fontWeight: FontWeight.w300)),
                                         ],),
                                       Text("Raita + Salad ", style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300)),
                                       Padding( padding: EdgeInsets.fromLTRB(40,30,5,5),
                                         child: Column (children:[
                                           Row(children: [
                                             Text("₹50 ", style: TextStyle(fontSize: 25,fontWeight: FontWeight.w300)),
                                             Text("(per serving) ", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300)),
                                           ]),
                                           SizedBox(height: 10),
                                           Row(children: [
                                             Text("Max Servings       ", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300)),
                                             Text("Order Recieved ", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300)),
                                           ]),
                                           SizedBox(height: 5),
                                           Row(children: [
                                             Text("    30    |  ", style: TextStyle(fontSize: 30,fontWeight: FontWeight.w300)),
                                             Text("  17 ", style: TextStyle(fontSize:30,fontWeight: FontWeight.w300)),
                                           ]),
                                           Padding(
                                             padding: EdgeInsets.fromLTRB(0,10,0,10),
                                             child:
                                             Row(children: [
                                               Text("Prepare By ", style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300)),
                                               Text("11:00AM", style: TextStyle(fontSize:20,fontWeight: FontWeight.w400)),
                                             ]),
                                           ),
                                           Padding(
                                             padding: EdgeInsets.fromLTRB(0,10,0,10),
                                             child:
                                             Row(children: [
                                               Column( children: [
                                                 Container(
                                                     decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10), ),color: CustomColors.lightblue),
                                                     child:
                                                     Padding(padding: EdgeInsets.fromLTRB(5,10,5,10),
                                                       child:Text("10", style: TextStyle(fontSize: 18,fontWeight: FontWeight.w300)), )
                                                 ),
                                                 Text("hours", style: TextStyle(fontSize: 6,fontWeight: FontWeight.w500)),

                                               ]),
                                               SizedBox(width:5),

                                               Column( children: [
                                                 Container(
                                                     decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10), ),color: CustomColors.lightblue),
                                                     child:
                                                     Padding(padding: EdgeInsets.fromLTRB(5,10,5,10),
                                                       child:Text("02", style: TextStyle(fontSize: 18,fontWeight: FontWeight.w300)), )
                                                 ),
                                                 Text("minutes", style: TextStyle(fontSize: 6,fontWeight: FontWeight.w500)),

                                               ]),
                                               SizedBox(width:5),

                                               Column( children: [
                                                 Container(
                                                     decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10), ),color: CustomColors.lightblue),
                                                     child:
                                                     Padding(padding: EdgeInsets.fromLTRB(5,10,5,10),
                                                       child:Text("43", style: TextStyle(fontSize: 18,fontWeight: FontWeight.w300)), )
                                                 ),
                                                 Text("seconds", style: TextStyle(fontSize: 6,fontWeight: FontWeight.w500)),

                                               ]),
                                               SizedBox(width:5),
                                               Text("to unpublish this dish", style: TextStyle(fontSize: 10,fontWeight: FontWeight.w300)),



                                             ]),
                                           ),
                                         ]),
                                       ),
                                     ],
                                   ),

                                 if(i == 'assets/images/cheese.jpg')

                                         Column(
                                           children: [
                                             Row(mainAxisAlignment : MainAxisAlignment.center,
                                               crossAxisAlignment : CrossAxisAlignment.center,
                                               children: [
                                                 Icon(Icons.adjust, color: Colors.green),
                                                 Text("Rajma Chawal", style: TextStyle(fontSize: 25,fontWeight: FontWeight.w300)),
                                               ],),
                                             Text("Raita + Salad ", style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300)),
                                             Padding( padding: EdgeInsets.fromLTRB(40,30,5,5),
                                               child: Column (children:[
                                                 Row(children: [
                                                   Text("₹50 ", style: TextStyle(fontSize: 25,fontWeight: FontWeight.w300)),
                                                   Text("(per serving) ", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300)),
                                                 ]),
                                                 SizedBox(height: 10),
                                                 Row(children: [
                                                   Text("Max Servings       ", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300)),
                                                   Text("Order Recieved ", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300)),
                                                 ]),
                                                 SizedBox(height: 5),
                                                 Row(children: [
                                                   Text("    30    |  ", style: TextStyle(fontSize: 30,fontWeight: FontWeight.w300)),
                                                   Text("  17 ", style: TextStyle(fontSize:30,fontWeight: FontWeight.w300)),
                                                 ]),
                                                 Padding(
                                                   padding: EdgeInsets.fromLTRB(0,10,0,10),
                                                   child:
                                                   Row(children: [
                                                     Text("Prepare By ", style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300)),
                                                     Text("11:00AM", style: TextStyle(fontSize:20,fontWeight: FontWeight.w400)),
                                                   ]),
                                                 ),
                                                 Padding(
                                                   padding: EdgeInsets.fromLTRB(0,10,0,10),
                                                   child:
                                                   Row(children: [
                                                     Column( children: [
                                                       Container(
                                                           decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10), ),color: CustomColors.lightblue),
                                                           child:
                                                           Padding(padding: EdgeInsets.fromLTRB(5,10,5,10),
                                                             child:Text("10", style: TextStyle(fontSize: 18,fontWeight: FontWeight.w300)), )
                                                       ),
                                                       Text("hours", style: TextStyle(fontSize: 6,fontWeight: FontWeight.w500)),

                                                     ]),
                                                     SizedBox(width:5),

                                                     Column( children: [
                                                       Container(
                                                           decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10), ),color: CustomColors.lightblue),
                                                           child:
                                                           Padding(padding: EdgeInsets.fromLTRB(5,10,5,10),
                                                             child:Text("02", style: TextStyle(fontSize: 18,fontWeight: FontWeight.w300)), )
                                                       ),
                                                       Text("minutes", style: TextStyle(fontSize: 6,fontWeight: FontWeight.w500)),

                                                     ]),
                                                     SizedBox(width:5),

                                                     Column( children: [
                                                       Container(
                                                           decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10), ),color: CustomColors.lightblue),
                                                           child:
                                                           Padding(padding: EdgeInsets.fromLTRB(5,10,5,10),
                                                             child:Text("43", style: TextStyle(fontSize: 18,fontWeight: FontWeight.w300)), )
                                                       ),
                                                       Text("seconds", style: TextStyle(fontSize: 6,fontWeight: FontWeight.w500)),

                                                     ]),
                                                     SizedBox(width:5),
                                                     Text("to unpublish this dish", style: TextStyle(fontSize: 10,fontWeight: FontWeight.w300)),



                                                   ]),
                                                 ),
                                               ]),
                                             ),
                                           ],
                                         ),


                                       if(i == 'assets/images/family.jpg')

                                         Column(
                                           children: [
                                             Row(mainAxisAlignment : MainAxisAlignment.center,
                                               crossAxisAlignment : CrossAxisAlignment.center,
                                               children: [
                                                 Icon(Icons.adjust, color: Colors.green),
                                                 Text("Rajma Chawal", style: TextStyle(fontSize: 25,fontWeight: FontWeight.w300)),
                                               ],),
                                             Text("Raita + Salad ", style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300)),
                                             Padding( padding: EdgeInsets.fromLTRB(40,30,5,5),
                                               child: Column (children:[
                                                 Row(children: [
                                                   Text("₹50 ", style: TextStyle(fontSize: 25,fontWeight: FontWeight.w300)),
                                                   Text("(per serving) ", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300)),
                                                 ]),
                                                 SizedBox(height: 10),
                                                 Row(children: [
                                                   Text("Max Servings       ", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300)),
                                                   Text("Order Recieved ", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300)),
                                                 ]),
                                                 SizedBox(height: 5),
                                                 Row(children: [
                                                   Text("    30    |  ", style: TextStyle(fontSize: 30,fontWeight: FontWeight.w300)),
                                                   Text("  17 ", style: TextStyle(fontSize:30,fontWeight: FontWeight.w300)),
                                                 ]),
                                                 Padding(
                                                   padding: EdgeInsets.fromLTRB(0,10,0,10),
                                                   child:
                                                   Row(children: [
                                                     Text("Prepare By ", style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300)),
                                                     Text("11:00AM", style: TextStyle(fontSize:20,fontWeight: FontWeight.w400)),
                                                   ]), ),
                                                 Padding(
                                                   padding: EdgeInsets.fromLTRB(0,10,0,10),
                                                   child:
                                                   Row(children: [
                                                     Column( children: [
                                                       Container(
                                                           decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10), ),color: CustomColors.lightblue),
                                                           child:
                                                           Padding(padding: EdgeInsets.fromLTRB(5,10,5,10),
                                                             child:Text("10", style: TextStyle(fontSize: 18,fontWeight: FontWeight.w300)), )
                                                       ),
                                                       Text("hours", style: TextStyle(fontSize: 6,fontWeight: FontWeight.w500)),

                                                     ]),
                                                     SizedBox(width:5),

                                                     Column( children: [
                                                       Container(
                                                           decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10), ),color: CustomColors.lightblue),
                                                           child:
                                                           Padding(padding: EdgeInsets.fromLTRB(5,10,5,10),
                                                             child:Text("02", style: TextStyle(fontSize: 18,fontWeight: FontWeight.w300)), )
                                                       ),
                                                       Text("minutes", style: TextStyle(fontSize: 6,fontWeight: FontWeight.w500)),

                                                     ]),
                                                     SizedBox(width:5),

                                                     Column( children: [
                                                     Container(
                                                         decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10), ),color: CustomColors.lightblue),
                                                         child:
                                                         Padding(padding: EdgeInsets.fromLTRB(5,10,5,10),
                                                           child:Text("43", style: TextStyle(fontSize: 18,fontWeight: FontWeight.w300)), )
                                                      ),
                                                     Text("seconds", style: TextStyle(fontSize: 6,fontWeight: FontWeight.w500)),

                                                     ]),
                                                     SizedBox(width:5),
                                                     Text("to unpublish this dish", style: TextStyle(fontSize: 10,fontWeight: FontWeight.w300)),



                                                   ]),
                                                 ),
                                               ]),
                                             ),
                                           ],
                                         ),



                               ] ));
                     }
                 );
               }).toList(),

             ),
           ]),

          Column(children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0,30,0,50),
              child: ElevatedButton(
              style: ElevatedButton.styleFrom( fixedSize: const Size(240, 60),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                primary: Colors.orange,),
              onPressed: () {},
              child: Text('See on Map'),
              ),
            ),

          ],)

          ]),
        ),
      ),
    );
    /*),
    );*/
  }
}