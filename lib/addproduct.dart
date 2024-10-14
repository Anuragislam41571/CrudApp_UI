import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class addscreen extends StatefulWidget {
  const addscreen({super.key});

  @override
  State<addscreen> createState() => _addscreenState();
}

class _addscreenState extends State<addscreen> {
  TextEditingController namecontroller=TextEditingController();
  TextEditingController unitcontroller=TextEditingController();
  TextEditingController quantitycontroller=TextEditingController();
  TextEditingController totalcontroller=TextEditingController();
  TextEditingController imagecontroller=TextEditingController();


   GlobalKey<FormState>    formkey=GlobalKey();




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('addscreen'),
      ),

      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextFormField(
                  controller: namecontroller,
                  validator: (String?value){
                    if (value==null || value.trim().isEmpty){
                      return 'write your product name';
                    }
                    return null;

                  },

                  decoration: InputDecoration(
                    labelText: 'product Name',
                    hintText: 'product Name '
                  ),

                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  validator: (String?value){
                    if (value==null || value.trim().isEmpty){
                      return 'write your unit price';
                    }
                    return null;

                  },
                  controller: unitcontroller,
              keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: 'Unit price',
                      hintText: 'Unit price '
                  ),

                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  validator: (String?value){
                    if (value==null || value.trim().isEmpty){
                      return 'write your quantity';
                    }
                    return null;

                  },
              controller: quantitycontroller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: 'Quantity',
                      hintText: 'Quantity '
                  ),

                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  validator: (String?value){
                    if (value==null || value.trim().isEmpty){
                      return 'write your total price';
                    }
                    return null;

                  },
                  controller: totalcontroller,

                  keyboardType: TextInputType.number,

                  decoration: InputDecoration(
                      labelText: 'Total price',
                      hintText: 'Total price '
                  ),

                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  validator: (String?value){
                    if (value==null || value.trim().isEmpty){
                      return ' sent your image ';
                    }
                    return null;

                  },
                  controller: imagecontroller,
                  keyboardType: TextInputType.number,


                  decoration: InputDecoration(
                      labelText: 'Image',
                      hintText: 'Image '
                  ),

                ),

                const SizedBox(
                  height: 20,
                ),

                ElevatedButton(



                    onPressed: (){

                      if(formkey.currentState!.validate()){

                      }

                    }, child: Text('Add'))

              ],
            ),
          ),
        ),
      ),
    );
  }
}
