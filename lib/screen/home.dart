import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key}); // Added constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        title: const Text('Home',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),
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
         Icon(Icons.home,color: Color.fromARGB(255, 219, 48, 34),),
          Text('Home',style:TextStyle(color:  Color.fromARGB(255, 219, 48, 34),))
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
          Icon(Icons.favorite),
          Text('Favorite')  ],),
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