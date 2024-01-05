import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_page/features/authentication/login_page.dart';

class RegisterAcoount extends StatefulWidget {
  const RegisterAcoount({super.key});

  @override
  State<RegisterAcoount> createState() => _RegisterAcoountState();
}

class _RegisterAcoountState extends State<RegisterAcoount> {

  get submit => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Create an account', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.deepPurple,fontSize: 30),)),


      body: ListView(
        padding: EdgeInsets.all(23),
        children: [
          SizedBox(height: 20),

          Form(child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter full name',
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),

                  )

                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                    hintText: 'Enter your number',
                    prefixIcon: Icon(Icons.call),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),

                    )

                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                    hintText: 'Enter your email',
                    prefixIcon: Icon(Icons.email_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),

                    )

                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                cursorRadius: Radius.circular(10),
                decoration: InputDecoration(
                    hintText: 'Enter password',
                    prefixIcon: Icon(Icons.lock_outline),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),

                    )

                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                    hintText: 'Enter full name',
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),

                    )

                ),
              ),
              SizedBox(height: 10),
              ///TERMS AND CONDITIONS
              Row(
                children: [
                  Text('I agree to the terms & conditions.',style: TextStyle(color: Colors.red),)
                ],
              ),
              SizedBox(height: 20),
              ///CONTINUE BUTTON
              SizedBox(
                height: 50,
                width: 200,
                child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );

                    }, child: Text('Continue',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold,color: Colors.black),),
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.yellow)),
                ),
              ),

             SizedBox(height: 30),

              Row(
                children: [
                  SizedBox(width: 90.0),
                  Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blue,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(32.0), // Set your border radius here
                      ),
                      child: FaIcon(FontAwesomeIcons.facebook,size: 45,color: Colors.blueAccent,)
                  ),
                  SizedBox(width: 32),
                  Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black54,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                      child: FaIcon(FontAwesomeIcons.google,size: 45,color: Colors.deepPurple),
                      ),
                ],
              ),
              SizedBox(height: 20),
              ///FOOTER
              Row(
                children: [
                  SizedBox(width: 30),
                  Text('Already have an account?'),
                  TextButton(onPressed:(){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  }, child: Text('Login here')),
                ],
              )
            ],
          ))


        ],
      ),

    );
  }
}

class WebView {
}
