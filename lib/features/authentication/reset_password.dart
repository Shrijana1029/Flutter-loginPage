import 'package:flutter/material.dart';
import 'package:login_page/features/authentication/login_page.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Reset Password', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.deepPurple,fontSize: 30),)),

      body: ListView(
        padding: EdgeInsets.all(20.0),

        children: [
          SizedBox(height: 80),
          Text('Your new password  must be different from previously used password',
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
          SizedBox(height: 49),
          Text('New Password',style: TextStyle(fontSize: 18,color: Colors.deepPurple) ,),
          TextFormField(
            decoration: InputDecoration(

                hintText: 'atleat 8 characters',
                suffixIcon: Icon(Icons.remove_red_eye),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                )
            ),
          ),
          SizedBox(height: 30),
          Text('Confirm Password',style: TextStyle(fontSize: 18,color: Colors.deepPurple) ,),
          TextFormField(
            decoration: InputDecoration(

                hintText: '',
                suffixIcon: Icon(Icons.remove_red_eye),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                )
            ),
          ),

          SizedBox(height: 50),

          /////SAVE BUTTON
          SizedBox(
            height: 50,
            width: 100,
            child: ElevatedButton(
                style:ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.yellow)),
                onPressed: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                }, child: Text('Save',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
            ),
          ),
        ],
      ),
    );
  }
}
