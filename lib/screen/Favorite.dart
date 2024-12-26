import 'package:flutter/material.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key}); // Added constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        title: const Text('Favorites',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),
        actions:[ IconButton(
          icon: const Icon(Icons.search),
          onPressed: () => Navigator.pop(context),
        ),
        ],
      ),
      body: const Center( 
         child: Row(
          children: [ 
            //  MaterialButton(onPressed: () {},
            //   color: Color.fromARGB(255, 0, 0, 0),
            //  child: Text('Summer',style:TextStyle(color: Color(0xfffffffff))),
            //  ),
            //  SizedBox(width: 10),
            //  MaterialButton(onPressed: () {},
            //   color: Color.fromARGB(255, 0, 0, 0),
            //  child: Text('T-Shirt',style:TextStyle(color: Color(0xfffffffff)))),
            //  SizedBox(width: 10),
            //  MaterialButton(onPressed: () {},
            //   color: Color.fromARGB(255, 0, 0, 0),
            //  child: Text('Shirts',style:TextStyle(color: Color(0xfffffffff)))),
             
          ],

        ) ,
      ),
      bottomNavigationBar: const BottomAppBar(
        child: Row(
          children:[
           Column(children: [
          Icon(Icons.home),
          Text('Home')
        ],),
        SizedBox(width: 30),
        Column(children: [
          Icon(Icons.trolley),
          Text('Shop')
        ],),
        SizedBox(width: 30),
        Column(children: [
          Icon(Icons.shop),
          Text('Bag')
        ],),
        SizedBox(width: 30),
        Column(children: [
          Icon(Icons.favorite,color: Color.fromARGB(255, 219, 48, 34),),
          Text('Favorite',style:TextStyle(color:  Color.fromARGB(255, 219, 48, 34),))
        ],),
        SizedBox(width: 30),
        Column(children: [
          Icon(Icons.person),
          Text('Profil')
        ],)
          ]
        )
        
      ),
    );
  }
}