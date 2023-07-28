import 'package:app01iti/widgets/Custombutton.dart';
import 'package:flutter/material.dart';

class Registerpage extends StatefulWidget {
  const Registerpage({super.key});

  @override
  State<Registerpage> createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registerpage> {
  @override
  Widget build(BuildContext context) {
    final _formfield = GlobalKey<FormState>();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    bool passToggle = true;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formfield,
            child: Column(

              //mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
               // Spacer(flex: 10,),
                Image(
                  image: AssetImage("assets/1.jpeg"),
                  width: 200,
                  height: 300,
                ),
                SizedBox(
                  height: 10,
                ),

               // Spacer(flex: 3,),


                SizedBox(
                  height: 20,
                ),

                TextFormField(
                  keyboardType: TextInputType.emailAddress,

                  decoration: InputDecoration(
                    labelText: "Username",
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person),

                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  decoration: InputDecoration(

                    labelText: "email",
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),


                  ),
                    validator: (value) {
                      if (value!.contains("@")) {
                        return null;
                      } else {
                        return ' Invalid email';
                      }
                    }
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                    keyboardType: TextInputType.emailAddress,
                  controller: passwordController,
                    decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock),
                      suffix: InkWell(
                        onTap: () {
                          setState(() {
                            passToggle = !passToggle;
                          });
                        },
                        child: Icon(passToggle
                            ? Icons.visibility
                            : Icons.visibility_off),
                      ),

                    ),
                    validator: (value) {
                      if (value!.length < 8) {
                        return 'Please enter a valid password';
                      }

                      return null;
                    }
                   ),

                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: passwordController,
                  decoration: InputDecoration(
                    labelText: "ConfirmPassword",
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                    suffix: InkWell(
                      onTap: () {
                        setState(() {
                          passToggle = !passToggle;
                        });
                      },
                      child: Icon(passToggle
                          ? Icons.visibility
                          : Icons.visibility_off),
                    ),
                  ),
                    validator: (value) {
                      if (value!.length < 8) {
                        return 'Please enter a valid password';
                      }

                      return null;
                    }
                ),

                SizedBox(
                  height: 20,

                ),

Custombutton(
  onTap: (){
    if (_formfield.currentState!.validate()){
      Navigator.pop(context);}
  },
  text: "Register",
)


              ],
            ),
          ),
        ),
      ),
    );
  }
}

