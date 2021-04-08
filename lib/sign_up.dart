import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
         child: SingleChildScrollView(
           physics: BouncingScrollPhysics(),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text("Sign Up",style: TextStyle(
                 fontSize: 30,
                 fontWeight: FontWeight.bold,
                 color: Colors.black
               ),),
               SizedBox(height: 10,),
               Text("Create your account",style: TextStyle(
                 fontSize: 18,
                 color: Colors.black
               ),),
               SizedBox(height: 10,),
               CupertinoFormSection(
                   header: Text("Personal Details"),
                   children: [
                     CupertinoFormRow(child:
                     CupertinoTextFormFieldRow(
                       placeholder: "Enter Name",
                     ) ,prefix: Text('Name'),
                     ),
                     CupertinoFormRow(child:
                     CupertinoTextFormFieldRow(
                       placeholder: "Enter Phone No.",
                     ) ,prefix: Text('Phone'),

                       helper: Text("Eg: 9979xxxxxx",style: TextStyle(
                         color: Colors.grey
                       ),),
                     ),

               ]),
               CupertinoFormSection(
                   header: Text("User"),
                   children: [
                     CupertinoFormRow(child:
                     CupertinoTextFormFieldRow(
                       placeholder: "Enter Email",
                       keyboardType: TextInputType.emailAddress,
                     ) ,prefix: Text('Email'),
                     ),
                     CupertinoFormRow(child:
                     CupertinoTextFormFieldRow(
                       obscureText: true,

                     ) ,prefix: Text('Password'),

                     ),
                     CupertinoFormRow(child:
                     CupertinoTextFormFieldRow(
                       obscureText: true,

                     ) ,prefix: Text('Confirm Password'),

                     ),

               ]),
               CupertinoFormSection(
                   header: Text("Terms & Conditions"),
                   children: [
                     CupertinoFormRow(child:
                     CupertinoSwitch(
                       value: true,
                       onChanged: (value){

                       },),
                       prefix: Text('I Agree'),
                     ),


               ]),
               SizedBox(height: 20,),
               Center(
                 child: CupertinoButton(
                     color: Colors.green,
                     child: Text('Sign Up',style: TextStyle(
                         fontWeight: FontWeight.bold,
                       color: Colors.white

                     ),),
                     onPressed: (){

                 }),
               )

             ],
           ),
         ),
          
        ),
      ),
    );
  }
}
