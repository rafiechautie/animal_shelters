import 'package:animal_shelters/screens/home/home_screen.dart';
import 'package:animal_shelters/screens/register/regis_screnn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class LoginScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints){
        if(constraints.maxWidth > 800){
          return LoginWebPage();
        }else{
          return LoginMobilPage();
        }
      },
    );

  }





}

class LoginMobilPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 20,),
                Text(
                  "Welcome back Login with your credentials",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 30,)
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 40
              ),
              child: Column(
                children: [
                  inputValue(label: "Masukkan email kamu"),
                  inputValue(label: "Masukkan password kamu", obsureText: true)
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: Border(
                      bottom: BorderSide(color: Colors.black),
                      top: BorderSide(color: Colors.black),
                      right: BorderSide(color: Colors.black),
                      left: BorderSide(color: Colors.black)
                  ),
                ),
                child: MaterialButton(
                  minWidth: double.infinity,
                  height: 60,
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen())
                    );
                  },
                  color: Colors.indigoAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)
                  ),
                  child: Text(
                    "Login",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.white
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Belum punya akun?"),
                GestureDetector(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RegisScreen())
                      );
                    },
                    child: Text(
                      " Sign Up",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
  Widget inputValue({label, obsureText = false}){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Colors.black
          ),
        ),
        SizedBox(height: 5,),
        TextField(
          obscureText: obsureText,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 10
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
              ),
            ),
          ),
        ),
        SizedBox(height: 30,)
      ],
    );
  }
}

class LoginWebPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 20,),
                Text(
                  "Welcome back Login with your credentials",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 30,)
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 300
              ),
              child: Column(
                children: [
                  inputValue(label: "Masukkan email kamu"),
                  inputValue(label: "Masukkan password kamu", obsureText: true)
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: Border(
                      bottom: BorderSide(color: Colors.black),
                      top: BorderSide(color: Colors.black),
                      right: BorderSide(color: Colors.black),
                      left: BorderSide(color: Colors.black)
                  ),
                ),
                child: MaterialButton(
                  minWidth: 1000,
                  height: 60,
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen())
                    );
                  },
                  color: Colors.indigoAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)
                  ),
                  child: Text(
                    "Login",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.white
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Belum punya akun?"),
                GestureDetector(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RegisScreen())
                      );
                    },
                    child: Text(
                      " Sign Up",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
  Widget inputValue({label, obsureText = false}){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Colors.black
          ),
        ),
        SizedBox(height: 5,),
        TextField(
          obscureText: obsureText,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 10
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
              ),
            ),
          ),
        ),
        SizedBox(height: 30,)
      ],
    );
  }
}




