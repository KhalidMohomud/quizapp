import 'package:flutter/material.dart';
import 'package:quizapp/questions.dart';

void main() {
  runApp(
    MaterialApp(
      // Removed 'const' here
      title: 'My App',
      debugShowCheckedModeBanner: false,
      home: screen(),
    ),
  );
}

class screen extends StatefulWidget {
  const screen({super.key});

  @override
  State<screen> createState() => _screenState();
}

class _screenState extends State<screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: Text("Screen"),
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => screen(),
                    ),
                  );
                },
                child: Text("Chick")),
          )
        ],
      ),
    );
  }
}











// listTitle weget
// Column(
//         children: [
//           Container(),
//           ListTile(
//             onTap: () {
//               print("is working");
//             },
//             leading: Image.asset('Images/khalid.jpg'),
//             title: Text("I AM khalid! "),
//             subtitle: Text(
//               "I am hard working! ",
//               style: TextStyle(fontSize: 10),
//             ),
//             trailing: Icon(Icons.arrow_back_ios),
//           )
//         ],
//       ),









////Expanded wechied
///Row(
      //   children: [
      //     Expanded(
      //       child: Container(
      //         width: 100,
      //         height: 100,
      //         color: Colors.cyan,
      //       ),
      //     ),
      //     Expanded(
      //       child: Container(
      //         width: 100,
      //         height: 100,
      //         color: Color.fromARGB(255, 238, 16, 127),
      //       ),
      //     ),
      //     Expanded(
      //       flex: 5,
      //       child: Container(
      //         width: 100,
      //         height: 100,
      //         color: Colors.green,
      //       ),
      //     )
      //   ],
      // ),




// ...wrap

// Column(
//         children: [
//           Wrap(
//             children: [
//               Text(
//                 "   the surroundings or conditions in which a person, animal, or plant lives or operates.",
//                 style: TextStyle(
//                   fontSize: 30,
//                   color: Colors.green,
//                 ),
//               )
//             ],
//           )
//         ],
//       ),


// Flex(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         direction: Axis.horizontal,
//         children: [
//           Container(
//             width: 100,
//             height: 80,
//             color: Colors.yellow,
//           ),
//           Container(
//             width: 100,
//             height: 80,
//             color: const Color.fromARGB(255, 14, 241, 33),
//           ),
//           Container(
//             width: 80,
//             height: 80,
//             color: const Color.fromARGB(255, 235, 19, 181),
//           ),
//           Container(
//             width: 100,
//             height: 100,
//             color: const Color.fromARGB(255, 59, 255, 255),
//             child: Text(
//               "B1",
//               style: TextStyle(),
//             ),
//           ),
//         ],
//       ),




// Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           Container(
//             color: Colors.cyan,
//             padding: EdgeInsets.all(20),
//             child: Text(
//               "0",
//               style: TextStyle(fontSize: 30),
//             ),
//           ),
//           Container(
//             color: const Color.fromARGB(255, 248, 58, 10),
//             padding: EdgeInsets.all(20),
//             child: Text(
//               "1",
//               style: TextStyle(fontSize: 30),
//             ),
//           ),
//           Container(
//             color: const Color.fromARGB(223, 236, 214, 8),
//             padding: EdgeInsets.all(20),
//             child: Text(
//               "2",
//               style: TextStyle(fontSize: 30),
//             ),
//           ),
//           Container(
//             color: const Color.fromARGB(255, 107, 11, 216),
//             padding: EdgeInsets.all(20),
//             child: Text(
//               "3",
//               style: TextStyle(fontSize: 30),
//             ),
//           )
//         ],
//       ),





//   Row(
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // children: [
        //   Container(
        //     color: Colors.green,
        //     margin: EdgeInsets.only(top: 20),
        //     padding: EdgeInsets.all(10),
      //       child: Text("everything that "),
      //     ),
      //     Container(
      //       color: const Color.fromARGB(255, 164, 8, 226),
      //       margin: EdgeInsets.only(top: 20),
      //       padding: EdgeInsets.all(10),
      //       child: Text("payment"),
      //     ),
      //     EndDrawerButton(
      //       onPressed: () {},
      //     )
      //   ],
      // ),






// Center(
//           child: Container(
//         child: ElevatedButton.icon(
//             onPressed: () {
//               print("well come elevatedButon");
//             },
//             icon: Icon(Icons.payment),
//             label: Text("Pay")),
//       )),







//  Center(
//           child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: TextButton(onPressed: () {}, 
//         child: Text("Join me")),
//       )),





// Container(
//         margin: EdgeInsets.only(top: 50),
//         padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
//         color: const Color.fromARGB(255, 240, 90, 20),
//         child: Text(
//           "everything that is around us, which includes both living and nonliving",
//           style: TextStyle(fontSize: 20, color: Colors.white),
//         ),
//       ),



// Center(
//         child: Text(
//           'Hello, world!z',
//           style: TextStyle(
//             fontSize: 20,
//             fontFamily: appFlavor,
            
//           ),
//         ), // 'const' is okay here too
//       ),


//  Center(
//           child: Icon(Icons.car_crash,
//               size: 100, color: Color.fromARGB(255, 42, 216, 8)))
