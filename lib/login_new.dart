import 'package:flutter/material.dart';

class LoginNew extends StatefulWidget {
  const LoginNew({super.key});

  @override
  State<LoginNew> createState() => _LoginNewState();
}

class _LoginNewState extends State<LoginNew> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: Stack(children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.black,
              child: Column(
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 2.5,
                      decoration: const BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(60),
                        ),
                      )),
                ],
              ),
            ),
            Positioned(
              left: 20,
              top: 50,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade800,
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                height: 570,
                width: 320,
                child: Column(children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Image(
                      image: AssetImage("assets/google.png"),
                      height: 50,
                      width: 50),
                  SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Login',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "Hello, welcome back to JamChup",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: 280,
                    height: 50,
                    child: TextFormField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.brown.withOpacity(.5),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          hintText: ' Email',
                          hintStyle: TextStyle(color: Colors.white)),
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 15),
                    child: SizedBox(
                      width: 280,
                      height: 50,
                      child: TextFormField(
                          obscureText: isObscure,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.brown.withOpacity(.5),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    isObscure = !isObscure;
                                  });
                                },
                                icon: Icon(
                                    isObscure
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Colors.white),
                              ),
                              hintText: 'Password',
                              hintStyle: TextStyle(color: Colors.white))),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 150,
                      ),
                      Text(
                        "Forgot Password?",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Center(
                      child: SizedBox(
                          height: 50,
                          width: 280,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orangeAccent,
                              ),
                              onPressed: () {},
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Colors.black),
                              )))),
                  SizedBox(height: 15),
                  Text(
                    "Or login with",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  SizedBox(height: 40),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white10,
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        height: 70,
                        width: 75,
                        child: Column(children: [
                          SizedBox(
                            height: 10,
                          ),
                          Image(
                              image: AssetImage("assets/google.png"),
                              height: 25,
                              width: 25),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Google',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          )
                        ]),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white10,
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        height: 70,
                        width: 75,
                        child: Column(children: [
                          SizedBox(
                            height: 10,
                          ),
                          Image(
                              image: AssetImage("assets/facebook.png"),
                              width: 25,
                              height: 25),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Facebook",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          )
                        ]),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white10,
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        height: 70,
                        width: 75,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Column(children: [
                              Image(
                                image: AssetImage("assets/apple1.png"),
                                height: 25,
                                width: 25,
                                alignment: Alignment.center,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Apple",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              )
                            ]),
                          ],
                        ),
                      ),
                    ],
                  )
                ]),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 630,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 70,
                    ),
                    Text(
                      "Dont have an account?",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Sign up",
                      style: TextStyle(
                          color: Colors.orange,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            )
          ]),
        ));
  }
}
