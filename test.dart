void main() {
 double firstvalue=10.78;
  
 double secondvalue=20.7789;
 String thirdvalue = "hello";
  bool ischild = false;
    print(ischild);
  print(thirdvalue);
    
    print(firstvalue);
  print(secondvalue);
  print(firstvalue + secondvalue);
  print(secondvalue-firstvalue);
  print(secondvalue/firstvalue);
  
//   dynamic data type; it is a type of data type that takes any type(eg string,boolean and intergers)
//   num is used for both the intergers and double values
//   var can be used to identify the variable type
  
  
  
}


// flutter tutorials
// root widget
// inside root widget we have app bar widget
// inside app bar widget we have the textwidget
// inside the root widget we can still have the container widget
// inside the container widget we have the text widget
// other types of flutter widgets, text widget, button widget, row widget, row widget ,image widget etc

// code for creating the app bar,container, root and text widgets

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // variables types, string,int,bool,double
  // operators; logic, comparison
  // control flow;if,if else, loops
  // function/methods
  // data structures, lists,tuples,set



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(181, 146, 247, 1),
        appBar: AppBar(
          title: Text('Welcome '),
          backgroundColor: Colors.red,
          elevation: 0,
          leading: Icon(Icons.menu),
          actions: [
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.logout)
            )
          ],),
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(30)),
            
            padding: EdgeInsets.all(30),
            // child: Text('Hello',
            // style: TextStyle(
            //   color: Colors.white,
            //   fontSize: 28,
            //   fontWeight: FontWeight.bold
            // ),),
            child : Icon(
              Icons.favorite,
              color: Colors.black,
              size: 30,
            )
          
          ),
        ),

      ),
    );
  }
}



// for creating the alignments, displays, listviews etc



import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(DevicePreview(
    enabled: true, // Set to `true` to enable Device Preview
    builder: (context) => const MyApp(),
  ));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // variables types, string,int,bool,double
  // operators; logic, comparison
  // control flow;if,if else, loops
  // function/methods
  // data structures, lists,tuples,set



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true, // This enables DevicePreview's media queries
      locale: DevicePreview.locale(context), // Use the locale from DevicePreview
      builder: DevicePreview.appBuilder, // Wrap with DevicePreview's builder
      home: Scaffold(
        backgroundColor: Color.fromRGBO(181, 146, 247, 1),
        appBar: AppBar(
          title: Text('Welcome '),
          backgroundColor: Colors.purple,
          elevation: 0,
          leading: Icon(Icons.menu),
          actions: [
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.logout)
            )
          ],),
        // backgroundColor: Color.fromRGBO(181, 146, 247, 1),
        // appBar: AppBar(),
        body : ListView(
          // scroll direction species how to scroll, and we use the width feature on that
          scrollDirection: Axis.horizontal,

          // use of list view to allow scrolling of the widgets we use the widget called Listview to do that
          // by default we listview allows scrolling vertuically so to scroll horizontally we introduce the scroll direction

          // crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            // use of expanded helps to display the columns or rows on full screen
            // flex property help to expand the widgets as much as the previous one, by default it is set to 1
            Container(
              // height: 300,
               width: 300,
              color: Colors.blue,),
           
            // 1st box
             Container(
              // height: 300,
              width: 100,
              color:  Colors.red),
           

          // 2nd box
         Container(
              //  height: 300,
              width: 100,
              color: Colors.orange,)
           



          // 3rd box



        ],


        //   crossAxisAlignment: CrossAxisAlignment.start,

        //   children: [
        //     // use of expanded helps to display the columns or rows on full screen
        //     // flex property help to expand the widgets as much as the previous one, by default it is set to 1
        //     Expanded(
        //     child: Container(
        //       // height: 300,
        //       // width: 100,
        //       color: Colors.blue,)),
           
        //     // 1st box
        //      Expanded(
        //       flex: 2,
        //     child: Container(
        //       // height: 200,
        //       // width: 100,
        //       color:  Colors.red)),
           

        //   // 2nd box
        //   Expanded(
        //     flex: 3,
        //     child: Container(
        //       // height: 100,
        //       // width: 100,
        //       color: Colors.orange,))
           



        //   // 3rd box



        // ],


          // use of crossboarde alighnment, can be start,end, just however you want

        //    crossAxisAlignment: CrossAxisAlignment.start,

        //   children: [
        //     Container(
        //       height: 300,
        //       width: 300,
        //       color: Colors.red,),
        //     // 1st box
        //      Container(
        //       height: 200,
        //       width: 200,
        //       color: Colors.green,),


        //   // 2nd box
        //    Container(
        //       height: 100,
        //       width: 100,
        //       color: Colors.orange,)



        //   // 3rd box



        // ],

          // align the columns to the centre, we use centre, to the end, we use end, evenly we use space evenly and spacebetween
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,

        //   children: [
        //     Container(
        //       height: 200,
        //       width: 200,
        //       color: Colors.red,),
        //     // 1st box
        //      Container(
        //       height: 200,
        //       width: 200,
        //       color: Colors.green,),


        //   // 2nd box
        //    Container(
        //       height: 200,
        //       width: 200,
        //       color: Colors.orange,)



        //   // 3rd box



        // ],

          
          
        )
          // title: Text('Welcome '),
          // backgroundColor: Colors.red,
          // elevation: 0,
          // leading: Icon(Icons.menu),
          // actions: [
          //   IconButton(
          //     onPressed: (){},
          //     icon: Icon(Icons.logout)
          //   )
          // ],),
        // body: Center(
          // child: Container(
          //   height: 300,
          //   width: 300,
          //   decoration: BoxDecoration(
          //     color: Colors.green,
          //     borderRadius: BorderRadius.circular(30)),
            
          //   padding: EdgeInsets.all(30),
            // child: Text('Hello',
            // style: TextStyle(
            //   color: Colors.white,
            //   fontSize: 28,
            //   fontWeight: FontWeight.bold
            // ),),
            // child : Icon(
            //   Icons.favorite,
            //   color: Colors.black,
            //   size: 30,
            // )
          
          ),
        );
   


      // ),
    // );
  }
}

 // stack widget
          body: Stack(
            // stck also have alignments, we use alignment
            alignment: Alignment.bottomCenter,
              children: [
            // stack by default will have the containers at the top left corner
            Container(
              height: 300,
               width: 300,
              color: Colors.grey,),
           
            // 1st box
             Container(
              height: 200,
              width: 200,
              color:  Colors.black),
           

          // 2nd box
         Container(
                height: 100,
              width: 100,
              color: Colors.white,)
           



          // 3rd box



        ],

          ),




// EVERYTHING



          import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(DevicePreview(
    enabled: true, // Set to `true` to enable Device Preview
    builder: (context) =>  MyApp(),
  ));
}
class MyApp extends StatelessWidget {
   MyApp({super.key});

  // variables types, string,int,bool,double
  // operators; logic, comparison
  // control flow;if,if else, loops
  // function/methods
  // data structures, lists,tuples,set

  // List names =['Joy,Chris'];



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true, // This enables DevicePreview's media queries
      locale: DevicePreview.locale(context), // Use the locale from DevicePreview
      builder: DevicePreview.appBuilder, // Wrap with DevicePreview's builder
      home: Scaffold(
        // backgroundColor: Color.fromRGBO(181, 146, 247, 1),
        // appBar: AppBar(
        //   title: Text('Welcome '),
        //   backgroundColor: Colors.purple,
        //   elevation: 0,
        //   leading: Icon(Icons.menu),
        //   actions: [
        //     IconButton(
        //       onPressed: (){},
        //       icon: Icon(Icons.logout)
        //     )
        //   ],),

          // stack widget
          body: Stack(
            // stck also have alignments, we use alignment
            alignment: Alignment.bottomCenter,
              children: [
            // stack by default will have the containers at the top left corner
            Container(
              height: 300,
               width: 300,
              color: Colors.grey,),
           
            // 1st box
             Container(
              height: 200,
              width: 200,
              color:  Colors.black),
           

          // 2nd box
         Container(
                height: 100,
              width: 100,
              color: Colors.white,)
           



          // 3rd box



        ],

          ),

          // for listing items vertically

          // body: ListView.builder(
          //   itemCount: names.length,
          //   itemBuilder: (context,index) =>ListTile(
          //     title: Text(names[index]),
          //   ),),
        // backgroundColor: Color.fromRGBO(181, 146, 247, 1),
        // appBar: AppBar(),
        // body : ListView(
        //   // scroll direction species how to scroll, and we use the width feature on that
        //   scrollDirection: Axis.horizontal,

        //   // use of list view to allow scrolling of the widgets we use the widget called Listview to do that
        //   // by default we listview allows scrolling vertuically so to scroll horizontally we introduce the scroll direction

        //   // crossAxisAlignment: CrossAxisAlignment.start,

        //   children: [
        //     // use of expanded helps to display the columns or rows on full screen
        //     // flex property help to expand the widgets as much as the previous one, by default it is set to 1
        //     Container(
        //       // height: 300,
        //        width: 300,
        //       color: Colors.blue,),
           
        //     // 1st box
        //      Container(
        //       // height: 300,
        //       width: 100,
        //       color:  Colors.red),
           

        //   // 2nd box
        //  Container(
        //       //  height: 300,
        //       width: 100,
        //       color: Colors.orange,)
           



        //   // 3rd box



        // ],


        //   crossAxisAlignment: CrossAxisAlignment.start,

        //   children: [
        //     // use of expanded helps to display the columns or rows on full screen
        //     // flex property help to expand the widgets as much as the previous one, by default it is set to 1
        //     Expanded(
        //     child: Container(
        //       // height: 300,
        //       // width: 100,
        //       color: Colors.blue,)),
           
        //     // 1st box
        //      Expanded(
        //       flex: 2,
        //     child: Container(
        //       // height: 200,
        //       // width: 100,
        //       color:  Colors.red)),
           

        //   // 2nd box
        //   Expanded(
        //     flex: 3,
        //     child: Container(
        //       // height: 100,
        //       // width: 100,
        //       color: Colors.orange,))
           



        //   // 3rd box



        // ],


          // use of crossboarde alighnment, can be start,end, just however you want

        //    crossAxisAlignment: CrossAxisAlignment.start,

        //   children: [
        //     Container(
        //       height: 300,
        //       width: 300,
        //       color: Colors.red,),
        //     // 1st box
        //      Container(
        //       height: 200,
        //       width: 200,
        //       color: Colors.green,),


        //   // 2nd box
        //    Container(
        //       height: 100,
        //       width: 100,
        //       color: Colors.orange,)



        //   // 3rd box



        // ],

          // align the columns to the centre, we use centre, to the end, we use end, evenly we use space evenly and spacebetween
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,

        //   children: [
        //     Container(
        //       height: 200,
        //       width: 200,
        //       color: Colors.red,),
        //     // 1st box
        //      Container(
        //       height: 200,
        //       width: 200,
        //       color: Colors.green,),


        //   // 2nd box
        //    Container(
        //       height: 200,
        //       width: 200,
        //       color: Colors.orange,)



        //   // 3rd box



        // ],

          
          
        )
          // title: Text('Welcome '),
          // backgroundColor: Colors.red,
          // elevation: 0,
          // leading: Icon(Icons.menu),
          // actions: [
          //   IconButton(
          //     onPressed: (){},
          //     icon: Icon(Icons.logout)
          //   )
          // ],),
        // body: Center(
          // child: Container(
          //   height: 300,
          //   width: 300,
          //   decoration: BoxDecoration(
          //     color: Colors.green,
          //     borderRadius: BorderRadius.circular(30)),
            
          //   padding: EdgeInsets.all(30),
            // child: Text('Hello',
            // style: TextStyle(
            //   color: Colors.white,
            //   fontSize: 28,
            //   fontWeight: FontWeight.bold
            // ),),
            // child : Icon(
            //   Icons.favorite,
            //   color: Colors.black,
            //   size: 30,
            // )
          
          );
     
   


      // ),
    // );
  }
}


import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(DevicePreview(
    enabled: true, // Set to `true` to enable Device Preview
    builder: (context) =>  MyApp(),
  ));
}
class MyApp extends StatelessWidget {
   MyApp({super.key});

  // variables types, string,int,bool,double
  // operators; logic, comparison
  // control flow;if,if else, loops
  // function/methods
  // data structures, lists,tuples,set

  // List names =['Joy,Chris'];

void UserTapped(){
  print("tapped");
}


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true, // This enables DevicePreview's media queries
      locale: DevicePreview.locale(context), // Use the locale from DevicePreview
      builder: DevicePreview.appBuilder, // Wrap with DevicePreview's builder
      home: Scaffold(
        backgroundColor: Color.fromRGBO(181, 146, 247, 1),
        appBar: AppBar(
          title: Text('Welcome '),
          backgroundColor: Colors.purple,
          elevation: 0,
          leading: Icon(Icons.menu),
          actions: [
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.logout)
            )
          ],),


          body: Center(
          child:GestureDetector(
            onDoubleTap: UserTapped,
            //  (){
            //   // do something when a user types the container
            //   print('tapped me!');
            // },
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(30)),
              
              padding: EdgeInsets.all(30),
              child: Text('Tap me',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold
              ),),
              // child : Icon(
              //   Icons.favorite,
              //   color: Colors.black,
              //   size: 30,
              // )
            
            ),
          ),
        ),

      ),
    );
  }
}


        //   // stack widget
        //   body: Stack(
        //     // stck also have alignments, we use alignment
        //     alignment: Alignment.bottomCenter,
        //       children: [
        //     // stack by default will have the containers at the top left corner
        //     Container(
        //       height: 300,
        //        width: 300,
        //       color: Colors.grey,),
           
        //     // 1st box
        //      Container(
        //       height: 200,
        //       width: 200,
        //       color:  Colors.black),
           

        //   // 2nd box
        //  Container(
        //         height: 100,
        //       width: 100,
        //       color: Colors.white,)
           



        //   // 3rd box



        // ],

        //   ),

          // for listing items vertically

          // body: ListView.builder(
          //   itemCount: names.length,
          //   itemBuilder: (context,index) =>ListTile(
          //     title: Text(names[index]),
          //   ),),
        // backgroundColor: Color.fromRGBO(181, 146, 247, 1),
        // appBar: AppBar(),
        // body : ListView(
        //   // scroll direction species how to scroll, and we use the width feature on that
        //   scrollDirection: Axis.horizontal,

        //   // use of list view to allow scrolling of the widgets we use the widget called Listview to do that
        //   // by default we listview allows scrolling vertuically so to scroll horizontally we introduce the scroll direction

        //   // crossAxisAlignment: CrossAxisAlignment.start,

        //   children: [
        //     // use of expanded helps to display the columns or rows on full screen
        //     // flex property help to expand the widgets as much as the previous one, by default it is set to 1
        //     Container(
        //       // height: 300,
        //        width: 300,
        //       color: Colors.blue,),
           
        //     // 1st box
        //      Container(
        //       // height: 300,
        //       width: 100,
        //       color:  Colors.red),
           

        //   // 2nd box
        //  Container(
        //       //  height: 300,
        //       width: 100,
        //       color: Colors.orange,)
           



        //   // 3rd box



        // ],


        //   crossAxisAlignment: CrossAxisAlignment.start,

        //   children: [
        //     // use of expanded helps to display the columns or rows on full screen
        //     // flex property help to expand the widgets as much as the previous one, by default it is set to 1
        //     Expanded(
        //     child: Container(
        //       // height: 300,
        //       // width: 100,
        //       color: Colors.blue,)),
           
        //     // 1st box
        //      Expanded(
        //       flex: 2,
        //     child: Container(
        //       // height: 200,
        //       // width: 100,
        //       color:  Colors.red)),
           

        //   // 2nd box
        //   Expanded(
        //     flex: 3,
        //     child: Container(
        //       // height: 100,
        //       // width: 100,
        //       color: Colors.orange,))
           



        //   // 3rd box



        // ],


          // use of crossboarde alighnment, can be start,end, just however you want

        //    crossAxisAlignment: CrossAxisAlignment.start,

        //   children: [
        //     Container(
        //       height: 300,
        //       width: 300,
        //       color: Colors.red,),
        //     // 1st box
        //      Container(
        //       height: 200,
        //       width: 200,
        //       color: Colors.green,),


        //   // 2nd box
        //    Container(
        //       height: 100,
        //       width: 100,
        //       color: Colors.orange,)



        //   // 3rd box



        // ],

          // align the columns to the centre, we use centre, to the end, we use end, evenly we use space evenly and spacebetween
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,

        //   children: [
        //     Container(
        //       height: 200,
        //       width: 200,
        //       color: Colors.red,),
        //     // 1st box
        //      Container(
        //       height: 200,
        //       width: 200,
        //       color: Colors.green,),


        //   // 2nd box
        //    Container(
        //       height: 200,
        //       width: 200,
        //       color: Colors.orange,)



        //   // 3rd box



        // ],

          
          
     
          // title: Text('Welcome '),
          // backgroundColor: Colors.red,
          // elevation: 0,
          // leading: Icon(Icons.menu),
          // actions: [
          //   IconButton(
          //     onPressed: (){},
          //     icon: Icon(Icons.logout)
          //   )
          // ],),
        // body: Center(
          // child: Container(
          //   height: 300,
          //   width: 300,
          //   decoration: BoxDecoration(
          //     color: Colors.green,
          //     borderRadius: BorderRadius.circular(30)),
            
          //   padding: EdgeInsets.all(30),
            // child: Text('Hello',
            // style: TextStyle(
            //   color: Colors.white,
            //   fontSize: 28,
            //   fontWeight: FontWeight.bold
            // ),),
            // child : Icon(
            //   Icons.favorite,
            //   color: Colors.black,
            //   size: 30,
            // )
          
//           );
     
   


//       // ),
//     // );
//   }
// }