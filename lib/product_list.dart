import 'package:flutter/material.dart';
import 'package:untitled30/addproduct.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('Product list'),
      ),
      body: ListView.separated(
          itemCount: 20,
          itemBuilder: (context,index){
        
        
        
        return ListTile(
          leading: Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR94Mp5QuZSHXmR634sgHdhuTDSWQSj19Z6kw&s'),
        height: 70,width: 80,  ),

          title: Text('Productr name'),
          subtitle: Wrap(
            spacing: 16,
            children: [
              Text('Unit price:700'),
              Text('Quantity:10000'),
              Text('Total price:2568880')
            ],
          ),
          trailing: Wrap(
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
              IconButton(onPressed: (){
                dialouge();

              }, icon: Icon(Icons.delete))

            ],
          ),

        );

        
        
      }, separatorBuilder: (BuildContext context, int index) {
            return Divider();
      },),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>addscreen()));
      },child: Icon(Icons.add),),
    );
  }
  void dialouge(){

    showDialog(context: context, builder: (context){


      return AlertDialog(
        title: Text('Delete'),
        content: Text('Are you sure delete this product'),

        actions: [
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text('Cancel')),
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text('yes,ok')),

        ],

      );
    });




  }
}
