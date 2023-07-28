import 'package:app01iti/Homepage.dart';
import 'package:app01iti/Register.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class loginPage extends StatefulWidget {
  loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  final _formfield = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Form(
              key: _formfield,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  // Spacer(
                  //   flex: 10,
                  // ),

                  SizedBox(
                    height: 150,
                  ),
                  Image(
                    image: AssetImage("assets/1.jpeg"),
                    width: 200,
                    height: 200,
                  ),
                  // Spacer(
                  //   flex: 3,
                  // ),

                  SizedBox(
                    height: 55,
                  ),
                  TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: emailController,
                      decoration: InputDecoration(
                        labelText: " Email",
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
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
                      }),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: passwordController,
                      obscureText: passToggle,
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
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
                      }),
                  SizedBox(
                    height: 25,
                  ),
                  GestureDetector(
                    onTap: () async {
                      if (_formfield.currentState!.validate()) {


                        final SharedPreferences prefs = await SharedPreferences.getInstance();

// Save an integer value to 'counter' key.
                        await prefs.setString('email',emailController.text,);



                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  homepage(email: '',)),
                          );


                      }

                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                       color: Color.fromRGBO(3, 96, 164,1),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      height: 50,
                      width: double.infinity,
                      child: Text(
                        "Sign in",
                        style: TextStyle(

                          fontSize: 25,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Forget password? No yawa. ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Tap me ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      )
                    ],
                  ),
                  // Spacer(
                  //   flex: 13,
                  // ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(3, 96, 164,1),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    width: double.infinity,
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  Registerpage()),
                          );
                        },
                        child: Text(
                          "No Account? Sign Up",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white70,
                          ),
                        )),
                  ),

                  // Spacer(
                  //   flex: 9,
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
