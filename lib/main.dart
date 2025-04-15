import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
 class MyApp extends StatelessWidget {
   const MyApp({super.key});

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       home: HomePage()

     );
   }
 }


 // My Home Page
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('Home', style: TextStyle(
          color: Colors.white
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text(
          'Home',
          style: TextStyle(
            fontSize: 20
          ),
        ),
      ),
    );
  }
}


// Drawer component

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Colors.white,
                    Colors.blue
                  ]
              )
            ),
              child: Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/image_12.webp'),
                  radius: 50,
                ),
              )
          ),
          ListTile(
            title: Text('Home',style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
              ),
            ),
            leading: Icon(Icons.home_outlined, color: Colors.blue,),
            trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue,),

          ),
          Divider(height: 5, color: Colors.grey[400],),
          ListTile(
            title: Text('Notification',style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),
            ),
            leading: Icon(Icons.circle_notifications_outlined, color: Colors.blue,),
            trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue,),

          ),
          Divider(height: 5, color: Colors.grey[400],),
          ListTile(
            title: Text('Gallerie',style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),
            ),
            leading: Icon(Icons.image, color: Colors.blue,),
            trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue,),

          )
        ],
      ),
    );
  }
}

