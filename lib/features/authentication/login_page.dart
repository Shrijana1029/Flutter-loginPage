import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_page/features/authentication/forgot_password.dart';
import 'package:login_page/features/authentication/register_account.dart';
import 'package:login_page/features/authentication/reset_password.dart';


class LoginPage extends StatefulWidget {
  LoginPage({super.key});


  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var loginKey = GlobalKey<FormState>();
  late String email, password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title:

      Text('Login to your account',style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold,fontSize: 25),)),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: [
          Form(
              key: loginKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 30.0),
                  TextFormField(
                    decoration: InputDecoration(
                        label: Text('Email'),
                        hintText: "Enter Email",
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        )
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Email is empty";
                      }
                      else if (value.length <= 2) {
                        return "You email is Invalid";
                      }
                      else if(!isValidEmail(value)) {
                        return "Invalid email Please a enter valid ";
                      }
                    },
                    onSaved: (value) {
                      email = value ?? "###";
                    },
                  ),
                  SizedBox(height: 20.0),
                  TextFormField(
                    decoration: InputDecoration(label: Text('Password'),
                        hintText: "Enter password",
                        prefixIcon: Icon(Icons.lock_outline),
                        suffixIcon: Icon(Icons.visibility_off),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.0),


                        )),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Password cannot be empty";
                      }
                      else if (value.length <= 2) {
                        return "Password  must be greater than 4";
                      }
                    },
                    onSaved: (value) {
                      password = value ?? "###";
                    },
                  ),
                  SizedBox(height: 10.0),
                  //FORGOT PASSWORD
                  Row(
                    children: [
                        TextButton(onPressed: (){
                          Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ForgotPassword()),
                          );

                        }, child: Text("Forgot Password?",style: TextStyle(color: Colors.deepPurple)),


                  ),
  ],
                  ),

                  SizedBox(height: 50.0),
                  ///LOGIN
                  SizedBox(
                    height: 50,
                    width: 200,
                    child: ElevatedButton(onPressed: submit,
                        child: Text("Login",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 19),),
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.yellow)),
                    ),
                  ),

                  SizedBox(height: 15.0),

                  Center(child: Text("---Or Login With---")),
                  SizedBox(height: 25.0),
                  ///ICON
                  Row(
                    children: [
                    SizedBox(width: 80.0),
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
                          child: FaIcon(FontAwesomeIcons.google,size: 40, color: Colors.deepPurple)),
                    ],
                  ),
              SizedBox(height:150),
                  ///FOOTER
                  Row(
                    children: [
                      SizedBox(width: 50.0),
                      Text("Don't have an account?"),
                      TextButton(onPressed: (){
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => RegisterAcoount()),
                        );
                      }, child: Text('Register here')),

                      // Text(" Register here",style: TextStyle(color: Colors.red),),
                    ],
                  )



                ],
              )),
        ],
      ),
    );
  }



    void submit() {
      if (loginKey.currentState!.validate()) {
        loginKey.currentState!.save();
        print("Form is valid");
        print("Email: $email, Password: $password");
      }
    }
  }

  bool isValidEmail(String email) {
    // Define a regular expression for validating an Email
    return RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    ).hasMatch(email);
  }




