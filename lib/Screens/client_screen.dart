import 'package:flutter/material.dart';
import 'package:intell_communication/Screens/string.dart';
class ClientScreen extends StatefulWidget {
  const ClientScreen({Key? key}) : super(key: key);

  @override
  State<ClientScreen> createState() => _ClientScreenState();
}

class _ClientScreenState extends State<ClientScreen> {
  @override
  Widget build(BuildContext context) {
    return  Stack(
      children:[
        Container(
        height: 300,
    width: double.infinity,
    color: Colors.blue,

    ),
    Scaffold(
    backgroundColor: Colors.transparent,
    appBar: AppBar(

      bottom: PreferredSize(
        preferredSize: Size.fromHeight(10),
        child: Container(
          width: 350,
        height: 35,
          //  padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Material(
                color: Colors.white,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(Icons.search,color: Colors.grey),
                    Expanded(
                      child: TextField(
                        // textAlign: TextAlign.center,
                        decoration: InputDecoration.collapsed(
                          hintText: ' Search ',
                        ),
                        onChanged: (value) {
                          },
                      ),
                    ),
                  ],
                ),
              ),
            )
        ) ,
      ),
    backgroundColor: Colors.transparent,
    elevation: 0.0,
    toolbarHeight: 90,
    leading: InkWell(
    onTap: () {
    Navigator.of(context).pop();
    },
    child: const Icon(Icons.arrow_back,color: Colors.white,),
    ),
    title:
      Text(MyString.client,style: TextStyle(color: Colors.white,fontSize: 20),),





    ),
    body: Container(
    height: double.infinity,
    width: double.infinity,
    padding: const EdgeInsets.only(top: 10),
    margin: const EdgeInsets.only(top: 20),
    decoration: const BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.only(
    topLeft: Radius.circular(30.0),
    topRight: Radius.circular(30.0),
    ),
    ),
      child: ListView.builder(
    itemCount: 8,
    itemBuilder: (context, index) {
    return Padding(
    padding: const EdgeInsets.all(4.0),
    child: Container(
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(16),
    ),
    width: 300,
    height: 120,
    child: Card(
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(16.0),
    ),
    elevation: 2,
    child: Padding(
    padding: const EdgeInsets.symmetric(vertical: 0),
    child: Column(
      children: [
        Container(
          height:50,
        width: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle
       ),
          child: Image.asset("assets/apple.png",fit: BoxFit.cover,),
        ),
        Align(alignment: Alignment.topRight,
        child: IconButton(onPressed: () {  }, icon: Icon(Icons.more_vert_outlined,size: 20,),),)
      ],
    ),
    ),
    ),
    ),
    );
    }),

    ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
        onPressed: () {
          setState(() {

          });
        },
      ),
    )
    ]
    );
  }
}
