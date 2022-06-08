import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CardApp());
}

class CardApp extends StatelessWidget {
  const CardApp({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  );
}
}

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child:Container(
//           //EdgeInsets.all(): margin :outlayer, padding : inner layer
//           // margin: EdgeInsets.symmetric(horizontal:20,vertical: 50),
//           constraints: BoxConstraints.expand(
//             height: Theme.of(context).textTheme.headline4!.fontSize! * 1.1 + 200.0,
//           ),
//           alignment: Alignment.center,
//           margin: EdgeInsets.fromLTRB(70, 90, 100, 40),
//           padding: EdgeInsets.all(80),
//           height: 200,
//           width: 200,
//           decoration: BoxDecoration(
//             color: Colors.blueGrey,
//             borderRadius: BorderRadius.circular(10),
//           ),
//           child: Text("Hello World",style: Theme.of(context).textTheme.headline4!.copyWith(color: Colors.white)),
//              fontSize: 15,
//              color: Colors.redAccent,
//           ),),
//         );
//   }
// }

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body:SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius:80,
                backgroundImage: AssetImage('assets/man.jpg'),
              ),
              Text('Kaushal Bahadur Kunwar',style: TextStyle(
                fontFamily: 'pacifico',
                color:Colors.white,
                fontSize: 40,
              ),),
              Text('Flutter Developer',style: TextStyle(
                  fontFamily:'Source Sans Pro' ,
              color: Colors.white,
              fontSize: 30,
              ),),
              SizedBox(
                height: 50,
                width: 440,
                child: Divider(
                thickness: 1.0,
                color: Colors.white,
              ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: Row(
                          children: [
                            Icon(Icons.phone,color: Colors.teal,),
                            SizedBox(
                              width: 20,
                            ),
                            Text('+977-9862404141',style: TextStyle(color:Colors.red,fontSize: 20))
                          ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: Row(
                      children: [
                        Icon(Icons.mail,color: Colors.teal,),
                        SizedBox(
                          width: 20,
                        ),
                        Text('kaushalkunwar21@gmail.com',style: TextStyle(color:Colors.black,fontSize: 20))
                      ],
                    ),
                  )
                ),
              )
            ],
          )
      )


    );
  }
}