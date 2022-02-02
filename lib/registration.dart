import 'package:flutter/material.dart';




class Registration extends StatelessWidget {

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
          child: Column( crossAxisAlignment : CrossAxisAlignment.start,
            children: [

              SizedBox(height: 200,),
            Padding(padding: EdgeInsets.fromLTRB(40,0,40,0),
              child:Text("Register",  style: TextStyle( fontSize: 30, color: Colors.white,),),),
            Padding(padding: EdgeInsets.fromLTRB(40,0,40,0),
              child:
              Text("Create your new account", textAlign: TextAlign.left, style: TextStyle( fontSize: 18, color: Colors.white,),),),

              Padding(
                padding: EdgeInsets.fromLTRB(40,20,40,20),
                child:
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white.withOpacity(1),

                  ),
                  alignment: Alignment.bottomLeft,

                  child: Padding(
                    padding: EdgeInsets.fromLTRB(40,40,40,40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("First Name", textAlign: TextAlign.left, style: TextStyle( fontSize: 16, color: Colors.black54,),),
                        TextField(
                          decoration: InputDecoration(
                            hintText: '',
                            suffixIcon: Icon(Icons.account_circle_outlined,
                              color: Colors.orange,

                            ),
                          ),
                        ),
                        SizedBox(height: 20,),

                        Text("Last Name", textAlign: TextAlign.left, style: TextStyle( fontSize: 16, color: Colors.black54,),),
                        Text("(Note: This will be used as your kitchen name)", style: TextStyle( fontSize: 12, color: Colors.black54,),),
                        TextField(),
                        SizedBox(height: 20,),

                        Text("Email Id", style: TextStyle( fontSize: 16, color: Colors.black54,),),
                        Text("(Check your email to verify)", style: TextStyle( fontSize: 12, color: Colors.black54,),),
                        TextField(
                          decoration: InputDecoration(
                            hintText: '',
                            suffixIcon: Icon(Icons.email,
                              color: Colors.orange,

                            ),
                          ),
                        ),
                        SizedBox(height: 20,),

                        Text("Phone Number", style: TextStyle( fontSize: 16, color: Colors.black54,),),
                        Text("(An OTP will come on this number)", style: TextStyle( fontSize: 12, color: Colors.black54,),),
                        TextField(
                          decoration: InputDecoration(
                            hintText: '',
                            suffixIcon: Icon(Icons.call,
                              color: Colors.orange,

                            ),
                          ),
                        ),
                        SizedBox(height: 20,),

                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(240, 60),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                            primary: Colors.orange,
                          ),
                          onPressed: () {
                            // Respond to button press
                          },
                          child: Text('Sign Up'),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Center(
                child: Row(
                    children:[
                  Expanded(
                    child:Text("Already have an account?", textAlign: TextAlign.center, style: TextStyle( fontSize: 16, color: Colors.black26,),),),
                    Text("Sign In", textAlign: TextAlign.center, style: TextStyle( fontSize: 16, color: Colors.orange,),),
                  ]
                ),
              ),

              SizedBox(height: 100),

            ],
          )

        ),
      ),
    );
  }
}