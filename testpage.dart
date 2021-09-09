// @dart=2.9

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Testpage extends StatefulWidget {
  @override
  _TestpageState createState() => _TestpageState();
}

class _TestpageState extends State<Testpage> {
  List<Map> data =[
    {
      "photo":"https://images.unsplash.com/photo-1559579313-021b6ec9f6d6?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c3RhZGl1bXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80",
    "tru":"Tournament 1",
    "stadium":"Al warah stadium",
    "match":"Al warah SC vs Al khor Sc",
      "time":'''Report At:
Sept 9th 2021'''},
    {
      "photo":"https://image.shutterstock.com/image-photo/photo-soccer-stadium-night-made-260nw-1291798447.jpg",
      "tru":"Tournament 2",
      "stadium":"Al khor stadium",
      "match":"Al warah SC vs Al Rayan Sc",
      "time":'''Report At:
Sept 9th 2021'''},
    {
      "photo":"https://static.toiimg.com/photo/78291355.cms",
      "tru":"Tournament 3",
      "stadium":"Al janab stadium",
      "match":"UEFA Nations leauge",
      "time":'''Report At:
Sept 9th 2021'''
    },
    {
      "photo":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiff3LFKnT7I126d94L3OEFVK7GwlV9pUahuUGI4Adacomz1h2kVlAsKuuVqKetMM3Eg8&usqp=CAU",
      "tru":"Tournament 1",
      "stadium":"Al khor stadium",
      "match":"Al warah SC vs Al Rayan Sc",
      "time":'''Report At:
Sept 9th 2021'''
          }
  ];


  @override
  Widget build(BuildContext context) {
    final mqHeight = MediaQuery.of(context).size.height;
    final mqWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,

        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(
            color: Colors.white
        ),
        currentIndex: 0,
        onTap: (i){

        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.event,size:30.0,color:Colors.blue,),
              label: "Events",
              backgroundColor: Colors.black87,


          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.group_add,size:30.0,color:Colors.black87,),
              label: "Requests",
            backgroundColor: Colors.black87
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.note_add,size:30.0,color:Colors.black87,),
              label: "Enroolment",
              backgroundColor: Colors.black87

          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none,size:30.0,color:Colors.black87,),
              label: "Notification",
              backgroundColor: Colors.black87

          ),



        ],
      ),

      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height*.4,
          ),
          Container(
            height: MediaQuery.of(context).size.height*.30,
            color: Colors.blueAccent,
          ),
          Positioned(
            top: 80.0,
            child:  Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.arrow_back,size: 25.0,color: Colors.white,),
            ),
          ),
          Positioned(
            top: 110.0,
            child:  Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Events",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white),),
            ),
          ),
         Padding(
           padding: const EdgeInsets.only(top: 118.0),
           child: Container(
             child: ListView.builder(
                 itemCount: 4,
                   shrinkWrap:true,itemBuilder: (context,i){
                 return Card(
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(15.0),
                   ),
                   elevation: 10,
                   child: Column(
                       mainAxisSize: MainAxisSize.min,
                       children: <Widget>[
                      ListTile(
                     trailing: Container(
                         decoration: BoxDecoration(
                             color: Colors.blueAccent,
                             shape: BoxShape.circle
                         ),child: Icon(Icons.note_add, size: 40.0)),
                     leading: Container(
                       height: 120.0,
                       width: 50.0,
                       child: FittedBox(

                         child: Image(image: NetworkImage(data[i]["photo"],



                         )),                           fit: BoxFit.fill,

                       ),



                     ),
                     title: Text(
                         data[i]["tru"],
                         style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold)
                     ),
                     subtitle: Column(

                       children: [
                         Padding(
                           padding: const EdgeInsets.all(4.0),
                           child: Row(
                             children: [
                               Icon(Icons.location_on,size: 10.0,),

                               Padding(
                                 padding: const EdgeInsets.all(1.0),
                                 child: Text(
                                     data[i]["stadium"],
                                     style: TextStyle(fontSize: 12.0)
                                 ),
                               ),
                             ],
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(4.0),
                           child: Row(
                             children: [
                               Icon(Icons.sports_football,size: 10.0,),

                               Padding(
                                 padding: const EdgeInsets.all(1.0),
                                 child: Text(
                                     data[i]["match"],
                                     style: TextStyle(fontSize: 12.0)
                                 ),
                               ),
                             ],
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(4.0),
                           child: Row(
                             children: [
                               Icon(Icons.calendar_today,size: 10.0,),

                               Padding(
                                 padding: const EdgeInsets.all(1.0),
                                 child: Column(
                                   mainAxisAlignment: MainAxisAlignment.start,
                                   children: [
                                     Text(
                                         data[i]["time"],
                                         style: TextStyle(fontSize: 12.0)
                                     ),

                                   ],
                                 ),
                               ),
                             ],
                           ),
                         )
                       ],
                     ),
                   ),

                       ]));
             }),
           ),
         )
        ],
      ));
  }
}
