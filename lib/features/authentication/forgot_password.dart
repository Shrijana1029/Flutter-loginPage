import 'package:flutter/material.dart';
import 'package:login_page/features/authentication/reset_password.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Forgot Password', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.deepPurple,fontSize: 30),)),

      body:
        ListView(
          padding: EdgeInsets.all(20.0),

          children: [
            SizedBox(height: 80),
            Text('Please enter your number to receive an OTP verification code',
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
            SizedBox(height: 49),
            Text('Enter your number',style: TextStyle(fontSize: 18,color: Colors.deepPurple) ,),
            TextFormField(
              decoration: InputDecoration(

                hintText: 'atleat 10 digits',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                )
              ),
            ),
         SizedBox(height: 50),
            ///////SUBMIT BUTTON
            SizedBox(
              height: 50,
              width: 100,
              child: ElevatedButton(
                  style:ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.yellow)),
                  onPressed: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ResetPassword()),
                );
              }, child: Text('Submit',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
              ),
            ),
          ],
        )
    );
  }
}
