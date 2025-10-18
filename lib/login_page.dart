import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[ 
             Image.asset(
      "assets/images/background.jpg",
      fit: BoxFit.cover,
      width: double.infinity,
      height: double.infinity,
    ),
    Container(
      color: Colors.white.withOpacity(0.3), 
    ),
    Padding(
          padding: const EdgeInsets.all(35),
          child: Column(
            children: [
              Text("Welcome to our", style: TextStyle(fontSize: 42 , fontWeight: FontWeight.bold , fontFamily: "Lilita One"),),
              Stack(children:[ 
    //                Text(
    //   'GrocerEase',
    //   style: TextStyle(
    //     fontSize: 47,
    //     foreground: Paint()
    //       ..style = PaintingStyle.stroke
    //       ..strokeWidth = 4
    //       ..color = Colors.black, // border color
    //   ),
    // ),
                Text("GrocerEase", 
              style: TextStyle(
                fontSize: 50 , 
                fontWeight: FontWeight.bold, 
                color: Colors.green,  
                fontFamily: "Lilita One",)),]) ,

              Padding(padding: EdgeInsets.all(30),
              ),
              Center(
                child: Column(
                  children: [ 
                    SizedBox(
                      width: 200,
                      child: ElevatedButton(
                          style:ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                      foregroundColor: Colors.green,
                                        ),
                        onPressed: (){
                      
                        },
                                       child: Text("Continue with Email or Phone ", style: TextStyle(fontWeight: FontWeight.bold),)),
                    ),
                 SizedBox(height: 10,),
                ElevatedButton(
                  style:ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: (){

                  },
                 child: Text("Create an Account")),],
                ),
              )
             

            ],
          ),
        ),
]      ),
    );
  }
}