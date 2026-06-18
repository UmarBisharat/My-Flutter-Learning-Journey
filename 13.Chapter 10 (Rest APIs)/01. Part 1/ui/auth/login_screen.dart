import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/ui/auth/signup_screen.dart';
import 'package:untitled/widgets/round_buttons.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        SystemNavigator.pop();
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          automaticallyImplyLeading: false,
          title: Text('LogIn',style: TextStyle(color: Colors.white),),
          centerTitle: true,

        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: emailController,
                      decoration: InputDecoration(
                        hintText: 'email',
                        prefixIcon: Icon(Icons.email_outlined,color: Colors.purple),
                      ),
                      validator: (value){
                        if(value!.isEmpty){
                          return 'Enter email';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20,),
                    TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'password',

                        prefixIcon: Icon(Icons.lock,color: Colors.purple),
                      ),
                      validator: (value){
                        if(value!.isEmpty){
                          return 'Enter password';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20,),
                  ],
                )),
            SizedBox(height: 50,),

      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: RoundButtons(title: 'Log In',onTap: (){
      if(_formKey.currentState!.validate()){
      }
        },),
      ),
            SizedBox(height: 1),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an account ?  ",style: TextStyle(
                color: Colors.purple,
              ),),
              TextButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>
      SignUpScreen()));
              }, child: Text('Sign Up',style: TextStyle(
                color: Colors.purple,
                fontWeight: FontWeight.bold,
              ),),)
            ],
          )
          ],
        ),
      ),
    );
  }
}
