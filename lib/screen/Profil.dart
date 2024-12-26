import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  const Profil({super.key}); // Added constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        title: const Text('My Profil',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),
        actions:[ IconButton(
          icon: const Icon(Icons.search),
          onPressed: () => Navigator.pop(context),
        ),
        ],
      ),
      body: const Center( 
         
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
          Icon(Icons.shopping_cart),
          Text('Shop')
        ],),
        SizedBox(width: 30),
        Column(children: [
          Icon(Icons.shopping_bag),
          Text('Bag')
        ],),
        SizedBox(width: 30),
        Column(children: [
          Icon(Icons.favorite),
          Text('Favorite')  ],),
        SizedBox(width: 30),
        Column(children: [
          Icon(Icons.person,color: Color.fromARGB(255, 219, 48, 34),),
          Text('Profil',style:TextStyle(color:  Color.fromARGB(255, 219, 48, 34),))
        ],)
          ]
        )
        
      ),
    );
  }
}
