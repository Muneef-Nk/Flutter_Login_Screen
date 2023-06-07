import 'package:flutter/material.dart';

class LoginUI extends StatefulWidget {
  const LoginUI({Key? key}) : super(key: key);

  @override
  State<LoginUI> createState() => _LoginUIState();
}

class _LoginUIState extends State<LoginUI> {
  bool isPassVisible = true;
  Widget divider = SizedBox(
    height: 20,
  ) ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
         child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(2),
              height: MediaQuery.of(context).size.height*0.40,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Text("Sign In",
                style: TextStyle(
                  fontSize:40,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width*0.8,
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: TextField(
                style: TextStyle(
                  color: Colors.black
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  prefixText: "@",
                  label: Text("User Name"),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
            ),
            divider,
            Container(
              width: MediaQuery.of(context).size.width*0.8,
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: TextFormField(
                obscureText: isPassVisible,
                maxLength: 15,
                style: TextStyle(
                    color: Colors.black
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  label: Text("Password"),
                  prefixIcon: Icon(Icons.key),
                  suffixIcon: GestureDetector(
                    onTap: (){
                      setState(() {
                        isPassVisible = !isPassVisible;
                      });
                    },
                      child:isPassVisible? Icon(Icons.visibility) : Icon(Icons.visibility_off)
                  )
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              width: MediaQuery.of(context).size.width*0.8,
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    child: Text("Forgot Paswsword",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      fontSize: 15
                    ),
                    ),
                  ),
                ],
              ),
            ),
           SizedBox(height: 40,),

            GestureDetector(
            onTap: (){
              print("u clicked");
            },
                onDoubleTap: (){
              print("u double abed");
                },
                onLongPress: (){
              print("u long presse4d");
                },
              child: Container(
                width: 200,
                height: 40,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color(0xff5a8ade),
                      Color(0xff004ddb),
                    ],
                        begin: Alignment.centerLeft
                    ),
                    borderRadius: BorderRadius.circular(20)
                ),
                // padding: EdgeInsets.all(1),
                // color: Colors.red,
                child: Center(child: Text("Login",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                  ),
                )),
              )

            ),
            divider,
            GestureDetector(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don`t have an account? ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    TextButton(

                      onPressed: (){}, child: Text("Sign Up",
                    style: TextStyle(
                      color: Color(0xff004ddb),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      letterSpacing: 1.2
                    ),
                    ),
                    
                    )
                  ],
                ),
              ),
            ),

          ],
         ),
      ),
    );
  }
}
