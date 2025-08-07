import 'package:flutter/material.dart';

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({super.key});

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://images.unsplash.com/photo-1736457908762-d6ae9e5fb593?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8OXxVOUNMTHhRVlRRRXx8ZW58MHx8fHx8'),
          fit: BoxFit.cover,
        ),
      ),
      child:Scaffold(
        backgroundColor: Colors.transparent,
        body:Stack(
          children: [
            Positioned(
              top:150,
              left:0,
              right:0,
              child: Center(
                  child:Text(
                    'Welcome!',
                    style: TextStyle(
                      fontSize: 45,
                      color:Colors.black,
                    ),
                  ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  top:MediaQuery.of(context).size.height*0.4,
                  right:35,
                  left:35,
                ),
                  child:Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled:true,
                          prefixIcon: Icon(Icons.person),
                          hintText: 'Enter username',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 50,
                            )
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled:true,
                          prefixIcon: Icon(Icons.lock),
                          hintText: 'Enter password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 50,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 90,
                      ),
                      ElevatedButton.icon(
                        onPressed: () {
                          Navigator.pushNamed(context, 'homepage');
                        },
                        icon: Icon(
                          Icons.login, 
                          color: Colors.black,
                           ),
                        label: Text('Login', style: TextStyle(color: Colors.black)),
                      ),
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