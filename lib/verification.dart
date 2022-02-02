import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Verification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,

          image: Image.asset('assets/images/register.png').image,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        // resizeToAvoidBottomInset: false,

        body: SingleChildScrollView(
            child: Column(
              children: [

                SizedBox(height: 200,),
                Padding(
                  padding: EdgeInsets.fromLTRB(20,20,20,20),
                  child:
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.white.withOpacity(1),

                    ),
                    alignment: Alignment.bottomLeft,

                    child: Padding(
                      padding: EdgeInsets.fromLTRB(20,20,20,20),
                      child: Column(
                          children: [
                          Text("Verification", textAlign: TextAlign.center,  style: TextStyle( fontSize: 30, color: Colors.blueGrey,),),
                          SizedBox(height: 15,),
                          Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Colors.black12,
                              ),
                            child:Padding(
                                  padding: EdgeInsets.fromLTRB(20,20,20,10),
                                  child:Column(crossAxisAlignment : CrossAxisAlignment.start,
                                      children: [
                                        Text("Code", textAlign: TextAlign.left, style: TextStyle( fontSize: 16, color: Colors.black54,),),
                                        TextField( keyboardType: TextInputType.number,
                                          decoration: InputDecoration(
                                            hintText: 'Enter the verification code',
                                          ),
                                        ),
                                        SizedBox(height: 20,),
                                      ],
                                  ),
                              ),
                           ),
                          SizedBox(height: 50,),

                          ElevatedButton(
                            style: ElevatedButton.styleFrom( fixedSize: const Size(240, 60),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                              primary: Colors.orange,),
                            onPressed: () {},
                            child: Text('Verify and Proceed'),
                          ),
                          SizedBox(height: 40),
                            Padding(
                              padding: EdgeInsets.fromLTRB(40,0,20,20),
                              child: Row(
                                children:[
                                  Text("Didn’t you recive the OTP? ", textAlign: TextAlign.center, style: TextStyle( fontSize: 14, color: Colors.black26,),),
                                  TextButton(style: TextButton.styleFrom(primary: Colors.orange),
                                    onPressed: () {},child: const Text('Resend OTP'),
                                  ),
                                ]
                            ),
                          ),

                          SizedBox(height: 100),

                        ],
                      ),
                    ),
                  ),
                ),

              ],
            )

        ),
      ),
    );
  }
}